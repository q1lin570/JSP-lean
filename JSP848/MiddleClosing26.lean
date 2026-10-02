import JSP848.MiddleEnvelope26E4
import JSP848.MiddleEnvelope26A1
import JSP848.MiddleEnvelope26O2
import JSP848.MiddleEnvelope26E3
import JSP848.MiddleEnvelope26O1
import JSP848.MiddleProfileEnvelopeBounds
import JSP848.MiddleInitialInterval
import JSP848.AnalyticCaseReduction
import JSP848.OddOverlapCases
import JSP848.MiddleDiagonalBounds

namespace JSP848

theorem middle26_a1_root_interval {N : Nat}
    (hlo : 2 ^ 26 ≤ N) (hhi : N ≤ 2 ^ 27) :
    ∃ u : Real, (N : Real) = u ^ 3 ∧
      (MiddleEnvelopeInputs.envelope26A1Lo : Real) ≤ u ∧
        u ≤ (MiddleEnvelopeInputs.envelope26A1Hi : Real) := by
  obtain ⟨u, hN, hul, huh, _, _, _, _⟩ :=
    initial_interval_inputs ((by norm_num : 2 ^ 25 ≤ 2 ^ 26).trans hlo)
      (hhi.trans (by norm_num : 2 ^ 27 ≤ 2 ^ 28))
  have hlo' : (MiddleEnvelopeInputs.envelope26A1Lo : Real) ^ 3 ≤ (2 ^ 26 : Real) := by
    norm_num [MiddleEnvelopeInputs.envelope26A1Lo]
  have hNlo : (2 ^ 26 : Real) ≤ (N : Real) := by exact_mod_cast hlo
  have hNhi : (N : Real) ≤ (2 ^ 27 : Real) := by exact_mod_cast hhi
  have hhi' : (2 ^ 27 : Real) ≤ (MiddleEnvelopeInputs.envelope26A1Hi : Real) ^ 3 := by
    norm_num [MiddleEnvelopeInputs.envelope26A1Hi]
  have hu0 : 0 ≤ u := by nlinarith [hul]
  have hlo0 : (0 : Real) ≤ MiddleEnvelopeInputs.envelope26A1Lo := by
    norm_num [MiddleEnvelopeInputs.envelope26A1Lo]
  have hhi0 : (0 : Real) ≤ MiddleEnvelopeInputs.envelope26A1Hi := by
    norm_num [MiddleEnvelopeInputs.envelope26A1Hi]
  obtain ⟨hlu, huh⟩ := cubic_parameter_interval hu0 hlo0 hhi0 hN
    (hlo'.trans hNlo) (hNhi.trans hhi')
  exact ⟨u, hN, hlu, huh⟩

/- The first closed branch of the 2^25--2^26 interval.  Keeping the
   envelope choice and the analytic error estimates explicit makes the
   remaining case split reusable. -/
