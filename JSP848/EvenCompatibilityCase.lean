import JSP848.DiagonalCompatibilityEstimate
import JSP848.EvenExceptionalCase
import JSP848.SharedOffDiagonalTail

namespace JSP848

theorem even_base_small_factor_bound {N b : Nat} (heven : b % 2 = 0)
    (A J F : Finset Nat) (hA : A ⊆ Finset.Icc 1 N)
    (hr : ∀ a ∈ A, a % 25 ∈ J) (hJ : ∀ r ∈ J, r = 7 ∨ r = 18)
    (hb : ∀ r ∈ J, b % 25 ≠ r)
    (hF : ∀ p ∈ F, p.Prime ∧ p ≠ 2 ∧ p ≠ 5 ∧ p ∣ b)
    {R piBound : Real}
    (hw : ∀ a ∈ A, ∃ p : Nat, p.Prime ∧ (p : Real) ≤ R ∧ p ^ 2 ∣ a * b + 1)
    (hpi : (Nat.primeCounting ⌊R⌋₊ : Real) ≤ piBound) :
    (A.card : Real) ≤ (J.card : Real) *
      (((203 / 1250 : Real) - ∑ p ∈ F, 1 / (p : Real) ^ 2) * ((N : Real) / 25) + piBound) := by
  classical
  let P := (smallOffDiagonalPrimes R).filter (fun p => ¬p ∣ b)
  let U := (Finset.Icc 1 N).filter (fun a => a % 25 ∈ J ∧ ∃ p ∈ P, p ^ 2 ∣ a * b + 1)
  have hsub : A ⊆ U := by
    intro a ha
    obtain ⟨p, hp, hpR, hd⟩ := hw a ha
    refine Finset.mem_filter.mpr ⟨hA ha, hr a ha, p, Finset.mem_filter.mpr
      ⟨Finset.mem_filter.mpr ⟨Finset.mem_range.mpr (Nat.lt_succ_of_le (Nat.le_floor hpR)),
        hp, ?_, ?_⟩, off_diagonal_prime_not_dvd hp hd⟩, hd⟩
    · intro he
      subst p
      exact off_diagonal_not_four_of_even heven (by simpa using hd)
    · intro he
      subst p
      exact off_diagonal_not_twentyfive (hJ _ (hr a ha)) rfl (hb _ (hr a ha)) (by simpa using hd)
  have hcount := off_diagonal_small_classes N b 25 (by decide) J P (by
    intro p hp
    obtain ⟨_, hprime, _, h5⟩ := Finset.mem_filter.mp (Finset.mem_filter.mp hp).1
    exact ⟨hprime, prime_coprime_twentyfive hprime h5⟩)
  change (U.card : Real) ≤ _ at hcount
  have hd := off_diagonal_prime_density_subtract P F
    (fun _ hp => (Finset.mem_filter.mp (Finset.mem_filter.mp hp).1).2)
    (fun p hp => ⟨(hF p hp).1, (hF p hp).2.1, (hF p hp).2.2.1⟩)
    (prime_factor_filter_disjoint _ F (fun p hp => (hF p hp).2.2.2))
  have hpcount : (P.card : Real) ≤ piBound := by
    apply (Nat.cast_le.mpr (card_prime_finset_le_counting P ?_)).trans hpi
    intro p hp
    obtain ⟨hrange, hprime, _⟩ := Finset.mem_filter.mp (Finset.mem_filter.mp hp).1
    exact ⟨hprime, Nat.lt_succ_iff.mp (Finset.mem_range.mp hrange)⟩
  have hm := mul_le_mul_of_nonneg_left hd (show (0 : Real) ≤ N / 25 by positivity)
  have hall := mul_le_mul_of_nonneg_left (add_le_add hm hpcount) (Nat.cast_nonneg J.card)
  have hc : (A.card : Real) ≤ U.card := Nat.cast_le.mpr (Finset.card_le_card hsub)
  nlinarith

