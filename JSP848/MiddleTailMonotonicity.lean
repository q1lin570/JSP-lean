import JSP848.MiddleRangeMonotonicity

namespace JSP848

theorem scaled_sqrt_succ_div_antitone {x y l : Real}
    (hx : 0 < x) (hxy : x ≤ y) (hl : 0 < l) :
    Real.sqrt ((y + 1) / l) / y ≤ Real.sqrt ((x + 1) / l) / x := by
  have hy := hx.trans_le hxy
  rw [Real.sqrt_div (by positivity), Real.sqrt_div (by positivity)]
  have h := div_le_div_of_nonneg_right (sqrt_succ_div_antitone hx hxy) (Real.sqrt_nonneg l)
  convert h using 1 <;> ring

theorem rpow_div_self_antitone {x y B a : Real}
    (hx : 0 < x) (hxy : x ≤ y) (hB : 0 < B) (ha : a ≤ 1) :
    (y / B) ^ a / y ≤ (x / B) ^ a / x := by
  have hy := hx.trans_le hxy
  have hm := Real.rpow_le_rpow_of_nonpos hx hxy (sub_nonpos.mpr ha)
  rw [Real.div_rpow hy.le hB.le, Real.div_rpow hx.le hB.le]
  have he (z : Real) (hz : 0 < z) : z ^ a / B ^ a / z = z ^ (a - 1) / B ^ a := by
    rw [Real.rpow_sub hz, Real.rpow_one]
    ring
  rw [he y hy, he x hx]
  exact div_le_div_of_nonneg_right hm (Real.rpow_nonneg hB.le _)

theorem known_remainder_ratio_antitone {x y l : Real}
    (hx : 0 < x) (hxy : x ≤ y) (hl : 0 < l) :
    (2 * Real.sqrt ((y + 1) / l) + 1) / y ≤
      (2 * Real.sqrt ((x + 1) / l) + 1) / x := by
  have hs := scaled_sqrt_succ_div_antitone hx hxy hl
  have hi := one_div_le_one_div_of_le hx hxy
  have h := add_le_add (mul_le_mul_of_nonneg_left hs (by norm_num : (0 : Real) ≤ 2)) hi
  convert h using 1 <;> ring

theorem unknown_remainder_ratio_antitone {x y l B a : Real}
    (hx : 0 < x) (hxy : x ≤ y) (hl : 0 < l) (hB : 0 < B) (ha : a ≤ 1) :
    (2 * Real.sqrt ((y + 1) / l) * (l / B) ^ a + (y / B) ^ a) / y ≤
      (2 * Real.sqrt ((x + 1) / l) * (l / B) ^ a + (x / B) ^ a) / x := by
  have hs := scaled_sqrt_succ_div_antitone hx hxy hl
  have hp := rpow_div_self_antitone hx hxy hB ha
  have hc : 0 ≤ 2 * (l / B) ^ a := by positivity
  have h := add_le_add (mul_le_mul_of_nonneg_left hs hc) hp
  convert h using 1 <;> ring

theorem parameter_tail_ratio_antitone {u v r l mainCoeff remainderCoeff : Real}
    (hu : 0 < u) (huv : u ≤ v) (hr : 0 < r) (hl : 0 < l)
    (hm : 0 ≤ mainCoeff) (hc : 0 ≤ remainderCoeff) :
    mainCoeff * cubicMainRatio v r +
        remainderCoeff * ((2 * Real.sqrt ((v ^ 3 + 1) / l) + 1) / v ^ 3) ≤
      mainCoeff * cubicMainRatio u r +
        remainderCoeff * ((2 * Real.sqrt ((u ^ 3 + 1) / l) + 1) / u ^ 3) := by
  exact add_le_add
    (mul_le_mul_of_nonneg_left (cubicMainRatio_antitone hu huv hr) hm)
    (mul_le_mul_of_nonneg_left (known_remainder_ratio_antitone (pow_pos hu 3)
      (pow_le_pow_left₀ hu.le huv 3) hl) hc)

theorem unknown_tail_ratio_antitone {u v r l B a mainCoeff remainderCoeff : Real}
    (hu : 0 < u) (huv : u ≤ v) (hr : 0 < r) (hl : 0 < l) (hB : 0 < B)
    (ha : a ≤ 1) (hm : 0 ≤ mainCoeff) (hc : 0 ≤ remainderCoeff) :
    mainCoeff * cubicMainRatio v r + remainderCoeff *
        ((2 * Real.sqrt ((v ^ 3 + 1) / l) * (l / B) ^ a + (v ^ 3 / B) ^ a) / v ^ 3) ≤
      mainCoeff * cubicMainRatio u r + remainderCoeff *
        ((2 * Real.sqrt ((u ^ 3 + 1) / l) * (l / B) ^ a + (u ^ 3 / B) ^ a) / u ^ 3) := by
  exact add_le_add
    (mul_le_mul_of_nonneg_left (cubicMainRatio_antitone hu huv hr) hm)
    (mul_le_mul_of_nonneg_left (unknown_remainder_ratio_antitone (pow_pos hu 3)
      (pow_le_pow_left₀ hu.le huv 3) hl hB ha) hc)

namespace MiddleTailMonotonicityTests

theorem two_unknown_factors :
    (2 * Real.sqrt ((67108864 + 1) / 667 : Real) * (667 : Real) ^ (1 / 2 : Real) +
      (67108864 : Real) ^ (1 / 2 : Real)) / 67108864 ≤
    (2 * Real.sqrt ((33554432 + 1) / 667 : Real) * (667 : Real) ^ (1 / 2 : Real) +
      (33554432 : Real) ^ (1 / 2 : Real)) / 33554432 := by
  simpa only [div_one] using unknown_remainder_ratio_antitone
    (x := 33554432) (y := 67108864) (l := 667) (B := 1) (a := (1 / 2 : Real))
    (by norm_num) (by norm_num) (by norm_num) (by norm_num) (by norm_num)

end MiddleTailMonotonicityTests

end JSP848
