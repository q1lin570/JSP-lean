import JSP848.NegativePellTail
import JSP848.NegativePellRestrictions

namespace JSP848

open scoped BigOperators

open scoped Classical in
theorem sum_card_prime_pell_over_parameters_le (P : Finset Nat) (N : Nat)
    (hP : ∀ d ∈ P, 0 < d) (F : Nat → Finset Nat)
    (hF : ∀ d ∈ P, F d ⊆ Finset.Icc 1 N)
    (hw : ∀ d ∈ P, ∀ x ∈ F d,
      ∃ p : Nat, p.Prime ∧ x ^ 2 + 1 = d * p ^ 2) :
    ∑ d ∈ P, (F d).card ≤ P.card +
      (P.filter (fun d => ∃ a : Nat, 0 < a ∧ d = a ^ 2 + 1)).card * Nat.log 3 N := by
  classical
  let E := fun d : Nat => ∃ a : Nat, 0 < a ∧ d = a ^ 2 + 1
  calc
    _ ≤ ∑ d ∈ P, (1 + if E d then Nat.log 3 N else 0) := by
      apply Finset.sum_le_sum
      intro d hd
      have hh := card_prime_negative_pell_le (hP d hd) (F d) (hF d hd) (hw d hd)
      change (F d).card ≤ if E d then Nat.log 3 N + 1 else 1 at hh
      by_cases he : E d
      · rw [if_pos he] at hh ⊢
        omega
      · rw [if_neg he] at hh ⊢
        omega
    _ = _ := by rw [Finset.sum_add_distrib]; simp [E, ← Finset.sum_filter]

open scoped Classical in
theorem card_prime_square_witnesses_over_parameters_le {N : Nat}
    (P : Finset Nat) (hP : ∀ d ∈ P, 0 < d) (W : Finset (Nat × Nat))
    (hW : ∀ w ∈ W, w.1 ∈ Finset.Icc 1 N ∧ w.2.Prime ∧
      w.2 ^ 2 ∣ w.1 ^ 2 + 1 ∧ (w.1 ^ 2 + 1) / w.2 ^ 2 ∈ P) :
    W.card ≤ P.card +
      (P.filter (fun d => ∃ a : Nat, 0 < a ∧ d = a ^ 2 + 1)).card * Nat.log 3 N := by
  classical
  let f := fun w : Nat × Nat => ((w.1 ^ 2 + 1) / w.2 ^ 2, w.1)
  have heq : ∀ w ∈ W, w.1 ^ 2 + 1 = (f w).1 * w.2 ^ 2 := by
    intro w hw
    exact (Nat.div_mul_cancel (hW w hw).2.2.1).symm
  have hinj : Set.InjOn f W := by
    intro w hw z hz h
    have hd : (f w).1 = (f z).1 := congrArg Prod.fst h
    have hx : w.1 = z.1 := congrArg Prod.snd h
    have hm : (f w).1 * w.2 ^ 2 = (f w).1 * z.2 ^ 2 := by
      rw [← heq w hw, hd, ← heq z hz, hx]
    have hp := hP (f w).1 (hW w hw).2.2.2
    have hs : w.2 ^ 2 = z.2 ^ 2 := mul_left_cancel₀ (by omega) hm
    exact Prod.ext hx ((sq_eq_sq₀ (Nat.zero_le w.2) (Nat.zero_le z.2)).mp hs)
  let V := W.image f
  let F := fun d => (V.filter (fun w => w.1 = d)).image Prod.snd
  have hV : ∀ v ∈ V, v.1 ∈ P ∧ v.2 ∈ Finset.Icc 1 N ∧
      ∃ p : Nat, p.Prime ∧ v.2 ^ 2 + 1 = v.1 * p ^ 2 := by
    intro v hv
    obtain ⟨w, hw, rfl⟩ := Finset.mem_image.mp hv
    exact ⟨(hW w hw).2.2.2, (hW w hw).1, w.2, (hW w hw).2.1, heq w hw⟩
  have hcard : V.card = ∑ d ∈ P, (F d).card := by
    rw [Finset.card_eq_sum_card_fiberwise (f := Prod.fst) (t := P)
      (fun v hv => (hV v hv).1)]
    apply Finset.sum_congr rfl
    intro d hd
    symm
    apply Finset.card_image_of_injOn
    intro w hw z hz he
    exact Prod.ext ((Finset.mem_filter.mp hw).2.trans (Finset.mem_filter.mp hz).2.symm) he
  rw [← Finset.card_image_of_injOn hinj]
  change V.card ≤ _
  rw [hcard]
  apply sum_card_prime_pell_over_parameters_le P N hP F
  · intro d hd x hx
    obtain ⟨w, hw, rfl⟩ := Finset.mem_image.mp hx
    exact (hV w (Finset.mem_filter.mp hw).1).2.1
  · intro d hd x hx
    obtain ⟨w, hw, rfl⟩ := Finset.mem_image.mp hx
    obtain ⟨hw, he⟩ := Finset.mem_filter.mp hw
    rw [← he]
    exact (hV w hw).2.2

