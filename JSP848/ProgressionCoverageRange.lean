import JSP848.TreeProgressionCoverage

namespace JSP848

def CoversProgression (tree : SnapshotTree Unit) (start step count : Nat) : Prop :=
  ∀ i < count, tree.contains (start + step * i) = true

namespace CoversProgression

theorem of_check {tree : SnapshotTree Unit} {start step count : Nat}
    (h : SnapshotTree.checkProgression tree start step count = true) :
    CoversProgression tree start step count := SnapshotTree.checkProgression_sound h

theorem append {tree : SnapshotTree Unit} {start step n m : Nat}
    (left : CoversProgression tree start step n)
    (right : CoversProgression tree (start + step * n) step m) :
    CoversProgression tree start step (n + m) := by
  intro i hi
  by_cases hil : i < n
  · exact left i hil
  · have hindex : n + (i - n) = i := by omega
    have hvalue : start + step * n + step * (i - n) = start + step * i := by
      rw [Nat.add_assoc, ← Nat.mul_add, hindex]
    simpa only [hvalue] using right (i - n) (by omega)

theorem residue_all {tree : SnapshotTree Unit} {N q r : Nat}
    (h : CoversProgression tree r q ((N + q - r) / q)) :
    (residueProgression N q r).all tree.contains = true := by
  apply List.all_eq_true.mpr
  intro a ha
  obtain ⟨i, hi, rfl⟩ := List.mem_map.mp ha
  simpa only [Nat.add_comm] using h i (List.mem_range.mp hi)

theorem root_coverage {s : ReplaySnapshot} {N : Nat} {e : DiagonalRoot}
    (positive : CoversProgression s.index e.root (e.base ^ 2)
      ((N + e.base ^ 2 - e.root) / (e.base ^ 2)))
    (negative : CoversProgression s.index (e.base ^ 2 - e.root) (e.base ^ 2)
      ((N + e.base ^ 2 - (e.base ^ 2 - e.root)) / (e.base ^ 2))) :
    RawReplay.checkRootCoverage s N [e] = true := by
  change (rootCandidates N e ++ []).all s.index.contains = true
  rw [List.append_nil, rootCandidates, List.all_append,
    residue_all positive, residue_all negative]
  rfl

end CoversProgression

end JSP848
