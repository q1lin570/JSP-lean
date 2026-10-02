import JSP848.OffDiagonalEstimate
import JSP848.DivisorOffDiagonalTail

namespace JSP848

theorem off_diagonal_prime_density_with_two (P : Finset Nat)
    (hP : ∀ p ∈ P, p.Prime ∧ p ≠ 5) :
    (∑ p ∈ P, 1 / (p : Real) ^ 2) ≤ (1031 / 2500 : Real) := by
  have hb := off_diagonal_prime_density_bound (P.erase 2) (by
    intro p hp
    obtain ⟨h2, hp⟩ := Finset.mem_erase.mp hp
    exact ⟨(hP p hp).1, h2, (hP p hp).2⟩)
  by_cases h2 : 2 ∈ P
  · have he := Finset.sum_erase_add (s := P) (f := fun p : Nat => 1 / (p : Real) ^ 2) h2
    norm_num at he
    simp only [one_div] at hb ⊢
    linarith
  · rw [Finset.erase_eq_of_notMem h2] at hb
    linarith

theorem off_diagonal_small_classes (N b q : Nat) (hq : 0 < q) (C P : Finset Nat)
    (hP : ∀ p ∈ P, p.Prime ∧ Nat.Coprime q (p ^ 2)) :
    (((Finset.Icc 1 N).filter
      (fun a => a % q ∈ C ∧ ∃ p ∈ P, p ^ 2 ∣ a * b + 1)).card : Real) ≤
      (C.card : Real) * ((N : Real) / q * (∑ p ∈ P, 1 / (p : Real) ^ 2) + P.card) := by
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
    _ ≤ ∑ _r ∈ C, ((N : Real) / q * (∑ p ∈ P, 1 / (p : Real) ^ 2) + P.card) :=
      Finset.sum_le_sum (fun r _ => off_diagonal_small_union N b q r hq P hP)
    _ = _ := by simp [nsmul_eq_mul]; ring

