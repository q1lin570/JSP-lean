import Mathlib.Analysis.Complex.ExponentialBounds
import Mathlib.Tactic

namespace JSP848

def logOddSum (z : Rat) (terms : Nat) : Rat :=
  ∑ i ∈ Finset.range terms, z ^ (2 * i + 1) / (2 * i + 1 : Nat)

theorem logOddSum_cast (z : Rat) (terms : Nat) :
    (logOddSum z terms : Real) =
      ∑ i ∈ Finset.range terms, (z : Real) ^ (2 * i + 1) / (2 * (i : Real) + 1) := by
  simp only [logOddSum, Rat.cast_sum, Rat.cast_div, Rat.cast_pow, Rat.cast_natCast,
    Rat.cast_add, Rat.cast_mul, Rat.cast_ofNat, Rat.cast_one,
    Nat.cast_add, Nat.cast_mul, Nat.cast_ofNat, Nat.cast_one]

theorem log_rat_series_bounds {q : Rat} (hq : 1 ≤ q) (terms : Nat) :
    let z := (q - 1) / (q + 1)
    (2 * logOddSum z terms : Rat) ≤ Real.log q ∧
      Real.log q ≤ (2 * (logOddSum z terms + z ^ (2 * terms + 1) / (1 - z ^ 2)) : Rat) := by
  let z : Rat := (q - 1) / (q + 1)
  have hq' : (1 : Real) ≤ q := by exact_mod_cast hq
  have hden : (0 : Real) < (q : Real) + 1 := by linarith
  have hz : (z : Real) = ((q : Real) - 1) / ((q : Real) + 1) := by
    simp [z]
  have hz0 : (0 : Real) ≤ z := by
    rw [hz]
    exact div_nonneg (sub_nonneg.mpr hq') hden.le
  have hz1 : (z : Real) < 1 := by
    rw [hz]
    exact (div_lt_one hden).mpr (by linarith)
  have he : (1 + (z : Real)) / (1 - (z : Real)) = q := by
    rw [hz]
    field_simp
    <;> ring
  have hlo := Real.sum_range_le_log_div hz0 hz1 terms
  have hhi := Real.log_div_le_sum_range_add hz0 hz1 terms
  rw [he, ← logOddSum_cast] at hlo hhi
  dsimp only
  change ((2 * logOddSum z terms : Rat) : Real) ≤ Real.log q ∧
    Real.log q ≤ ((2 * (logOddSum z terms + z ^ (2 * terms + 1) / (1 - z ^ 2)) : Rat) : Real)
  push_cast
  constructor <;> linarith

def scaledLogLower (q : Rat) (exponent terms : Nat) : Rat :=
  let y := q / 2 ^ exponent
  2 * logOddSum ((y - 1) / (y + 1)) terms + exponent * (6931471803 / 10000000000)

def scaledLogUpper (q : Rat) (exponent terms : Nat) : Rat :=
  let y := q / 2 ^ exponent
  let z := (y - 1) / (y + 1)
  2 * (logOddSum z terms + z ^ (2 * terms + 1) / (1 - z ^ 2)) +
    exponent * (6931471808 / 10000000000)

/-- Scaling reduces the series argument; all certificate arithmetic is rational. -/
theorem scaledLog_bounds {q : Rat} {exponent : Nat}
    (hq : (2 : Rat) ^ exponent ≤ q) (terms : Nat) :
    (scaledLogLower q exponent terms : Real) ≤ Real.log q ∧
      Real.log q ≤ (scaledLogUpper q exponent terms : Real) := by
  have hp : (0 : Rat) < 2 ^ exponent := by positivity
  have hy : (1 : Rat) ≤ q / 2 ^ exponent := (le_div_iff₀ hp).mpr (by simpa using hq)
  obtain ⟨hlo, hhi⟩ := log_rat_series_bounds hy terms
  have hqpos : (0 : Real) < q := by exact_mod_cast hp.trans_le hq
  have he : Real.log ((q / 2 ^ exponent : Rat) : Real) =
      Real.log q - (exponent : Real) * Real.log 2 := by
    push_cast
    rw [Real.log_div hqpos.ne' (by positivity), Real.log_pow]
  rw [he] at hlo hhi
  have hl2 := mul_le_mul_of_nonneg_left Real.log_two_gt_d9.le
    (Nat.cast_nonneg exponent : (0 : Real) ≤ exponent)
  have hu2 := mul_le_mul_of_nonneg_left Real.log_two_lt_d9.le
    (Nat.cast_nonneg exponent : (0 : Real) ≤ exponent)
  unfold scaledLogLower scaledLogUpper
  push_cast at hlo hhi ⊢
  constructor <;> linarith

theorem log_lower_of_scaled {q lower : Rat} {exponent terms : Nat}
    (hq : (2 : Rat) ^ exponent ≤ q) (hc : lower ≤ scaledLogLower q exponent terms) :
    (lower : Real) ≤ Real.log q :=
  (Rat.cast_le.mpr hc).trans (scaledLog_bounds hq terms).1

theorem log_upper_of_scaled {q upper : Rat} {exponent terms : Nat}
    (hq : (2 : Rat) ^ exponent ≤ q) (hc : scaledLogUpper q exponent terms ≤ upper) :
    Real.log q ≤ (upper : Real) :=
  (scaledLog_bounds hq terms).2.trans (Rat.cast_le.mpr hc)

namespace RationalLogBoundsTests

theorem log_three_lower : (1098612 / 1000000 : Real) ≤ Real.log 3 := by
  apply le_trans ?_ (scaledLog_bounds (q := 3) (exponent := 1) (by norm_num) 6).1
  have h := (Rat.cast_le (K := Real)).mpr
    (show (1098612 / 1000000 : Rat) ≤ scaledLogLower 3 1 6 by decide +kernel)
  norm_num only [Rat.cast_div, Rat.cast_ofNat] at h
  linarith only [h]

theorem log_three_upper : Real.log 3 ≤ (1098613 / 1000000 : Real) := by
  apply le_trans (scaledLog_bounds (q := 3) (exponent := 1) (by norm_num) 6).2
  have h := (Rat.cast_le (K := Real)).mpr
    (show scaledLogUpper 3 1 6 ≤ (1098613 / 1000000 : Rat) by decide +kernel)
  norm_num only [Rat.cast_div, Rat.cast_ofNat] at h
  exact h

theorem log_power_two : Real.log 33554432 ≤ (173287 / 10000 : Real) := by
  apply le_trans (scaledLog_bounds (q := 33554432) (exponent := 25) (by norm_num) 6).2
  have h := (Rat.cast_le (K := Real)).mpr
    (show scaledLogUpper 33554432 25 6 ≤ (173287 / 10000 : Rat) by decide +kernel)
  norm_num only [Rat.cast_div, Rat.cast_ofNat] at h
  exact h

theorem rejects_overstated_lower :
    ¬ (1099 / 1000 : Rat) ≤ scaledLogLower 3 1 6 := by decide +kernel

theorem rejects_understated_upper :
    ¬ scaledLogUpper 3 1 6 ≤ (1098 / 1000 : Rat) := by decide +kernel

end RationalLogBoundsTests

end JSP848
