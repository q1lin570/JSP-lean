import JSP848.MiddleInitialInterval
import JSP848.EvenExceptionalCase
import JSP848.ElementaryPrimeBound

set_option maxHeartbeats 1000000

namespace JSP848

theorem middle_log_cutoff_lower {x : Real} (hx : 207368 ≤ x) : 12 ≤ Real.log x := by
  have hl := Real.log_le_log (by norm_num : (0 : Real) < 207368) hx
  linarith [initial_log_diagonal_cutoff]

theorem middle_weak_diagonal_ratio {u : Real} (hu : 1024 ≤ u) :
    cubicPrimeRatio u 2 (29 / 25) ≤ (295 / 1000000 : Real) := by
  have h := cubicPrimeRatio_le_endpoint (lo := 1024) (r := 2)
    (coefficient := 29 / 25) (logLower := 12)
    (by norm_num) hu (by norm_num) (by norm_num) (by norm_num)
    (middle_log_cutoff_lower (by norm_num))
  norm_num at h ⊢
  linarith

theorem middle_elementary_prime_ratio {u : Real} (hu : 2048 ≤ u) :
    cubicPrimeRatio u 3 3 ≤ (855 / 1000000 : Real) := by
  have h := cubicPrimeRatio_le_endpoint (lo := 2048) (r := 3)
    (coefficient := 3) (logLower := 12)
    (by norm_num) hu (by norm_num) (by norm_num) (by norm_num)
    (middle_log_cutoff_lower (by norm_num))
  norm_num at h ⊢
  linarith

theorem middle_elementary_diagonal_ratio {u : Real} (hu : 2048 ≤ u) :
    cubicPrimeRatio u 2 3 ≤ (295 / 1000000 : Real) := by
  have h := cubicPrimeRatio_le_endpoint (lo := 2048) (r := 2)
    (coefficient := 3) (logLower := 12)
    (by norm_num) hu (by norm_num) (by norm_num) (by norm_num)
    (middle_log_cutoff_lower (by norm_num))
  norm_num at h ⊢
  linarith

theorem middle_uniform_prime_count {u : Real} (hu : 322 ≤ u) :
    (Nat.primeCounting ⌊3 * u ^ 2⌋₊ : Real) ≤ (855 / 1000000 : Real) * u ^ 3 := by
  have hu0 : 0 < u := by linarith
  by_cases hh : u ≤ 2048
  · obtain ⟨hl, hh⟩ := cubic_cutoff_interval (by norm_num : (0 : Real) ≤ 322)
      hu hh (by norm_num : (0 : Real) ≤ 3)
    have hp := FinitePrimeBounds.weak_bound (3 * u ^ 2)
      (by norm_num at hl ⊢; linarith) (by norm_num at hh ⊢; linarith)
    norm_num only [Rat.cast_div, Rat.cast_ofNat] at hp
    have hr := initial_cubic_prime_error hu
    unfold cubicPrimeRatio at hr
    exact hp.trans ((div_le_iff₀ (pow_pos hu0 3)).mp hr)
  · have h2048 : 2048 ≤ u := le_of_not_ge hh
    have hl := (cubic_cutoff_interval (by norm_num : (0 : Real) ≤ 2048)
      h2048 le_rfl (by norm_num : (0 : Real) ≤ 3)).1
    have hp := primeCounting_le_three_mul_div_log
      (show (65536 : Real) ≤ 3 * u ^ 2 by norm_num at hl; linarith)
    have hr := middle_elementary_prime_ratio h2048
    unfold cubicPrimeRatio at hr
    exact hp.trans ((div_le_iff₀ (pow_pos hu0 3)).mp hr)

theorem middle_uniform_diagonal_count {u : Real} (hu : 322 ≤ u) :
    ((smallDiagonalPrimes (2 * u ^ 2)).card : Real) ≤
      (295 / 1000000 : Real) * u ^ 3 := by
  have hu0 : 0 < u := by linarith
  by_cases hh : u ≤ 1024
  · obtain ⟨hl, hh⟩ := cubic_cutoff_interval (by norm_num : (0 : Real) ≤ 322)
      hu hh (by norm_num : (0 : Real) ≤ 2)
    have hp := card_smallDiagonalPrimes_finite_bound (S := 2 * u ^ 2)
      (by norm_num at hl; linarith) (by norm_num at hh; linarith)
    have hr := initial_cubic_diagonal_prime_error hu
    unfold cubicPrimeRatio at hr
    exact hp.trans ((div_le_iff₀ (pow_pos hu0 3)).mp hr)
  · have h1024 : 1024 ≤ u := le_of_not_ge hh
    have hc : ((smallDiagonalPrimes (2 * u ^ 2)).card : Real) ≤
        Nat.primeCounting ⌊2 * u ^ 2⌋₊ := by
      exact Nat.cast_le.mpr (card_smallDiagonalPrimes_le_primeCounting (2 * u ^ 2))
    by_cases hhi : u ≤ 2048
    · obtain ⟨hl, hh⟩ := cubic_cutoff_interval (by norm_num : (0 : Real) ≤ 1024)
        h1024 hhi (by norm_num : (0 : Real) ≤ 2)
      have hp := FinitePrimeBounds.weak_bound (2 * u ^ 2)
        (by norm_num at hl ⊢; linarith) (by norm_num at hh ⊢; linarith)
      norm_num only [Rat.cast_div, Rat.cast_ofNat] at hp
      have hr := middle_weak_diagonal_ratio h1024
      unfold cubicPrimeRatio at hr
      exact hc.trans (hp.trans ((div_le_iff₀ (pow_pos hu0 3)).mp hr))
    · have h2048 : 2048 ≤ u := le_of_not_ge hhi
      have hl := (cubic_cutoff_interval (by norm_num : (0 : Real) ≤ 2048)
        h2048 le_rfl (by norm_num : (0 : Real) ≤ 2)).1
      have hp := primeCounting_le_three_mul_div_log
        (show (65536 : Real) ≤ 2 * u ^ 2 by norm_num at hl; linarith)
      have hr := middle_elementary_diagonal_ratio h2048
      unfold cubicPrimeRatio at hr
      exact hc.trans (hp.trans ((div_le_iff₀ (pow_pos hu0 3)).mp hr))

