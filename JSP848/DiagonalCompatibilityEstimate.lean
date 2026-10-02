import JSP848.DiagonalCompatibilityCount
import JSP848.DiagonalExclusionEstimate

namespace JSP848

noncomputable def diagonalCompatibilityGain : Real :=
  (1 - ((203 / 1250 : Real) + 1 / 25 - 1 / 169)) / 169 +
    (1 - ((203 / 1250 : Real) + 1 / 25 - 1 / 289)) / 289

def withoutCompatibilityPrimes (P : Finset Nat) : Finset Nat := (P.erase 13).erase 17

def withoutCompatibilityRoots (A : Finset Nat) : Finset Nat :=
  A.filter (fun a => ¬169 ∣ a ^ 2 + 1 ∧ ¬289 ∣ a ^ 2 + 1)

theorem diagonal_density_without_compatibility (P : Finset Nat)
    (hP : ∀ p ∈ P, 13 ≤ p ∧ p.Prime ∧ p % 4 = 1) :
    (∑ p ∈ withoutCompatibilityPrimes P, 2 / (p : Real) ^ 2) ≤
      (277 / 10000 : Real) - 2 / 169 - 2 / 289 := by
  let Q := withoutCompatibilityPrimes P
  have hdis : Disjoint Q ({13, 17} : Finset Nat) := by
    apply Finset.disjoint_left.mpr
    intro p hp hf
    obtain ⟨h17, hp⟩ := Finset.mem_erase.mp hp
    obtain ⟨h13, _⟩ := Finset.mem_erase.mp hp
    simp only [Finset.mem_insert, Finset.mem_singleton] at hf
    rcases hf with rfl | rfl
    · exact h13 rfl
    · exact h17 rfl
  have hb := diagonal_prime_density_bound (Q ∪ {13, 17}) (by
    intro p hp
    rcases Finset.mem_union.mp hp with hp | hp
    · exact hP p (Finset.mem_erase.mp (Finset.mem_erase.mp hp).2).2
    · simp only [Finset.mem_insert, Finset.mem_singleton] at hp
      rcases hp with rfl | rfl <;> norm_num)
  rw [Finset.sum_union hdis] at hb
  norm_num at hb
  change (∑ p ∈ Q, 2 / (p : Real) ^ 2) ≤ _
  linarith

theorem card_compatibility_root_cover (A : Finset Nat) :
    A.card ≤ (A.filter (fun a => 169 ∣ a ^ 2 + 1)).card +
      (A.filter (fun a => 289 ∣ a ^ 2 + 1)).card + (withoutCompatibilityRoots A).card := by
  have hsub : A ⊆ (A.filter (fun a => 169 ∣ a ^ 2 + 1)) ∪
      (A.filter (fun a => 289 ∣ a ^ 2 + 1)) ∪ withoutCompatibilityRoots A := by
    intro a ha
    by_cases h13 : 169 ∣ a ^ 2 + 1
    · exact Finset.mem_union_left _ (Finset.mem_union_left _ (Finset.mem_filter.mpr ⟨ha, h13⟩))
    by_cases h17 : 289 ∣ a ^ 2 + 1
    · exact Finset.mem_union_left _ (Finset.mem_union_right _ (Finset.mem_filter.mpr ⟨ha, h17⟩))
    · exact Finset.mem_union_right _ (Finset.mem_filter.mpr ⟨ha, h13, h17⟩)
  exact (Finset.card_le_card hsub).trans ((Finset.card_union_le _ _).trans
    (Nat.add_le_add_right (Finset.card_union_le _ _) _))

