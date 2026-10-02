import JSP848.Basic

namespace JSP848

def residueClass (N r : ℕ) : Finset ℕ :=
  (Finset.Icc 1 N).filter (fun a => a % 25 = r)

theorem residueClass_eq_image {N r : ℕ} (hr : 0 < r) (hr25 : r < 25) :
    residueClass N r =
      (Finset.range ((N + 25 - r) / 25)).image (fun k => 25 * k + r) := by
  ext a
  simp only [residueClass, Finset.mem_filter, Finset.mem_Icc,
    Finset.mem_image, Finset.mem_range]
  constructor
  · rintro ⟨⟨ha1, haN⟩, hamod⟩
    refine ⟨a / 25, ?_, ?_⟩ <;> omega
  · rintro ⟨k, hk, rfl⟩
    omega

theorem card_residueClass {N r : ℕ} (hr : 0 < r) (hr25 : r < 25) :
    (residueClass N r).card = (N + 25 - r) / 25 := by
  rw [residueClass_eq_image hr hr25, Finset.card_image_of_injective, Finset.card_range]
  intro a b h
  change 25 * a + r = 25 * b + r at h
  omega

theorem card_residueClass_seven (N : ℕ) :
    (residueClass N 7).card = optimum N := by
  rw [card_residueClass (by decide) (by decide)]
  unfold optimum
  congr 1

theorem card_residueClass_eighteen (N : ℕ) :
    (residueClass N 18).card = (N + 7) / 25 := by
  rw [card_residueClass (by decide) (by decide)]
  congr 1

theorem upper_bound_single_residue {N r : ℕ} {A : Finset ℕ}
    (hA : Admissible N A) (hr : r = 7 ∨ r = 18)
    (hres : ∀ a ∈ A, a % 25 = r) : A.card ≤ optimum N := by
  have hsub : A ⊆ residueClass N r := by
    intro a ha
    exact Finset.mem_filter.mpr ⟨hA.1 ha, hres a ha⟩
  have hc := Finset.card_le_card hsub
  rcases hr with rfl | rfl
  · simpa only [card_residueClass_seven] using hc
  · rw [card_residueClass_eighteen] at hc
    exact hc.trans (Nat.div_le_div_right (by omega : N + 7 ≤ N + 18))

def residuePart (A : Finset ℕ) (r : ℕ) : Finset ℕ :=
  A.filter (fun a => a % 25 = r)

def exceptionalPart (A : Finset ℕ) : Finset ℕ :=
  A.filter (fun a => a % 25 ≠ 7 ∧ a % 25 ≠ 18)

theorem card_partition (A : Finset ℕ) :
    A.card = (residuePart A 7).card + (residuePart A 18).card +
      (exceptionalPart A).card := by
  have h1 := Finset.card_filter_add_card_filter_not (s := A) (fun a => a % 25 = 7)
  have h2 := Finset.card_filter_add_card_filter_not
    (s := A.filter (fun a => a % 25 ≠ 7)) (fun a => a % 25 = 18)
  have h18 : (A.filter (fun a => a % 25 ≠ 7)).filter (fun a => a % 25 = 18) =
      residuePart A 18 := by
    ext a
    simp only [residuePart, Finset.mem_filter]
    constructor
    · rintro ⟨⟨ha, _⟩, ha18⟩
      exact ⟨ha, ha18⟩
    · rintro ⟨ha, ha18⟩
      exact ⟨⟨ha, by omega⟩, ha18⟩
  have he : (A.filter (fun a => a % 25 ≠ 7)).filter (fun a => a % 25 ≠ 18) =
      exceptionalPart A := by
    simp only [Finset.filter_filter, exceptionalPart]
  rw [h18, he] at h2
  change (residuePart A 7).card + (A.filter (fun a => a % 25 ≠ 7)).card = A.card at h1
  omega

end JSP848