theorem card_positive_odds_le (M : Nat) :
    ((Finset.Icc 1 M).filter (fun a => a % 2 = 1)).card ≤ (M + 1) / 2 := by
  calc
    _ ≤ (Finset.range ((M + 1) / 2)).card := by
      apply Finset.card_le_card_of_injOn (fun a : Nat => a / 2)
      · intro a ha
        simp only [Finset.mem_coe, Finset.mem_filter, Finset.mem_Icc] at ha
        apply Finset.mem_range.mpr
        change a / 2 < (M + 1) / 2
        omega
      · intro a ha b hb he
        simp only [Finset.mem_coe, Finset.mem_filter, Finset.mem_Icc] at ha hb
        change a / 2 = b / 2 at he
        omega
    _ = _ := Finset.card_range _

open scoped Classical in
theorem card_odd_square_succ_parameters_le (D : Nat) :
    (((Finset.Icc 1 D).filter (fun d => oddPellParameterMask d)).filter
      (fun d => ∃ a : Nat, 0 < a ∧ d = a ^ 2 + 1)).card ≤ (Nat.sqrt D + 1) / 2 := by
  classical
  let S := (Finset.Icc 1 (Nat.sqrt D)).filter (fun a => a % 2 = 1)
  calc
    _ ≤ (S.image (fun a : Nat => a ^ 2 + 1)).card := by
      apply Finset.card_le_card
      intro d hd
      obtain ⟨hd, a, ha, rfl⟩ := Finset.mem_filter.mp hd
      obtain ⟨hd, hm⟩ := Finset.mem_filter.mp hd
      have hm' : (a ^ 2 + 1) % 8 = 2 := (of_decide_eq_true hm).1
      have haodd : a % 2 = 1 := by
        have hmod : (a ^ 2 + 1) % 2 = 0 := by omega
        by_contra! h
        have hz : a % 2 = 0 := by omega
        simp [Nat.add_mod, Nat.pow_mod, hz] at hmod
      refine Finset.mem_image.mpr ⟨a, Finset.mem_filter.mpr ⟨?_, haodd⟩, rfl⟩
      apply Finset.mem_Icc.mpr
      refine ⟨ha, Nat.le_sqrt'.mpr ?_⟩
      have := (Finset.mem_Icc.mp hd).2
      omega
    _ ≤ S.card := Finset.card_image_le
    _ ≤ _ := card_positive_odds_le _