theorem upper_bound_middle26_even_exceptional {N : Nat} {A : Finset Nat}
    (hlo : 2 ^ 26 ≤ N) (hhi : N ≤ 2 ^ 27) (hA : Admissible N A)
    (hb : ∃ b ∈ exceptionalPart A, b % 2 = 0) : A.card ≤ optimum N := by
  obtain ⟨u, hN, hul, huh, hprime, hdiag, hpell, _⟩ :=
    initial_interval_inputs ((by norm_num : 2 ^ 25 ≤ 2 ^ 26).trans hlo)
      (hhi.trans (by norm_num : 2 ^ 27 ≤ 2 ^ 28))
  obtain ⟨b, hbA, hbeven⟩ := hb
  have hbpos : 0 < b := by
    exact (Finset.mem_Icc.mp (hA.1 (Finset.mem_filter.mp hbA).1)).1
  have hbN : b ≤ N := by
    exact (Finset.mem_Icc.mp (hA.1 (Finset.mem_filter.mp hbA).1)).2
  have hmax : N ≤ 2 ^ 41 := hhi.trans (by norm_num)
  have hroot_bounds :
      (MiddleEnvelopeInputs.envelope26E4Lo : Real) ≤ u ∧
        u ≤ (MiddleEnvelopeInputs.envelope26E4Hi : Real) := by
    have hlo' : (MiddleEnvelopeInputs.envelope26E4Lo : Real) ^ 3 ≤ (2 ^ 26 : Real) := by
      norm_num [MiddleEnvelopeInputs.envelope26E4Lo]
    have hNlo : (2 ^ 26 : Real) ≤ (N : Real) := by exact_mod_cast hlo
    have hNhi : (N : Real) ≤ (2 ^ 27 : Real) := by exact_mod_cast hhi
    have hhi' : (2 ^ 27 : Real) ≤ (MiddleEnvelopeInputs.envelope26E4Hi : Real) ^ 3 := by
      norm_num [MiddleEnvelopeInputs.envelope26E4Hi]
    have hu0 : 0 ≤ u := by nlinarith [hul]
    have hlo0 : (0 : Real) ≤ MiddleEnvelopeInputs.envelope26E4Lo := by
      norm_num [MiddleEnvelopeInputs.envelope26E4Lo]
    have hhi0 : (0 : Real) ≤ MiddleEnvelopeInputs.envelope26E4Hi := by
      norm_num [MiddleEnvelopeInputs.envelope26E4Hi]
    exact cubic_parameter_interval hu0 hlo0 hhi0
      hN (hlo'.trans hNlo) (hNhi.trans hhi')
  have henv := ProfileEnvelopeCertificate.choice_real_bound
    MiddleEnvelopeInputs.envelope26E4 MiddleEnvelopeInputs.envelope26E4_valid
    (lo := MiddleEnvelopeInputs.envelope26E4Lo)
    (hi := MiddleEnvelopeInputs.envelope26E4Hi)
    (maximum := 2 ^ 27) hbpos hbN hhi (by norm_num) (by
      unfold NeighborhoodMode.Applies
      exact (show (canonicalFactorProfile b).1 ≠ 0 from by
        intro hz
        have ho := (canonicalFactorProfile_odd_iff hbpos).mp hz
        omega))
  obtain ⟨hc, hcb⟩ := henv
  have hbound := hc.even_exceptional_bound (u := u) (S := 2 * u ^ 2)
    (lo := MiddleEnvelopeInputs.envelope26E4Lo)
    (hi := MiddleEnvelopeInputs.envelope26E4Hi) hcb.1 hA hbA hbeven hmax
    hroot_bounds.1 hroot_bounds.2 hN (by nlinarith [hul])
  have hbound' : (A.card : Real) ≤ (N : Real) / 25 := by
    have hdiag' := hdiag
    have hpell' := hpell
    rw [show (2 * u ^ 2 : Real) = 2 * u ^ 2 by rfl] at hdiag' hpell'
    have hval :
        (hc.value (canonicalFactorProfile b)
          MiddleEnvelopeInputs.envelope26E4Lo (2 / 25) 4 false : Real) ≤
          (2161402497 / 125000000000 : Real) := by
      have hcb2 := hcb.2
      rw [show MiddleEnvelopeInputs.envelope26E4.mode = .evenFour by rfl,
        show MiddleEnvelopeInputs.envelope26E4.bound =
          (2161402497 / 125000000000 : Rat) by rfl] at hcb2
      simp only [NeighborhoodMode.volume, NeighborhoodMode.classes,
        NeighborhoodMode.allowTwo, Bool.false_eq_true, if_false,
        Rat.cast_ofNat, Rat.cast_div] at hcb2
      exact hcb2
    have hgain : (752 / 100000 : Real) ≤ diagonalCompatibilityGain := by
      norm_num [diagonalCompatibilityGain]
    nlinarith [hval, hgain]
  exact card_le_optimum_of_real_le hbound'

