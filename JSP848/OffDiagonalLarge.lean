import JSP848.ModularSquareRoots
import JSP848.ReciprocalSqrtSum

namespace JSP848

theorem card_pairwise_modeq_real {q : Nat} (hq : 0 < q) {Y : Real} (hY : 0 ≤ Y)
    (P : Finset Nat) (hP : ∀ p ∈ P, (p : Real) ≤ Y)
    (hm : ∀ p ∈ P, ∀ r ∈ P, Nat.ModEq q p r) :
    (P.card : Real) ≤ Y / q + 1 := by
  have hn := mul_card_pairwise_modeq_le (N := ⌊Y⌋₊) P
    (fun p hp => Nat.le_floor (hP p hp)) hm
  have hr : (q : Real) * P.card ≤ (⌊Y⌋₊ : Real) + q := by exact_mod_cast hn
  have hf := Nat.floor_le hY
  have hq' : (0 : Real) < q := by exact_mod_cast hq
  calc
    (P.card : Real) ≤ (Y + q) / q := (le_div_iff₀ hq').mpr (by nlinarith)
    _ = Y / q + 1 := by rw [add_div, div_self hq'.ne']

theorem card_inverse_square_solutions {b : Nat} (hb : 0 < b) (m : Nat)
    {Y : Real} (hY : 0 ≤ Y) (P : Finset Nat)
    (hP : ∀ p ∈ P, (p : Real) ≤ Y ∧ Nat.ModEq b (m * p ^ 2) 1) :
    (P.card : Real) ≤ (squareRootMultiplicity b : Real) * (Y / b + 1) := by
  classical
  have hmap : ∀ p ∈ P, p % b ∈ inverseSquareRoots b m := by
    intro p hp
    refine Finset.mem_filter.mpr ⟨Finset.mem_range.mpr (Nat.mod_lt p hb), ?_⟩
    simpa only [Nat.ModEq, Nat.mul_mod, Nat.pow_mod, Nat.mod_mod] using (hP p hp).2
  have hc : (P.card : Real) ≤ (inverseSquareRoots b m).card * (Y / b + 1) := by
    rw [Finset.card_eq_sum_card_fiberwise (f := fun p => p % b)
      (t := inverseSquareRoots b m) hmap, Nat.cast_sum]
    calc
      _ ≤ ∑ r ∈ inverseSquareRoots b m, (Y / b + 1) := by
        apply Finset.sum_le_sum
        intro r hr
        apply card_pairwise_modeq_real hb hY
        · intro p hp
          exact (hP p (Finset.mem_filter.mp hp).1).1
        · intro p hp s hs
          exact (Finset.mem_filter.mp hp).2.trans (Finset.mem_filter.mp hs).2.symm
      _ = _ := by simp [nsmul_eq_mul]; ring
  have hr : ((inverseSquareRoots b m).card : Real) ≤ squareRootMultiplicity b := by
    exact_mod_cast inverseSquareRoots_card_le hb m
  exact hc.trans (mul_le_mul_of_nonneg_right hr (by positivity))

theorem card_inverse_square_solutions_bounded {b m : Nat} (hb : 0 < b) (hm : 0 < m)
    {X : Real} (P : Finset Nat)
    (hP : ∀ p ∈ P, (m : Real) * (p : Real) ^ 2 ≤ X ∧
      Nat.ModEq b (m * p ^ 2) 1) :
    (P.card : Real) ≤ (squareRootMultiplicity b : Real) *
      (Real.sqrt (X / m) / b + 1) := by
  apply card_inverse_square_solutions hb m (Real.sqrt_nonneg _) P
  intro p hp
  refine ⟨Real.le_sqrt_of_sq_le ?_, (hP p hp).2⟩
  apply (le_div_iff₀ (show (0 : Real) < m by exact_mod_cast hm)).mpr
  nlinarith [(hP p hp).1]

theorem card_off_diagonal_quotient_fiber {N b m : Nat} (hb : 0 < b) (hm : 0 < m)
    (W : Finset (Nat × Nat))
    (hW : ∀ w ∈ W, w.1 ≤ N ∧ w.1 * b + 1 = m * w.2 ^ 2) :
    (W.card : Real) ≤ (squareRootMultiplicity b : Real) *
      (Real.sqrt (((b : Real) * N + 1) / m) / b + 1) := by
  classical
  have hi : Set.InjOn Prod.snd (W : Set (Nat × Nat)) := by
    intro w hw v hv hp
    apply Prod.ext _ hp
    have hw' := (hW w hw).2
    have hv' := (hW v hv).2
    rw [hp] at hw'
    exact Nat.eq_of_mul_eq_mul_right hb (by omega)
  rw [← Finset.card_image_of_injOn hi]
  apply card_inverse_square_solutions_bounded hb hm
  intro p hp
  obtain ⟨w, hw, rfl⟩ := Finset.mem_image.mp hp
  have he := (hW w hw).2
  refine ⟨?_, ?_⟩
  · have hn : m * w.2 ^ 2 ≤ b * N + 1 := by
      rw [← he, mul_comm b]
      exact Nat.add_le_add_right (Nat.mul_le_mul_right b (hW w hw).1) 1
    exact_mod_cast hn
  · rw [← he]
    change (w.1 * b + 1) % b = 1 % b
    simp

end JSP848
