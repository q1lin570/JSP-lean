import JSP848.CofactorResidues
import Mathlib.Data.Nat.Totient

namespace JSP848

theorem squareRootMultiplicity_pos {b : Nat} (hb : 0 < b) :
    0 < squareRootMultiplicity b := by
  apply Finset.card_pos.mpr
  refine ⟨1 % b, Finset.mem_filter.mpr ⟨Finset.mem_range.mpr (Nat.mod_lt _ hb), ?_⟩⟩
  simp only [one_mul, ← Nat.pow_mod, one_pow]

theorem inverseSquareResidues_mul_roots_le_totient {b : Nat} (hb : 0 < b) :
    (inverseSquareResidues b).card * squareRootMultiplicity b ≤ Nat.totient b := by
  classical
  let C := inverseSquareResidues b
  let S := inverseSquareRoots b 1
  let root : Nat → Nat := fun m =>
    if h : m ∈ C then Classical.choose (Finset.mem_filter.mp h).2 else 0
  have hroot : ∀ m ∈ C, root m ∈ inverseSquareRoots b m := by
    intro m hm
    simpa only [root, dif_pos hm] using Classical.choose_spec (Finset.mem_filter.mp hm).2
  have hbase : ∀ m ∈ C, Nat.ModEq b (m * root m ^ 2) 1 :=
    fun m hm => (Finset.mem_filter.mp (hroot m hm)).2
  let f : Nat × Nat → Nat := fun w => (root w.1 * w.2) % b
  have he : ∀ w ∈ C ×ˢ S, Nat.ModEq b (w.1 * f w ^ 2) 1 := by
    intro w hw
    obtain ⟨hm, hs⟩ := Finset.mem_product.mp hw
    have hs' : Nat.ModEq b (w.2 ^ 2) 1 := by
      simpa only [one_mul] using (Finset.mem_filter.mp hs).2
    have hm' : Nat.ModEq b (w.1 * (root w.1 * w.2) ^ 2) 1 := by
      calc
        w.1 * (root w.1 * w.2) ^ 2 = (w.1 * root w.1 ^ 2) * w.2 ^ 2 := by ring
        _ ≡ 1 * 1 [MOD b] := (hbase w.1 hm).mul hs'
        _ = 1 := by simp
    simpa only [f, Nat.ModEq, Nat.mul_mod, Nat.pow_mod, Nat.mod_mod] using hm'
  have hunit : ∀ w ∈ C ×ˢ S, Nat.Coprime b (f w) := by
    intro w hw
    apply Nat.Coprime.symm
    apply Nat.coprime_of_mul_modEq_one (w.1 * f w)
    convert he w hw using 1 <;> ring
  have hmap : ∀ w ∈ C ×ˢ S, f w ∈ (Finset.range b).filter (Nat.Coprime b) := by
    intro w hw
    exact Finset.mem_filter.mpr ⟨Finset.mem_range.mpr (Nat.mod_lt _ hb), hunit w hw⟩
  have hi : Set.InjOn f (↑(C ×ˢ S) : Set (Nat × Nat)) := by
    intro w hw v hv hf
    have hm := he w hw
    have hn := he v hv
    rw [← hf] at hn
    have hmn : w.1 = v.1 := by
      apply ((hm.trans hn.symm).cancel_right_of_coprime ((hunit w hw).pow_right 2)).eq_of_lt_of_lt
      · exact Finset.mem_range.mp (Finset.mem_filter.mp (Finset.mem_product.mp hw).1).1
      · exact Finset.mem_range.mp (Finset.mem_filter.mp (Finset.mem_product.mp hv).1).1
    have hrootUnit : Nat.Coprime b (root w.1) := by
      apply Nat.Coprime.symm
      apply Nat.coprime_of_mul_modEq_one (w.1 * root w.1)
      convert hbase w.1 (Finset.mem_product.mp hw).1 using 1 <;> ring
    have hf' : Nat.ModEq b (root w.1 * w.2) (root w.1 * v.2) := by
      change (root w.1 * w.2) % b = (root w.1 * v.2) % b
      simpa only [f, ← hmn] using hf
    apply Prod.ext hmn
    exact (hf'.cancel_left_of_coprime hrootUnit).eq_of_lt_of_lt
      (Finset.mem_range.mp (Finset.mem_filter.mp (Finset.mem_product.mp hw).2).1)
      (Finset.mem_range.mp (Finset.mem_filter.mp (Finset.mem_product.mp hv).2).1)
  calc
    (inverseSquareResidues b).card * squareRootMultiplicity b = (C ×ˢ S).card :=
      (Finset.card_product _ _).symm
    _ = ((C ×ˢ S).image f).card := (Finset.card_image_of_injOn hi).symm
    _ ≤ ((Finset.range b).filter (Nat.Coprime b)).card := Finset.card_le_card (by
      intro r hr
      obtain ⟨w, hw, rfl⟩ := Finset.mem_image.mp hr
      exact hmap w hw)
    _ = Nat.totient b := rfl

theorem cofactorDensity_le_totient {b : Nat} (hb : 0 < b) :
    cofactorDensity b ≤ (Nat.totient b : Real) /
      ((b : Real) * squareRootMultiplicity b) := by
  have hρ : (0 : Real) < squareRootMultiplicity b := by
    exact_mod_cast squareRootMultiplicity_pos hb
  have hb' : (0 : Real) < b := by exact_mod_cast hb
  have hn : ((inverseSquareResidues b).card : Real) * squareRootMultiplicity b ≤
      (Nat.totient b : Real) := by exact_mod_cast inverseSquareResidues_mul_roots_le_totient hb
  unfold cofactorDensity
  apply (div_le_div_iff₀ hb' (mul_pos hb' hρ)).mpr
  nlinarith [mul_le_mul_of_nonneg_right hn hb'.le]

end JSP848
