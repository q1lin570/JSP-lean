import JSP848.ReciprocalSquareTail

namespace JSP848

theorem sum_diagonal_tail_le (P : Finset Nat)
    (hP : ∀ p ∈ P, 10001 ≤ p ∧ p % 4 = 1) :
    (∑ p ∈ P, 2 / (p : Real) ^ 2) ≤ (1 : Real) / 19994 := by
  let f : Nat → Nat := fun p => (p - 10001) / 4
  have hf : ∀ p ∈ P, 10001 + 4 * f p = p := by
    intro p hp
    have hh := hP p hp
    dsimp [f]
    omega
  have hinj : Set.InjOn f P := by
    intro p hp q hq he
    have hp' := hf p hp
    have hq' := hf q hq
    omega
  have hs : P.image f ⊆ Finset.range (P.sup id + 1) := by
    intro i hi
    obtain ⟨p, hp, rfl⟩ := Finset.mem_image.mp hi
    have hb : p ≤ P.sup id := Finset.le_sup (f := id) hp
    apply Finset.mem_range.mpr
    dsimp [f]
    omega
  calc
    _ = ∑ i ∈ P.image f, 2 / (10001 + 4 * (i : Real)) ^ 2 := by
      rw [Finset.sum_image hinj]
      apply Finset.sum_congr rfl
      intro p hp
      have hr : (10001 : Real) + 4 * (f p : Real) = p := by exact_mod_cast hf p hp
      rw [hr]
    _ ≤ ∑ i ∈ Finset.range (P.sup id + 1), 2 / (10001 + 4 * (i : Real)) ^ 2 :=
      Finset.sum_le_sum_of_subset_of_nonneg hs (fun i hi hn => by positivity)
    _ ≤ _ := diagonal_progression_tail _

theorem sum_off_diagonal_tail_le (P : Finset Nat) (hP : ∀ p ∈ P, 10001 ≤ p) :
    (∑ p ∈ P, 1 / (p : Real) ^ 2) ≤ (1 : Real) / 10000 := by
  let f : Nat → Nat := fun p => p - 10001
  have hf : ∀ p ∈ P, 10001 + f p = p := by
    intro p hp
    have hh := hP p hp
    dsimp [f]
    omega
  have hinj : Set.InjOn f P := by
    intro p hp q hq he
    have hp' := hf p hp
    have hq' := hf q hq
    omega
  have hs : P.image f ⊆ Finset.range (P.sup id + 1) := by
    intro i hi
    obtain ⟨p, hp, rfl⟩ := Finset.mem_image.mp hi
    have hb : p ≤ P.sup id := Finset.le_sup (f := id) hp
    apply Finset.mem_range.mpr
    dsimp [f]
    omega
  calc
    _ = ∑ i ∈ P.image f, 1 / (10001 + (i : Real)) ^ 2 := by
      rw [Finset.sum_image hinj]
      apply Finset.sum_congr rfl
      intro p hp
      have hr : (10001 : Real) + (f p : Real) = p := by exact_mod_cast hf p hp
      rw [hr]
    _ ≤ ∑ i ∈ Finset.range (P.sup id + 1), 1 / (10001 + (i : Real)) ^ 2 :=
      Finset.sum_le_sum_of_subset_of_nonneg hs (fun i hi hn => by positivity)
    _ ≤ _ := off_diagonal_integer_tail _

end JSP848
