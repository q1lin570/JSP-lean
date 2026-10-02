import JSP848.UniformOffDiagonalTail
import Mathlib.Analysis.Complex.ExponentialBounds

namespace JSP848

theorem largeRoot_power_lower {u c : Real} (hu : 0 ≤ u)
    (hbase : (2199023255552 : Real) ≤ u ^ 60) (k : Nat)
    (hc : c ^ 60 ≤ (2199023255552 : Real) ^ k) : c ≤ u ^ k := by
  apply le_of_pow_le_pow_left₀ (n := 60) (by decide) (pow_nonneg hu _)
  calc
    c ^ 60 ≤ (2199023255552 : Real) ^ k := hc
    _ ≤ (u ^ 60) ^ k := pow_le_pow_left₀ (by norm_num) hbase _
    _ = (u ^ k) ^ 60 := by rw [← pow_mul, ← pow_mul, Nat.mul_comm 60 k]

theorem largeRoot_log_bounds {u : Real} (hu : 0 < u)
    (hbase : (2199023255552 : Real) ≤ u ^ 60) :
    21 ≤ Real.log (3 * u ^ 45) ∧ 19 ≤ Real.log (4 * u ^ 40) := by
  have hlog : 41 * Real.log 2 ≤ 60 * Real.log u := by
    have hm := Real.log_le_log (by norm_num : (0 : Real) < 2199023255552) hbase
    rw [show (2199023255552 : Real) = 2 ^ 41 by norm_num, Real.log_pow, Real.log_pow] at hm
    norm_num at hm
    exact hm
  have h2 : (2 / 3 : Real) ≤ Real.log 2 := by linarith [Real.log_two_gt_d9]
  have h3 : (1 : Real) ≤ Real.log 3 :=
    (Real.le_log_iff_exp_le (by norm_num)).mpr Real.exp_one_lt_three.le
  have h4 : Real.log (4 : Real) = 2 * Real.log 2 := by
    rw [show (4 : Real) = 2 ^ 2 by norm_num, Real.log_pow]
    norm_num
  rw [Real.log_mul (by norm_num) (pow_ne_zero _ hu.ne'),
    Real.log_mul (by norm_num) (pow_ne_zero _ hu.ne'), Real.log_pow, Real.log_pow, h4]
  constructor <;> norm_num <;> linarith

theorem largeRoot_cutoffs {u : Real} (hu : 0 ≤ u)
    (hbase : (2199023255552 : Real) ≤ u ^ 60) :
    65536 ≤ 3 * u ^ 45 ∧ 65536 ≤ 4 * u ^ 40 := by
  have h45 := largeRoot_power_lower hu hbase 45 (c := 65536) (by norm_num)
  have h40 := largeRoot_power_lower hu hbase 40 (c := 65536) (by norm_num)
  constructor <;> linarith

theorem largeRoot_prime_error_R {u : Real} (hu : 0 < u)
    (hbase : (2199023255552 : Real) ≤ u ^ 60) :
    3 * (3 * u ^ 45) / Real.log (3 * u ^ 45) ≤ (21 / 50000 : Real) * u ^ 60 := by
  have h15 := largeRoot_power_lower hu.le hbase 15 (c := 1024) (by norm_num)
  have hlog := (largeRoot_log_bounds hu hbase).1
  have hlpos : 0 < Real.log (3 * u ^ 45) := by linarith
  have he : (3 * (3 * u ^ 45) / Real.log (3 * u ^ 45)) / u ^ 60 =
      (9 / u ^ 15) / Real.log (3 * u ^ 45) := by
    field_simp
    ring
  apply (div_le_iff₀ (pow_pos hu 60)).mp
  rw [he]
  calc
    _ ≤ (9 / 1024 : Real) / 21 := by
      apply div_le_div₀ (by positivity) ?_ (by norm_num) hlog
      exact div_le_div_of_nonneg_left (by norm_num) (by norm_num) h15
    _ ≤ _ := by norm_num

theorem largeRoot_prime_error_S {u : Real} (hu : 0 < u)
    (hbase : (2199023255552 : Real) ≤ u ^ 60) :
    (3 * (4 * u ^ 40) / Real.log (4 * u ^ 40)) / u ^ 60 ≤ (12 / (12288 * 19) : Real) := by
  have h20 := largeRoot_power_lower hu.le hbase 20 (c := 12288) (by norm_num)
  have hlog := (largeRoot_log_bounds hu hbase).2
  have hlpos : 0 < Real.log (4 * u ^ 40) := by linarith
  have he : (3 * (4 * u ^ 40) / Real.log (4 * u ^ 40)) / u ^ 60 =
      (12 / u ^ 20) / Real.log (4 * u ^ 40) := by
    field_simp
    ring
  rw [he]
  calc
    _ ≤ (12 / 12288 : Real) / 19 := by
      apply div_le_div₀ (by positivity) ?_ (by norm_num) hlog
      exact div_le_div_of_nonneg_left (by norm_num) (by norm_num) h20
    _ = _ := by norm_num

theorem largeRoot_log_ratio {u : Real} (hu : 0 < u) :
    Real.log (u ^ 60) / Real.log 3 ≤ 12 * u ^ 5 := by
  have h3 : (1 : Real) ≤ Real.log 3 :=
    (Real.le_log_iff_exp_le (by norm_num)).mpr Real.exp_one_lt_three.le
  have hl := Real.log_le_sub_one_of_pos (pow_pos hu 5)
  rw [Real.log_pow] at hl ⊢
  norm_num at hl ⊢
  apply (div_le_iff₀ (by linarith : (0 : Real) < Real.log 3)).mpr
  have hm := mul_le_mul_of_nonneg_left h3 (show (0 : Real) ≤ 12 * u ^ 5 by positivity)
  linarith

end JSP848
