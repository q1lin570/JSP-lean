import JSP848.EvenOverlapCase
import JSP848.BaseFactorOverlap

namespace JSP848

/-- Remove the fixed element's large witnesses once before counting the opposite class and roots. -/
theorem odd_exceptional_even_base_shared_overlap_bound {N e r : Nat} {A : Finset Nat}
    (hA : Admissible N A) (ho : ∀ a ∈ exceptionalPart A, a % 2 = 1)
    (he : e ∈ residuePart A r) (hr : r = 7 ∨ r = 18) (heven : e % 2 = 0)
    (F K : Finset Nat) (hF : ∀ p ∈ F, p.Prime ∧ p ≠ 2 ∧ p ≠ 5 ∧ p ∣ e)
    {R S piBound tail baseBound : Real} (hS : 2 ≤ S)
    (hK : ∀ p ∈ K, p.Prime ∧ p ≠ 2 ∧ p ≠ 5 ∧ ¬p ∣ e ∧ (p : Real) ≤ R)
    (hpi : (Nat.primeCounting ⌊R⌋₊ : Real) ≤ piBound)
    (htail : ∀ T : Finset Nat, T ⊆ Finset.Icc 1 N →
      (∀ a ∈ T, ∃ p : Nat, R < (p : Real) ∧ p ^ 2 ∣ a * e + 1) →
      (T.card : Real) ≤ tail)
    (hbase : ((residuePart A r).card : Real) ≤ baseBound) :
    (A.card : Real) ≤
      ((277 / 20000 : Real) - diagonalCompatibilityGain / 2 + (1 / 25 : Real) *
        ((203 / 1250 : Real) - ∑ p ∈ F, 1 / (p : Real) ^ 2 - primeSquareOverlap K)) * N +
      (smallDiagonalPrimes S).card + 3 * piBound + (2 : Real) ^ K.card + 2 +
      oddPellTailBound N (((N : Real) ^ 2 + 1) / S ^ 2) + tail + baseBound := by
  classical
  obtain ⟨heA, her⟩ := Finset.mem_filter.mp he
  let B := A.filter (fun a => a % 25 ≠ r)
  have hB : B ⊆ Finset.Icc 1 N := fun _ ha => hA.1 (Finset.mem_filter.mp ha).1
  have hBbound : (B.card : Real) ≤
      ((277 / 20000 : Real) - diagonalCompatibilityGain / 2 + (1 / 25 : Real) *
        ((203 / 1250 : Real) - ∑ p ∈ F, 1 / (p : Real) ^ 2 - primeSquareOverlap K)) * N +
      (smallDiagonalPrimes S).card + 3 * piBound + (2 : Real) ^ K.card + 2 +
      oddPellTailBound N (((N : Real) ^ 2 + 1) / S ^ 2) + tail := by
    apply split_off_diagonal_large B hB
      (fun a ha => hA.2 a (Finset.mem_filter.mp ha).1 e heA) ?_ htail
    intro C hC hw
    have hs : 25 - r = 7 ∨ 25 - r = 18 := by omega
    have hdiff : e % 25 ≠ 25 - r := by omega
    have hbaseC := even_base_small_overlap_bound heven (baseParts C) {25 - r} F K
      (fun _ ha => hB (hC (Finset.mem_filter.mp ha).1))
      (by
        intro a ha
        obtain ⟨haC, ha7 | ha18⟩ := Finset.mem_filter.mp ha
        · have hn := (Finset.mem_filter.mp (hC haC)).2
          apply Finset.mem_singleton.mpr
          omega
        · have hn := (Finset.mem_filter.mp (hC haC)).2
          apply Finset.mem_singleton.mpr
          omega)
      (fun s hs' => by simpa only [Finset.mem_singleton.mp hs'] using hs)
      (fun s hs' => by simpa only [Finset.mem_singleton.mp hs'] using hdiff)
      hF hK (fun a ha => hw a (Finset.mem_filter.mp ha).1) hpi
    simp only [Finset.card_singleton, Nat.cast_one, one_mul] at hbaseC
    have hEx : exceptionalPart C ⊆ exceptionalPart A := by
      intro a ha
      obtain ⟨haC, ha7, ha18⟩ := Finset.mem_filter.mp ha
      exact Finset.mem_filter.mpr ⟨(Finset.mem_filter.mp (hC haC)).1, ha7, ha18⟩
    have hex := exceptional_odd_compatibility_small_bound hA hEx heven
      (fun a ha => ho a (hEx ha)) hS (fun a ha => hw a (Finset.mem_filter.mp ha).1) hpi
    have hpart : ((baseParts C).card : Real) + (exceptionalPart C).card = C.card := by
      exact_mod_cast card_baseParts_add_exceptional C
    nlinarith
  have hpart : ((residuePart A r).card : Real) + B.card = A.card := by
    exact_mod_cast Finset.card_filter_add_card_filter_not (s := A) (fun a => a % 25 = r)
  linarith

