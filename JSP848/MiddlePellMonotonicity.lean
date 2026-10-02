import JSP848.MiddleRangeMonotonicity
import JSP848.RealPellTail

namespace JSP848

theorem cubic_cofactor_sqrt {u s : Real} (hu : 0 < u) (hs : 0 < s) :
    Real.sqrt ((u ^ 6 + 1) / (s * u ^ 2) ^ 2) =
      (u / s) * Real.sqrt (1 + 1 / u ^ 6) := by
  apply (Real.sqrt_eq_iff_eq_sq (by positivity) (by positivity)).mpr
  rw [mul_pow, mul_pow, Real.sq_sqrt (by positivity)]
  field_simp

noncomputable def cubicPellRatio (u s density discrepancy exceptionScale : Real) : Real :=
  (density * ((u ^ 6 + 1) / (s * u ^ 2) ^ 2) + discrepancy +
    (exceptionScale * Real.sqrt ((u ^ 6 + 1) / (s * u ^ 2) ^ 2) + 1) *
      (Real.log (u ^ 3) / Real.log 3)) / u ^ 3

theorem cubicPellRatio_formula {u s density discrepancy exceptionScale : Real}
    (hu : 0 < u) (hs : 0 < s) :
    cubicPellRatio u s density discrepancy exceptionScale =
      (density / s ^ 2) * (1 / u + 1 / u ^ 7) + discrepancy / u ^ 3 +
      (3 / Real.log 3) *
        ((exceptionScale / s) * Real.sqrt (1 + 1 / u ^ 6) * (Real.log u / u ^ 2) +
          Real.log u / u ^ 3) := by
  unfold cubicPellRatio
  rw [cubic_cofactor_sqrt hu hs, Real.log_pow]
  field_simp
  <;> ring

theorem cubicPellRatio_antitone {u v s density discrepancy exceptionScale : Real}
    (hu : 3 ≤ u) (huv : u ≤ v) (hs : 0 < s)
    (hd : 0 ≤ density) (he : 0 ≤ discrepancy) (hc : 0 ≤ exceptionScale) :
    cubicPellRatio v s density discrepancy exceptionScale ≤
      cubicPellRatio u s density discrepancy exceptionScale := by
  have hu0 : 0 < u := by linarith
  have hv0 := hu0.trans_le huv
  have hu1 : 1 ≤ u := by linarith
  have hv1 := hu1.trans huv
  rw [cubicPellRatio_formula hv0 hs, cubicPellRatio_formula hu0 hs]
  have hi (k : Nat) : (1 : Real) / v ^ k ≤ 1 / u ^ k :=
    one_div_le_one_div_of_le (pow_pos hu0 k) (pow_le_pow_left₀ hu0.le huv k)
  have hi1 : (1 : Real) / v ≤ 1 / u := by simpa using hi 1
  have hmain := mul_le_mul_of_nonneg_left (add_le_add hi1 (hi 7))
    (div_nonneg hd (sq_nonneg s))
  have hdisc := mul_le_mul_of_nonneg_left (hi 3) he
  simp only [mul_one_div] at hdisc
  have hlogs2 := log_div_nat_power_antitone hu huv (by decide : 1 ≤ 2)
  have hlogs3 := log_div_nat_power_antitone hu huv (by decide : 1 ≤ 3)
  have hroot : Real.sqrt (1 + 1 / v ^ 6) ≤ Real.sqrt (1 + 1 / u ^ 6) :=
    Real.sqrt_le_sqrt (by linarith [hi 6])
  have hcoef := mul_le_mul_of_nonneg_left hroot (div_nonneg hc hs.le)
  have hlogV : 0 ≤ Real.log v / v ^ 2 := div_nonneg (Real.log_nonneg hv1) (sq_nonneg v)
  have hlogterm := mul_le_mul hcoef hlogs2 hlogV (by positivity)
  have hlog3 : 0 < Real.log 3 := Real.log_pos (by norm_num)
  exact add_le_add (add_le_add hmain hdisc)
    (mul_le_mul_of_nonneg_left (add_le_add hlogterm hlogs3) (by positivity))

theorem pellTailBound_cubic_ratio {N : Nat} {u s : Real} (hN : (N : Real) = u ^ 3) :
    pellTailBound N (((N : Real) ^ 2 + 1) / (s * u ^ 2) ^ 2) / N =
      cubicPellRatio u s (3 / 14) (45 / 14) 1 := by
  unfold pellTailBound cubicPellRatio
  rw [hN]
  norm_num [← pow_mul]

theorem oddPellTailBound_cubic_ratio {N : Nat} {u s : Real} (hN : (N : Real) = u ^ 3) :
    oddPellTailBound N (((N : Real) ^ 2 + 1) / (s * u ^ 2) ^ 2) / N =
      cubicPellRatio u s (1 / 14) (15 / 7) (1 / 2) := by
  unfold oddPellTailBound cubicPellRatio
  rw [hN]
  norm_num [← pow_mul]
  <;> ring

namespace MiddlePellMonotonicityTests

theorem odd_tail_decreases :
    cubicPellRatio 512 2 (1 / 14) (15 / 7) (1 / 2) ≤
      cubicPellRatio 256 2 (1 / 14) (15 / 7) (1 / 2) :=
  cubicPellRatio_antitone (by norm_num) (by norm_num) (by norm_num)
    (by norm_num) (by norm_num) (by norm_num)

end MiddlePellMonotonicityTests

end JSP848
