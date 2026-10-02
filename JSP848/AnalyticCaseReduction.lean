import JSP848.CrossBaseCases
import JSP848.OddBaseCase

namespace JSP848

theorem oddPellTailBound_le_all (N : Nat) {Y : Real} (hY : 0 ≤ Y) :
    oddPellTailBound N Y ≤ pellTailBound N Y := by
  have hl := real_log_three_nonneg N
  have hs := Real.sqrt_nonneg Y
  have hm := mul_nonneg hs hl
  unfold oddPellTailBound pellTailBound
  nlinarith

theorem card_le_optimum_of_real_le {N : Nat} {A : Finset Nat}
    (h : (A.card : Real) ≤ (N : Real) / 25) : A.card ≤ optimum N := by
  have hn : A.card * 25 ≤ N := by
    exact_mod_cast (le_div_iff₀ (by norm_num : (0 : Real) < 25)).mp h
  unfold optimum
  apply (Nat.le_div_iff_mul_le (by decide : 0 < 25)).mpr
  omega

theorem base_classes_of_exceptional_empty {A : Finset Nat} (he : exceptionalPart A = ∅)
    {a : Nat} (ha : a ∈ A) : a % 25 = 7 ∨ a % 25 = 18 := by
  by_contra! hn
  have hm : a ∈ exceptionalPart A := Finset.mem_filter.mpr ⟨ha, hn⟩
  rw [he] at hm
  simp at hm

/-- The four exhaustive cases reduce the target to three explicit error estimates. -/
theorem upper_bound_of_large_error_bounds {N : Nat} {A : Finset Nat}
    (hN : 1000 ≤ N) (hA : Admissible N A)
    {R S coefficientR coefficientS : Real} (hR : 0 < R) (hS : 2 ≤ S)
    (hpiR : (Nat.primeCounting ⌊R⌋₊ : Real) ≤ coefficientR * R / Real.log R)
    (hpiS : (Nat.primeCounting ⌊S⌋₊ : Real) ≤ coefficientS * S / Real.log S)
    (hP : coefficientR * R / Real.log R ≤ (21 / 50000 : Real) * N)
    (hT : 18 * (N : Real) ^ (1 / 5 : Real) *
      (2 * ((N : Real) + 1) / R + ((N : Real) ^ 2 + 1) / R ^ 2) ≤
        (1 / 2000 : Real) * N)
    (hQ : (69 / 25 : Real) * (coefficientS * S / Real.log S) +
      pellTailBound N (((N : Real) ^ 2 + 1) / S ^ 2) ≤ (3 / 20000 : Real) * N) :
    A.card ≤ optimum N := by
  classical
  have hN' : (1000 : Real) ≤ N := by exact_mod_cast hN
  have htail : ∀ b ∈ A, offDiagonalTailBound N b R ≤ (1 / 2000 : Real) * N := by
    intro b hb
    have hbN := Finset.mem_Icc.mp (hA.1 hb)
    exact (offDiagonalTailBound_le_uniform hbN.1 hbN.2 hR).trans hT
  have hoTail := oddPellTailBound_le_all N
    (show (0 : Real) ≤ ((N : Real) ^ 2 + 1) / S ^ 2 by positivity)
  by_cases he : exceptionalPart A = ∅
  · rcases Finset.eq_empty_or_nonempty (residuePart A 7) with h7 | h7
    · apply upper_bound_single_residue hA (Or.inr rfl)
      intro a ha
      rcases base_classes_of_exceptional_empty he ha with ha7 | ha18
      · have hm : a ∈ residuePart A 7 := Finset.mem_filter.mpr ⟨ha, ha7⟩
        rw [h7] at hm
        simp at hm
      · exact ha18
    · rcases Finset.eq_empty_or_nonempty (residuePart A 18) with h18 | h18
      · apply upper_bound_single_residue hA (Or.inl rfl)
        intro a ha
        rcases base_classes_of_exceptional_empty he ha with ha7 | ha18
        · exact ha7
        · have hm : a ∈ residuePart A 18 := Finset.mem_filter.mpr ⟨ha, ha18⟩
          rw [h18] at hm
          simp at hm
      · obtain ⟨b7, hb7⟩ := h7
        obtain ⟨b18, hb18⟩ := h18
        have hc := admissible_two_base_classes_bound hA he hb7 hb18 hR hpiR
        have ht7 := htail b7 (Finset.mem_filter.mp hb7).1
        have ht18 := htail b18 (Finset.mem_filter.mp hb18).1
        apply card_le_optimum_of_real_le
        linarith
  · by_cases hev : ∃ b ∈ exceptionalPart A, b % 2 = 0
    · obtain ⟨b, hb, hbe⟩ := hev
      have hc := admissible_even_exceptional_bound hA hb hbe hR hS hpiR hpiS
      apply card_le_optimum_of_real_le
      linarith
    · have ho : ∀ a ∈ exceptionalPart A, a % 2 = 1 := by
        intro a ha
        have hn : a % 2 ≠ 0 := fun hz => hev ⟨a, ha, hz⟩
        have := Nat.mod_lt a (by decide : 0 < 2)
        omega
      obtain ⟨b, hb⟩ := Finset.nonempty_iff_ne_empty.mpr he
      have htb := htail b (Finset.mem_filter.mp hb).1
      by_cases hbase : ∀ a ∈ baseParts A, a % 2 = 1
      · have hc := admissible_all_odd_exceptional_bound hA hb ho hbase hR hS hpiR hpiS
        apply card_le_optimum_of_real_le
        linarith
      · push_neg at hbase
        obtain ⟨e, he, heo⟩ := hbase
        have heven : e % 2 = 0 := by
          have := Nat.mod_lt e (by decide : 0 < 2)
          omega
        obtain ⟨heA, he7 | he18⟩ := Finset.mem_filter.mp he
        · have hc := admissible_odd_exceptional_even_base_bound hA hb ho
            (Finset.mem_filter.mpr ⟨heA, he7⟩) (Or.inl rfl) heven hR hS hpiR hpiS
          have hte := htail e heA
          apply card_le_optimum_of_real_le
          linarith
        · have hc := admissible_odd_exceptional_even_base_bound hA hb ho
            (Finset.mem_filter.mpr ⟨heA, he18⟩) (Or.inr rfl) heven hR hS hpiR hpiS
          have hte := htail e heA
          apply card_le_optimum_of_real_le
          linarith

end JSP848
