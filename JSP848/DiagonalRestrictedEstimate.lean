import JSP848.DiagonalParityCount
import JSP848.DiagonalClassCount
import JSP848.DiagonalPrimeBounds

namespace JSP848

theorem odd_diagonal_filtered_bound {N : Nat} {S : Real} (hS : 2 ≤ S)
    (Q : Nat → Prop) [DecidablePred Q] (A P : Finset Nat)
    (hA : A ⊆ Finset.Icc 1 N) (hQ : ∀ a ∈ A, Q a)
    (ho : ∀ a ∈ A, a % 2 = 1) (w : Nat → Real) (κ : Real)
    (hsmall : ∀ p ∈ P,
      (((Finset.Icc 1 N).filter (fun a => Q a ∧ p ^ 2 ∣ a ^ 2 + 1)).card : Real) ≤
        (N : Real) * w p + κ)
    (hw : ∀ a ∈ A, ∃ p : Nat, p.Prime ∧ p ^ 2 ∣ a ^ 2 + 1 ∧
      (p ∈ P ∨ S < (p : Real))) :
    (A.card : Real) ≤ (N : Real) * (∑ p ∈ P, w p) + κ * P.card +
      oddPellTailBound N (((N : Real) ^ 2 + 1) / S ^ 2) := by
  classical
  let U := P.biUnion (fun p => (Finset.Icc 1 N).filter (fun a => Q a ∧ p ^ 2 ∣ a ^ 2 + 1))
  let B := A.filter (fun a => a ∉ U)
  have hsub : A ⊆ U ∪ B := by
    intro a ha
    by_cases hu : a ∈ U
    · exact Finset.mem_union_left _ hu
    · exact Finset.mem_union_right _ (Finset.mem_filter.mpr ⟨ha, hu⟩)
  have hc : (A.card : Real) ≤ (U.card : Real) + (B.card : Real) := by
    exact_mod_cast (Finset.card_le_card hsub).trans (Finset.card_union_le _ _)
  have hB : (B.card : Real) ≤ oddPellTailBound N (((N : Real) ^ 2 + 1) / S ^ 2) := by
    apply large_odd_diagonal_tail hS B
      (fun a ha => hA (Finset.mem_filter.mp ha).1)
      (fun a ha => ho a (Finset.mem_filter.mp ha).1)
    intro a ha
    obtain ⟨ha, hn⟩ := Finset.mem_filter.mp ha
    obtain ⟨p, hp, hd, hs | hl⟩ := hw a ha
    · exact (hn (Finset.mem_biUnion.mpr
        ⟨p, hs, Finset.mem_filter.mpr ⟨hA ha, hQ a ha, hd⟩⟩)).elim
    · exact ⟨p, hp, hl, hd⟩
  have hU : (U.card : Real) ≤ (N : Real) * (∑ p ∈ P, w p) + κ * P.card := by
    calc
      _ ≤ ∑ p ∈ P, (((Finset.Icc 1 N).filter
          (fun a => Q a ∧ p ^ 2 ∣ a ^ 2 + 1)).card : Real) := by
        exact_mod_cast Finset.card_biUnion_le
      _ ≤ ∑ p ∈ P, ((N : Real) * w p + κ) := Finset.sum_le_sum hsmall
      _ = _ := by
        rw [Finset.sum_add_distrib, Finset.mul_sum]
        simp [mul_comm]
  linarith

theorem odd_diagonal_small_large_bound {N : Nat} {S : Real} (hS : 2 ≤ S)
    (A P : Finset Nat) (hA : A ⊆ Finset.Icc 1 N)
    (ho : ∀ a ∈ A, a % 2 = 1) (hP : ∀ p ∈ P, p.Prime)
    (hw : ∀ a ∈ A, ∃ p : Nat, p.Prime ∧ p ^ 2 ∣ a ^ 2 + 1 ∧
      (p ∈ P ∨ S < (p : Real))) :
    (A.card : Real) ≤ (N : Real) / 2 * (∑ p ∈ P, 2 / (p : Real) ^ 2) + P.card +
      oddPellTailBound N (((N : Real) ^ 2 + 1) / S ^ 2) := by
  have he := odd_diagonal_filtered_bound hS (fun a => a % 2 = 1) A P hA ho ho
    (fun p => 1 / (p : Real) ^ 2) 1 (by
      intro p hp
      simpa only [div_eq_mul_inv, one_mul] using card_odd_prime_square_divisors_real N (hP p hp)) hw
  have hs : (N : Real) * (∑ p ∈ P, 1 / (p : Real) ^ 2) =
      (N : Real) / 2 * (∑ p ∈ P, 2 / (p : Real) ^ 2) := by
    rw [Finset.mul_sum, Finset.mul_sum]
    apply Finset.sum_congr rfl
    intro p hp
    ring
  simpa only [hs, one_mul] using he