theorem exceptional_without_compatibility_witness {N : Nat} {A B : Finset Nat}
    (hA : Admissible N A) (hB : B ⊆ exceptionalPart A) (S : Real)
    {a : Nat} (ha : a ∈ withoutCompatibilityRoots B) :
    ∃ p : Nat, p.Prime ∧ p ^ 2 ∣ a ^ 2 + 1 ∧
      (p ∈ withoutCompatibilityPrimes (smallDiagonalPrimes S) ∨ S < (p : Real)) := by
  obtain ⟨ha, h13, h17⟩ := Finset.mem_filter.mp ha
  obtain ⟨p, hp, hd, hs | hl⟩ := exceptional_diagonal_small_large_witness hA (hB ha) S
  · refine ⟨p, hp, hd, Or.inl (Finset.mem_erase.mpr ⟨?_, Finset.mem_erase.mpr ⟨?_, hs⟩⟩)⟩
    · intro he
      subst p
      exact h17 hd
    · intro he
      subst p
      exact h13 hd
  · exact ⟨p, hp, hd, Or.inr hl⟩

theorem exceptional_compatibility_small_bound {N b : Nat} {A B : Finset Nat}
    (hA : Admissible N A) (hB : B ⊆ exceptionalPart A) (heven : b % 2 = 0)
    {R S piBound : Real} (hS : 2 ≤ S)
    (hw : ∀ a ∈ B, ∃ t : Nat, t.Prime ∧ (t : Real) ≤ R ∧ t ^ 2 ∣ a * b + 1)
    (hpi : (Nat.primeCounting ⌊R⌋₊ : Real) ≤ piBound) :
    (B.card : Real) ≤ ((277 / 10000 : Real) - diagonalCompatibilityGain) * N +
      (smallDiagonalPrimes S).card + 2 * piBound + 2 +
      pellTailBound N (((N : Real) ^ 2 + 1) / S ^ 2) := by
  have hBN : B ⊆ Finset.Icc 1 N := fun _ ha => hA.1 (Finset.mem_filter.mp (hB ha)).1
  have h13 := even_thirteen_small_bound heven (B.filter (fun a => 169 ∣ a ^ 2 + 1))
    (fun _ ha => hBN (Finset.mem_filter.mp ha).1)
    (fun _ ha => (Finset.mem_filter.mp ha).2)
    (fun a ha => hw a (Finset.mem_filter.mp ha).1) hpi
  have h17 := even_seventeen_small_bound heven (B.filter (fun a => 289 ∣ a ^ 2 + 1))
    (fun _ ha => hBN (Finset.mem_filter.mp ha).1)
    (fun _ ha => (Finset.mem_filter.mp ha).2)
    (fun a ha => hw a (Finset.mem_filter.mp ha).1) hpi
  let P := withoutCompatibilityPrimes (smallDiagonalPrimes S)
  have hrest := diagonal_small_large_bound hS (withoutCompatibilityRoots B) P
    (fun _ ha => hBN (Finset.mem_filter.mp ha).1)
    (fun p hp => (Finset.mem_filter.mp (Finset.mem_erase.mp (Finset.mem_erase.mp hp).2).2).2.1)
    (fun _ ha => exceptional_without_compatibility_witness hA hB S ha)
  have hd := diagonal_density_without_compatibility (smallDiagonalPrimes S) (by
    intro p hp
    obtain ⟨hp, ht⟩ := Finset.mem_filter.mp hp
    exact ⟨(Finset.mem_Icc.mp hp).1, ht⟩)
  have hprod := mul_le_mul_of_nonneg_left hd (Nat.cast_nonneg N : (0 : Real) ≤ _)
  have hc : (P.card : Real) ≤ (smallDiagonalPrimes S).card := by
    have hn : P.card ≤ (smallDiagonalPrimes S).card :=
      Finset.card_erase_le.trans Finset.card_erase_le
    exact_mod_cast hn
  have hcover : (B.card : Real) ≤ ((B.filter (fun a => 169 ∣ a ^ 2 + 1)).card : Real) +
      (B.filter (fun a => 289 ∣ a ^ 2 + 1)).card + (withoutCompatibilityRoots B).card := by
    exact_mod_cast card_compatibility_root_cover B
  unfold diagonalCompatibilityGain
  change (∑ p ∈ P, 2 / (p : Real) ^ 2) ≤ _ at hd
  change (N : Real) * (∑ p ∈ P, 2 / (p : Real) ^ 2) ≤ _ at hprod
  nlinarith

