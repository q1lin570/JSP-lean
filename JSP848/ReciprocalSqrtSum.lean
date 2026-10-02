import JSP848.RealPellTail

namespace JSP848

theorem reciprocal_sqrt_step {x : Real} (hx : 0 ≤ x) :
    1 / Real.sqrt (x + 1) ≤ 2 * (Real.sqrt (x + 1) - Real.sqrt x) := by
  have hp : 0 < Real.sqrt (x + 1) := Real.sqrt_pos.2 (by linarith)
  apply (div_le_iff₀ hp).mpr
  have hs := Real.sq_sqrt hx
  have ht := Real.sq_sqrt (show 0 ≤ x + 1 by linarith)
  nlinarith [sq_nonneg (Real.sqrt (x + 1) - Real.sqrt x)]

theorem sum_reciprocal_sqrt_range (M : Nat) :
    (∑ i ∈ Finset.range M, 1 / Real.sqrt ((i : Real) + 1)) ≤
      2 * Real.sqrt M := by
  induction M with
  | zero => simp
  | succ M ih =>
      rw [Finset.sum_range_succ]
      have hs := reciprocal_sqrt_step (Nat.cast_nonneg M)
      rw [Nat.cast_succ]
      linarith

theorem sum_reciprocal_sqrt_Icc (M : Nat) :
    (∑ m ∈ Finset.Icc 1 M, 1 / Real.sqrt (m : Real)) ≤
      2 * Real.sqrt M := by
  induction M with
  | zero => simp
  | succ M ih =>
      rw [Finset.sum_Icc_succ_top (by omega)]
      have hs := reciprocal_sqrt_step (Nat.cast_nonneg M)
      rw [Nat.cast_succ]
      linarith

end JSP848