theorem upper_bound_middle26_no_exceptional {N : Nat} {A : Finset Nat}
    (hlo : 2 ^ 26 ≤ N) (hhi : N ≤ 2 ^ 27) (hA : Admissible N A)
    (he : exceptionalPart A = ∅) : A.card ≤ optimum N := by
  classical
  by_cases h7 : residuePart A 7 = ∅
  · apply upper_bound_single_residue hA (Or.inr rfl)
    intro a ha
    rcases base_classes_of_exceptional_empty he ha with ha7 | ha18
    · have hm : a ∈ residuePart A 7 := Finset.mem_filter.mpr ⟨ha, ha7⟩
      rw [h7] at hm
      simp at hm
    · exact ha18
  · by_cases h18 : residuePart A 18 = ∅
    · apply upper_bound_single_residue hA (Or.inl rfl)
      intro a ha
      rcases base_classes_of_exceptional_empty he ha with ha7 | ha18
      · exact ha7
      · have hm : a ∈ residuePart A 18 := Finset.mem_filter.mpr ⟨ha, ha18⟩
        rw [h18] at hm
        simp at hm
    · obtain ⟨b7, hb7⟩ := Finset.nonempty_iff_ne_empty.mpr h7
      obtain ⟨b18, hb18⟩ := Finset.nonempty_iff_ne_empty.mpr h18
      obtain ⟨u, hN, hlu, huh⟩ := middle26_a1_root_interval hlo hhi
      have hb7a := (Finset.mem_filter.mp hb7).1
      have hb18a := (Finset.mem_filter.mp hb18).1
      have hb7pos : 0 < b7 := (Finset.mem_Icc.mp (hA.1 hb7a)).1
      have hb18pos : 0 < b18 := (Finset.mem_Icc.mp (hA.1 hb18a)).1
      have hb7N : b7 ≤ N := (Finset.mem_Icc.mp (hA.1 hb7a)).2
      have hb18N : b18 ≤ N := (Finset.mem_Icc.mp (hA.1 hb18a)).2
      have hmax : N ≤ 2 ^ 41 := hhi.trans (by norm_num)
      have henv7 := ProfileEnvelopeCertificate.choice_real_bound
        MiddleEnvelopeInputs.envelope26A1 MiddleEnvelopeInputs.envelope26A1_valid
        (lo := MiddleEnvelopeInputs.envelope26A1Lo)
        (hi := MiddleEnvelopeInputs.envelope26A1Hi) (maximum := 2 ^ 27)
        hb18pos hb18N hhi (by norm_num) (by
          rw [show MiddleEnvelopeInputs.envelope26A1.mode = .anyOne by rfl]
          simp [NeighborhoodMode.Applies])
      have henv18 := ProfileEnvelopeCertificate.choice_real_bound
        MiddleEnvelopeInputs.envelope26A1 MiddleEnvelopeInputs.envelope26A1_valid
        (lo := MiddleEnvelopeInputs.envelope26A1Lo)
        (hi := MiddleEnvelopeInputs.envelope26A1Hi) (maximum := 2 ^ 27)
        hb7pos hb7N hhi (by norm_num) (by
          rw [show MiddleEnvelopeInputs.envelope26A1.mode = .anyOne by rfl]
          simp [NeighborhoodMode.Applies])
      obtain ⟨c7, hc7, hv7⟩ := henv7
      obtain ⟨c18, hc18, hv18⟩ := henv18
      have hbase7 := c7.base_bound hc7 hb18pos hb18N hmax hlu huh hN
        (residuePart A 7) {7}
        (by intro a ha; exact hA.1 (Finset.mem_filter.mp ha).1)
        (by intro a ha; exact Finset.mem_singleton.mpr (Finset.mem_filter.mp ha).2)
        (by intro r hr; have hr' := Finset.mem_singleton.mp hr; subst r
            exact by omega)
        (by intro r hr; have hr' := Finset.mem_singleton.mp hr; subst r
            have hb18r := (Finset.mem_filter.mp hb18).2; omega)
        (by intro a ha; exact hA.2 a (Finset.mem_filter.mp ha).1 b18 hb18a)
      have hbase18 := c18.base_bound hc18 hb7pos hb7N hmax hlu huh hN
        (residuePart A 18) {18}
        (by intro a ha; exact hA.1 (Finset.mem_filter.mp ha).1)
        (by intro a ha; exact Finset.mem_singleton.mpr (Finset.mem_filter.mp ha).2)
        (by intro r hr; have hr' := Finset.mem_singleton.mp hr; subst r
            exact by omega)
        (by intro r hr; have hr' := Finset.mem_singleton.mp hr; subst r
            have hb7r := (Finset.mem_filter.mp hb7).2; omega)
        (by intro a ha; exact hA.2 a (Finset.mem_filter.mp ha).1 b7 hb7a)
      have hbase7' :
          ((residuePart A 7).card : Real) ≤
            (c7.value (canonicalFactorProfile b18)
              MiddleEnvelopeInputs.envelope26A1Lo (1 / 25) 1
              (decide ((canonicalFactorProfile b18).1 = 0)) : Real) * N := by
        simpa using hbase7
      have hbase18' :
          ((residuePart A 18).card : Real) ≤
            (c18.value (canonicalFactorProfile b7)
              MiddleEnvelopeInputs.envelope26A1Lo (1 / 25) 1
              (decide ((canonicalFactorProfile b7).1 = 0)) : Real) * N := by
        simpa using hbase18
      have hval7 :
          (c7.value (canonicalFactorProfile b18)
            MiddleEnvelopeInputs.envelope26A1Lo (1 / 25) 1
            (decide ((canonicalFactorProfile b18).1 = 0)) : Real) ≤
            (17118067869 / 1000000000000 : Real) := by
        have htmp := hv7
        rw [show MiddleEnvelopeInputs.envelope26A1.mode = .anyOne by rfl,
          show MiddleEnvelopeInputs.envelope26A1.bound =
            (17118067869 / 1000000000000 : Rat) by rfl] at htmp
        simp only [NeighborhoodMode.volume, NeighborhoodMode.classes,
          NeighborhoodMode.allowTwo] at htmp
        norm_num at htmp ⊢
        exact htmp
      have hval18 :
          (c18.value (canonicalFactorProfile b7)
            MiddleEnvelopeInputs.envelope26A1Lo (1 / 25) 1
            (decide ((canonicalFactorProfile b7).1 = 0)) : Real) ≤
            (17118067869 / 1000000000000 : Real) := by
        have htmp := hv18
        rw [show MiddleEnvelopeInputs.envelope26A1.mode = .anyOne by rfl,
          show MiddleEnvelopeInputs.envelope26A1.bound =
            (17118067869 / 1000000000000 : Rat) by rfl] at htmp
        simp only [NeighborhoodMode.volume, NeighborhoodMode.classes,
          NeighborhoodMode.allowTwo] at htmp
        norm_num at htmp ⊢
        exact htmp
      have hpart : (A.card : Real) =
          (residuePart A 7).card + (residuePart A 18).card := by
        have hp := card_partition A
        rw [he, Finset.card_empty, add_zero] at hp
        exact_mod_cast hp
      have hbound : (A.card : Real) ≤ (N : Real) / 25 := by
        nlinarith [hbase7', hbase18', hval7, hval18]
      exact card_le_optimum_of_real_le hbound

