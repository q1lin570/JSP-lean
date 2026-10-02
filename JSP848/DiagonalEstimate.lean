import JSP848.RealPellTail
import JSP848.ProgressionCount
import JSP848.Residues

namespace JSP848

theorem exists_witness_finset (A : Finset Nat) (Q : Nat → Nat → Prop)
    (hQ : ∀ a ∈ A, ∃ p, Q a p) :
    ∃ W : Finset (Nat × Nat), W.card = A.card ∧ ∀ w ∈ W, w.1 ∈ A ∧ Q w.1 w.2 := by
  classical
  let f : Nat → Nat := fun a => if h : a ∈ A then Classical.choose (hQ a h) else 0
  have hf : ∀ a ∈ A, Q a (f a) := by
    intro a ha
    simpa only [f, dif_pos ha] using Classical.choose_spec (hQ a ha)
  refine ⟨A.image (fun a => (a, f a)), ?_, ?_⟩
  · apply Finset.card_image_of_injective
    intro a b he
    exact congrArg Prod.fst he
  · intro w hw
    obtain ⟨a, ha, rfl⟩ := Finset.mem_image.mp hw
    exact ⟨ha, hf a ha⟩

theorem large_diagonal_tail {N : Nat} {S : Real} (hS : 2 ≤ S) (A : Finset Nat)
    (hA : A ⊆ Finset.Icc 1 N)
    (hw : ∀ a ∈ A, ∃ p : Nat, p.Prime ∧ S < (p : Real) ∧ p ^ 2 ∣ a ^ 2 + 1) :
    (A.card : Real) ≤ pellTailBound N (((N : Real) ^ 2 + 1) / S ^ 2) := by
  obtain ⟨W, hc, hW⟩ := exists_witness_finset A _ hw
  rw [← hc]
  apply large_prime_square_witness_tail hS W
  intro w hw
  exact ⟨hA (hW w hw).1, (hW w hw).2⟩

theorem large_odd_diagonal_tail {N : Nat} {S : Real} (hS : 2 ≤ S) (A : Finset Nat)
    (hA : A ⊆ Finset.Icc 1 N) (ho : ∀ a ∈ A, a % 2 = 1)
    (hw : ∀ a ∈ A, ∃ p : Nat, p.Prime ∧ S < (p : Real) ∧ p ^ 2 ∣ a ^ 2 + 1) :
    (A.card : Real) ≤ oddPellTailBound N (((N : Real) ^ 2 + 1) / S ^ 2) := by
  obtain ⟨W, hc, hW⟩ := exists_witness_finset A _ hw
  rw [← hc]
  apply large_odd_prime_square_witness_tail hS W
  intro w hw
  exact ⟨hA (hW w hw).1, ho w.1 (hW w hw).1, (hW w hw).2⟩

theorem card_prime_square_divisors_real (N : Nat) {p : Nat} (hp : p.Prime) :
    (((Finset.Icc 1 N).filter (fun a => p ^ 2 ∣ a ^ 2 + 1)).card : Real) ≤
      2 * (N : Real) / (p : Real) ^ 2 + 1 := by
  have hn := card_prime_square_divisors_bound N hp
  have hr : (p : Real) ^ 2 * (((Finset.Icc 1 N).filter
      (fun a => p ^ 2 ∣ a ^ 2 + 1)).card : Real) ≤ 2 * (N : Real) + (p : Real) ^ 2 := by
    exact_mod_cast hn
  have hpos : 0 < (p : Real) ^ 2 := pow_pos (by exact_mod_cast hp.pos) _
  have he : 2 * (N : Real) / (p : Real) ^ 2 + 1 =
      (2 * (N : Real) + (p : Real) ^ 2) / (p : Real) ^ 2 := by
    rw [add_div, div_self (ne_of_gt hpos)]
  rw [he, le_div_iff₀ hpos]
  nlinarith

theorem diagonal_small_large_bound {N : Nat} {S : Real} (hS : 2 ≤ S)
    (A P : Finset Nat) (hA : A ⊆ Finset.Icc 1 N) (hP : ∀ p ∈ P, p.Prime)
    (hw : ∀ a ∈ A, ∃ p : Nat, p.Prime ∧ p ^ 2 ∣ a ^ 2 + 1 ∧
      (p ∈ P ∨ S < (p : Real))) :
    (A.card : Real) ≤ (N : Real) * (∑ p ∈ P, 2 / (p : Real) ^ 2) + P.card +
      pellTailBound N (((N : Real) ^ 2 + 1) / S ^ 2) := by
  classical
  let U := P.biUnion (fun p => (Finset.Icc 1 N).filter (fun a => p ^ 2 ∣ a ^ 2 + 1))
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
    obtain ⟨p, hp, hd, hsmall | hlarge⟩ := hw a ha
    · exact (hn (Finset.mem_biUnion.mpr ⟨p, hsmall, Finset.mem_filter.mpr ⟨hA ha, hd⟩⟩)).elim
    · exact ⟨p, hp, hlarge, hd⟩
  have hU : (U.card : Real) ≤ ∑ p ∈ P, (2 * (N : Real) / (p : Real) ^ 2 + 1) := by
    calc
      _ ≤ ∑ p ∈ P, (((Finset.Icc 1 N).filter (fun a => p ^ 2 ∣ a ^ 2 + 1)).card : Real) := by
        exact_mod_cast Finset.card_biUnion_le
      _ ≤ _ := Finset.sum_le_sum (fun p hp => card_prime_square_divisors_real N (hP p hp))
  have he : (∑ p ∈ P, (2 * (N : Real) / (p : Real) ^ 2 + 1)) =
      (N : Real) * (∑ p ∈ P, 2 / (p : Real) ^ 2) + P.card := by
    rw [Finset.sum_add_distrib, Finset.mul_sum]
    simp only [Finset.sum_const, nsmul_eq_mul, mul_one]
    congr 1
    apply Finset.sum_congr rfl
    intro p hp
    ring
  rw [he] at hU
  linarith

noncomputable def smallDiagonalPrimes (S : Real) : Finset Nat :=
  (Finset.Icc 13 ⌊S⌋₊).filter (fun p => p.Prime ∧ p % 4 = 1)

/-- The actual exceptional part of an admissible set satisfies the diagonal estimate. -/
theorem exceptional_diagonal_bound {N : Nat} {A : Finset Nat} (hA : Admissible N A)
    {S : Real} (hS : 2 ≤ S) :
    ((exceptionalPart A).card : Real) ≤
      (N : Real) * (∑ p ∈ smallDiagonalPrimes S, 2 / (p : Real) ^ 2) +
      (smallDiagonalPrimes S).card + pellTailBound N (((N : Real) ^ 2 + 1) / S ^ 2) := by
  apply diagonal_small_large_bound hS (exceptionalPart A) (smallDiagonalPrimes S)
  · intro a ha
    exact hA.1 (Finset.mem_filter.mp ha).1
  · intro p hp
    exact (Finset.mem_filter.mp hp).2.1
  · intro a ha
    obtain ⟨ha, h7, h18⟩ := Finset.mem_filter.mp ha
    obtain ⟨p, hp, h13, hm, hd⟩ := exceptional_diagonal_witness (hA.2 a ha a ha) h7 h18
    refine ⟨p, hp, by simpa only [pow_two] using hd, ?_⟩
    by_cases hcut : S < (p : Real)
    · exact Or.inr hcut
    · exact Or.inl (Finset.mem_filter.mpr
        ⟨Finset.mem_Icc.mpr ⟨h13, Nat.le_floor (le_of_not_gt hcut)⟩, hp, hm⟩)

end JSP848
