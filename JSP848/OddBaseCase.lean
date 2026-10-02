import JSP848.EvenExceptionalCase

namespace JSP848

def oddBaseResidues (s : Nat) : Finset Nat :=
  if s = 1 then {57, 93} else {7, 43}

theorem card_oddBaseResidues (s : Nat) : (oddBaseResidues s).card = 2 := by
  unfold oddBaseResidues
  split_ifs <;> decide

theorem odd_base_residues_mem {a s : Nat} (hs : s = 1 ∨ s = 3)
    (ha : a % 25 = 7 ∨ a % 25 = 18) (has : a % 4 = s) :
    a % 100 ∈ oddBaseResidues s := by
  have h25 : (a % 100) % 25 = a % 25 := Nat.mod_mod_of_dvd a (by decide)
  have h4 : (a % 100) % 4 = a % 4 := Nat.mod_mod_of_dvd a (by decide)
  have h100 := Nat.mod_lt a (by decide : 0 < 100)
  rcases hs with rfl | rfl <;> norm_num [oddBaseResidues] <;> omega

theorem prime_coprime_hundred {p : Nat} (hp : p.Prime) (h2 : p ≠ 2) (h5 : p ≠ 5) :
    Nat.Coprime 100 (p ^ 2) :=
  (prime_coprime_four hp h2).mul_left (prime_coprime_twentyfive hp h5)

theorem admissible_odd_same_mod_four_bound {N b : Nat} {A : Finset Nat}
    (hA : Admissible N A) (hb : b ∈ exceptionalPart A) (hbo : b % 2 = 1)
    (ho : ∀ a ∈ baseParts A, a % 2 = 1)
    {R coefficient : Real} (hR : 0 < R)
    (hpi : (Nat.primeCounting ⌊R⌋₊ : Real) ≤ coefficient * R / Real.log R) :
    (((baseParts A).filter (fun a => a % 4 = b % 4)).card : Real) ≤
      2 * ((203 / 1250 : Real) * ((N : Real) / 100) + coefficient * R / Real.log R) +
      offDiagonalTailBound N b R := by
  have hb4 : b % 4 = 1 ∨ b % 4 = 3 := by
    have hm : (b % 4) % 2 = 1 := by simpa using hbo
    have := Nat.mod_lt b (by decide : 0 < 4)
    omega
  obtain ⟨hb, hb7, hb18⟩ := Finset.mem_filter.mp hb
  let B := (baseParts A).filter (fun a => a % 4 = b % 4)
  have he := off_diagonal_classes_tail_bound (Finset.mem_Icc.mp (hA.1 hb)).1
    (by decide : 0 < 100) hR B (oddBaseResidues (b % 4)) (smallOffDiagonalPrimes R)
    (fun a ha => hA.1 (Finset.mem_filter.mp (Finset.mem_filter.mp ha).1).1)
    (by
      intro a ha
      obtain ⟨ha, he⟩ := Finset.mem_filter.mp ha
      exact odd_base_residues_mem hb4 (Finset.mem_filter.mp ha).2 he)
    (by
      intro p hp
      obtain ⟨_, hprime, h2, h5⟩ := Finset.mem_filter.mp hp
      exact ⟨hprime, prime_coprime_hundred hprime h2 h5⟩)
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
      obtain ⟨ha, he⟩ := Finset.mem_filter.mp ha
      have hao := ho a ha
      obtain ⟨ha, har⟩ := Finset.mem_filter.mp ha
      obtain ⟨p, hp, hd⟩ := prime_square_witness (hA.2 a ha b hb)
      refine ⟨p, hd, ?_⟩
      by_cases hcut : R < (p : Real)
      · exact Or.inr hcut
      · apply Or.inl
        refine Finset.mem_filter.mpr ⟨Finset.mem_range.mpr (by
          have := Nat.le_floor (le_of_not_gt hcut); omega), hp, ?_, ?_⟩
        · intro heq
          subst p
          exact off_diagonal_not_four_of_same_odd_class hao he (by simpa using hd)
        · intro heq
          subst p
          rcases har with har | har
          · exact off_diagonal_not_twentyfive (Or.inl rfl) har hb7 (by simpa using hd)
          · exact off_diagonal_not_twentyfive (Or.inr rfl) har hb18 (by simpa using hd))
  simpa only [card_oddBaseResidues, Nat.cast_ofNat] using he