theorem upper_bound_middle26_odd_two_groups {N : Nat} {A : Finset Nat}
    (hlo : 2 ^ 26 ≤ N) (hhi : N ≤ 2 ^ 27) (hA : Admissible N A)
    (ho : ∀ a ∈ A, a % 2 = 1)
    (h1 : ∃ b ∈ exceptionalPart A, b % 4 = 1)
    (h3 : ∃ b ∈ exceptionalPart A, b % 4 = 3) : A.card ≤ optimum N := by
  obtain ⟨u, hN, hul, huh, _, hdiag, _, hoddpell⟩ :=
    initial_interval_inputs ((by norm_num : 2 ^ 25 ≤ 2 ^ 26).trans hlo)
      (hhi.trans (by norm_num : 2 ^ 27 ≤ 2 ^ 28))
  obtain ⟨b1, hb1, hb1mod⟩ := h1
  obtain ⟨b3, hb3, hb3mod⟩ := h3
  have hb1a := (Finset.mem_filter.mp hb1).1
  have hb3a := (Finset.mem_filter.mp hb3).1
  have hb1pos : 0 < b1 := (Finset.mem_Icc.mp (hA.1 hb1a)).1
  have hb3pos : 0 < b3 := (Finset.mem_Icc.mp (hA.1 hb3a)).1
  have hb1N : b1 ≤ N := (Finset.mem_Icc.mp (hA.1 hb1a)).2
  have hb3N : b3 ≤ N := (Finset.mem_Icc.mp (hA.1 hb3a)).2
  have hmax : N ≤ 2 ^ 41 := hhi.trans (by norm_num)
  have hp1 : (canonicalFactorProfile b1).1 = 0 :=
    (canonicalFactorProfile_odd_iff hb1pos).mpr (ho b1 hb1a)
  have hp3 : (canonicalFactorProfile b3).1 = 0 :=
    (canonicalFactorProfile_odd_iff hb3pos).mpr (ho b3 hb3a)
  have henv1 := ProfileEnvelopeCertificate.choice_real_bound
    MiddleEnvelopeInputs.envelope26O2 MiddleEnvelopeInputs.envelope26O2_valid
    (lo := MiddleEnvelopeInputs.envelope26O2Lo)
    (hi := MiddleEnvelopeInputs.envelope26O2Hi) (maximum := 2 ^ 27)
    hb1pos hb1N hhi (by norm_num) (by
      rw [show MiddleEnvelopeInputs.envelope26O2.mode = .oddTwo by rfl]
      simp [NeighborhoodMode.Applies, hp1])
  have henv3 := ProfileEnvelopeCertificate.choice_real_bound
    MiddleEnvelopeInputs.envelope26O2 MiddleEnvelopeInputs.envelope26O2_valid
    (lo := MiddleEnvelopeInputs.envelope26O2Lo)
    (hi := MiddleEnvelopeInputs.envelope26O2Hi) (maximum := 2 ^ 27)
    hb3pos hb3N hhi (by norm_num) (by
      rw [show MiddleEnvelopeInputs.envelope26O2.mode = .oddTwo by rfl]
      simp [NeighborhoodMode.Applies, hp3])
  obtain ⟨c1, hc1, hv1⟩ := henv1
  obtain ⟨c3, hc3, hv3⟩ := henv3
  let G1 := (baseParts A).filter (fun a => a % 4 = 1)
  let G3 := (baseParts A).filter (fun a => a % 4 = 3)
  have hG1 : G1 ⊆ Finset.Icc 1 N := by
    intro a ha
    exact hA.1 (Finset.mem_filter.mp (Finset.mem_filter.mp ha).1 |>.1)
  have hG3 : G3 ⊆ Finset.Icc 1 N := by
    intro a ha
    exact hA.1 (Finset.mem_filter.mp (Finset.mem_filter.mp ha).1 |>.1)
  have hres1 : ∀ a ∈ G1, a % 25 = 7 ∨ a % 25 = 18 := by
    intro a ha
    exact (Finset.mem_filter.mp (Finset.mem_filter.mp ha).1).2
  have hres3 : ∀ a ∈ G3, a % 25 = 7 ∨ a % 25 = 18 := by
    intro a ha
    exact (Finset.mem_filter.mp (Finset.mem_filter.mp ha).1).2
  have hrootO2 :
      (MiddleEnvelopeInputs.envelope26O2Lo : Real) ≤ u ∧
        u ≤ (MiddleEnvelopeInputs.envelope26O2Hi : Real) := by
    have hlo' : (MiddleEnvelopeInputs.envelope26O2Lo : Real) ^ 3 ≤ (2 ^ 26 : Real) := by
      norm_num [MiddleEnvelopeInputs.envelope26O2Lo]
    have hNlo : (2 ^ 26 : Real) ≤ (N : Real) := by exact_mod_cast hlo
    have hNhi : (N : Real) ≤ (2 ^ 27 : Real) := by exact_mod_cast hhi
    have hhi' : (2 ^ 27 : Real) ≤ (MiddleEnvelopeInputs.envelope26O2Hi : Real) ^ 3 := by
      norm_num [MiddleEnvelopeInputs.envelope26O2Hi]
    have hu0 : 0 ≤ u := by nlinarith [hul]
    have hlo0 : (0 : Real) ≤ MiddleEnvelopeInputs.envelope26O2Lo := by
      norm_num [MiddleEnvelopeInputs.envelope26O2Lo]
    have hhi0 : (0 : Real) ≤ MiddleEnvelopeInputs.envelope26O2Hi := by
      norm_num [MiddleEnvelopeInputs.envelope26O2Hi]
    exact cubic_parameter_interval hu0 hlo0 hhi0 hN
      (hlo'.trans hNlo) (hNhi.trans hhi')
  have hsame1 := c1.same_odd_bound hc1 hb1pos hb1N hmax (ho b1 hb1a)
    hrootO2.1 hrootO2.2 hN G1 hG1 hres1
    (by intro a ha; have ha4 := (Finset.mem_filter.mp ha).2; omega)
    (Finset.mem_filter.mp hb1).2.1
    (Finset.mem_filter.mp hb1).2.2
    (by intro a ha; exact hA.2 a ((Finset.mem_filter.mp (Finset.mem_filter.mp ha).1).1) b1 hb1a)
  have hsame3 := c3.same_odd_bound hc3 hb3pos hb3N hmax (ho b3 hb3a)
    hrootO2.1 hrootO2.2 hN G3 hG3 hres3
    (by intro a ha; have ha4 := (Finset.mem_filter.mp ha).2; omega)
    (Finset.mem_filter.mp hb3).2.1
    (Finset.mem_filter.mp hb3).2.2
    (by intro a ha; exact hA.2 a ((Finset.mem_filter.mp (Finset.mem_filter.mp ha).1).1) b3 hb3a)
  have hval1 :
      (c1.value (canonicalFactorProfile b1)
        MiddleEnvelopeInputs.envelope26O2Lo (1 / 50) 2 false : Real) ≤
        (6787049791 / 1000000000000 : Real) := by
    have htmp := hv1
    rw [show MiddleEnvelopeInputs.envelope26O2.mode = .oddTwo by rfl,
      show MiddleEnvelopeInputs.envelope26O2.bound =
        (6787049791 / 1000000000000 : Rat) by rfl] at htmp
    simp only [NeighborhoodMode.volume, NeighborhoodMode.classes,
      NeighborhoodMode.allowTwo, Rat.cast_ofNat, Rat.cast_div] at htmp
    norm_num at htmp ⊢
    exact htmp
  have hval3 :
      (c3.value (canonicalFactorProfile b3)
        MiddleEnvelopeInputs.envelope26O2Lo (1 / 50) 2 false : Real) ≤
        (6787049791 / 1000000000000 : Real) := by
    have htmp := hv3
    rw [show MiddleEnvelopeInputs.envelope26O2.mode = .oddTwo by rfl,
      show MiddleEnvelopeInputs.envelope26O2.bound =
        (6787049791 / 1000000000000 : Rat) by rfl] at htmp
    simp only [NeighborhoodMode.volume, NeighborhoodMode.classes,
      NeighborhoodMode.allowTwo, Rat.cast_ofNat, Rat.cast_div] at htmp
    norm_num at htmp ⊢
    exact htmp
  have hS : (2 : Real) ≤ 2 * u ^ 2 := by nlinarith [hul]
  have hbound := admissible_odd_two_groups_bound hA ho hS hsame1 hsame3
  have hbound' : (A.card : Real) ≤ (N : Real) / 25 := by
    nlinarith [hbound, hdiag, hoddpell, hval1, hval3]
  exact card_le_optimum_of_real_le hbound'