/-- Density-restricted prime-square witnesses, with the exceptional Pell tail. -/
theorem card_prime_square_witnesses_restricted_le {D N : Nat} (W : Finset (Nat × Nat))
    (hW : ∀ w ∈ W, w.1 ∈ Finset.Icc 1 N ∧ w.2.Prime ∧ w.2 % 2 = 1 ∧
      w.2 ^ 2 ∣ w.1 ^ 2 + 1 ∧ (w.1 ^ 2 + 1) / w.2 ^ 2 ≤ D) :
    14 * W.card ≤ 3 * D + 45 + 14 * Nat.sqrt D * Nat.log 3 N := by
  classical
  let P := (Finset.Icc 1 D).filter (fun d => pellParameterMask d)
  have hP : ∀ d ∈ P, 0 < d := fun d hd => (Finset.mem_Icc.mp (Finset.mem_filter.mp hd).1).1
  have hw : ∀ w ∈ W, w.1 ∈ Finset.Icc 1 N ∧ w.2.Prime ∧
      w.2 ^ 2 ∣ w.1 ^ 2 + 1 ∧ (w.1 ^ 2 + 1) / w.2 ^ 2 ∈ P := by
    intro w hw
    obtain ⟨hx, hp, ho, hdiv, hD⟩ := hW w hw
    have he := (Nat.div_mul_cancel hdiv).symm
    have hd : 0 < (w.1 ^ 2 + 1) / w.2 ^ 2 := by
      apply Nat.pos_of_ne_zero
      intro hz
      rw [hz, zero_mul] at he
      omega
    exact ⟨hx, hp, hdiv, Finset.mem_filter.mpr
      ⟨Finset.mem_Icc.mpr ⟨hd, hD⟩, negative_pell_parameter_mask ho he⟩⟩
  have hb := card_prime_square_witnesses_over_parameters_le P hP W hw
  have hc := pell_parameter_count_bound D
  have he : (P.filter (fun d => ∃ a : Nat, 0 < a ∧ d = a ^ 2 + 1)).card ≤ Nat.sqrt D := by
    apply le_trans (Finset.card_le_card ?_) (card_square_succ_parameters_le D)
    intro d hd
    obtain ⟨hd, he⟩ := Finset.mem_filter.mp hd
    exact Finset.mem_filter.mpr ⟨(Finset.mem_filter.mp hd).1, he⟩
  have hh := Nat.mul_le_mul_right (Nat.log 3 N) he
  change 14 * P.card ≤ 3 * D + 45 at hc
  nlinarith

theorem card_odd_prime_square_witnesses_restricted_le {D N : Nat} (W : Finset (Nat × Nat))
    (hW : ∀ w ∈ W, w.1 ∈ Finset.Icc 1 N ∧ w.1 % 2 = 1 ∧
      w.2.Prime ∧ w.2 % 2 = 1 ∧ w.2 ^ 2 ∣ w.1 ^ 2 + 1 ∧
      (w.1 ^ 2 + 1) / w.2 ^ 2 ≤ D) :
    14 * W.card ≤ D + 30 + 14 * ((Nat.sqrt D + 1) / 2) * Nat.log 3 N := by
  classical
  let P := (Finset.Icc 1 D).filter (fun d => oddPellParameterMask d)
  have hP : ∀ d ∈ P, 0 < d := fun d hd => (Finset.mem_Icc.mp (Finset.mem_filter.mp hd).1).1
  have hw : ∀ w ∈ W, w.1 ∈ Finset.Icc 1 N ∧ w.2.Prime ∧
      w.2 ^ 2 ∣ w.1 ^ 2 + 1 ∧ (w.1 ^ 2 + 1) / w.2 ^ 2 ∈ P := by
    intro w hw
    obtain ⟨hx, hxo, hp, ho, hdiv, hD⟩ := hW w hw
    have he := (Nat.div_mul_cancel hdiv).symm
    have hd : 0 < (w.1 ^ 2 + 1) / w.2 ^ 2 := by
      apply Nat.pos_of_ne_zero
      intro hz
      rw [hz, zero_mul] at he
      omega
    exact ⟨hx, hp, hdiv, Finset.mem_filter.mpr
      ⟨Finset.mem_Icc.mpr ⟨hd, hD⟩, negative_pell_odd_parameter_mask hxo ho he⟩⟩
  have hb := card_prime_square_witnesses_over_parameters_le P hP W hw
  have hc := odd_pell_parameter_count_bound D
  have he := card_odd_square_succ_parameters_le D
  have hh := Nat.mul_le_mul_right (Nat.log 3 N) he
  change 14 * P.card ≤ D + 30 at hc
  change (P.filter (fun d => ∃ a : Nat, 0 < a ∧ d = a ^ 2 + 1)).card ≤ _ at he
  change (P.filter (fun d => ∃ a : Nat, 0 < a ∧ d = a ^ 2 + 1)).card * _ ≤ _ at hh
  nlinarith

end JSP848
