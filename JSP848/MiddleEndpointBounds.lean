import JSP848.MiddlePellMonotonicity
import JSP848.MiddleTailMonotonicity
import JSP848.RationalLogBounds

namespace JSP848

theorem exists_cubic_parameter {N : Nat} (hN : 0 < N) :
    ∃ u : Real, 0 < u ∧ (N : Real) = u ^ 3 := by
  have hn : (0 : Real) < N := by exact_mod_cast hN
  refine ⟨(N : Real) ^ (1 / 3 : Real), Real.rpow_pos_of_pos hn _, ?_⟩
  rw [← Real.rpow_mul_natCast hn.le]
  norm_num

theorem cubic_parameter_interval {N : Nat} {u lo hi : Real}
    (hu : 0 ≤ u) (hlo : 0 ≤ lo) (hhi : 0 ≤ hi) (hN : (N : Real) = u ^ 3)
    (hlower : lo ^ 3 ≤ N) (hupper : (N : Real) ≤ hi ^ 3) : lo ≤ u ∧ u ≤ hi := by
  rw [hN] at hlower hupper
  exact ⟨le_of_pow_le_pow_left₀ (by decide : 3 ≠ 0) hu hlower,
    le_of_pow_le_pow_left₀ (by decide : 3 ≠ 0) hhi hupper⟩