theorem middle26_root_bounds {N : Nat} {u : Real}
    (hlo : 2 ^ 26 ≤ N) (hhi : N ≤ 2 ^ 27)
    (hu : 0 ≤ u) (hN : (N : Real) = u ^ 3) :
    (MiddleEnvelopeInputs.envelope26O2Lo : Real) ≤ u ∧
      u ≤ (MiddleEnvelopeInputs.envelope26O2Hi : Real) := by
  have hlo' : (MiddleEnvelopeInputs.envelope26O2Lo : Real) ^ 3 ≤ (2 ^ 26 : Real) := by
    norm_num [MiddleEnvelopeInputs.envelope26O2Lo]
  have hNlo : (2 ^ 26 : Real) ≤ (N : Real) := by exact_mod_cast hlo
  have hNhi : (N : Real) ≤ (2 ^ 27 : Real) := by exact_mod_cast hhi
  have hhi' : (2 ^ 27 : Real) ≤ (MiddleEnvelopeInputs.envelope26O2Hi : Real) ^ 3 := by
    norm_num [MiddleEnvelopeInputs.envelope26O2Hi]
  exact cubic_parameter_interval hu
    (by norm_num [MiddleEnvelopeInputs.envelope26O2Lo])
    (by norm_num [MiddleEnvelopeInputs.envelope26O2Hi]) hN
    (hlo'.trans hNlo) (hNhi.trans hhi')

