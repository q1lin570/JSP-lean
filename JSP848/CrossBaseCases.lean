import JSP848.EvenExceptionalCase

namespace JSP848

noncomputable def smallPrimesExceptFive (R : Real) : Finset Nat :=
  (Finset.range (⌊R⌋₊ + 1)).filter (fun p => p.Prime ∧ p ≠ 5)

theorem admissible_other_base_class_bound {N b r : Nat} {A : Finset Nat}
    (hA : Admissible N A) (hb : b ∈ A) (hr : r = 7 ∨ r = 18) (hbr : b % 25 ≠ r)
    {R coefficient : Real} (hR : 0 < R)
    (hpi : (Nat.primeCounting ⌊R⌋₊ : Real) ≤ coefficient * R / Real.log R) :
    ((residuePart A r).card : Real) ≤
      (1031 / 2500 : Real) * ((N : Real) / 25) + coefficient * R / Real.log R +
      offDiagonalTailBound N b R := by
  have he := off_diagonal_classes_tail_bound (Finset.mem_Icc.mp (hA.1 hb)).1
    (by decide : 0 < 25) hR (residuePart A r) {r} (smallPrimesExceptFive R)
    (fun a ha => hA.1 (Finset.mem_filter.mp ha).1)
    (by intro a ha; exact Finset.mem_singleton.mpr (Finset.mem_filter.mp ha).2)
    (by
      intro p hp
      obtain ⟨_, hprime, h5⟩ := Finset.mem_filter.mp hp
      exact ⟨hprime, prime_coprime_twentyfive hprime h5⟩)
    (off_diagonal_prime_density_with_two _ (by
      intro p hp
      exact (Finset.mem_filter.mp hp).2))
    (show ((smallPrimesExceptFive R).card : Real) ≤ coefficient * R / Real.log R by
      apply le_trans ?_ hpi
      exact_mod_cast card_prime_finset_le_counting (smallPrimesExceptFive R) (by
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
          have := Nat.le_floor (le_of_not_gt hcut); omega), hp, ?_⟩
        intro he
        subst p
        exact off_diagonal_not_twentyfive hr har hbr (by simpa using hd))
  simpa using he

theorem admissible_two_base_classes_bound {N b₇ b₁₈ : Nat} {A : Finset Nat}
    (hA : Admissible N A) (he : exceptionalPart A = ∅)
    (hb₇ : b₇ ∈ residuePart A 7) (hb₁₈ : b₁₈ ∈ residuePart A 18)
    {R coefficient : Real} (hR : 0 < R)
    (hpi : (Nat.primeCounting ⌊R⌋₊ : Real) ≤ coefficient * R / Real.log R) :
    (A.card : Real) ≤ (1031 / 31250 : Real) * N + 2 * (coefficient * R / Real.log R) +
      offDiagonalTailBound N b₇ R + offDiagonalTailBound N b₁₈ R := by
  obtain ⟨hb₇, hr₇⟩ := Finset.mem_filter.mp hb₇
  obtain ⟨hb₁₈, hr₁₈⟩ := Finset.mem_filter.mp hb₁₈
  have h7 := admissible_other_base_class_bound hA hb₁₈ (Or.inl rfl) (by omega) hR hpi
  have h18 := admissible_other_base_class_bound hA hb₇ (Or.inr rfl) (by omega) hR hpi
  have hp : (A.card : Real) = ((residuePart A 7).card : Real) + (residuePart A 18).card := by
    have hn := card_partition A
    rw [he, Finset.card_empty, add_zero] at hn
    exact_mod_cast hn
  linarith

theorem admissible_two_base_classes_uniform {N b₇ b₁₈ : Nat} {A : Finset Nat}
    (hA : Admissible N A) (he : exceptionalPart A = ∅)
    (hb₇ : b₇ ∈ residuePart A 7) (hb₁₈ : b₁₈ ∈ residuePart A 18)
    {R coefficient : Real} (hR : 0 < R)
    (hpi : (Nat.primeCounting ⌊R⌋₊ : Real) ≤ coefficient * R / Real.log R) :
    (A.card : Real) ≤ (1031 / 31250 : Real) * N + 2 * (coefficient * R / Real.log R) +
      36 * (N : Real) ^ (1 / 5 : Real) *
        (2 * ((N : Real) + 1) / R + ((N : Real) ^ 2 + 1) / R ^ 2) := by
  have hb := admissible_two_base_classes_bound hA he hb₇ hb₁₈ hR hpi
  have h7N := Finset.mem_Icc.mp (hA.1 (Finset.mem_filter.mp hb₇).1)
  have h18N := Finset.mem_Icc.mp (hA.1 (Finset.mem_filter.mp hb₁₈).1)
  have ht7 := offDiagonalTailBound_le_uniform h7N.1 h7N.2 hR
  have ht18 := offDiagonalTailBound_le_uniform h18N.1 h18N.2 hR
  linarith

theorem admissible_odd_exceptional_even_base_bound {N b e r : Nat} {A : Finset Nat}
    (hA : Admissible N A) (hb : b ∈ exceptionalPart A)
    (ho : ∀ a ∈ exceptionalPart A, a % 2 = 1)
    (he : e ∈ residuePart A r) (hr : r = 7 ∨ r = 18) (heven : e % 2 = 0)
    {R S coefficientR coefficientS : Real} (hR : 0 < R) (hS : 2 ≤ S)
    (hpiR : (Nat.primeCounting ⌊R⌋₊ : Real) ≤ coefficientR * R / Real.log R)
    (hpiS : (Nat.primeCounting ⌊S⌋₊ : Real) ≤ coefficientS * S / Real.log S) :
    (A.card : Real) ≤ (17867 / 500000 : Real) * N + 2 * (coefficientR * R / Real.log R) +
      (69 / 25 : Real) * (coefficientS * S / Real.log S) +
      offDiagonalTailBound N b R + offDiagonalTailBound N e R +
      oddPellTailBound N (((N : Real) ^ 2 + 1) / S ^ 2) := by
  have hd := exceptional_odd_excluded_diagonal_bound hA ho hS
  have hcount : ((smallDiagonalPrimes S).card : Real) ≤ Nat.primeCounting ⌊S⌋₊ := by
    exact_mod_cast card_smallDiagonalPrimes_le_primeCounting S
  have hpart : (A.card : Real) = ((residuePart A 7).card : Real) +
      (residuePart A 18).card + (exceptionalPart A).card := by exact_mod_cast card_partition A
  obtain ⟨hb, hb7, hb18⟩ := Finset.mem_filter.mp hb
  obtain ⟨heA, her⟩ := Finset.mem_filter.mp he
  rcases hr with rfl | rfl
  · have h7 := admissible_other_base_class_bound hA hb (Or.inl rfl) hb7 hR hpiR
    have h18 := admissible_even_base_class_bound hA heA heven (Or.inr rfl) (by omega) hR hpiR
    change ((residuePart A 18).card : Real) ≤ _ at h18
    linarith
  · have h18 := admissible_other_base_class_bound hA hb (Or.inr rfl) hb18 hR hpiR
    have h7 := admissible_even_base_class_bound hA heA heven (Or.inl rfl) (by omega) hR hpiR
    change ((residuePart A 7).card : Real) ≤ _ at h7
    linarith

end JSP848
