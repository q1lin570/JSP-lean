import JSP848.NegativePellDenominator
import Mathlib.Data.Nat.Sqrt
import Mathlib.Algebra.BigOperators.Group.Finset.Piecewise

namespace JSP848

open scoped BigOperators

open scoped Classical in
theorem card_square_succ_parameters_le (D : Nat) :
    ((Finset.Icc 1 D).filter (fun d => ∃ a : Nat, 0 < a ∧ d = a ^ 2 + 1)).card ≤
      Nat.sqrt D := by
  classical
  calc
    _ ≤ ((Finset.Icc 1 (Nat.sqrt D)).image (fun a : Nat => a ^ 2 + 1)).card := by
      apply Finset.card_le_card
      intro d hd
      obtain ⟨hd, a, ha, rfl⟩ := Finset.mem_filter.mp hd
      refine Finset.mem_image.mpr ⟨a, Finset.mem_Icc.mpr ⟨ha, ?_⟩, rfl⟩
      apply Nat.le_sqrt'.mpr
      have := (Finset.mem_Icc.mp hd).2
      omega
    _ ≤ (Finset.Icc 1 (Nat.sqrt D)).card := Finset.card_image_le
    _ = Nat.sqrt D := by simp

/-- Summing the one-solution bound and the exceptional logarithmic bounds. -/
theorem sum_card_prime_negative_pell_le (D N : Nat) (F : Nat → Finset Nat)
    (hF : ∀ d ∈ Finset.Icc 1 D, F d ⊆ Finset.Icc 1 N)
    (hw : ∀ d ∈ Finset.Icc 1 D, ∀ x ∈ F d,
      ∃ p : Nat, p.Prime ∧ x ^ 2 + 1 = d * p ^ 2) :
    ∑ d ∈ Finset.Icc 1 D, (F d).card ≤ D + Nat.sqrt D * Nat.log 3 N := by
  classical
  let P := fun d : Nat => ∃ a : Nat, 0 < a ∧ d = a ^ 2 + 1
  have hsum : (∑ d ∈ Finset.Icc 1 D, (F d).card) ≤
      ∑ d ∈ Finset.Icc 1 D, (1 + if P d then Nat.log 3 N else 0) := by
    apply Finset.sum_le_sum
    intro d hd
    have hdpos : 0 < d := (Finset.mem_Icc.mp hd).1
    have hh := card_prime_negative_pell_le hdpos (F d) (hF d hd) (hw d hd)
    change (F d).card ≤ if P d then Nat.log 3 N + 1 else 1 at hh
    by_cases hp : P d
    · rw [if_pos hp] at hh ⊢
      omega
    · rw [if_neg hp] at hh ⊢
      omega
  have heq : (∑ d ∈ Finset.Icc 1 D, (1 + if P d then Nat.log 3 N else 0)) =
      D + ((Finset.Icc 1 D).filter P).card * Nat.log 3 N := by
    rw [Finset.sum_add_distrib]
    simp [← Finset.sum_filter]
  rw [heq] at hsum
  exact hsum.trans (Nat.add_le_add_left
    (Nat.mul_le_mul_right (Nat.log 3 N) (card_square_succ_parameters_le D)) D)

theorem card_prime_pell_parameter_pairs_le {D N : Nat} (W : Finset (Nat × Nat))
    (hW : ∀ w ∈ W, w.1 ∈ Finset.Icc 1 D ∧ w.2 ∈ Finset.Icc 1 N ∧
      ∃ p : Nat, p.Prime ∧ w.2 ^ 2 + 1 = w.1 * p ^ 2) :
    W.card ≤ D + Nat.sqrt D * Nat.log 3 N := by
  classical
  let F := fun d => (W.filter (fun w => w.1 = d)).image Prod.snd
  have hcard : W.card = ∑ d ∈ Finset.Icc 1 D, (F d).card := by
    rw [Finset.card_eq_sum_card_fiberwise (f := Prod.fst) (t := Finset.Icc 1 D)
      (fun w hw => (hW w hw).1)]
    apply Finset.sum_congr rfl
    intro d hd
    symm
    apply Finset.card_image_of_injOn
    intro w hw z hz he
    exact Prod.ext ((Finset.mem_filter.mp hw).2.trans (Finset.mem_filter.mp hz).2.symm) he
  rw [hcard]
  apply sum_card_prime_negative_pell_le D N F
  · intro d hd x hx
    obtain ⟨w, hw, rfl⟩ := Finset.mem_image.mp hx
    exact (hW w (Finset.mem_filter.mp hw).1).2.1
  · intro d hd x hx
    obtain ⟨w, hw, rfl⟩ := Finset.mem_image.mp hx
    obtain ⟨hw, he⟩ := Finset.mem_filter.mp hw
    rw [← he]
    exact (hW w hw).2.2

/-- The finite prime-square witness tail, before substituting a cutoff bound for D. -/
theorem card_prime_square_witnesses_le {D N : Nat} (W : Finset (Nat × Nat))
    (hW : ∀ w ∈ W, w.1 ∈ Finset.Icc 1 N ∧ w.2.Prime ∧
      w.2 ^ 2 ∣ w.1 ^ 2 + 1 ∧ (w.1 ^ 2 + 1) / w.2 ^ 2 ≤ D) :
    W.card ≤ D + Nat.sqrt D * Nat.log 3 N := by
  classical
  let f := fun w : Nat × Nat => ((w.1 ^ 2 + 1) / w.2 ^ 2, w.1)
  have heq : ∀ w ∈ W, w.1 ^ 2 + 1 = (f w).1 * w.2 ^ 2 := by
    intro w hw
    exact (Nat.div_mul_cancel (hW w hw).2.2.1).symm
  have hdpos : ∀ w ∈ W, 0 < (f w).1 := by
    intro w hw
    have hh := heq w hw
    by_contra! h
    have hz : (f w).1 = 0 := by omega
    rw [hz, zero_mul] at hh
    omega
  have hinj : Set.InjOn f W := by
    intro w hw z hz h
    have hd : (f w).1 = (f z).1 := congrArg Prod.fst h
    have hx : w.1 = z.1 := congrArg Prod.snd h
    have hm : (f w).1 * w.2 ^ 2 = (f w).1 * z.2 ^ 2 := by
      rw [← heq w hw, hd, ← heq z hz, hx]
    have hs : w.2 ^ 2 = z.2 ^ 2 := mul_left_cancel₀ (by have := hdpos w hw; omega) hm
    exact Prod.ext hx ((sq_eq_sq₀ (Nat.zero_le w.2) (Nat.zero_le z.2)).mp hs)
  rw [← Finset.card_image_of_injOn hinj]
  apply card_prime_pell_parameter_pairs_le
  intro z hz
  obtain ⟨w, hw, rfl⟩ := Finset.mem_image.mp hz
  obtain ⟨hwn, hp, _, hD⟩ := hW w hw
  exact ⟨Finset.mem_Icc.mpr ⟨hdpos w hw, hD⟩, hwn, w.2, hp, heq w hw⟩

end JSP848