theorem middle26_same_odd_count {N b : Nat} {A : Finset Nat}
    (hlo : 2 ^ 26 ≤ N) (hhi : N ≤ 2 ^ 27) (hA : Admissible N A)
    (hb : b ∈ exceptionalPart A) (hbo : b % 2 = 1) :
    (((baseParts A).filter (fun a => a % 4 = b % 4)).card : Real) ≤
      (6787049791 / 1000000000000 : Real) * N := by
  obtain ⟨u, hN, hul, _, _, _, _, _⟩ :=
    initial_interval_inputs ((by norm_num : 2 ^ 25 ≤ 2 ^ 26).trans hlo)
      (hhi.trans (by norm_num : 2 ^ 27 ≤ 2 ^ 28))
  have hroot := middle26_root_bounds hlo hhi (by nlinarith [hul]) hN
  have hbA := (Finset.mem_filter.mp hb).1
  obtain ⟨hbpos, hbN⟩ := Finset.mem_Icc.mp (hA.1 hbA)
  have hp : (canonicalFactorProfile b).1 = 0 :=
    (canonicalFactorProfile_odd_iff hbpos).mpr hbo
  obtain ⟨c, hc, hv⟩ := ProfileEnvelopeCertificate.choice_real_bound
    MiddleEnvelopeInputs.envelope26O2 MiddleEnvelopeInputs.envelope26O2_valid
    (lo := MiddleEnvelopeInputs.envelope26O2Lo)
    (hi := MiddleEnvelopeInputs.envelope26O2Hi) (maximum := 2 ^ 27)
    hbpos hbN hhi (by norm_num) (by
      rw [show MiddleEnvelopeInputs.envelope26O2.mode = .oddTwo by rfl]
      exact hp)
  have hs := c.same_odd_bound hc hbpos hbN (hhi.trans (by norm_num)) hbo
    hroot.1 hroot.2 hN ((baseParts A).filter (fun a => a % 4 = b % 4))
    (fun _ ha => hA.1 (Finset.mem_filter.mp (Finset.mem_filter.mp ha).1).1)
    (fun _ ha => (Finset.mem_filter.mp (Finset.mem_filter.mp ha).1).2)
    (fun _ ha => (Finset.mem_filter.mp ha).2)
    (Finset.mem_filter.mp hb).2.1 (Finset.mem_filter.mp hb).2.2
    (fun a ha => hA.2 a (Finset.mem_filter.mp (Finset.mem_filter.mp ha).1).1 b hbA)
  have hv' : (c.value (canonicalFactorProfile b)
      MiddleEnvelopeInputs.envelope26O2Lo (1 / 50) 2 false : Real) ≤
      (6787049791 / 1000000000000 : Real) := by
    rw [show MiddleEnvelopeInputs.envelope26O2.mode = .oddTwo by rfl,
      show MiddleEnvelopeInputs.envelope26O2.bound =
        (6787049791 / 1000000000000 : Rat) by rfl] at hv
    norm_num [NeighborhoodMode.volume, NeighborhoodMode.classes,
      NeighborhoodMode.allowTwo] at hv ⊢
    exact hv
  exact hs.trans (mul_le_mul_of_nonneg_right hv' (Nat.cast_nonneg N))

theorem upper_bound_middle26_odd_one_group {N b : Nat} {A : Finset Nat}
    (hlo : 2 ^ 26 ≤ N) (hhi : N ≤ 2 ^ 27) (hA : Admissible N A)
    (ho : ∀ a ∈ A, a % 2 = 1) (hb : b ∈ exceptionalPart A)
    (he : ∀ a ∈ exceptionalPart A, a % 4 = b % 4) : A.card ≤ optimum N := by
  obtain ⟨u, hN, hul, _, _, hdiag, _, hpell⟩ :=
    initial_interval_inputs ((by norm_num : 2 ^ 25 ≤ 2 ^ 26).trans hlo)
      (hhi.trans (by norm_num : 2 ^ 27 ≤ 2 ^ 28))
  have hs := middle26_same_odd_count hlo hhi hA hb (ho b (Finset.mem_filter.mp hb).1)
  have hbound := admissible_odd_one_group_count_bound (S := 2 * u ^ 2)
    hA ho hb he (by nlinarith [hul]) hs
  have hNlo : (2 ^ 26 : Real) ≤ N := by exact_mod_cast hlo
  apply card_le_optimum_of_real_le
  nlinarith

theorem upper_bound_middle26_odd_exceptional_even_base {N b e r : Nat}
    {A : Finset Nat} (hlo : 2 ^ 26 ≤ N) (hhi : N ≤ 2 ^ 27)
    (hA : Admissible N A) (hb : b ∈ exceptionalPart A)
    (ho : ∀ a ∈ exceptionalPart A, a % 2 = 1)
    (he : e ∈ residuePart A r) (hr : r = 7 ∨ r = 18) (heven : e % 2 = 0) :
    A.card ≤ optimum N := by
  obtain ⟨u, hN, hul, _, _, hdiag, _, hpell⟩ :=
    initial_interval_inputs ((by norm_num : 2 ^ 25 ≤ 2 ^ 26).trans hlo)
      (hhi.trans (by norm_num : 2 ^ 27 ≤ 2 ^ 28))
  have hroot := middle26_root_bounds hlo hhi (by nlinarith [hul]) hN
  obtain ⟨hbpos, hbN⟩ := Finset.mem_Icc.mp (hA.1 (Finset.mem_filter.mp hb).1)
  obtain ⟨hepos, heN⟩ := Finset.mem_Icc.mp (hA.1 (Finset.mem_filter.mp he).1)
  have hpb : (canonicalFactorProfile b).1 = 0 :=
    (canonicalFactorProfile_odd_iff hbpos).mpr (ho b hb)
  have hpe : (canonicalFactorProfile e).1 ≠ 0 := by
    intro hz
    have heo := (canonicalFactorProfile_odd_iff hepos).mp hz
    omega
  obtain ⟨ce, hce, hve⟩ := ProfileEnvelopeCertificate.choice_real_bound
    MiddleEnvelopeInputs.envelope26E3 MiddleEnvelopeInputs.envelope26E3_valid
    (lo := MiddleEnvelopeInputs.envelope26E3Lo)
    (hi := MiddleEnvelopeInputs.envelope26E3Hi) (maximum := 2 ^ 27)
    hepos heN hhi (by norm_num) (by
      rw [show MiddleEnvelopeInputs.envelope26E3.mode = .evenThree by rfl]
      exact hpe)
  obtain ⟨cb, hcb, hvb⟩ := ProfileEnvelopeCertificate.choice_real_bound
    MiddleEnvelopeInputs.envelope26O1 MiddleEnvelopeInputs.envelope26O1_valid
    (lo := MiddleEnvelopeInputs.envelope26O1Lo)
    (hi := MiddleEnvelopeInputs.envelope26O1Hi) (maximum := 2 ^ 27)
    hbpos hbN hhi (by norm_num) (by
      rw [show MiddleEnvelopeInputs.envelope26O1.mode = .oddOne by rfl]
      exact hpb)
  have hbound := ce.mixed_bound cb (S := 2 * u ^ 2)
    hce hcb hA hb ho he hr heven (hhi.trans (by norm_num))
    hroot.1 hroot.2 hN (by nlinarith [hul])
  have hve' : (ce.value (canonicalFactorProfile e)
      MiddleEnvelopeInputs.envelope26E3Lo (1 / 25) 3 false : Real) ≤
      (5071780529 / 500000000000 : Real) := by
    rw [show MiddleEnvelopeInputs.envelope26E3.mode = .evenThree by rfl,
      show MiddleEnvelopeInputs.envelope26E3.bound =
        (5071780529 / 500000000000 : Rat) by rfl] at hve
    norm_num [NeighborhoodMode.volume, NeighborhoodMode.classes,
      NeighborhoodMode.allowTwo] at hve ⊢
    exact hve
  have hvb' : (cb.value (canonicalFactorProfile b)
      MiddleEnvelopeInputs.envelope26E3Lo (1 / 25) 1 true : Real) ≤
      (17118067869 / 1000000000000 : Real) := by
    rw [show MiddleEnvelopeInputs.envelope26O1.mode = .oddOne by rfl,
      show MiddleEnvelopeInputs.envelope26O1.bound =
        (17118067869 / 1000000000000 : Rat) by rfl] at hvb
    norm_num [NeighborhoodMode.volume, NeighborhoodMode.classes,
      NeighborhoodMode.allowTwo] at hvb ⊢
    exact hvb
  have hgain : (752 / 100000 : Real) ≤ diagonalCompatibilityGain := by
    norm_num [diagonalCompatibilityGain]
  have hNlo : (2 ^ 26 : Real) ≤ N := by exact_mod_cast hlo
  apply card_le_optimum_of_real_le
  nlinarith

