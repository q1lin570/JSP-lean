import JSP848.DiagonalExclusionCount
import JSP848.DiagonalRestrictedEstimate

namespace JSP848

theorem diagonal_filtered_bound {N : Nat} {S : Real} (hS : 2 ≤ S)
    (Q : Nat → Prop) [DecidablePred Q] (A P : Finset Nat)
    (hA : A ⊆ Finset.Icc 1 N) (hQ : ∀ a ∈ A, Q a) (w : Nat → Real) (κ : Real)
    (hsmall : ∀ p ∈ P,
      (((Finset.Icc 1 N).filter (fun a => Q a ∧ p ^ 2 ∣ a ^ 2 + 1)).card : Real) ≤
        (N : Real) * w p + κ)
    (hw : ∀ a ∈ A, ∃ p : Nat, p.Prime ∧ p ^ 2 ∣ a ^ 2 + 1 ∧
      (p ∈ P ∨ S < (p : Real))) :
    (A.card : Real) ≤ (N : Real) * (∑ p ∈ P, w p) + κ * P.card +
      pellTailBound N (((N : Real) ^ 2 + 1) / S ^ 2) := by
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
  have hB : (B.card : Real) ≤ pellTailBound N (((N : Real) ^ 2 + 1) / S ^ 2) := by
    apply large_diagonal_tail hS B (fun a ha => hA (Finset.mem_filter.mp ha).1)
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

theorem exceptional_diagonal_small_large_witness {N a : Nat} {A : Finset Nat}
    (hA : Admissible N A) (ha : a ∈ exceptionalPart A) (S : Real) :
    ∃ p : Nat, p.Prime ∧ p ^ 2 ∣ a ^ 2 + 1 ∧ (p ∈ smallDiagonalPrimes S ∨ S < (p : Real)) := by
  obtain ⟨ha, h7, h18⟩ := Finset.mem_filter.mp ha
  obtain ⟨p, hp, h13, hm, hd⟩ := exceptional_diagonal_witness (hA.2 a ha a ha) h7 h18
  refine ⟨p, hp, by simpa only [pow_two] using hd, ?_⟩
  by_cases hcut : S < (p : Real)
  · exact Or.inr hcut
  · exact Or.inl (Finset.mem_filter.mpr
      ⟨Finset.mem_Icc.mpr ⟨h13, Nat.le_floor (le_of_not_gt hcut)⟩, hp, hm⟩)

theorem exceptional_excluded_diagonal_bound {N : Nat} {A : Finset Nat}
    (hA : Admissible N A) {S : Real} (hS : 2 ≤ S) :
    ((exceptionalPart A).card : Real) ≤
      (6371 / 250000 : Real) * N + (69 / 25 : Real) * (smallDiagonalPrimes S).card +
      pellTailBound N (((N : Real) ^ 2 + 1) / S ^ 2) := by
  have hb := diagonal_filtered_bound hS (fun a => a % 25 ≠ 7 ∧ a % 25 ≠ 18)
    (exceptionalPart A) (smallDiagonalPrimes S)
    (fun a ha => hA.1 (Finset.mem_filter.mp ha).1)
    (fun a ha => (Finset.mem_filter.mp ha).2)
    (fun p => (23 / 25 : Real) * (2 / (p : Real) ^ 2)) (69 / 25) (by
      intro p hp
      obtain ⟨hp, hprime, _⟩ := Finset.mem_filter.mp hp
      have h13 := (Finset.mem_Icc.mp hp).1
      have he := card_diagonal_excluded_real N hprime (by omega)
      simp only [and_assoc] at *
      convert he using 1 <;> ring)
    (fun a ha => exceptional_diagonal_small_large_witness hA ha S)
  have hd := diagonal_prime_density_bound (smallDiagonalPrimes S) (by
    intro p hp
    obtain ⟨hp, hprime, hmod⟩ := Finset.mem_filter.mp hp
    exact ⟨(Finset.mem_Icc.mp hp).1, hprime, hmod⟩)
  have he : (∑ p ∈ smallDiagonalPrimes S, (23 / 25 : Real) * (2 / (p : Real) ^ 2)) =
      (23 / 25 : Real) * (∑ p ∈ smallDiagonalPrimes S, 2 / (p : Real) ^ 2) :=
    (Finset.mul_sum _ _ _).symm
  rw [he] at hb
  have hn := mul_le_mul_of_nonneg_left hd (show (0 : Real) ≤ (N : Real) * (23 / 25) by positivity)
  nlinarith

