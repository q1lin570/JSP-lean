import JSP848.MiddleEndpointBounds
import JSP848.DiagonalPrimeBounds
import JSP848.FinitePrimeBounds

namespace JSP848

theorem initial_log_prime_cutoff : (12647 / 1000 : Real) ≤ Real.log 311052 := by
  have h := log_lower_of_scaled (q := 311052) (lower := 12647 / 1000)
    (exponent := 18) (terms := 6) (by norm_num) (by decide +kernel)
  norm_num at h ⊢
  exact h

theorem initial_log_diagonal_cutoff : (12242 / 1000 : Real) ≤ Real.log 207368 := by
  have h := log_lower_of_scaled (q := 207368) (lower := 12242 / 1000)
    (exponent := 17) (terms := 6) (by norm_num) (by decide +kernel)
  norm_num at h ⊢
  exact h

theorem initial_log_cube_upper : Real.log (322 ^ 3 : Real) ≤ (17324 / 1000 : Real) := by
  have h := log_upper_of_scaled (q := 322 ^ 3) (upper := 17324 / 1000)
    (exponent := 24) (terms := 6) (by norm_num) (by decide +kernel)
  norm_num at h ⊢
  exact h

theorem initial_cubic_prime_error {u : Real} (hu : 322 ≤ u) :
    cubicPrimeRatio u 3 (29 / 25) ≤ (855 / 1000000 : Real) := by
  have h := cubicPrimeRatio_le_endpoint (lo := 322) (r := 3) (coefficient := 29 / 25)
    (logLower := 12647 / 1000) (by norm_num) hu (by norm_num) (by norm_num)
    (by norm_num) (by convert initial_log_prime_cutoff using 1 <;> norm_num)
  norm_num at h ⊢
  linarith

theorem initial_cubic_diagonal_prime_error {u : Real} (hu : 322 ≤ u) :
    cubicPrimeRatio u 2 (29 / 50) ≤ (295 / 1000000 : Real) := by
  have h := cubicPrimeRatio_le_endpoint (lo := 322) (r := 2) (coefficient := 29 / 50)
    (logLower := 12242 / 1000) (by norm_num) hu (by norm_num) (by norm_num)
    (by norm_num) (by convert initial_log_diagonal_cutoff using 1 <;> norm_num)
  norm_num at h ⊢
  linarith

theorem initial_cubic_pell_error {u : Real} (hu : 322 ≤ u) :
    cubicPellRatio u 2 (3 / 14) (45 / 14) 1 ≤ (244 / 1000000 : Real) := by
  have h := cubicPellRatio_le_endpoint (lo := 322) (s := 2) (density := 3 / 14)
    (discrepancy := 45 / 14) (exceptionScale := 1) (sqrtUpper := 161001 / 1000)
    (logUpper := 17324 / 1000) (logThreeLower := 1098612 / 1000000)
    (by norm_num) hu (by norm_num) (by norm_num) (by norm_num) (by norm_num)
    (by norm_num) (by norm_num) initial_log_cube_upper (by norm_num)
    RationalLogBoundsTests.log_three_lower
  norm_num at h ⊢
  linarith

theorem initial_cubic_odd_pell_error {u : Real} (hu : 322 ≤ u) :
    cubicPellRatio u 2 (1 / 14) (15 / 7) (1 / 2) ≤ (95 / 1000000 : Real) := by
  have h := cubicPellRatio_le_endpoint (lo := 322) (s := 2) (density := 1 / 14)
    (discrepancy := 15 / 7) (exceptionScale := 1 / 2) (sqrtUpper := 161001 / 1000)
    (logUpper := 17324 / 1000) (logThreeLower := 1098612 / 1000000)
    (by norm_num) hu (by norm_num) (by norm_num) (by norm_num) (by norm_num)
    (by norm_num) (by norm_num) initial_log_cube_upper (by norm_num)
    RationalLogBoundsTests.log_three_lower
  norm_num at h ⊢
  linarith

/-- Actual prime and Pell counts, uniform across the whole initial analytic range. -/
theorem initial_interval_inputs {N : Nat} (hlo : 2 ^ 25 ≤ N) (hhi : N ≤ 2 ^ 28) :
    ∃ u : Real, (N : Real) = u ^ 3 ∧ 322 ≤ u ∧ u ≤ 646 ∧
      (Nat.primeCounting ⌊3 * u ^ 2⌋₊ : Real) ≤ (855 / 1000000 : Real) * N ∧
      ((smallDiagonalPrimes (2 * u ^ 2)).card : Real) ≤ (295 / 1000000 : Real) * N ∧
      pellTailBound N (((N : Real) ^ 2 + 1) / (2 * u ^ 2) ^ 2) ≤
        (244 / 1000000 : Real) * N ∧
      oddPellTailBound N (((N : Real) ^ 2 + 1) / (2 * u ^ 2) ^ 2) ≤
        (95 / 1000000 : Real) * N := by
  obtain ⟨u, hu, hN⟩ := exists_cubic_parameter (show 0 < N by omega)
  have hnlo : (33554432 : Real) ≤ N := by exact_mod_cast hlo
  have hnhi : (N : Real) ≤ 268435456 := by exact_mod_cast hhi
  obtain ⟨hul, huh⟩ := cubic_parameter_interval hu.le (by norm_num : (0 : Real) ≤ 322)
    (by norm_num : (0 : Real) ≤ 646) hN (by norm_num; linarith) (by norm_num; linarith)
  obtain ⟨hrl, hrh⟩ := cubic_cutoff_interval (by norm_num : (0 : Real) ≤ 322)
    hul huh (by norm_num : (0 : Real) ≤ 3)
  obtain ⟨hsl, hsh⟩ := cubic_cutoff_interval (by norm_num : (0 : Real) ≤ 322)
    hul huh (by norm_num : (0 : Real) ≤ 2)
  have hp := FinitePrimeBounds.weak_bound (3 * u ^ 2) (by norm_num at hrl ⊢; linarith)
    (by norm_num at hrh ⊢; linarith)
  have hdp := card_smallDiagonalPrimes_finite_bound (S := 2 * u ^ 2)
    (by norm_num at hsl; linarith) (by norm_num at hsh; linarith)
  have hprime := initial_cubic_prime_error hul
  have hdiag := initial_cubic_diagonal_prime_error hul
  unfold cubicPrimeRatio at hprime hdiag
  have hprime := (div_le_iff₀ (pow_pos hu 3)).mp hprime
  have hdiag := (div_le_iff₀ (pow_pos hu 3)).mp hdiag
  have ht := initial_cubic_pell_error hul
  rw [← pellTailBound_cubic_ratio hN] at ht
  have hot := initial_cubic_odd_pell_error hul
  rw [← oddPellTailBound_cubic_ratio hN] at hot
  have hnpos : (0 : Real) < N := by rw [hN]; positivity
  refine ⟨u, hN, hul, huh, ?_, ?_, ?_, ?_⟩
  · rw [hN]
    norm_num at hp
    exact hp.trans hprime
  · rw [hN]
    exact hdp.trans hdiag
  · exact (div_le_iff₀ hnpos).mp ht
  · exact (div_le_iff₀ hnpos).mp hot

end JSP848