theorem rpow_inv_nat_le_of_pow_le {x bound : Real} {k : Nat}
    (hx : 0 ≤ x) (hb : 0 ≤ bound) (hk : 0 < k) (hpow : x ≤ bound ^ k) :
    x ^ (1 / (k : Real)) ≤ bound := by
  have h := Real.rpow_le_rpow hx hpow (show (0 : Real) ≤ 1 / k by positivity)
  simpa only [one_div, Real.pow_rpow_inv_natCast hb hk.ne'] using h

theorem cubic_cutoff_interval {u lo hi r : Real}
    (hlo : 0 ≤ lo) (hlu : lo ≤ u) (huh : u ≤ hi) (hr : 0 ≤ r) :
    r * lo ^ 2 ≤ r * u ^ 2 ∧ r * u ^ 2 ≤ r * hi ^ 2 :=
  ⟨mul_le_mul_of_nonneg_left (pow_le_pow_left₀ hlo hlu 2) hr,
    mul_le_mul_of_nonneg_left (pow_le_pow_left₀ (hlo.trans hlu) huh 2) hr⟩

theorem cubicPrimeRatio_le_endpoint {u lo r coefficient logLower : Real}
    (hlo : 0 < lo) (hlu : lo ≤ u) (hr : 0 < r) (hc : 0 ≤ coefficient)
    (hlogpos : 0 < logLower) (hlog : logLower ≤ Real.log (r * lo ^ 2)) :
    cubicPrimeRatio u r coefficient ≤ coefficient * r / (lo * logLower) := by
  have hu := hlo.trans_le hlu
  have hcut := (cubic_cutoff_interval hlo.le hlu le_rfl hr.le).1
  have hlogs := Real.log_le_log (by positivity : (0 : Real) < r * lo ^ 2) hcut
  have hlogu := hlog.trans hlogs
  rw [cubicPrimeRatio_formula hu]
  apply div_le_div_of_nonneg_left (mul_nonneg hc hr.le) (mul_pos hlo hlogpos)
  exact mul_le_mul hlu hlogu hlogpos.le hu.le

theorem cubicPellRatio_le_endpoint {u lo s density discrepancy exceptionScale
    sqrtUpper logUpper logThreeLower : Real}
    (hlo : 3 ≤ lo) (hlu : lo ≤ u) (hs : 0 < s)
    (hd : 0 ≤ density) (he : 0 ≤ discrepancy) (hc : 0 ≤ exceptionScale)
    (hsqrt0 : 0 ≤ sqrtUpper)
    (hsqrt : (lo ^ 6 + 1) / (s * lo ^ 2) ^ 2 ≤ sqrtUpper ^ 2)
    (hlog : Real.log (lo ^ 3) ≤ logUpper)
    (hthree : 0 < logThreeLower) (hlog3 : logThreeLower ≤ Real.log 3) :
    cubicPellRatio u s density discrepancy exceptionScale ≤
      (density * ((lo ^ 6 + 1) / (s * lo ^ 2) ^ 2) + discrepancy +
        (exceptionScale * sqrtUpper + 1) * (logUpper / logThreeLower)) / lo ^ 3 := by
  apply (cubicPellRatio_antitone hlo hlu hs hd he hc).trans
  have hlo0 : 0 < lo := by linarith
  have hroot : Real.sqrt ((lo ^ 6 + 1) / (s * lo ^ 2) ^ 2) ≤ sqrtUpper :=
    Real.sqrt_le_iff.mpr ⟨hsqrt0, hsqrt⟩
  have hlog0 : 0 ≤ Real.log (lo ^ 3) :=
    Real.log_nonneg (one_le_pow₀ (by linarith : (1 : Real) ≤ lo))
  have hlogratio : Real.log (lo ^ 3) / Real.log 3 ≤ logUpper / logThreeLower :=
    div_le_div₀ (hlog0.trans hlog) hlog hthree hlog3
  have hcoef := add_le_add_right (mul_le_mul_of_nonneg_left hroot hc) 1
  have hprod := mul_le_mul hcoef hlogratio
    (div_nonneg hlog0 (hthree.le.trans hlog3)) (by positivity)
  unfold cubicPellRatio
  exact div_le_div_of_nonneg_right (by linarith) (pow_nonneg hlo0.le 3)

theorem known_remainder_le_endpoint {u lo l sqrtUpper : Real}
    (hlo : 0 < lo) (hlu : lo ≤ u) (hl : 0 < l) (hsqrt0 : 0 ≤ sqrtUpper)
    (hsqrt : (lo ^ 3 + 1) / l ≤ sqrtUpper ^ 2) :
    (2 * Real.sqrt ((u ^ 3 + 1) / l) + 1) / u ^ 3 ≤
      (2 * sqrtUpper + 1) / lo ^ 3 := by
  apply (known_remainder_ratio_antitone (pow_pos hlo 3)
    (pow_le_pow_left₀ hlo.le hlu 3) hl).trans
  have hroot := Real.sqrt_le_iff.mpr ⟨hsqrt0, hsqrt⟩
  exact div_le_div_of_nonneg_right (by linarith) (pow_nonneg hlo.le 3)

theorem unknown_remainder_le_endpoint {u lo l B sqrtUpper firstRoot secondRoot : Real}
    {k : Nat} (hlo : 0 < lo) (hlu : lo ≤ u) (hl : 0 < l) (hB : 0 < B)
    (hk : 1 ≤ k) (hsqrt0 : 0 ≤ sqrtUpper) (hfirst0 : 0 ≤ firstRoot)
    (hsecond0 : 0 ≤ secondRoot) (hsqrt : (lo ^ 3 + 1) / l ≤ sqrtUpper ^ 2)
    (hfirst : l / B ≤ firstRoot ^ k) (hsecond : lo ^ 3 / B ≤ secondRoot ^ k) :
    (2 * Real.sqrt ((u ^ 3 + 1) / l) * (l / B) ^ (1 / (k : Real)) +
      (u ^ 3 / B) ^ (1 / (k : Real))) / u ^ 3 ≤
        (2 * sqrtUpper * firstRoot + secondRoot) / lo ^ 3 := by
  have hk' : (1 : Real) ≤ k := by exact_mod_cast hk
  have hkpos : (0 : Real) < k := by linarith
  have ha : (1 : Real) / k ≤ 1 := (div_le_one hkpos).mpr hk'
  apply (unknown_remainder_ratio_antitone (pow_pos hlo 3)
    (pow_le_pow_left₀ hlo.le hlu 3) hl hB ha).trans
  have hroot := Real.sqrt_le_iff.mpr ⟨hsqrt0, hsqrt⟩
  have hf := rpow_inv_nat_le_of_pow_le (div_nonneg hl.le hB.le) hfirst0 (by omega) hfirst
  have hs := rpow_inv_nat_le_of_pow_le (by positivity) hsecond0 (by omega) hsecond
  have hm := mul_le_mul (mul_le_mul_of_nonneg_left hroot (by norm_num : (0 : Real) ≤ 2))
    hf (by positivity) (by positivity)
  exact div_le_div_of_nonneg_right (add_le_add hm hs) (pow_nonneg hlo.le 3)

end JSP848
