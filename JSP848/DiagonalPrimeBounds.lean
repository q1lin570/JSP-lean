import JSP848.DiagonalEstimate
import JSP848.FinitePrimeOneBounds
import JSP848.PrimeDensityBound

namespace JSP848

theorem card_smallDiagonalPrimes_le_primeOneCounting (S : Real) :
    (smallDiagonalPrimes S).card ≤ primeOneCounting ⌊S⌋₊ := by
  rw [primeOneCounting_eq_card]
  apply Finset.card_le_card
  intro p hp
  obtain ⟨hp, hprime⟩ := Finset.mem_filter.mp hp
  have hupper := (Finset.mem_Icc.mp hp).2
  exact Finset.mem_filter.mpr ⟨Finset.mem_range.mpr (by omega), hprime⟩

theorem card_smallDiagonalPrimes_finite_bound {S : Real}
    (hlo : 32768 ≤ S) (hhi : S ≤ 2097152) :
    ((smallDiagonalPrimes S).card : Real) ≤ (29 / 50 : Real) * S / Real.log S := by
  have hc : ((smallDiagonalPrimes S).card : Real) ≤ primeOneCounting ⌊S⌋₊ := by
    exact_mod_cast card_smallDiagonalPrimes_le_primeOneCounting S
  exact hc.trans (by simpa using FinitePrimeOneBounds.bound S hlo hhi)

/-- The diagonal estimate with its finite prime-count premise discharged. -/
theorem exceptional_diagonal_prime_one_bound {N : Nat} {A : Finset Nat}
    (hA : Admissible N A) {S : Real} (hlo : 32768 ≤ S) (hhi : S ≤ 2097152) :
    ((exceptionalPart A).card : Real) ≤
      (N : Real) * (∑ p ∈ smallDiagonalPrimes S, 2 / (p : Real) ^ 2) +
      (29 / 50 : Real) * S / Real.log S +
      pellTailBound N (((N : Real) ^ 2 + 1) / S ^ 2) := by
  have hd := exceptional_diagonal_bound hA (S := S) (by linarith)
  have hp := card_smallDiagonalPrimes_finite_bound hlo hhi
  linarith

theorem exceptional_diagonal_numeric_bound {N : Nat} {A : Finset Nat}
    (hA : Admissible N A) {S : Real} (hlo : 32768 ≤ S) (hhi : S ≤ 2097152) :
    ((exceptionalPart A).card : Real) ≤
      (277 / 10000 : Real) * N + (29 / 50 : Real) * S / Real.log S +
      pellTailBound N (((N : Real) ^ 2 + 1) / S ^ 2) := by
  have hd := diagonal_prime_density_bound (smallDiagonalPrimes S) (by
    intro p hp
    obtain ⟨hp, hprime, hmod⟩ := Finset.mem_filter.mp hp
    exact ⟨(Finset.mem_Icc.mp hp).1, hprime, hmod⟩)
  have hn := mul_le_mul_of_nonneg_left hd (Nat.cast_nonneg N : (0 : Real) ≤ N)
  have hb := exceptional_diagonal_prime_one_bound hA hlo hhi
  nlinarith

namespace DiagonalPrimeBoundsTests

theorem count_at_limit : primeOneCounting 2097152 ≤ 77779 :=
  FullPrimeOneCount.pi_bound000536

theorem real_noninteger_cutoff :
    (primeOneCounting ⌊(65537 / 2 : Real)⌋₊ : Real) ≤
      (29 / 50 : Real) * (65537 / 2) / Real.log (65537 / 2) := by
  simpa using FinitePrimeOneBounds.bound (65537 / 2) (by norm_num) (by norm_num)

end DiagonalPrimeBoundsTests

end JSP848
