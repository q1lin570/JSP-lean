import JSP848.PrimeSquareIntersections
import JSP848.InclusionExclusionError
import JSP848.OffDiagonalClasses

namespace JSP848

noncomputable def primeSquareOverlap (F : Finset Nat) : Real :=
  (∑ p ∈ F, 1 / (p : Real) ^ 2) - (1 - ∏ p ∈ F, (1 - 1 / (p : Real) ^ 2))

theorem off_diagonal_finite_inclusion_exclusion {N b q r : Nat}
    (hq : 0 < q) (hr : r < q) (F : Finset Nat)
    (hF : ∀ p ∈ F, p.Prime ∧ Nat.Coprime q (p ^ 2) ∧ ¬p ∣ b) :
    (((Finset.Icc 1 N).filter
      (fun a => a % q = r ∧ ∃ p ∈ F, p ^ 2 ∣ a * b + 1)).card : Real) ≤
      (N : Real) / q * (1 - ∏ p ∈ F, (1 - 1 / (p : Real) ^ 2)) + (2 : Real) ^ F.card := by
  classical
  let S := fun p : Nat => (Finset.Icc 1 N).filter (fun a => a % q = r ∧ p ^ 2 ∣ a * b + 1)
  have hunion : (Finset.Icc 1 N).filter
      (fun a => a % q = r ∧ ∃ p ∈ F, p ^ 2 ∣ a * b + 1) = F.biUnion S := by
    ext a
    simp only [Finset.mem_filter, Finset.mem_biUnion, S]
    aesop
  rw [hunion]
  apply inclusion_exclusion_card_upper F S (fun p => 1 / (p : Real) ^ 2)
  intro t
  have hne := (Finset.mem_filter.mp t.property).2
  have hsub := Finset.mem_powerset.mp (Finset.mem_filter.mp t.property).1
  have hinter : t.val.inf' hne S = (Finset.Icc 1 N).filter
      (fun a => a % q = r ∧ ∀ p ∈ t.val, p ^ 2 ∣ a * b + 1) := by
    ext a
    simp only [Finset.mem_inf', Finset.mem_filter, S]
    constructor
    · intro ha
      obtain ⟨p, hp⟩ := hne
      exact ⟨(ha p hp).1, (ha p hp).2.1, fun i hi => (ha i hi).2.2⟩
    · rintro ⟨ha, har, hd⟩ p hp
      exact ⟨ha, har, hd p hp⟩
  rw [hinter]
  convert prime_square_intersection_error (N := N) (b := b) hq hr t.val hne
    (fun p hp => hF p (hsub hp)) using 1 <;> congr 2 <;> congr 2 <;>
      ext a <;> simp only [Finset.mem_filter]

theorem off_diagonal_overlap_bound {N b q r : Nat} (hq : 0 < q) (hr : r < q)
    (P F : Finset Nat) (hFP : F ⊆ P)
    (hP : ∀ p ∈ P, p.Prime ∧ Nat.Coprime q (p ^ 2))
    (hF : ∀ p ∈ F, ¬p ∣ b) :
    (((Finset.Icc 1 N).filter
      (fun a => a % q = r ∧ ∃ p ∈ P, p ^ 2 ∣ a * b + 1)).card : Real) ≤
      (N : Real) / q * ((∑ p ∈ P, 1 / (p : Real) ^ 2) - primeSquareOverlap F) +
        P.card + (2 : Real) ^ F.card := by
  classical
  let U := fun Q : Finset Nat => (Finset.Icc 1 N).filter
    (fun a => a % q = r ∧ ∃ p ∈ Q, p ^ 2 ∣ a * b + 1)
  have hsub : U P ⊆ U F ∪ U (P \ F) := by
    intro a ha
    obtain ⟨ha, har, p, hp, hd⟩ := Finset.mem_filter.mp ha
    by_cases hf : p ∈ F
    · exact Finset.mem_union_left _ (Finset.mem_filter.mpr ⟨ha, har, p, hf, hd⟩)
    · exact Finset.mem_union_right _ (Finset.mem_filter.mpr
        ⟨ha, har, p, Finset.mem_sdiff.mpr ⟨hp, hf⟩, hd⟩)
  have hf := off_diagonal_finite_inclusion_exclusion (N := N) (b := b) hq hr F
    (fun p hp => ⟨(hP p (hFP hp)).1, (hP p (hFP hp)).2, hF p hp⟩)
  have hp := off_diagonal_small_union N b q r hq (P \ F)
    (fun p hp => hP p (Finset.mem_sdiff.mp hp).1)
  have hs := Finset.sum_sdiff hFP (f := fun p : Nat => 1 / (p : Real) ^ 2)
  have hc : ((P \ F).card : Real) ≤ P.card :=
    Nat.cast_le.mpr (Finset.card_le_card Finset.sdiff_subset)
  have hcard : ((U P).card : Real) ≤ ((U F).card : Real) + (U (P \ F)).card := by
    exact_mod_cast (Finset.card_le_card hsub).trans (Finset.card_union_le _ _)
  change ((U F).card : Real) ≤ _ at hf
  change ((U (P \ F)).card : Real) ≤ _ at hp
  change ((U P).card : Real) ≤ _
  unfold primeSquareOverlap
  rw [← hs]
  nlinarith

namespace OffDiagonalOverlapTests

theorem two_prime_overlap : primeSquareOverlap {2, 3} = (1 / 36 : Real) := by
  norm_num [primeSquareOverlap]

theorem empty_overlap : primeSquareOverlap ∅ = 0 := by simp [primeSquareOverlap]

theorem actual_two_primes (N : Nat) :
    (((Finset.Icc 1 N).filter (fun a => a % 25 = 7 ∧
      ∃ p ∈ ({2, 3} : Finset Nat), p ^ 2 ∣ a * 7 + 1)).card : Real) ≤
      (N : Real) / 75 + 4 := by
  have he := off_diagonal_finite_inclusion_exclusion (N := N) (b := 7) (q := 25) (r := 7)
    (by decide) (by decide) {2, 3} (by
      intro p hp
      simp only [Finset.mem_insert, Finset.mem_singleton] at hp
      rcases hp with rfl | rfl <;> norm_num)
  convert he using 1 <;> norm_num <;> ring

end OffDiagonalOverlapTests

end JSP848
