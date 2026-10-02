import JSP848.OddOverlapCases

namespace JSP848

/-- The mod-four diagonal estimate is independent of the prime-counting method. -/
theorem exceptional_odd_mod_four_count_bound {N s : Nat} {A : Finset Nat}
    (hA : Admissible N A) (hs : s = 1 ∨ s = 3) {S : Real} (hS : 2 ≤ S) :
    (((exceptionalPart A).filter (fun a => a % 4 = s)).card : Real) ≤
      (277 / 40000 : Real) * N + 2 * (smallDiagonalPrimes S).card +
      oddPellTailBound N (((N : Real) ^ 2 + 1) / S ^ 2) := by
  classical
  let B := (exceptionalPart A).filter (fun a => a % 4 = s)
  have hb := odd_diagonal_filtered_bound hS (fun a => a % 4 = s) B
    (smallDiagonalPrimes S)
    (fun a ha => hA.1 (Finset.mem_filter.mp (Finset.mem_filter.mp ha).1).1)
    (fun a ha => (Finset.mem_filter.mp ha).2)
    (by
      intro a ha
      have he := (Finset.mem_filter.mp ha).2
      have hm : (a % 4) % 2 = a % 2 := Nat.mod_mod_of_dvd a (by decide)
      rcases hs with rfl | rfl <;> omega)
    (fun p => 1 / (2 * (p : Real) ^ 2)) 2 (by
      intro p hp
      obtain ⟨hp, hprime, _⟩ := Finset.mem_filter.mp hp
      have h13 := (Finset.mem_Icc.mp hp).1
      simpa only [div_eq_mul_inv, one_mul] using
        card_diagonal_mod_four_real N s hprime (by omega))
    (fun a ha => exceptional_diagonal_small_large_witness hA (Finset.mem_filter.mp ha).1 S)
  have hd := diagonal_prime_density_bound (smallDiagonalPrimes S) (by
    intro p hp
    obtain ⟨hp, hprime, hmod⟩ := Finset.mem_filter.mp hp
    exact ⟨(Finset.mem_Icc.mp hp).1, hprime, hmod⟩)
  have he : (∑ p ∈ smallDiagonalPrimes S, 1 / (2 * (p : Real) ^ 2)) =
      (1 / 4 : Real) * (∑ p ∈ smallDiagonalPrimes S, 2 / (p : Real) ^ 2) := by
    rw [Finset.mul_sum]
    apply Finset.sum_congr rfl
    intro p hp
    ring
  rw [he] at hb
  have hn := mul_le_mul_of_nonneg_left hd (show (0 : Real) ≤ N / 4 by positivity)
  change (B.card : Real) ≤ _
  nlinarith

theorem admissible_odd_one_group_count_bound {N b : Nat} {A : Finset Nat}
    (hA : Admissible N A) (ho : ∀ a ∈ A, a % 2 = 1) (hb : b ∈ exceptionalPart A)
    (he : ∀ a ∈ exceptionalPart A, a % 4 = b % 4)
    {S neighborBound : Real} (hS : 2 ≤ S)
    (hn : (((baseParts A).filter (fun a => a % 4 = b % 4)).card : Real) ≤ neighborBound) :
    (A.card : Real) ≤ ((277 / 40000 : Real) + 1 / 50) * N +
      2 * (smallDiagonalPrimes S).card +
      oddPellTailBound N (((N : Real) ^ 2 + 1) / S ^ 2) + neighborBound + 2 := by
  have hbo := ho b (Finset.mem_filter.mp hb).1
  have hb4 : b % 4 = 1 ∨ b % 4 = 3 := by
    have hm : (b % 4) % 2 = 1 := by simpa using hbo
    have := Nat.mod_lt b (by decide : 0 < 4)
    omega
  have hd := exceptional_odd_mod_four_count_bound hA hb4 hS
  have hfilter : (exceptionalPart A).filter (fun a => a % 4 = b % 4) = exceptionalPart A :=
    Finset.filter_eq_self.mpr he
  rw [hfilter] at hd
  have hop := odd_base_opposite_class_count hA.1 hbo
    (fun a ha => ho a (Finset.mem_filter.mp ha).1)
  have hp : (((baseParts A).filter (fun a => a % 4 = b % 4)).card : Real) +
      ((baseParts A).filter (fun a => a % 4 ≠ b % 4)).card = (baseParts A).card := by
    exact_mod_cast Finset.card_filter_add_card_filter_not (s := baseParts A)
      (fun a => a % 4 = b % 4)
  have hpart : ((baseParts A).card : Real) + (exceptionalPart A).card = A.card := by
    exact_mod_cast card_baseParts_add_exceptional A
  linarith

namespace MiddleDiagonalBoundsTests

theorem empty_large_cutoff :
    (((exceptionalPart (∅ : Finset Nat)).filter (fun a => a % 4 = 1)).card : Real) ≤
      (277 / 40000 : Real) * 100 + 2 * (smallDiagonalPrimes (2 ^ 30)).card +
      oddPellTailBound 100 (((100 : Real) ^ 2 + 1) / (2 ^ 30) ^ 2) := by
  apply exceptional_odd_mod_four_count_bound
  · exact ⟨by simp, by simp [ProductCondition]⟩
  · exact Or.inl rfl
  · norm_num

end MiddleDiagonalBoundsTests

end JSP848
