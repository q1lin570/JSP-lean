import JSP848.SnapshotCoverageChunks

namespace JSP848

/-- Balanced recursion avoids constructing a list of millions of sieve values. -/
def checkNatInterval (p : Nat -> Bool) (start count : Nat) : Nat -> Bool
  | 0 => count == 0
  | fuel + 1 =>
    if count == 0 then true
    else if count == 1 then p start
    else
      let left := count / 2
      checkNatInterval p start left fuel &&
        checkNatInterval p (start + left) (count - left) fuel

theorem checkNatInterval_sound {p : Nat -> Bool} {start count fuel : Nat}
    (h : checkNatInterval p start count fuel = true) :
    forall k, start <= k -> k < start + count -> p k = true := by
  induction fuel generalizing start count with
  | zero =>
    have hc : count = 0 := by simpa [checkNatInterval] using h
    omega
  | succ fuel ih =>
    simp only [checkNatInterval] at h
    split at h
    · have hc : count = 0 := by simpa using ‹(count == 0) = true›
      omega
    · split at h
      · have hc : count = 1 := by simpa using ‹(count == 1) = true›
        intro k hk hkc
        have heq : k = start := by omega
        simpa [heq] using h
      · obtain ⟨hl, hr⟩ := Bool.and_eq_true_iff.mp h
        intro k hk hkc
        by_cases hkl : k < start + count / 2
        · exact ih hl k hk hkl
        · exact ih hr k (by omega) (by omega)

namespace RawReplay

def checkProgressionCoverage (s : ReplaySnapshot) (N q r fuel : Nat) : Bool :=
  checkNatInterval (fun k => s.index.contains (q * k + r))
    0 ((N + q - r) / q) fuel

theorem checkProgressionCoverage_sound {s : ReplaySnapshot} {N q r fuel : Nat}
    (h : checkProgressionCoverage s N q r fuel = true) :
    (residueProgression N q r).all s.index.contains = true := by
  apply List.all_eq_true.mpr
  intro a ha
  obtain ⟨k, hk, rfl⟩ := List.mem_map.mp ha
  exact checkNatInterval_sound h k (Nat.zero_le k) (by
    simpa using List.mem_range.mp hk)

def checkRootCoverageBalanced (s : ReplaySnapshot) (N fuel : Nat)
    (roots : List DiagonalRoot) : Bool :=
  roots.all (fun e =>
    checkProgressionCoverage s N (e.base ^ 2) e.root fuel &&
      checkProgressionCoverage s N (e.base ^ 2) (e.base ^ 2 - e.root) fuel)

theorem checkRootCoverageBalanced_sound {s : ReplaySnapshot} {N fuel : Nat}
    {roots : List DiagonalRoot} (h : checkRootCoverageBalanced s N fuel roots = true) :
    checkRootCoverage s N roots = true := by
  apply List.all_eq_true.mpr
  intro a ha
  obtain ⟨e, he, ha⟩ := List.mem_flatMap.mp ha
  obtain ⟨hl, hr⟩ := Bool.and_eq_true_iff.mp (List.all_eq_true.mp h e he)
  rcases List.mem_append.mp ha with ha | ha
  · exact List.all_eq_true.mp (checkProgressionCoverage_sound hl) a ha
  · exact List.all_eq_true.mp (checkProgressionCoverage_sound hr) a ha

end RawReplay

namespace ProgressionCoverageTests

example : checkNatInterval (fun k => decide (7 <= k && k < 1031)) 7 1024 11 = true := by
  decide +kernel

example : checkNatInterval (fun k => decide (k != 512)) 0 1024 11 = false := by
  decide +kernel

example : checkNatInterval (fun _ => true) 0 1024 9 = false := by decide +kernel

example : checkNatInterval (fun _ => false) 7 0 0 = true := by decide +kernel

end ProgressionCoverageTests

end JSP848
