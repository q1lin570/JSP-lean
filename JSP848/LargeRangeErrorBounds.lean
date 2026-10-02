import JSP848.LargeRangeRootBounds
import JSP848.RealPellTail

namespace JSP848

theorem largeRoot_uniform_tail {u : Real} (hu : 0 < u)
    (hbase : (2199023255552 : Real) ≤ u ^ 60) :
    18 * u ^ 12 * (2 * (u ^ 60 + 1) / (3 * u ^ 45) +
      ((u ^ 60) ^ 2 + 1) / (3 * u ^ 45) ^ 2) ≤ (1 / 2000 : Real) * u ^ 60 := by
  have h18 := largeRoot_power_lower hu.le hbase 18 (c := 4096) (by norm_num)
  have h33 := largeRoot_power_lower hu.le hbase 33 (c := 4194304) (by norm_num)
  have h120 : (1000 : Real) ≤ u ^ 120 := by
    have h60 : (1000 : Real) ≤ u ^ 60 := by linarith
    have hs := pow_le_pow_left₀ (by norm_num : (0 : Real) ≤ 1000) h60 2
    norm_num [← pow_mul] at hs
    linarith
  have hrec60 : (1 : Real) / u ^ 60 ≤ 1 / 1000 :=
    div_le_div_of_nonneg_left (by norm_num) (by norm_num) (by linarith)
  have hrec120 : (1 : Real) / u ^ 120 ≤ 1 / 1000 :=
    div_le_div_of_nonneg_left (by norm_num) (by norm_num) h120
  have hrec18 : (2 : Real) / u ^ 18 ≤ 2 / 4096 :=
    div_le_div_of_nonneg_left (by norm_num) (by norm_num) h18
  have hrec33 : (12 : Real) / u ^ 33 ≤ 12 / 4194304 :=
    div_le_div_of_nonneg_left (by norm_num) (by norm_num) h33
  have he : (18 * u ^ 12 * (2 * (u ^ 60 + 1) / (3 * u ^ 45) +
      ((u ^ 60) ^ 2 + 1) / (3 * u ^ 45) ^ 2)) / u ^ 60 =
      (12 / u ^ 33) * (1 + 1 / u ^ 60) + (2 / u ^ 18) * (1 + 1 / u ^ 120) := by
    field_simp
    ring
  apply (div_le_iff₀ (pow_pos hu 60)).mp
  rw [he]
  have hfirst := mul_le_mul hrec33 (show 1 + 1 / u ^ 60 ≤ (1001 / 1000 : Real) by linarith)
    (show (0 : Real) ≤ 1 + 1 / u ^ 60 by positivity) (by norm_num : (0 : Real) ≤ 12 / 4194304)
  have hsecond := mul_le_mul hrec18 (show 1 + 1 / u ^ 120 ≤ (1001 / 1000 : Real) by linarith)
    (show (0 : Real) ≤ 1 + 1 / u ^ 120 by positivity) (by norm_num : (0 : Real) ≤ 2 / 4096)
  linarith

theorem largeRoot_cofactor_bounds {u : Real} (hu : 0 < u)
    (hbase : (2199023255552 : Real) ≤ u ^ 60) :
    ((u ^ 60) ^ 2 + 1) / (4 * u ^ 40) ^ 2 ≤ u ^ 40 / 8 ∧
    Real.sqrt (((u ^ 60) ^ 2 + 1) / (4 * u ^ 40) ^ 2) ≤ u ^ 20 / 2 := by
  have h1 : (1 : Real) ≤ u := by
    simpa using largeRoot_power_lower hu.le hbase 1 (c := 1) (by norm_num)
  have h120 : (1 : Real) ≤ u ^ 120 := one_le_pow₀ h1
  have hY : ((u ^ 60) ^ 2 + 1) / (4 * u ^ 40) ^ 2 ≤ u ^ 40 / 8 := by
    apply (div_le_iff₀ (by positivity : (0 : Real) < (4 * u ^ 40) ^ 2)).mpr
    nlinarith [show (u ^ 60) ^ 2 = u ^ 120 by ring,
      show u ^ 40 / 8 * (4 * u ^ 40) ^ 2 = 2 * u ^ 120 by ring]
  refine ⟨hY, ?_⟩
  apply Real.sqrt_le_iff.mpr
  constructor
  · positivity
  · calc
      _ ≤ u ^ 40 / 8 := hY
      _ ≤ (u ^ 20 / 2) ^ 2 := by
        nlinarith [pow_nonneg hu.le 40, show (u ^ 20 / 2) ^ 2 = u ^ 40 / 4 by ring]