/-- The small-range constants remain valid past the finite prime tables. -/
theorem uniform_cubic_inputs {N : Nat} (hlo : 2 ^ 25 ≤ N) :
    ∃ u : Real, (N : Real) = u ^ 3 ∧ 322 ≤ u ∧
      (Nat.primeCounting ⌊3 * u ^ 2⌋₊ : Real) ≤ (855 / 1000000 : Real) * N ∧
      ((smallDiagonalPrimes (2 * u ^ 2)).card : Real) ≤ (295 / 1000000 : Real) * N ∧
      pellTailBound N (((N : Real) ^ 2 + 1) / (2 * u ^ 2) ^ 2) ≤
        (244 / 1000000 : Real) * N ∧
      oddPellTailBound N (((N : Real) ^ 2 + 1) / (2 * u ^ 2) ^ 2) ≤
        (95 / 1000000 : Real) * N := by
  obtain ⟨u, hu, hN⟩ := exists_cubic_parameter (show 0 < N by omega)
  have hnlo : (33554432 : Real) ≤ N := by exact_mod_cast hlo
  have hul : 322 ≤ u := by
    apply le_of_pow_le_pow_left₀ (n := 3) (by decide) hu.le
    rw [← hN]
    norm_num
    linarith
  have hp := middle_uniform_prime_count hul
  have hd := middle_uniform_diagonal_count hul
  have ht := initial_cubic_pell_error hul
  rw [← pellTailBound_cubic_ratio hN] at ht
  have hot := initial_cubic_odd_pell_error hul
  rw [← oddPellTailBound_cubic_ratio hN] at hot
  have hnpos : (0 : Real) < N := by rw [hN]; positivity
  refine ⟨u, hN, hul, ?_, ?_, (div_le_iff₀ hnpos).mp ht, (div_le_iff₀ hnpos).mp hot⟩
  · simpa only [hN] using hp
  · simpa only [hN] using hd

theorem middle_interval_inputs {N : Nat} (hlo : 2 ^ 25 ≤ N) (hhi : N ≤ 2 ^ 41) :
    ∃ u : Real, (N : Real) = u ^ 3 ∧ 322 ≤ u ∧ u ≤ 13005 ∧
      (Nat.primeCounting ⌊3 * u ^ 2⌋₊ : Real) ≤ (855 / 1000000 : Real) * N ∧
      ((smallDiagonalPrimes (2 * u ^ 2)).card : Real) ≤ (295 / 1000000 : Real) * N ∧
      pellTailBound N (((N : Real) ^ 2 + 1) / (2 * u ^ 2) ^ 2) ≤
        (244 / 1000000 : Real) * N ∧
      oddPellTailBound N (((N : Real) ^ 2 + 1) / (2 * u ^ 2) ^ 2) ≤
        (95 / 1000000 : Real) * N := by
  obtain ⟨u, hN, hul, hp, hd, ht, hot⟩ := uniform_cubic_inputs hlo
  have hnhi : (N : Real) ≤ 2199023255552 := by exact_mod_cast hhi
  have huh : u ≤ 13005 := by
    apply le_of_pow_le_pow_left₀ (n := 3) (by decide) (by norm_num : (0 : Real) ≤ 13005)
    rw [← hN]
    norm_num
    linarith
  exact ⟨u, hN, hul, huh, hp, hd, ht, hot⟩

namespace MiddleUniformInputsTests

example : cubicPrimeRatio 2048 2 3 ≤ (295 / 1000000 : Real) :=
  middle_elementary_diagonal_ratio le_rfl

example : ∃ u : Real, (2 ^ 41 : Real) = u ^ 3 ∧ 322 ≤ u ∧ u ≤ 13005 := by
  obtain ⟨u, hN, hl, hh, _⟩ := middle_interval_inputs (N := 2 ^ 41) (by norm_num) le_rfl
  exact ⟨u, by norm_num at hN ⊢; exact hN, hl, hh⟩

end MiddleUniformInputsTests

end JSP848
