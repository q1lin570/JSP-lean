import JSP848.OffDiagonalClasses

namespace JSP848

/-- Remove the large-witness set once before applying all small-witness estimates. -/
theorem split_off_diagonal_large {N b : Nat} {R main tail : Real}
    (A : Finset Nat) (hA : A ⊆ Finset.Icc 1 N)
    (hprod : ∀ a ∈ A, ¬ Squarefree (a * b + 1))
    (hsmall : ∀ C : Finset Nat, C ⊆ A →
      (∀ a ∈ C, ∃ p : Nat, p.Prime ∧ (p : Real) ≤ R ∧ p ^ 2 ∣ a * b + 1) →
      (C.card : Real) ≤ main)
    (htail : ∀ T : Finset Nat, T ⊆ Finset.Icc 1 N →
      (∀ a ∈ T, ∃ p : Nat, R < (p : Real) ∧ p ^ 2 ∣ a * b + 1) →
      (T.card : Real) ≤ tail) :
    (A.card : Real) ≤ main + tail := by
  classical
  let large := fun a : Nat => ∃ p : Nat, R < (p : Real) ∧ p ^ 2 ∣ a * b + 1
  let T := A.filter large
  let C := A.filter (fun a => ¬large a)
  have ht : (T.card : Real) ≤ tail := htail T
    (fun _ ha => hA (Finset.mem_filter.mp ha).1)
    (fun _ ha => (Finset.mem_filter.mp ha).2)
  have hc : (C.card : Real) ≤ main := by
    apply hsmall C (Finset.filter_subset _ _)
    intro a ha
    obtain ⟨ha, hn⟩ := Finset.mem_filter.mp ha
    obtain ⟨p, hp, hd⟩ := prime_square_witness (hprod a ha)
    refine ⟨p, hp, ?_, hd⟩
    by_contra h
    exact hn ⟨p, lt_of_not_ge h, hd⟩
  have he : (T.card : Real) + C.card = A.card := by
    exact_mod_cast Finset.card_filter_add_card_filter_not (s := A) large
  linarith

end JSP848
