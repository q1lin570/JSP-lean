import JSP848.OffDiagonalOverlap

namespace JSP848

theorem off_diagonal_overlap_classes {N b q : Nat} (hq : 0 < q)
    (C P F : Finset Nat) (hC : ∀ r ∈ C, r < q) (hFP : F ⊆ P)
    (hP : ∀ p ∈ P, p.Prime ∧ Nat.Coprime q (p ^ 2))
    (hF : ∀ p ∈ F, ¬p ∣ b) :
    (((Finset.Icc 1 N).filter
      (fun a => a % q ∈ C ∧ ∃ p ∈ P, p ^ 2 ∣ a * b + 1)).card : Real) ≤
      (C.card : Real) * ((N : Real) / q *
        ((∑ p ∈ P, 1 / (p : Real) ^ 2) - primeSquareOverlap F) + P.card + (2 : Real) ^ F.card) := by
  classical
  have he : (Finset.Icc 1 N).filter
      (fun a => a % q ∈ C ∧ ∃ p ∈ P, p ^ 2 ∣ a * b + 1) =
      C.biUnion (fun r => (Finset.Icc 1 N).filter
        (fun a => a % q = r ∧ ∃ p ∈ P, p ^ 2 ∣ a * b + 1)) := by
    ext a
    simp only [Finset.mem_filter, Finset.mem_biUnion]
    aesop
  rw [he]
  calc
    _ ≤ ∑ r ∈ C, (((Finset.Icc 1 N).filter
        (fun a => a % q = r ∧ ∃ p ∈ P, p ^ 2 ∣ a * b + 1)).card : Real) := by
      exact_mod_cast Finset.card_biUnion_le
    _ ≤ ∑ _r ∈ C, ((N : Real) / q *
        ((∑ p ∈ P, 1 / (p : Real) ^ 2) - primeSquareOverlap F) + P.card + (2 : Real) ^ F.card) :=
      Finset.sum_le_sum (fun r hr => off_diagonal_overlap_bound hq (hC r hr) P F hFP hP hF)
    _ = _ := by simp [nsmul_eq_mul]; ring

theorem off_diagonal_overlap_classes_bound {N b q : Nat} (hq : 0 < q)
    {R density piBound tail : Real} (A C P F : Finset Nat)
    (hA : A ⊆ Finset.Icc 1 N) (hr : ∀ a ∈ A, a % q ∈ C)
    (hC : ∀ r ∈ C, r < q) (hFP : F ⊆ P)
    (hP : ∀ p ∈ P, p.Prime ∧ Nat.Coprime q (p ^ 2))
    (hF : ∀ p ∈ F, ¬p ∣ b)
    (hd : (∑ p ∈ P, 1 / (p : Real) ^ 2) ≤ density) (hpi : (P.card : Real) ≤ piBound)
    (hw : ∀ a ∈ A, ∃ p : Nat, p ^ 2 ∣ a * b + 1 ∧ (p ∈ P ∨ R < (p : Real)))
    (ht : ∀ T : Finset Nat, T ⊆ Finset.Icc 1 N →
      (∀ a ∈ T, ∃ p : Nat, R < (p : Real) ∧ p ^ 2 ∣ a * b + 1) →
      (T.card : Real) ≤ tail) :
    (A.card : Real) ≤ (C.card : Real) *
      ((density - primeSquareOverlap F) * ((N : Real) / q) + piBound + (2 : Real) ^ F.card) + tail := by
  classical
  let U := (Finset.Icc 1 N).filter
    (fun a => a % q ∈ C ∧ ∃ p ∈ P, p ^ 2 ∣ a * b + 1)
  let T := A.filter (fun a => a ∉ U)
  have hsub : A ⊆ U ∪ T := by
    intro a ha
    by_cases hu : a ∈ U
    · exact Finset.mem_union_left _ hu
    · exact Finset.mem_union_right _ (Finset.mem_filter.mpr ⟨ha, hu⟩)
  have hc : (A.card : Real) ≤ (U.card : Real) + T.card := by
    exact_mod_cast (Finset.card_le_card hsub).trans (Finset.card_union_le _ _)
  have hU := off_diagonal_overlap_classes (N := N) hq C P F hC hFP hP hF
  change (U.card : Real) ≤ _ at hU
  have hd' := mul_le_mul_of_nonneg_left (sub_le_sub_right hd (primeSquareOverlap F))
    (show (0 : Real) ≤ N / q by positivity)
  have hm := mul_le_mul_of_nonneg_left
    (add_le_add_right (add_le_add hd' hpi) ((2 : Real) ^ F.card)) (Nat.cast_nonneg C.card)
  have hT : (T.card : Real) ≤ tail := by
    apply ht T (fun _ ha => hA (Finset.mem_filter.mp ha).1)
    intro a ha
    obtain ⟨ha, hn⟩ := Finset.mem_filter.mp ha
    obtain ⟨p, hp, hs | hl⟩ := hw a ha
    · exact (hn (Finset.mem_filter.mpr ⟨hA ha, hr a ha, p, hs, hp⟩)).elim
    · exact ⟨p, hl, hp⟩
  nlinarith

theorem off_diagonal_overlap_classes_divisor_bound {N b c q : Nat}
    (hb : 0 < b) (hc : 0 < c) (hcb : c ∣ b) (hq : 0 < q)
    {R density piBound : Real} (hR : 0 < R) (A C P F : Finset Nat)
    (hA : A ⊆ Finset.Icc 1 N) (hr : ∀ a ∈ A, a % q ∈ C)
    (hC : ∀ r ∈ C, r < q) (hFP : F ⊆ P)
    (hP : ∀ p ∈ P, p.Prime ∧ Nat.Coprime q (p ^ 2))
    (hF : ∀ p ∈ F, ¬p ∣ b)
    (hd : (∑ p ∈ P, 1 / (p : Real) ^ 2) ≤ density) (hpi : (P.card : Real) ≤ piBound)
    (hw : ∀ a ∈ A, ∃ p : Nat, p ^ 2 ∣ a * b + 1 ∧ (p ∈ P ∨ R < (p : Real))) :
    (A.card : Real) ≤ (C.card : Real) *
      ((density - primeSquareOverlap F) * ((N : Real) / q) + piBound + (2 : Real) ^ F.card) +
      divisorOffDiagonalTailBound N b c R :=
  off_diagonal_overlap_classes_bound hq A C P F hA hr hC hFP hP hF hd hpi hw
    (fun T hT hw => large_divisor_off_diagonal_tail hb hc hcb hR T hT hw)

end JSP848