theorem upper_bound_middle26 {N : Nat} {A : Finset Nat}
    (hlo : 2 ^ 26 ≤ N) (hhi : N ≤ 2 ^ 27) (hA : Admissible N A) :
    A.card ≤ optimum N := by
  classical
  by_cases he : exceptionalPart A = ∅
  · exact upper_bound_middle26_no_exceptional hlo hhi hA he
  by_cases hev : ∃ b ∈ exceptionalPart A, b % 2 = 0
  · exact upper_bound_middle26_even_exceptional hlo hhi hA hev
  have ho : ∀ a ∈ exceptionalPart A, a % 2 = 1 := by
    intro a ha
    have hn : a % 2 ≠ 0 := fun hz => hev ⟨a, ha, hz⟩
    have hm := Nat.mod_lt a (by decide : 0 < 2)
    omega
  obtain ⟨b, hb⟩ := Finset.nonempty_iff_ne_empty.mpr he
  by_cases hbase : ∃ e ∈ baseParts A, e % 2 = 0
  · obtain ⟨e, heA, heven⟩ := hbase
    exact upper_bound_middle26_odd_exceptional_even_base hlo hhi hA hb ho
      (show e ∈ residuePart A (e % 25) from
        Finset.mem_filter.mpr ⟨(Finset.mem_filter.mp heA).1, rfl⟩)
      (Finset.mem_filter.mp heA).2 heven
  have hall : ∀ a ∈ A, a % 2 = 1 := by
    intro a ha
    by_cases hr : a % 25 = 7 ∨ a % 25 = 18
    · have hn : a % 2 ≠ 0 := fun hz => hbase ⟨a, Finset.mem_filter.mpr ⟨ha, hr⟩, hz⟩
      have hm := Nat.mod_lt a (by decide : 0 < 2)
      omega
    · exact ho a (Finset.mem_filter.mpr ⟨ha, by simpa only [not_or] using hr⟩)
  by_cases hs : ∀ a ∈ exceptionalPart A, a % 4 = b % 4
  · exact upper_bound_middle26_odd_one_group hlo hhi hA hall hb hs
  push_neg at hs
  obtain ⟨c, hc, hcb⟩ := hs
  have hmod : ∀ a ∈ exceptionalPart A, a % 4 = 1 ∨ a % 4 = 3 := by
    intro a ha
    have hao := ho a ha
    have hm : (a % 4) % 2 = a % 2 := Nat.mod_mod_of_dvd a (by decide)
    have hlt := Nat.mod_lt a (by decide : 0 < 4)
    omega
  have hc4 := hmod c hc
  rcases hmod b hb with hb1 | hb3
  · exact upper_bound_middle26_odd_two_groups hlo hhi hA hall
      ⟨b, hb, hb1⟩ ⟨c, hc, by omega⟩
  · exact upper_bound_middle26_odd_two_groups hlo hhi hA hall
      ⟨c, hc, by omega⟩ ⟨b, hb, hb3⟩