/-- All residue classes share one large-factor tail for a fixed multiplier. -/
theorem off_diagonal_classes_bound {N b q : Nat} (hq : 0 < q)
    {R density piBound tail : Real} (A C P : Finset Nat)
    (hA : A ⊆ Finset.Icc 1 N) (hr : ∀ a ∈ A, a % q ∈ C)
    (hP : ∀ p ∈ P, p.Prime ∧ Nat.Coprime q (p ^ 2))
    (hd : (∑ p ∈ P, 1 / (p : Real) ^ 2) ≤ density) (hpi : (P.card : Real) ≤ piBound)
    (hw : ∀ a ∈ A, ∃ p : Nat, p ^ 2 ∣ a * b + 1 ∧ (p ∈ P ∨ R < (p : Real)))
    (ht : ∀ B : Finset Nat, B ⊆ Finset.Icc 1 N →
      (∀ a ∈ B, ∃ p : Nat, R < (p : Real) ∧ p ^ 2 ∣ a * b + 1) →
        (B.card : Real) ≤ tail) :
    (A.card : Real) ≤ (C.card : Real) * (density * ((N : Real) / q) + piBound) + tail := by
  classical
  let U := (Finset.Icc 1 N).filter
    (fun a => a % q ∈ C ∧ ∃ p ∈ P, p ^ 2 ∣ a * b + 1)
  let B := A.filter (fun a => a ∉ U)
  have hsub : A ⊆ U ∪ B := by
    intro a ha
    by_cases hu : a ∈ U
    · exact Finset.mem_union_left _ hu
    · exact Finset.mem_union_right _ (Finset.mem_filter.mpr ⟨ha, hu⟩)
  have hc : (A.card : Real) ≤ (U.card : Real) + (B.card : Real) := by
    exact_mod_cast (Finset.card_le_card hsub).trans (Finset.card_union_le _ _)
  have hU := off_diagonal_small_classes N b q hq C P hP
  change (U.card : Real) ≤ _ at hU
  have hd' := mul_le_mul_of_nonneg_left hd (show (0 : Real) ≤ (N : Real) / q by positivity)
  have hm := mul_le_mul_of_nonneg_left (add_le_add hd' hpi) (Nat.cast_nonneg C.card : (0 : Real) ≤ _)
  have hB : (B.card : Real) ≤ tail := by
    apply ht B (fun a ha => hA (Finset.mem_filter.mp ha).1)
    intro a ha
    obtain ⟨ha, hn⟩ := Finset.mem_filter.mp ha
    obtain ⟨p, hd, hs | hl⟩ := hw a ha
    · exact (hn (Finset.mem_filter.mpr ⟨hA ha, hr a ha, p, hs, hd⟩)).elim
    · exact ⟨p, hl, hd⟩
  have he : (N : Real) / q * density = density * ((N : Real) / q) := mul_comm _ _
  rw [he] at hm
  linarith

theorem off_diagonal_classes_tail_bound {N b q : Nat} (hb : 0 < b) (hq : 0 < q)
    {R density piBound : Real} (hR : 0 < R) (A C P : Finset Nat)
    (hA : A ⊆ Finset.Icc 1 N) (hr : ∀ a ∈ A, a % q ∈ C)
    (hP : ∀ p ∈ P, p.Prime ∧ Nat.Coprime q (p ^ 2))
    (hd : (∑ p ∈ P, 1 / (p : Real) ^ 2) ≤ density) (hpi : (P.card : Real) ≤ piBound)
    (hw : ∀ a ∈ A, ∃ p : Nat, p ^ 2 ∣ a * b + 1 ∧ (p ∈ P ∨ R < (p : Real))) :
    (A.card : Real) ≤ (C.card : Real) * (density * ((N : Real) / q) + piBound) +
      offDiagonalTailBound N b R :=
  off_diagonal_classes_bound hq A C P hA hr hP hd hpi hw
    (fun B hB hw => large_off_diagonal_tail hb hR B hB hw)

theorem off_diagonal_classes_divisor_bound {N b c q : Nat}
    (hb : 0 < b) (hc : 0 < c) (hcb : c ∣ b) (hq : 0 < q)
    {R density piBound : Real} (hR : 0 < R) (A C P : Finset Nat)
    (hA : A ⊆ Finset.Icc 1 N) (hr : ∀ a ∈ A, a % q ∈ C)
    (hP : ∀ p ∈ P, p.Prime ∧ Nat.Coprime q (p ^ 2))
    (hd : (∑ p ∈ P, 1 / (p : Real) ^ 2) ≤ density) (hpi : (P.card : Real) ≤ piBound)
    (hw : ∀ a ∈ A, ∃ p : Nat, p ^ 2 ∣ a * b + 1 ∧ (p ∈ P ∨ R < (p : Real))) :
    (A.card : Real) ≤ (C.card : Real) * (density * ((N : Real) / q) + piBound) +
      divisorOffDiagonalTailBound N b c R :=
  off_diagonal_classes_bound hq A C P hA hr hP hd hpi hw
    (fun B hB hw => large_divisor_off_diagonal_tail hb hc hcb hR B hB hw)

namespace OffDiagonalClassesTests

theorem density_two_three : (∑ p ∈ ({2, 3} : Finset Nat), 1 / (p : Real) ^ 2) ≤
    (1031 / 2500 : Real) := by
  apply off_diagonal_prime_density_with_two
  intro p hp
  simp only [Finset.mem_insert, Finset.mem_singleton] at hp
  rcases hp with rfl | rfl <;> norm_num

theorem empty_classes (N b : Nat) :
    (((Finset.Icc 1 N).filter (fun a => a % 25 ∈ (∅ : Finset Nat) ∧
      ∃ p ∈ ({3} : Finset Nat), p ^ 2 ∣ a * b + 1)).card : Real) ≤ 0 := by simp

end OffDiagonalClassesTests

end JSP848
