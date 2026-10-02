import Mathlib.Analysis.SpecialFunctions.Log.Monotone
import Mathlib.Analysis.Complex.ExponentialBounds
import Mathlib.Tactic

namespace JSP848

theorem sqrt_succ_div_antitone {x y : Real} (hx : 0 < x) (hxy : x ≤ y) :
    Real.sqrt (y + 1) / y ≤ Real.sqrt (x + 1) / x := by
  have hy := hx.trans_le hxy
  apply (div_le_div_iff₀ hy hx).mpr
  apply (sq_le_sq₀ (by positivity) (by positivity)).mp
  rw [mul_pow, mul_pow, Real.sq_sqrt (by positivity), Real.sq_sqrt (by positivity)]
  have hp := mul_nonneg (sub_nonneg.mpr hxy)
    (show (0 : Real) ≤ x * y + x + y by positivity)
  nlinarith

noncomputable def cubicMainRatio (u r : Real) : Real :=
  (2 * (u ^ 3 + 1) / (r * u ^ 2) + (u ^ 6 + 1) / (r * u ^ 2) ^ 2) / u ^ 3

theorem cubicMainRatio_formula {u r : Real} (hu : 0 < u) (hr : 0 < r) :
    cubicMainRatio u r =
      (2 / r) * (1 / u ^ 2 + 1 / u ^ 5) + (1 / r ^ 2) * (1 / u + 1 / u ^ 7) := by
  unfold cubicMainRatio
  field_simp

theorem cubicMainRatio_antitone {u v r : Real} (hu : 0 < u) (huv : u ≤ v) (hr : 0 < r) :
    cubicMainRatio v r ≤ cubicMainRatio u r := by
  have hv := hu.trans_le huv
  rw [cubicMainRatio_formula hv hr, cubicMainRatio_formula hu hr]
  have hi (k : Nat) : (1 : Real) / v ^ k ≤ 1 / u ^ k :=
    one_div_le_one_div_of_le (pow_pos hu k) (pow_le_pow_left₀ hu.le huv k)
  have hi1 : (1 : Real) / v ≤ 1 / u := by simpa using hi 1
  exact add_le_add
    (mul_le_mul_of_nonneg_left (add_le_add (hi 2) (hi 5)) (by positivity))
    (mul_le_mul_of_nonneg_left (add_le_add hi1 (hi 7)) (by positivity))

noncomputable def cubicPrimeRatio (u r coefficient : Real) : Real :=
  (coefficient * (r * u ^ 2) / Real.log (r * u ^ 2)) / u ^ 3

theorem cubicPrimeRatio_formula {u r coefficient : Real} (hu : 0 < u) :
    cubicPrimeRatio u r coefficient = coefficient * r / (u * Real.log (r * u ^ 2)) := by
  unfold cubicPrimeRatio
  field_simp

theorem cubicPrimeRatio_antitone {u v r coefficient : Real}
    (hu : 0 < u) (huv : u ≤ v) (hr : 0 < r) (hc : 0 ≤ coefficient)
    (hcut : 1 < r * u ^ 2) : cubicPrimeRatio v r coefficient ≤ cubicPrimeRatio u r coefficient := by
  have hv := hu.trans_le huv
  have hcut_le : r * u ^ 2 ≤ r * v ^ 2 :=
    mul_le_mul_of_nonneg_left (pow_le_pow_left₀ hu.le huv 2) hr.le
  have hlog := Real.log_pos hcut
  have hlogs := Real.log_le_log (show (0 : Real) < r * u ^ 2 by positivity) hcut_le
  rw [cubicPrimeRatio_formula hv, cubicPrimeRatio_formula hu]
  apply div_le_div_of_nonneg_left (mul_nonneg hc hr.le) (mul_pos hu hlog)
  exact mul_le_mul huv hlogs hlog.le hv.le

theorem log_div_nat_power_antitone {u v : Real} (hu : 3 ≤ u) (huv : u ≤ v)
    {k : Nat} (hk : 1 ≤ k) : Real.log v / v ^ k ≤ Real.log u / u ^ k := by
  have hk' : (1 : Real) ≤ k := by exact_mod_cast hk
  have hkpos : (0 : Real) < k := by linarith
  have he : Real.exp (1 / (k : Real)) ≤ 3 := by
    apply le_trans (Real.exp_le_exp.mpr ?_) Real.exp_one_lt_three.le
    exact (div_le_iff₀ hkpos).mpr (by simpa using hk')
  have h := Real.log_div_self_rpow_antitoneOn hkpos (he.trans hu) (he.trans (hu.trans huv)) huv
  simpa only [Real.rpow_natCast] using h

namespace MiddleRangeMonotonicityTests

theorem increasing_cube_root : cubicMainRatio 512 3 ≤ cubicMainRatio 256 3 :=
  cubicMainRatio_antitone (by norm_num) (by norm_num) (by norm_num)

end MiddleRangeMonotonicityTests

end JSP848