theorem admissible_cross_overlap_bound {N b e r : Nat} {A : Finset Nat}
    (hA : Admissible N A) (hb : b ∈ exceptionalPart A)
    (ho : ∀ a ∈ exceptionalPart A, a % 2 = 1)
    (he : e ∈ residuePart A r) (hr : r = 7 ∨ r = 18) (heven : e % 2 = 0)
    (Fe Ke Fb Kb : Finset Nat)
    (hFe : ∀ p ∈ Fe, p.Prime ∧ p ≠ 2 ∧ p ≠ 5 ∧ p ∣ e)
    (hFb : ∀ p ∈ Fb, p.Prime ∧ p ≠ 5 ∧ p ∣ b)
    {RE RB S piBoundE piBoundB tailE tailB : Real} (hS : 2 ≤ S)
    (hKe : ∀ p ∈ Ke, p.Prime ∧ p ≠ 2 ∧ p ≠ 5 ∧ ¬p ∣ e ∧ (p : Real) ≤ RE)
    (hKb : ∀ p ∈ Kb, p.Prime ∧ p ≠ 5 ∧ ¬p ∣ b ∧ (p : Real) ≤ RB)
    (hpiE : (Nat.primeCounting ⌊RE⌋₊ : Real) ≤ piBoundE)
    (hpiB : (Nat.primeCounting ⌊RB⌋₊ : Real) ≤ piBoundB)
    (htE : ∀ T : Finset Nat, T ⊆ Finset.Icc 1 N →
      (∀ a ∈ T, ∃ p : Nat, RE < (p : Real) ∧ p ^ 2 ∣ a * e + 1) →
      (T.card : Real) ≤ tailE)
    (htB : ∀ T : Finset Nat, T ⊆ Finset.Icc 1 N →
      (∀ a ∈ T, ∃ p : Nat, RB < (p : Real) ∧ p ^ 2 ∣ a * b + 1) →
      (T.card : Real) ≤ tailB) :
    (A.card : Real) ≤
      ((277 / 20000 : Real) - diagonalCompatibilityGain / 2 + (1 / 25 : Real) *
        ((203 / 1250 : Real) - ∑ p ∈ Fe, 1 / (p : Real) ^ 2 - primeSquareOverlap Ke) +
        (1 / 25 : Real) *
        ((1031 / 2500 : Real) - ∑ p ∈ Fb, 1 / (p : Real) ^ 2 - primeSquareOverlap Kb)) * N +
      (smallDiagonalPrimes S).card + 3 * piBoundE + piBoundB +
      (2 : Real) ^ Ke.card + (2 : Real) ^ Kb.card + 2 +
      oddPellTailBound N (((N : Real) ^ 2 + 1) / S ^ 2) + tailE + tailB := by
  obtain ⟨hbA, hb7, hb18⟩ := Finset.mem_filter.mp hb
  have hbase := base_factor_overlap_bound (residuePart A r) {r} Fb Kb
    (fun _ ha => hA.1 (Finset.mem_filter.mp ha).1)
    (fun _ ha => Finset.mem_singleton.mpr (Finset.mem_filter.mp ha).2)
    (fun s hs => by simpa only [Finset.mem_singleton.mp hs] using hr)
    (by
      intro s hs
      have heq := Finset.mem_singleton.mp hs
      subst s
      rcases hr with rfl | rfl
      · exact hb7
      · exact hb18)
    (fun a ha => hA.2 a (Finset.mem_filter.mp ha).1 b hbA) hFb hKb hpiB htB
  simp only [Finset.card_singleton, Nat.cast_one, one_mul] at hbase
  have h := odd_exceptional_even_base_shared_overlap_bound hA ho he hr heven
    Fe Ke hFe hS hKe hpiE htE hbase
  nlinarith

end JSP848