theorem admissible_even_exceptional_compatibility_bound {N b : Nat} {A : Finset Nat}
    (hA : Admissible N A) (hb : b ∈ exceptionalPart A) (heven : b % 2 = 0)
    (F : Finset Nat) (hF : ∀ p ∈ F, p.Prime ∧ p ≠ 2 ∧ p ≠ 5 ∧ p ∣ b)
    {R S piBound tail : Real} (hS : 2 ≤ S)
    (hpi : (Nat.primeCounting ⌊R⌋₊ : Real) ≤ piBound)
    (htail : ∀ T : Finset Nat, T ⊆ Finset.Icc 1 N →
      (∀ a ∈ T, ∃ p : Nat, R < (p : Real) ∧ p ^ 2 ∣ a * b + 1) →
      (T.card : Real) ≤ tail) :
    (A.card : Real) ≤
      ((277 / 10000 : Real) - diagonalCompatibilityGain +
        (2 / 25 : Real) * ((203 / 1250 : Real) - ∑ p ∈ F, 1 / (p : Real) ^ 2)) * N +
      (smallDiagonalPrimes S).card + 4 * piBound + 2 +
      pellTailBound N (((N : Real) ^ 2 + 1) / S ^ 2) + tail := by
  obtain ⟨hbA, hb7, hb18⟩ := Finset.mem_filter.mp hb
  apply split_off_diagonal_large A hA.1 (fun a ha => hA.2 a ha b hbA) ?_ htail
  intro C hC hw
  have hbase := even_base_small_factor_bound heven (baseParts C) {7, 18} F
    (fun _ ha => hA.1 (hC (Finset.mem_filter.mp ha).1))
    (by intro a ha; simpa only [Finset.mem_insert, Finset.mem_singleton] using (Finset.mem_filter.mp ha).2)
    (by intro r hr; simpa only [Finset.mem_insert, Finset.mem_singleton] using hr)
    (by
      intro r hr
      simp only [Finset.mem_insert, Finset.mem_singleton] at hr
      rcases hr with rfl | rfl
      · exact hb7
      · exact hb18) hF (fun a ha => hw a (Finset.mem_filter.mp ha).1) hpi
  simp only [Finset.card_pair (by decide : (7 : Nat) ≠ 18), Nat.cast_ofNat] at hbase
  have hex := exceptional_compatibility_small_bound hA
    (show exceptionalPart C ⊆ exceptionalPart A from fun _ ha =>
      Finset.mem_filter.mpr ⟨hC (Finset.mem_filter.mp ha).1, (Finset.mem_filter.mp ha).2⟩)
    heven hS (fun a ha => hw a (Finset.mem_filter.mp ha).1) hpi
  have hpart : ((baseParts C).card : Real) + (exceptionalPart C).card = C.card := by
    exact_mod_cast card_baseParts_add_exceptional C
  nlinarith

theorem admissible_even_exceptional_compatibility_divisor {N b c : Nat} {A : Finset Nat}
    (hA : Admissible N A) (hb : b ∈ exceptionalPart A) (heven : b % 2 = 0)
    (hc : 0 < c) (hcb : c ∣ b) (F : Finset Nat)
    (hF : ∀ p ∈ F, p.Prime ∧ p ≠ 2 ∧ p ≠ 5 ∧ p ∣ b)
    {R S piBound : Real} (hR : 0 < R) (hS : 2 ≤ S)
    (hpi : (Nat.primeCounting ⌊R⌋₊ : Real) ≤ piBound) :
    (A.card : Real) ≤
      ((277 / 10000 : Real) - diagonalCompatibilityGain +
        (2 / 25 : Real) * ((203 / 1250 : Real) - ∑ p ∈ F, 1 / (p : Real) ^ 2)) * N +
      (smallDiagonalPrimes S).card + 4 * piBound + 2 +
      pellTailBound N (((N : Real) ^ 2 + 1) / S ^ 2) + divisorOffDiagonalTailBound N b c R := by
  apply admissible_even_exceptional_compatibility_bound hA hb heven F hF hS hpi
  exact fun T hT hw => large_divisor_off_diagonal_tail
    (Finset.mem_Icc.mp (hA.1 (Finset.mem_filter.mp hb).1)).1 hc hcb hR T hT hw

end JSP848
