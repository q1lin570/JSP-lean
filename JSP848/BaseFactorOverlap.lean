import JSP848.OffDiagonalOverlapClasses
import JSP848.PrimeFactorDensity
import JSP848.CrossBaseCases
import JSP848.SharedOffDiagonalTail

namespace JSP848

theorem base_small_factor_overlap_bound {N b : Nat}
    (A J F K : Finset Nat) (hA : A ⊆ Finset.Icc 1 N)
    (hr : ∀ a ∈ A, a % 25 ∈ J) (hJ : ∀ r ∈ J, r = 7 ∨ r = 18)
    (hb : ∀ r ∈ J, b % 25 ≠ r)
    (hF : ∀ p ∈ F, p.Prime ∧ p ≠ 5 ∧ p ∣ b)
    {R piBound : Real}
    (hK : ∀ p ∈ K, p.Prime ∧ p ≠ 5 ∧ ¬p ∣ b ∧ (p : Real) ≤ R)
    (hw : ∀ a ∈ A, ∃ p : Nat, p.Prime ∧ (p : Real) ≤ R ∧ p ^ 2 ∣ a * b + 1)
    (hpi : (Nat.primeCounting ⌊R⌋₊ : Real) ≤ piBound) :
    (A.card : Real) ≤ (J.card : Real) *
      (((1031 / 2500 : Real) - ∑ p ∈ F, 1 / (p : Real) ^ 2 - primeSquareOverlap K) *
        ((N : Real) / 25) + piBound + (2 : Real) ^ K.card) := by
  classical
  let P := (smallPrimesExceptFive R).filter (fun p => ¬p ∣ b)
  let U := (Finset.Icc 1 N).filter (fun a => a % 25 ∈ J ∧ ∃ p ∈ P, p ^ 2 ∣ a * b + 1)
  have hsub : A ⊆ U := by
    intro a ha
    obtain ⟨p, hp, hpR, hd⟩ := hw a ha
    refine Finset.mem_filter.mpr ⟨hA ha, hr a ha, p, Finset.mem_filter.mpr
      ⟨Finset.mem_filter.mpr ⟨Finset.mem_range.mpr (Nat.lt_succ_of_le (Nat.le_floor hpR)),
        hp, ?_⟩, off_diagonal_prime_not_dvd hp hd⟩, hd⟩
    intro he
    subst p
    exact off_diagonal_not_twentyfive (hJ _ (hr a ha)) rfl (hb _ (hr a ha)) (by simpa using hd)
  have hKP : K ⊆ P := by
    intro p hp
    obtain ⟨ht, h5, hdiv, hR⟩ := hK p hp
    exact Finset.mem_filter.mpr ⟨Finset.mem_filter.mpr
      ⟨Finset.mem_range.mpr (Nat.lt_succ_of_le (Nat.le_floor hR)), ht, h5⟩, hdiv⟩
  have hcount := off_diagonal_overlap_classes (N := N) (b := b) (by decide : 0 < 25)
    J P K (by intro r hr; rcases hJ r hr with rfl | rfl <;> decide) hKP
    (by
      intro p hp
      obtain ⟨_, hprime, h5⟩ := Finset.mem_filter.mp (Finset.mem_filter.mp hp).1
      exact ⟨hprime, prime_coprime_twentyfive hprime h5⟩)
    (fun p hp => (hK p hp).2.2.1)
  change (U.card : Real) ≤ _ at hcount
  have hd := off_diagonal_prime_density_with_two_subtract P F
    (fun _ hp => (Finset.mem_filter.mp (Finset.mem_filter.mp hp).1).2)
    (fun p hp => ⟨(hF p hp).1, (hF p hp).2.1⟩)
    (prime_factor_filter_disjoint _ F (fun p hp => (hF p hp).2.2))
  have hpcount : (P.card : Real) ≤ piBound := by
    apply (Nat.cast_le.mpr (card_prime_finset_le_counting P ?_)).trans hpi
    intro p hp
    obtain ⟨hrange, hprime, _⟩ := Finset.mem_filter.mp (Finset.mem_filter.mp hp).1
    exact ⟨hprime, Nat.lt_succ_iff.mp (Finset.mem_range.mp hrange)⟩
  have hm := mul_le_mul_of_nonneg_left (sub_le_sub_right hd (primeSquareOverlap K))
    (show (0 : Real) ≤ N / 25 by positivity)
  have hall := mul_le_mul_of_nonneg_left
    (add_le_add_right (add_le_add hm hpcount) ((2 : Real) ^ K.card)) (Nat.cast_nonneg J.card)
  have hc : (A.card : Real) ≤ U.card := Nat.cast_le.mpr (Finset.card_le_card hsub)
  nlinarith

