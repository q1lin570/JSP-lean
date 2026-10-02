import JSP848.OffDiagonalCount

namespace JSP848

def inverseSquareRoots (b m : Nat) : Finset Nat :=
  (Finset.range b).filter (fun r => (m * r ^ 2) % b = 1 % b)

def squareRootMultiplicity (b : Nat) : Nat :=
  (inverseSquareRoots b 1).card

theorem inverseSquareRoots_card_le {b : Nat} (hb : 0 < b) (m : Nat) :
    (inverseSquareRoots b m).card ≤ squareRootMultiplicity b := by
  classical
  by_cases he : inverseSquareRoots b m = ∅
  · simp [he]
  obtain ⟨r₀, hr₀⟩ := Finset.nonempty_iff_ne_empty.mpr he
  have h₀ : Nat.ModEq b (m * r₀ ^ 2) 1 := (Finset.mem_filter.mp hr₀).2
  have hc : Nat.Coprime b (m * r₀) := by
    apply Nat.Coprime.symm
    apply Nat.coprime_of_mul_modEq_one r₀
    simpa only [pow_two, mul_assoc] using h₀
  let f : Nat → Nat := fun r => (m * r₀ * r) % b
  have hf : ∀ r ∈ inverseSquareRoots b m, f r ∈ inverseSquareRoots b 1 := by
    intro r hr
    have h : Nat.ModEq b (m * r ^ 2) 1 := (Finset.mem_filter.mp hr).2
    have hs : Nat.ModEq b ((m * r₀ * r) ^ 2) 1 := by
      calc
        (m * r₀ * r) ^ 2 = (m * r₀ ^ 2) * (m * r ^ 2) := by ring
        _ ≡ 1 * 1 [MOD b] := h₀.mul h
        _ = 1 := by simp
    refine Finset.mem_filter.mpr ⟨Finset.mem_range.mpr (Nat.mod_lt _ hb), ?_⟩
    simpa only [Nat.ModEq, f, one_mul, Nat.pow_mod, Nat.mod_mod] using hs
  have hi : Set.InjOn f (inverseSquareRoots b m : Set Nat) := by
    intro r hr s hs heq
    have hm : Nat.ModEq b (m * r₀ * r) (m * r₀ * s) := heq
    exact (hm.cancel_left_of_coprime hc).eq_of_lt_of_lt
      (Finset.mem_range.mp (Finset.mem_filter.mp hr).1)
      (Finset.mem_range.mp (Finset.mem_filter.mp hs).1)
  calc
    (inverseSquareRoots b m).card = ((inverseSquareRoots b m).image f).card :=
      (Finset.card_image_of_injOn hi).symm
    _ ≤ (inverseSquareRoots b 1).card := Finset.card_le_card (by
      intro r hr
      obtain ⟨s, hs, rfl⟩ := Finset.mem_image.mp hr
      exact hf s hs)
    _ = squareRootMultiplicity b := rfl

namespace ModularSquareRootsTests

theorem modulus_one : squareRootMultiplicity 1 = 1 := by decide
theorem modulus_eight : squareRootMultiplicity 8 = 4 := by decide
theorem modulus_fifteen : squareRootMultiplicity 15 = 4 := by decide
theorem nonsquare_inverse : inverseSquareRoots 7 3 = ∅ := by decide
theorem unit_inverse : (inverseSquareRoots 7 2).card = 2 := by decide

end ModularSquareRootsTests

end JSP848