theorem exceptional_odd_excluded_diagonal_bound {N : Nat} {A : Finset Nat}
    (hA : Admissible N A) (ho : ∀ a ∈ exceptionalPart A, a % 2 = 1)
    {S : Real} (hS : 2 ≤ S) :
    ((exceptionalPart A).card : Real) ≤
      (6371 / 500000 : Real) * N + (69 / 25 : Real) * (smallDiagonalPrimes S).card +
      oddPellTailBound N (((N : Real) ^ 2 + 1) / S ^ 2) := by
  have hb := odd_diagonal_filtered_bound hS
    (fun a => a % 2 = 1 ∧ a % 25 ≠ 7 ∧ a % 25 ≠ 18)
    (exceptionalPart A) (smallDiagonalPrimes S)
    (fun a ha => hA.1 (Finset.mem_filter.mp ha).1)
    (fun a ha => ⟨ho a ha, (Finset.mem_filter.mp ha).2⟩) ho
    (fun p => (23 / 50 : Real) * (2 / (p : Real) ^ 2)) (69 / 25) (by
      intro p hp
      obtain ⟨hp, hprime, _⟩ := Finset.mem_filter.mp hp
      have h13 := (Finset.mem_Icc.mp hp).1
      have he := card_odd_diagonal_excluded_real N hprime (by omega)
      simp only [and_assoc] at *
      convert he using 1 <;> ring)
    (fun a ha => exceptional_diagonal_small_large_witness hA ha S)
  have hd := diagonal_prime_density_bound (smallDiagonalPrimes S) (by
    intro p hp
    obtain ⟨hp, hprime, hmod⟩ := Finset.mem_filter.mp hp
    exact ⟨(Finset.mem_Icc.mp hp).1, hprime, hmod⟩)
  have he : (∑ p ∈ smallDiagonalPrimes S, (23 / 50 : Real) * (2 / (p : Real) ^ 2)) =
      (23 / 50 : Real) * (∑ p ∈ smallDiagonalPrimes S, 2 / (p : Real) ^ 2) :=
    (Finset.mul_sum _ _ _).symm
  rw [he] at hb
  have hn := mul_le_mul_of_nonneg_left hd (show (0 : Real) ≤ (N : Real) * (23 / 50) by positivity)
  nlinarith

theorem exceptional_odd_excluded_numeric_bound {N : Nat} {A : Finset Nat}
    (hA : Admissible N A) (ho : ∀ a ∈ exceptionalPart A, a % 2 = 1)
    {S : Real} (hlo : 32768 ≤ S) (hhi : S ≤ 2097152) :
    ((exceptionalPart A).card : Real) ≤
      (6371 / 500000 : Real) * N + (69 / 25 : Real) * ((29 / 50 : Real) * S / Real.log S) +
      oddPellTailBound N (((N : Real) ^ 2 + 1) / S ^ 2) := by
  have hb := exceptional_odd_excluded_diagonal_bound hA ho (S := S) (by linarith)
  have hp := card_smallDiagonalPrimes_finite_bound hlo hhi
  linarith

namespace DiagonalExclusionEstimateTests

theorem empty_odd : ((exceptionalPart (∅ : Finset Nat)).card : Real) ≤
    (6371 / 500000 : Real) * 100 + (69 / 25 : Real) * ((29 / 50 : Real) * 65536 / Real.log 65536) +
      oddPellTailBound 100 (((100 : Real) ^ 2 + 1) / 65536 ^ 2) := by
  apply exceptional_odd_excluded_numeric_bound
  · exact ⟨by simp, by simp [ProductCondition]⟩
  · simp [exceptionalPart]
  · norm_num
  · norm_num

end DiagonalExclusionEstimateTests

end JSP848