theorem exceptional_odd_diagonal_bound {N : Nat} {A : Finset Nat} (hA : Admissible N A)
    (ho : ∀ a ∈ exceptionalPart A, a % 2 = 1) {S : Real} (hS : 2 ≤ S) :
    ((exceptionalPart A).card : Real) ≤
      (N : Real) / 2 * (∑ p ∈ smallDiagonalPrimes S, 2 / (p : Real) ^ 2) +
      (smallDiagonalPrimes S).card + oddPellTailBound N (((N : Real) ^ 2 + 1) / S ^ 2) := by
  apply odd_diagonal_small_large_bound hS (exceptionalPart A) (smallDiagonalPrimes S)
    (fun a ha => hA.1 (Finset.mem_filter.mp ha).1) ho
    (fun p hp => (Finset.mem_filter.mp hp).2.1)
  intro a ha
  obtain ⟨ha, h7, h18⟩ := Finset.mem_filter.mp ha
  obtain ⟨p, hp, h13, hm, hd⟩ := exceptional_diagonal_witness (hA.2 a ha a ha) h7 h18
  refine ⟨p, hp, by simpa only [pow_two] using hd, ?_⟩
  by_cases hcut : S < (p : Real)
  · exact Or.inr hcut
  · exact Or.inl (Finset.mem_filter.mpr
      ⟨Finset.mem_Icc.mpr ⟨h13, Nat.le_floor (le_of_not_gt hcut)⟩, hp, hm⟩)

theorem exceptional_odd_diagonal_numeric_bound {N : Nat} {A : Finset Nat}
    (hA : Admissible N A) (ho : ∀ a ∈ exceptionalPart A, a % 2 = 1)
    {S : Real} (hlo : 32768 ≤ S) (hhi : S ≤ 2097152) :
    ((exceptionalPart A).card : Real) ≤
      (277 / 20000 : Real) * N + (29 / 50 : Real) * S / Real.log S +
      oddPellTailBound N (((N : Real) ^ 2 + 1) / S ^ 2) := by
  have hd := diagonal_prime_density_bound (smallDiagonalPrimes S) (by
    intro p hp
    obtain ⟨hp, hprime, hmod⟩ := Finset.mem_filter.mp hp
    exact ⟨(Finset.mem_Icc.mp hp).1, hprime, hmod⟩)
  have hn := mul_le_mul_of_nonneg_left hd (show (0 : Real) ≤ N / 2 by positivity)
  have hb := exceptional_odd_diagonal_bound hA ho (S := S) (by linarith)
  have hp := card_smallDiagonalPrimes_finite_bound hlo hhi
  nlinarith

theorem exceptional_odd_mod_four_numeric_bound {N s : Nat} {A : Finset Nat}
    (hA : Admissible N A) (hs : s = 1 ∨ s = 3)
    {S : Real} (hlo : 32768 ≤ S) (hhi : S ≤ 2097152) :
    (((exceptionalPart A).filter (fun a => a % 4 = s)).card : Real) ≤
      (277 / 40000 : Real) * N + 2 * ((29 / 50 : Real) * S / Real.log S) +
      oddPellTailBound N (((N : Real) ^ 2 + 1) / S ^ 2) := by
  classical
  let B := (exceptionalPart A).filter (fun a => a % 4 = s)
  have hb := odd_diagonal_filtered_bound (N := N) (S := S) (by linarith)
    (fun a => a % 4 = s) B (smallDiagonalPrimes S)
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
        card_diagonal_mod_four_real N s hprime (by omega)) (by
      intro a ha
      obtain ⟨ha, _⟩ := Finset.mem_filter.mp ha
      obtain ⟨ha, h7, h18⟩ := Finset.mem_filter.mp ha
      obtain ⟨p, hp, h13, hm, hd⟩ := exceptional_diagonal_witness (hA.2 a ha a ha) h7 h18
      refine ⟨p, hp, by simpa only [pow_two] using hd, ?_⟩
      by_cases hcut : S < (p : Real)
      · exact Or.inr hcut
      · exact Or.inl (Finset.mem_filter.mpr
          ⟨Finset.mem_Icc.mpr ⟨h13, Nat.le_floor (le_of_not_gt hcut)⟩, hp, hm⟩))
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
  have hp := card_smallDiagonalPrimes_finite_bound hlo hhi
  change (B.card : Real) ≤ _
  nlinarith

namespace DiagonalRestrictedEstimateTests

theorem empty_odd : ((exceptionalPart (∅ : Finset Nat)).card : Real) ≤
    (277 / 20000 : Real) * 100 + (29 / 50 : Real) * 65536 / Real.log 65536 +
      oddPellTailBound 100 (((100 : Real) ^ 2 + 1) / 65536 ^ 2) := by
  apply exceptional_odd_diagonal_numeric_bound
  · exact ⟨by simp, by simp [ProductCondition]⟩
  · simp [exceptionalPart]
  · norm_num
  · norm_num

theorem empty_mod_four :
    (((exceptionalPart (∅ : Finset Nat)).filter (fun a => a % 4 = 3)).card : Real) ≤
      (277 / 40000 : Real) * 100 + 2 * ((29 / 50 : Real) * 65536 / Real.log 65536) +
        oddPellTailBound 100 (((100 : Real) ^ 2 + 1) / 65536 ^ 2) := by
  apply exceptional_odd_mod_four_numeric_bound
  · exact ⟨by simp, by simp [ProductCondition]⟩
  · exact Or.inr rfl
  · norm_num
  · norm_num

end DiagonalRestrictedEstimateTests

end JSP848