theorem exact_middle26_range {N : Nat} (hlo : 2 ^ 26 ≤ N) (hhi : N ≤ 2 ^ 27) :
    ∃ B : Finset Nat, Admissible N B ∧ B.card = optimum N ∧
      ∀ A : Finset Nat, Admissible N A → A.card ≤ B.card := by
  refine ⟨extremal N, admissible_extremal N, card_extremal N, ?_⟩
  intro A hA
  rw [card_extremal]
  exact upper_bound_middle26 hlo hhi hA

namespace MiddleClosing26Tests

theorem lower_endpoint {A : Finset Nat} (hA : Admissible (2 ^ 26) A) :
    A.card ≤ 2684355 := by
  simpa [optimum] using upper_bound_middle26 (by decide) (by decide) hA

theorem upper_endpoint {A : Finset Nat} (hA : Admissible (2 ^ 27) A) :
    A.card ≤ 5368709 := by
  simpa [optimum] using upper_bound_middle26 (by decide) (by decide) hA

theorem attained_lower_endpoint :
    Admissible (2 ^ 26) (extremal (2 ^ 26)) ∧ (extremal (2 ^ 26)).card = 2684355 := by
  exact ⟨admissible_extremal _, by norm_num [card_extremal, optimum]⟩

end MiddleClosing26Tests

end JSP848
