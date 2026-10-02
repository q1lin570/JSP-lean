import JSP848.PeriodicCount

namespace JSP848

/-- Membership of successive symmetric-root events after removing 7 and 18 modulo 25. -/
def rootPairMask (step root n : Nat) : Bool :=
  let residue := if n % 2 = 1 then (n / 2 * step + root) % 25
    else (n / 2 * step + (25 - root)) % 25
  decide (residue ≠ 7 ∧ residue ≠ 18)

theorem rootPairMask_periodic (step root n : Nat) :
    rootPairMask step root (n + 50) = rootPairMask step root n := by
  have he : (n + 50) / 2 = n / 2 + 25 := by omega
  have hm : (n + 50) % 2 = n % 2 := by omega
  unfold rootPairMask
  rw [he, hm]
  simp [Nat.add_mul, Nat.add_mod, Nat.mul_mod]

set_option maxRecDepth 100000 in
set_option maxHeartbeats 0 in
theorem rootPairMask_checked : ∀ step root : Fin 25, step.val % 5 ≠ 0 →
    maskCount (rootPairMask step.val root.val) 50 = 46 ∧
    ∀ n : Fin 50, 25 * maskCount (rootPairMask step.val root.val) n.val ≤ 23 * n.val + 46 := by
  decide +kernel

theorem rootPairMask_count_bound {step root : Nat} (hs : step < 25) (hr : root < 25)
    (hc : step % 5 ≠ 0) (N : Nat) :
    25 * maskCount (rootPairMask step root) N ≤ 23 * N + 46 := by
  have he := rootPairMask_checked ⟨step, hs⟩ ⟨root, hr⟩ hc
  apply periodic_mask_count_bound (rootPairMask step root) (m := 50) (c := 46)
    (by decide) (rootPairMask_periodic step root) he.1 (by decide)
  intro n hn
  exact he.2 ⟨n, hn⟩

namespace RootPairMaskTests

theorem full_period : maskCount (rootPairMask 13 7) 50 = 46 := by decide

theorem excluded_first_event : rootPairMask 13 7 1 = false := by decide

theorem multiple_periods : 25 * maskCount (rootPairMask 13 7) 50000 ≤ 23 * 50000 + 46 :=
  rootPairMask_count_bound (by decide) (by decide) (by decide) 50000

end RootPairMaskTests

end JSP848