theorem largeRoot_pell_error {N : Nat} {u : Real} (hu : 0 < u)
    (hbase : (2199023255552 : Real) ≤ u ^ 60) (hN : (N : Real) = u ^ 60) :
    pellTailBound N (((u ^ 60) ^ 2 + 1) / (4 * u ^ 40) ^ 2) / u ^ 60 ≤
      (3 / (14 * 8 * 12288) + 45 / (14 * 2199023255552) +
        6 / 8388608 + 12 / 137438953472 : Real) := by
  have h20 := largeRoot_power_lower hu.le hbase 20 (c := 12288) (by norm_num)
  have h35 := largeRoot_power_lower hu.le hbase 35 (c := 8388608) (by norm_num)
  have h55 := largeRoot_power_lower hu.le hbase 55 (c := 137438953472) (by norm_num)
  obtain ⟨hY, hsqrt⟩ := largeRoot_cofactor_bounds hu hbase
  have hlog := largeRoot_log_ratio hu
  have hln : 0 ≤ Real.log (u ^ 60) / Real.log 3 := by
    rw [← hN]
    exact real_log_three_nonneg N
  have hprod := mul_le_mul (add_le_add_right hsqrt 1) hlog hln
    (by positivity)
  have hbound : pellTailBound N (((u ^ 60) ^ 2 + 1) / (4 * u ^ 40) ^ 2) ≤
      3 / 14 * (u ^ 40 / 8) + 45 / 14 + (u ^ 20 / 2 + 1) * (12 * u ^ 5) := by
    unfold pellTailBound
    rw [hN]
    linarith
  have he : (3 / 14 * (u ^ 40 / 8) + 45 / 14 + (u ^ 20 / 2 + 1) * (12 * u ^ 5)) / u ^ 60 =
      3 / (14 * 8 * u ^ 20) + 45 / (14 * u ^ 60) + 6 / u ^ 35 + 12 / u ^ 55 := by
    field_simp
    ring
  have hrec20 : (3 : Real) / (14 * 8 * u ^ 20) ≤ 3 / (14 * 8 * 12288) :=
    div_le_div_of_nonneg_left (by norm_num) (by norm_num) (by linarith)
  have hrec60 : (45 : Real) / (14 * u ^ 60) ≤ 45 / (14 * 2199023255552) :=
    div_le_div_of_nonneg_left (by norm_num) (by norm_num) (by linarith)
  have hrec35 : (6 : Real) / u ^ 35 ≤ 6 / 8388608 :=
    div_le_div_of_nonneg_left (by norm_num) (by norm_num) h35
  have hrec55 : (12 : Real) / u ^ 55 ≤ 12 / 137438953472 :=
    div_le_div_of_nonneg_left (by norm_num) (by norm_num) h55
  have hb := div_le_div_of_nonneg_right hbound (pow_nonneg hu.le 60)
  rw [he] at hb
  linarith

theorem largeRoot_diagonal_error {N : Nat} {u : Real} (hu : 0 < u)
    (hbase : (2199023255552 : Real) ≤ u ^ 60) (hN : (N : Real) = u ^ 60) :
    (69 / 25 : Real) * (3 * (4 * u ^ 40) / Real.log (4 * u ^ 40)) +
      pellTailBound N (((u ^ 60) ^ 2 + 1) / (4 * u ^ 40) ^ 2) ≤
        (3 / 20000 : Real) * u ^ 60 := by
  have hp := largeRoot_prime_error_S hu hbase
  have ht := largeRoot_pell_error hu hbase hN
  apply (div_le_iff₀ (pow_pos hu 60)).mp
  rw [add_div, mul_div_assoc]
  linarith

end JSP848