theorem base_factor_overlap_bound {N b : Nat}
    (A J F K : Finset Nat) (hA : A ⊆ Finset.Icc 1 N)
    (hr : ∀ a ∈ A, a % 25 ∈ J) (hJ : ∀ r ∈ J, r = 7 ∨ r = 18)
    (hb : ∀ r ∈ J, b % 25 ≠ r) (hw : ∀ a ∈ A, ¬Squarefree (a * b + 1))
    (hF : ∀ p ∈ F, p.Prime ∧ p ≠ 5 ∧ p ∣ b)
    {R piBound tail : Real}
    (hK : ∀ p ∈ K, p.Prime ∧ p ≠ 5 ∧ ¬p ∣ b ∧ (p : Real) ≤ R)
    (hpi : (Nat.primeCounting ⌊R⌋₊ : Real) ≤ piBound)
    (htail : ∀ T : Finset Nat, T ⊆ Finset.Icc 1 N →
      (∀ a ∈ T, ∃ p : Nat, R < (p : Real) ∧ p ^ 2 ∣ a * b + 1) →
      (T.card : Real) ≤ tail) :
    (A.card : Real) ≤ (J.card : Real) *
      (((1031 / 2500 : Real) - ∑ p ∈ F, 1 / (p : Real) ^ 2 - primeSquareOverlap K) *
        ((N : Real) / 25) + piBound + (2 : Real) ^ K.card) + tail := by
  apply split_off_diagonal_large A hA hw ?_ htail
  intro C hC hwC
  exact base_small_factor_overlap_bound C J F K (hC.trans hA)
    (fun a ha => hr a (hC ha)) hJ hb hF hK hwC hpi

theorem base_factor_overlap_divisor {N b c : Nat}
    (hbpos : 0 < b) (hc : 0 < c) (hcb : c ∣ b)
    (A J F K : Finset Nat) (hA : A ⊆ Finset.Icc 1 N)
    (hr : ∀ a ∈ A, a % 25 ∈ J) (hJ : ∀ r ∈ J, r = 7 ∨ r = 18)
    (hb : ∀ r ∈ J, b % 25 ≠ r) (hw : ∀ a ∈ A, ¬Squarefree (a * b + 1))
    (hF : ∀ p ∈ F, p.Prime ∧ p ≠ 5 ∧ p ∣ b)
    {R piBound : Real} (hR : 0 < R)
    (hK : ∀ p ∈ K, p.Prime ∧ p ≠ 5 ∧ ¬p ∣ b ∧ (p : Real) ≤ R)
    (hpi : (Nat.primeCounting ⌊R⌋₊ : Real) ≤ piBound) :
    (A.card : Real) ≤ (J.card : Real) *
      (((1031 / 2500 : Real) - ∑ p ∈ F, 1 / (p : Real) ^ 2 - primeSquareOverlap K) *
        ((N : Real) / 25) + piBound + (2 : Real) ^ K.card) +
      divisorOffDiagonalTailBound N b c R :=
  base_factor_overlap_bound A J F K hA hr hJ hb hw hF hK hpi
    (fun T hT hwT => large_divisor_off_diagonal_tail hbpos hc hcb hR T hT hwT)

end JSP848
