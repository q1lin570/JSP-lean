import JSP848.OffDiagonalClasses
import JSP848.DiagonalExclusionEstimate
import JSP848.UniformOffDiagonalTail

namespace JSP848

def baseParts (A : Finset Nat) : Finset Nat :=
  A.filter (fun a => a % 25 = 7 ∨ a % 25 = 18)

theorem card_baseParts_add_exceptional (A : Finset Nat) :
    (baseParts A).card + (exceptionalPart A).card = A.card := by
  have h := Finset.card_filter_add_card_filter_not (s := A)
    (fun a => a % 25 = 7 ∨ a % 25 = 18)
  simpa only [not_or, baseParts, exceptionalPart] using h

theorem admissible_even_both_base_classes_bound {N b : Nat} {A : Finset Nat}
    (hA : Admissible N A) (hb : b ∈ exceptionalPart A) (heven : b % 2 = 0)
    {R coefficient : Real} (hR : 0 < R)
    (hpi : (Nat.primeCounting ⌊R⌋₊ : Real) ≤ coefficient * R / Real.log R) :
    ((baseParts A).card : Real) ≤
      2 * ((203 / 1250 : Real) * ((N : Real) / 25) + coefficient * R / Real.log R) +
      offDiagonalTailBound N b R := by
  obtain ⟨hb, hb7, hb18⟩ := Finset.mem_filter.mp hb
  have he := off_diagonal_classes_tail_bound (Finset.mem_Icc.mp (hA.1 hb)).1
    (by decide : 0 < 25) hR (baseParts A) {7, 18} (smallOffDiagonalPrimes R)
    (fun a ha => hA.1 (Finset.mem_filter.mp ha).1)
    (by
      intro a ha
      simpa only [Finset.mem_insert, Finset.mem_singleton] using (Finset.mem_filter.mp ha).2)
    (by
      intro p hp
      obtain ⟨_, hprime, _, h5⟩ := Finset.mem_filter.mp hp
      exact ⟨hprime, prime_coprime_twentyfive hprime h5⟩)
    (off_diagonal_prime_density_bound _ (by
      intro p hp
      exact (Finset.mem_filter.mp hp).2))
    (show ((smallOffDiagonalPrimes R).card : Real) ≤ coefficient * R / Real.log R by
      apply le_trans ?_ hpi
      exact_mod_cast card_prime_finset_le_counting (smallOffDiagonalPrimes R) (by
        intro p hp
        obtain ⟨hp, hprime, _⟩ := Finset.mem_filter.mp hp
        exact ⟨hprime, by have := Finset.mem_range.mp hp; omega⟩)) (by
      intro a ha
      obtain ⟨ha, har⟩ := Finset.mem_filter.mp ha
      obtain ⟨p, hp, hd⟩ := prime_square_witness (hA.2 a ha b hb)
      refine ⟨p, hd, ?_⟩
      by_cases hcut : R < (p : Real)
      · exact Or.inr hcut
      · apply Or.inl
        refine Finset.mem_filter.mpr ⟨Finset.mem_range.mpr (by
          have := Nat.le_floor (le_of_not_gt hcut); omega), hp, ?_, ?_⟩
        · intro he
          subst p
          exact off_diagonal_not_four_of_even heven (by simpa using hd)
        · intro he
          subst p
          rcases har with har | har
          · exact off_diagonal_not_twentyfive (Or.inl rfl) har hb7 (by simpa using hd)
          · exact off_diagonal_not_twentyfive (Or.inr rfl) har hb18 (by simpa using hd))
  simpa using he

theorem card_smallDiagonalPrimes_le_primeCounting (S : Real) :
    (smallDiagonalPrimes S).card ≤ Nat.primeCounting ⌊S⌋₊ := by
  apply card_prime_finset_le_counting
  intro p hp
  obtain ⟨hp, hprime, _⟩ := Finset.mem_filter.mp hp
  exact ⟨hprime, (Finset.mem_Icc.mp hp).2⟩

theorem admissible_even_exceptional_bound {N b : Nat} {A : Finset Nat}
    (hA : Admissible N A) (hb : b ∈ exceptionalPart A) (heven : b % 2 = 0)
    {R S coefficientR coefficientS : Real} (hR : 0 < R) (hS : 2 ≤ S)
    (hpiR : (Nat.primeCounting ⌊R⌋₊ : Real) ≤ coefficientR * R / Real.log R)
    (hpiS : (Nat.primeCounting ⌊S⌋₊ : Real) ≤ coefficientS * S / Real.log S) :
    (A.card : Real) ≤
      (9619 / 250000 : Real) * N + 2 * (coefficientR * R / Real.log R) +
      (69 / 25 : Real) * (coefficientS * S / Real.log S) +
      18 * (N : Real) ^ (1 / 5 : Real) *
        (2 * ((N : Real) + 1) / R + ((N : Real) ^ 2 + 1) / R ^ 2) +
      pellTailBound N (((N : Real) ^ 2 + 1) / S ^ 2) := by
  have hbase := admissible_even_both_base_classes_bound hA hb heven hR hpiR
  have hdiag := exceptional_excluded_diagonal_bound hA hS
  have hcard : ((smallDiagonalPrimes S).card : Real) ≤ Nat.primeCounting ⌊S⌋₊ := by
    exact_mod_cast card_smallDiagonalPrimes_le_primeCounting S
  have hpart : ((baseParts A).card : Real) + ((exceptionalPart A).card : Real) = A.card := by
    exact_mod_cast card_baseParts_add_exceptional A
  have hbN := Finset.mem_Icc.mp (hA.1 (Finset.mem_filter.mp hb).1)
  have htail := offDiagonalTailBound_le_uniform hbN.1 hbN.2 hR
  linarith

theorem admissible_even_exceptional_unbounded {N b : Nat} {A : Finset Nat}
    (hA : Admissible N A) (hb : b ∈ exceptionalPart A) (heven : b % 2 = 0)
    {R S : Real} (hR : 65536 ≤ R) (hS : 65536 ≤ S) :
    (A.card : Real) ≤
      (9619 / 250000 : Real) * N + 2 * (3 * R / Real.log R) +
      (69 / 25 : Real) * (3 * S / Real.log S) +
      18 * (N : Real) ^ (1 / 5 : Real) *
        (2 * ((N : Real) + 1) / R + ((N : Real) ^ 2 + 1) / R ^ 2) +
      pellTailBound N (((N : Real) ^ 2 + 1) / S ^ 2) :=
  admissible_even_exceptional_bound hA hb heven (by linarith) (by linarith)
    (primeCounting_le_three_mul_div_log hR) (primeCounting_le_three_mul_div_log hS)

end JSP848
