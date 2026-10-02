import Mathlib.NumberTheory.Chebyshev
import Mathlib.Analysis.SpecialFunctions.Log.Monotone
import Mathlib.Analysis.Complex.ExponentialBounds
import Mathlib.Tactic

namespace JSP848

open Finset

theorem primeCounting_mul_log_le_sqrt_add_theta {x : Real} (hx : 1 ≤ x) :
    (Nat.primeCounting ⌊x⌋₊ : Real) * Real.log x ≤
      Real.sqrt x * Real.log x + 2 * Chebyshev.theta x := by
  classical
  let P := (Finset.Icc 0 ⌊x⌋₊).filter Nat.Prime
  let S := P.filter (fun p => p ≤ ⌊Real.sqrt x⌋₊)
  let T := P.filter (fun p => ¬p ≤ ⌊Real.sqrt x⌋₊)
  have hxpos : 0 < x := by linarith
  have hspos : 0 < Real.sqrt x := Real.sqrt_pos.mpr hxpos
  have hlog : 0 ≤ Real.log x := Real.log_nonneg hx
  have hcount : P.card = Nat.primeCounting ⌊x⌋₊ := by
    simp only [P, Nat.primeCounting, Nat.primeCounting', Nat.count_eq_card_filter_range,
      Nat.range_succ_eq_Icc_zero]
  have hpartition : S.card + T.card = P.card := by
    exact Finset.card_filter_add_card_filter_not (s := P) (fun p => p ≤ ⌊Real.sqrt x⌋₊)
  have hsmallNat : S.card ≤ ⌊Real.sqrt x⌋₊ := by
    calc
      S.card ≤ (Finset.Icc 1 ⌊Real.sqrt x⌋₊).card := Finset.card_le_card (by
        intro p hp
        obtain ⟨hpP, hpS⟩ := Finset.mem_filter.mp hp
        exact Finset.mem_Icc.mpr ⟨(Finset.mem_filter.mp hpP).2.one_le, hpS⟩)
      _ = ⌊Real.sqrt x⌋₊ := by simp
  have hsmall : (S.card : Real) ≤ Real.sqrt x :=
    (by exact_mod_cast hsmallNat : (S.card : Real) ≤ (⌊Real.sqrt x⌋₊ : Real)).trans
      (Nat.floor_le (Real.sqrt_nonneg x))
  have hlarge : (T.card : Real) * Real.log (Real.sqrt x) ≤ Chebyshev.theta x := by
    calc
      (T.card : Real) * Real.log (Real.sqrt x) =
          ∑ p ∈ T, Real.log (Real.sqrt x) := by simp
      _ ≤ ∑ p ∈ T, Real.log p := Finset.sum_le_sum (by
        intro p hp
        have hpT := (Finset.mem_filter.mp hp).2
        exact Real.log_le_log hspos (Nat.lt_of_floor_lt (by omega)).le)
      _ ≤ ∑ p ∈ P, Real.log p := Finset.sum_le_sum_of_subset_of_nonneg
        (Finset.filter_subset _ _) (by
          intro p hp _
          exact Real.log_nonneg (by exact_mod_cast (Finset.mem_filter.mp hp).2.one_le))
      _ = Chebyshev.theta x := (Chebyshev.theta_eq_sum_Icc x).symm
  rw [Real.log_sqrt hxpos.le] at hlarge
  have hcard : (S.card : Real) + T.card = Nat.primeCounting ⌊x⌋₊ := by
    exact_mod_cast hpartition.trans hcount
  nlinarith [mul_le_mul_of_nonneg_right hsmall hlog]

theorem log_div_sqrt_le_one_fifth {x : Real} (hx : 65536 ≤ x) :
    Real.log x / Real.sqrt x ≤ 1 / 5 := by
  have hexp : Real.exp 2 < 9 := by
    rw [show (2 : Real) = 1 + 1 by norm_num, Real.exp_add]
    nlinarith [Real.exp_one_lt_three, Real.exp_pos 1]
  have hbase : Real.exp 2 ≤ (65536 : Real) := by linarith
  have hm := Real.log_div_sqrt_antitoneOn hbase (hbase.trans hx) hx
  have hlog : Real.log (65536 : Real) = 16 * Real.log 2 := by
    rw [show (65536 : Real) = 2 ^ 16 by norm_num, Real.log_pow]
    norm_num
  have hsqrt : Real.sqrt (65536 : Real) = 256 := by norm_num
  change Real.log x / Real.sqrt x ≤ Real.log (65536 : Real) / Real.sqrt (65536 : Real) at hm
  rw [hlog, hsqrt] at hm
  linarith [Real.log_two_lt_d9]

/-- An explicit elementary bound, with no asymptotic or external prime estimate. -/
theorem primeCounting_le_three_mul_div_log {x : Real} (hx : 65536 ≤ x) :
    (Nat.primeCounting ⌊x⌋₊ : Real) ≤ 3 * x / Real.log x := by
  have hxpos : 0 < x := by linarith
  have hlog : 0 < Real.log x := Real.log_pos (by linarith)
  have hspos : 0 < Real.sqrt x := Real.sqrt_pos.mpr hxpos
  have hs := (div_le_iff₀ hspos).mp (log_div_sqrt_le_one_fifth hx)
  have hsquare := Real.sq_sqrt hxpos.le
  have hsmall : Real.sqrt x * Real.log x ≤ x / 5 := by
    nlinarith [mul_le_mul_of_nonneg_left hs hspos.le]
  have hfour : Real.log (4 : Real) ≤ 7 / 5 := by
    rw [show (4 : Real) = 2 ^ 2 by norm_num, Real.log_pow]
    norm_num
    linarith [Real.log_two_lt_d9]
  have htheta : Chebyshev.theta x ≤ 7 / 5 * x :=
    (Chebyshev.theta_le_log4_mul_x hxpos.le).trans
      (mul_le_mul_of_nonneg_right hfour hxpos.le)
  apply (le_div_iff₀ hlog).mpr
  have hsplit := primeCounting_mul_log_le_sqrt_add_theta (by linarith : 1 ≤ x)
  linarith

theorem primeCounting_nat_le_three_mul_div_log {N : Nat} (hN : 65536 ≤ N) :
    (Nat.primeCounting N : Real) ≤ 3 * N / Real.log N := by
  simpa only [Nat.floor_natCast] using
    primeCounting_le_three_mul_div_log (by exact_mod_cast hN : (65536 : Real) ≤ N)

end JSP848
