import JSP848.ProgressionCoverage

namespace JSP848.SnapshotTree

/-- Split a progression at each tree key. Boundary checks make soundness
independent of the formula used to choose the split and of tree invariants. -/
def checkProgression : SnapshotTree Unit -> Nat -> Nat -> Nat -> Bool
  | .leaf, _, _, count => count == 0
  | .inner _ key _ left right, start, step, count =>
    if count == 0 then true else
    let leftCount := min count ((key - start + step - 1) / step)
    let skip := if leftCount < count && start + step * leftCount == key
      then leftCount + 1 else leftCount
    decide (leftCount <= skip ∧ skip <= count) &&
      decide (leftCount = 0 ∨ start + step * (leftCount - 1) < key) &&
      decide (skip = leftCount ∨
        (skip = leftCount + 1 ∧ start + step * leftCount = key)) &&
      decide (skip = count ∨ key < start + step * skip) &&
      checkProgression left start step leftCount &&
      checkProgression right (start + step * skip) step (count - skip)

theorem checkProgression_sound {tree : SnapshotTree Unit} {start step count : Nat}
    (h : checkProgression tree start step count = true) :
    ∀ i < count, tree.contains (start + step * i) = true := by
  induction tree generalizing start step count with
  | leaf =>
    have hc : count = 0 := by simpa [checkProgression] using h
    omega
  | inner size key value left right ihl ihr =>
    simp only [checkProgression] at h
    split at h
    · have hc : count = 0 := by simpa using ‹(count == 0) = true›
      omega
    · rename_i hcount
      let l := min count ((key - start + step - 1) / step)
      let skip := if l < count && start + step * l == key then l + 1 else l
      change (((((decide (l <= skip ∧ skip <= count) &&
        decide (l = 0 ∨ start + step * (l - 1) < key)) &&
        decide (skip = l ∨ (skip = l + 1 ∧ start + step * l = key))) &&
        decide (skip = count ∨ key < start + step * skip)) &&
        checkProgression left start step l) &&
        checkProgression right (start + step * skip) step (count - skip)) = true at h
      simp only [Bool.and_eq_true, decide_eq_true_eq] at h
      obtain ⟨⟨⟨⟨⟨⟨hls, hsc⟩, hlkey⟩, hskip⟩, hrkey⟩, hl⟩, hr⟩ := h
      intro i hi
      by_cases hil : i < l
      · have hle : step * i <= step * (l - 1) :=
          Nat.mul_le_mul_left step (by omega)
        have hik : start + step * i < key := by
          rcases hlkey with hz | hk
          · omega
          · omega
        simpa only [Std.DTreeMap.Internal.Impl.contains,
          Nat.compare_eq_lt.mpr hik] using ihl hl i hil
      · by_cases his : i < skip
        · have heq : start + step * i = key := by
            rcases hskip with heq | ⟨heq, hk⟩
            · omega
            · have hi : i = l := by omega
              simpa only [hi] using hk
          simp only [Std.DTreeMap.Internal.Impl.contains, heq, Nat.compare_eq_eq.mpr rfl]
        · have hle : step * skip <= step * i := Nat.mul_le_mul_left step (by omega)
          have hik : key < start + step * i := by
            rcases hrkey with hz | hk
            · omega
            · omega
          have hindex : skip + (i - skip) = i := by omega
          have hvalue : start + step * skip + step * (i - skip) =
              start + step * i := by rw [Nat.add_assoc, ← Nat.mul_add, hindex]
          have hout := ihr hr (i - skip) (by omega)
          rw [hvalue] at hout
          simpa only [Std.DTreeMap.Internal.Impl.contains,
            Nat.compare_eq_gt.mpr hik] using hout

end JSP848.SnapshotTree

namespace JSP848.RawReplay

def checkRootCoverageTree (s : ReplaySnapshot) (N : Nat)
    (roots : List DiagonalRoot) : Bool :=
  roots.all (fun e =>
    SnapshotTree.checkProgression s.index e.root (e.base ^ 2)
        ((N + e.base ^ 2 - e.root) / (e.base ^ 2)) &&
      SnapshotTree.checkProgression s.index (e.base ^ 2 - e.root) (e.base ^ 2)
        ((N + e.base ^ 2 - (e.base ^ 2 - e.root)) / (e.base ^ 2)))

theorem checkRootCoverageTree_sound {s : ReplaySnapshot} {N : Nat}
    {roots : List DiagonalRoot} (h : checkRootCoverageTree s N roots = true) :
    checkRootCoverage s N roots = true := by
  apply List.all_eq_true.mpr
  intro a ha
  obtain ⟨e, he, ha⟩ := List.mem_flatMap.mp ha
  obtain ⟨hl, hr⟩ := Bool.and_eq_true_iff.mp (List.all_eq_true.mp h e he)
  rcases List.mem_append.mp ha with ha | ha
  · obtain ⟨i, hi, rfl⟩ := List.mem_map.mp ha
    simpa only [Nat.add_comm] using
      SnapshotTree.checkProgression_sound hl i (List.mem_range.mp hi)
  · obtain ⟨i, hi, rfl⟩ := List.mem_map.mp ha
    simpa only [Nat.add_comm] using
      SnapshotTree.checkProgression_sound hr i (List.mem_range.mp hi)

end JSP848.RawReplay