theorem exceptional_odd_compatibility_small_bound {N b : Nat} {A B : Finset Nat}
    (hA : Admissible N A) (hB : B ⊆ exceptionalPart A) (heven : b % 2 = 0)
    (ho : ∀ a ∈ B, a % 2 = 1) {R S piBound : Real} (hS : 2 ≤ S)
    (hw : ∀ a ∈ B, ∃ t : Nat, t.Prime ∧ (t : Real) ≤ R ∧ t ^ 2 ∣ a * b + 1)
    (hpi : (Nat.primeCounting ⌊R⌋₊ : Real) ≤ piBound) :
    (B.card : Real) ≤ ((277 / 20000 : Real) - diagonalCompatibilityGain / 2) * N +
      (smallDiagonalPrimes S).card + 2 * piBound + 2 +
      oddPellTailBound N (((N : Real) ^ 2 + 1) / S ^ 2) := by
  have hBN : B ⊆ Finset.Icc 1 N := fun _ ha => hA.1 (Finset.mem_filter.mp (hB ha)).1
  have h13 := even_thirteen_odd_small_bound heven (B.filter (fun a => 169 ∣ a ^ 2 + 1))
    (fun _ ha => hBN (Finset.mem_filter.mp ha).1)
    (fun a ha => ho a (Finset.mem_filter.mp ha).1)
    (fun _ ha => (Finset.mem_filter.mp ha).2)
    (fun a ha => hw a (Finset.mem_filter.mp ha).1) hpi
  have h17 := even_seventeen_odd_small_bound heven (B.filter (fun a => 289 ∣ a ^ 2 + 1))
    (fun _ ha => hBN (Finset.mem_filter.mp ha).1)
    (fun a ha => ho a (Finset.mem_filter.mp ha).1)
    (fun _ ha => (Finset.mem_filter.mp ha).2)
    (fun a ha => hw a (Finset.mem_filter.mp ha).1) hpi
  let P := withoutCompatibilityPrimes (smallDiagonalPrimes S)
  have hrest := odd_diagonal_small_large_bound hS (withoutCompatibilityRoots B) P
    (fun _ ha => hBN (Finset.mem_filter.mp ha).1)
    (fun a ha => ho a (Finset.mem_filter.mp ha).1)
    (fun p hp => (Finset.mem_filter.mp (Finset.mem_erase.mp (Finset.mem_erase.mp hp).2).2).2.1)
    (fun _ ha => exceptional_without_compatibility_witness hA hB S ha)
  have hd := diagonal_density_without_compatibility (smallDiagonalPrimes S) (by
    intro p hp
    obtain ⟨hp, ht⟩ := Finset.mem_filter.mp hp
    exact ⟨(Finset.mem_Icc.mp hp).1, ht⟩)
  have hprod := mul_le_mul_of_nonneg_left hd (show (0 : Real) ≤ N / 2 by positivity)
  have hc : (P.card : Real) ≤ (smallDiagonalPrimes S).card := by
    have hn : P.card ≤ (smallDiagonalPrimes S).card :=
      Finset.card_erase_le.trans Finset.card_erase_le
    exact_mod_cast hn
  have hcover : (B.card : Real) ≤ ((B.filter (fun a => 169 ∣ a ^ 2 + 1)).card : Real) +
      (B.filter (fun a => 289 ∣ a ^ 2 + 1)).card + (withoutCompatibilityRoots B).card := by
    exact_mod_cast card_compatibility_root_cover B
  unfold diagonalCompatibilityGain
  change (N : Real) / 2 * (∑ p ∈ P, 2 / (p : Real) ^ 2) ≤ _ at hprod
  nlinarith

end JSP848
