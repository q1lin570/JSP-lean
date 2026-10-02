import JSP848.OffDiagonalClasses

namespace JSP848

theorem off_diagonal_prime_density_subtract (P F : Finset Nat)
    (hP : ∀ p ∈ P, p.Prime ∧ p ≠ 2 ∧ p ≠ 5)
    (hF : ∀ p ∈ F, p.Prime ∧ p ≠ 2 ∧ p ≠ 5) (hdis : Disjoint P F) :
    (∑ p ∈ P, 1 / (p : Real) ^ 2) ≤
      (203 / 1250 : Real) - ∑ p ∈ F, 1 / (p : Real) ^ 2 := by
  have hb := off_diagonal_prime_density_bound (P ∪ F) (by
    intro p hp
    rcases Finset.mem_union.mp hp with hp | hp
    · exact hP p hp
    · exact hF p hp)
  rw [Finset.sum_union hdis] at hb
  linarith

theorem off_diagonal_prime_density_with_two_subtract (P F : Finset Nat)
    (hP : ∀ p ∈ P, p.Prime ∧ p ≠ 5)
    (hF : ∀ p ∈ F, p.Prime ∧ p ≠ 5) (hdis : Disjoint P F) :
    (∑ p ∈ P, 1 / (p : Real) ^ 2) ≤
      (1031 / 2500 : Real) - ∑ p ∈ F, 1 / (p : Real) ^ 2 := by
  have hb := off_diagonal_prime_density_with_two (P ∪ F) (by
    intro p hp
    rcases Finset.mem_union.mp hp with hp | hp
    · exact hP p hp
    · exact hF p hp)
  rw [Finset.sum_union hdis] at hb
  linarith

theorem prime_factor_filter_disjoint (P F : Finset Nat) {b : Nat}
    (hF : ∀ p ∈ F, p ∣ b) : Disjoint (P.filter (fun p => ¬ p ∣ b)) F := by
  apply Finset.disjoint_left.mpr
  intro p hp hf
  exact (Finset.mem_filter.mp hp).2 (hF p hf)

/-- Known factors of the fixed multiplier cannot witness a product plus one. -/
theorem off_diagonal_classes_factor_divisor_bound {N b c q : Nat}
    (hb : 0 < b) (hc : 0 < c) (hcb : c ∣ b) (hq : 0 < q)
    {R piBound : Real} (hR : 0 < R) (A C P F : Finset Nat)
    (hA : A ⊆ Finset.Icc 1 N) (hr : ∀ a ∈ A, a % q ∈ C)
    (hP : ∀ p ∈ P, p.Prime ∧ p ≠ 2 ∧ p ≠ 5 ∧ Nat.Coprime q (p ^ 2))
    (hF : ∀ p ∈ F, p.Prime ∧ p ≠ 2 ∧ p ≠ 5 ∧ p ∣ b)
    (hpi : (P.card : Real) ≤ piBound)
    (hw : ∀ a ∈ A, ∃ p : Nat, p.Prime ∧ p ^ 2 ∣ a * b + 1 ∧
      (p ∈ P ∨ R < (p : Real))) :
    (A.card : Real) ≤ (C.card : Real) *
      (((203 / 1250 : Real) - ∑ p ∈ F, 1 / (p : Real) ^ 2) * ((N : Real) / q) + piBound) +
        divisorOffDiagonalTailBound N b c R := by
  classical
  let Q := P.filter (fun p => ¬ p ∣ b)
  apply off_diagonal_classes_divisor_bound hb hc hcb hq hR A C Q hA hr
  · intro p hp
    have hd := hP p (Finset.mem_filter.mp hp).1
    exact ⟨hd.1, hd.2.2.2⟩
  · apply off_diagonal_prime_density_subtract Q F
    · intro p hp
      have hd := hP p (Finset.mem_filter.mp hp).1
      exact ⟨hd.1, hd.2.1, hd.2.2.1⟩
    · intro p hp
      have hd := hF p hp
      exact ⟨hd.1, hd.2.1, hd.2.2.1⟩
    · exact prime_factor_filter_disjoint P F (fun p hp => (hF p hp).2.2.2)
  · exact (Nat.cast_le.mpr (Finset.card_le_card (Finset.filter_subset _ _))).trans hpi
  · intro a ha
    obtain ⟨p, hp, hd, hs | hl⟩ := hw a ha
    · exact ⟨p, hd, Or.inl (Finset.mem_filter.mpr ⟨hs, off_diagonal_prime_not_dvd hp hd⟩)⟩
    · exact ⟨p, hd, Or.inr hl⟩

namespace PrimeFactorDensityTests

theorem subtract_three : (∑ p ∈ ({7, 11} : Finset Nat), 1 / (p : Real) ^ 2) ≤
    (203 / 1250 : Real) - 1 / 9 := by
  have h := off_diagonal_prime_density_subtract ({7, 11} : Finset Nat) {3}
    (by intro p hp; simp only [Finset.mem_insert, Finset.mem_singleton] at hp
        rcases hp with rfl | rfl <;> norm_num)
    (by intro p hp; have := Finset.mem_singleton.mp hp; subst p; norm_num)
    (by decide)
  simpa only [Finset.sum_singleton, Nat.cast_ofNat,
    show (3 : Real) ^ 2 = 9 by norm_num] using h

theorem exclude_known_factor :
    Disjoint (({3, 5, 7} : Finset Nat).filter (fun p => ¬ p ∣ 15)) {3, 5} := by
  apply prime_factor_filter_disjoint
  intro p hp
  simp only [Finset.mem_insert, Finset.mem_singleton] at hp
  rcases hp with rfl | rfl <;> decide

end PrimeFactorDensityTests

end JSP848