theorem odd_base_opposite_class_count {N b : Nat} {A : Finset Nat}
    (hA : A ⊆ Finset.Icc 1 N) (hbo : b % 2 = 1)
    (ho : ∀ a ∈ baseParts A, a % 2 = 1) :
    (((baseParts A).filter (fun a => a % 4 ≠ b % 4)).card : Real) ≤ (N : Real) / 50 + 2 := by
  have hb4 : b % 4 = 1 ∨ b % 4 = 3 := by
    have hm : (b % 4) % 2 = 1 := by simpa using hbo
    have := Nat.mod_lt b (by decide : 0 < 4)
    omega
  have hs : 4 - b % 4 = 1 ∨ 4 - b % 4 = 3 := by omega
  have he := card_residue_cover_real (by decide : 0 < 100) (Nat.cast_nonneg N)
    ((baseParts A).filter (fun a => a % 4 ≠ b % 4)) (oddBaseResidues (4 - b % 4)) (by
      intro a ha
      obtain ⟨ha, hn⟩ := Finset.mem_filter.mp ha
      have hao := ho a ha
      obtain ⟨ha, har⟩ := Finset.mem_filter.mp ha
      refine ⟨by exact_mod_cast (Finset.mem_Icc.mp (hA ha)).2,
        odd_base_residues_mem hs har ?_⟩
      have hm : (a % 4) % 2 = 1 := by simpa using hao
      have := Nat.mod_lt a (by decide : 0 < 4)
      omega)
  rw [card_oddBaseResidues] at he
  push_cast at he
  linarith

theorem admissible_all_odd_exceptional_bound {N b : Nat} {A : Finset Nat}
    (hA : Admissible N A) (hb : b ∈ exceptionalPart A)
    (ho : ∀ a ∈ exceptionalPart A, a % 2 = 1) (hbase : ∀ a ∈ baseParts A, a % 2 = 1)
    {R S coefficientR coefficientS : Real} (hR : 0 < R) (hS : 2 ≤ S)
    (hpiR : (Nat.primeCounting ⌊R⌋₊ : Real) ≤ coefficientR * R / Real.log R)
    (hpiS : (Nat.primeCounting ⌊S⌋₊ : Real) ≤ coefficientS * S / Real.log S) :
    (A.card : Real) ≤ (3599 / 100000 : Real) * N + 2 * (coefficientR * R / Real.log R) +
      (69 / 25 : Real) * (coefficientS * S / Real.log S) + offDiagonalTailBound N b R +
      oddPellTailBound N (((N : Real) ^ 2 + 1) / S ^ 2) + 2 := by
  have hbo := ho b hb
  have hs := admissible_odd_same_mod_four_bound hA hb hbo hbase hR hpiR
  have hf := odd_base_opposite_class_count hA.1 hbo hbase
  have he := exceptional_odd_excluded_diagonal_bound hA ho hS
  have hp : ((smallDiagonalPrimes S).card : Real) ≤ Nat.primeCounting ⌊S⌋₊ := by
    exact_mod_cast card_smallDiagonalPrimes_le_primeCounting S
  have hparts : (((baseParts A).filter (fun a => a % 4 = b % 4)).card : Real) +
      (((baseParts A).filter (fun a => a % 4 ≠ b % 4)).card : Real) = (baseParts A).card := by
    exact_mod_cast Finset.card_filter_add_card_filter_not (s := baseParts A) (fun a => a % 4 = b % 4)
  have hAparts : ((baseParts A).card : Real) + ((exceptionalPart A).card : Real) = A.card := by
    exact_mod_cast card_baseParts_add_exceptional A
  linarith

end JSP848
