import JSP848.ModularSquareRootBounds
import JSP848.DivisorOffDiagonalTail

namespace JSP848

theorem squareRootMultiplicity_mul {b c : Nat} (hb : 0 < b) (hc : 0 < c)
    (hbc : Nat.Coprime b c) :
    squareRootMultiplicity (b * c) = squareRootMultiplicity b * squareRootMultiplicity c := by
  classical
  apply le_antisymm (squareRootMultiplicity_mul_le hb hc hbc)
  let P := (inverseSquareRoots b 1) ×ˢ (inverseSquareRoots c 1)
  let f : Nat × Nat → Nat := fun r => Nat.chineseRemainder hbc r.1 r.2
  have hm : ∀ r ∈ P, f r ∈ inverseSquareRoots (b * c) 1 := by
    intro r hr
    obtain ⟨hrb, hrc⟩ := Finset.mem_product.mp hr
    have hbr : Nat.ModEq b (r.1 ^ 2) 1 := by
      simpa only [one_mul] using (Finset.mem_filter.mp hrb).2
    have hcr : Nat.ModEq c (r.2 ^ 2) 1 := by
      simpa only [one_mul] using (Finset.mem_filter.mp hrc).2
    refine Finset.mem_filter.mpr ⟨Finset.mem_range.mpr
      (Nat.chineseRemainder_lt_mul hbc r.1 r.2 hb.ne' hc.ne'), ?_⟩
    have hmod := (Nat.modEq_and_modEq_iff_modEq_mul hbc).mp
      ⟨((Nat.chineseRemainder hbc r.1 r.2).prop.1.pow 2).trans hbr,
        ((Nat.chineseRemainder hbc r.1 r.2).prop.2.pow 2).trans hcr⟩
    simpa only [one_mul] using hmod
  have hi : Set.InjOn f (P : Set (Nat × Nat)) := by
    intro r hr s hs he
    obtain ⟨hrb, hrc⟩ := Finset.mem_product.mp hr
    obtain ⟨hsb, hsc⟩ := Finset.mem_product.mp hs
    apply Prod.ext
    · have heq : Nat.ModEq b (f r) (f s) := congrArg (fun x => x % b) he
      have hmod := (Nat.chineseRemainder hbc r.1 r.2).prop.1.symm.trans
        (heq.trans (Nat.chineseRemainder hbc s.1 s.2).prop.1)
      exact hmod.eq_of_lt_of_lt (Finset.mem_range.mp (Finset.mem_filter.mp hrb).1)
        (Finset.mem_range.mp (Finset.mem_filter.mp hsb).1)
    · have heq : Nat.ModEq c (f r) (f s) := congrArg (fun x => x % c) he
      have hmod := (Nat.chineseRemainder hbc r.1 r.2).prop.2.symm.trans
        (heq.trans (Nat.chineseRemainder hbc s.1 s.2).prop.2)
      exact hmod.eq_of_lt_of_lt (Finset.mem_range.mp (Finset.mem_filter.mp hrc).1)
        (Finset.mem_range.mp (Finset.mem_filter.mp hsc).1)
  calc
    _ = P.card := (Finset.card_product _ _).symm
    _ = (P.image f).card := (Finset.card_image_of_injOn hi).symm
    _ ≤ (inverseSquareRoots (b * c) 1).card := Finset.card_le_card (by
      intro r hr
      obtain ⟨s, hs, rfl⟩ := Finset.mem_image.mp hr
      exact hm s hs)

theorem squareRootMultiplicity_two_le {q : Nat} (hq : 3 ≤ q) :
    2 ≤ squareRootMultiplicity q := by
  have hsub : ({1, q - 1} : Finset Nat) ⊆ inverseSquareRoots q 1 := by
    intro r hr
    simp only [Finset.mem_insert, Finset.mem_singleton] at hr
    rcases hr with rfl | rfl
    · apply Finset.mem_filter.mpr
      exact ⟨Finset.mem_range.mpr (by omega), by simp⟩
    · have hid : (q - 1) ^ 2 + 2 * q = q * q + 1 := by
        have := Nat.sub_add_cancel (show 1 ≤ q by omega)
        nlinarith
      have hmod := congrArg (fun n : Nat => n % q) hid
      simp only [Nat.add_mod, Nat.mul_mod, Nat.mod_self, Nat.mul_zero,
        Nat.zero_mod, Nat.add_zero, Nat.zero_add, Nat.mod_mod] at hmod
      exact Finset.mem_filter.mpr ⟨Finset.mem_range.mpr (by omega), by simpa using hmod⟩
  have hc : ({1, q - 1} : Finset Nat).card = 2 := by
    rw [Finset.card_pair (by omega : 1 ≠ q - 1)]
  rw [← hc]
  exact Finset.card_le_card hsub

theorem squareRootMultiplicity_odd_prime_power {p k : Nat} (hp : p.Prime)
    (hp2 : p ≠ 2) (hk : 0 < k) : squareRootMultiplicity (p ^ k) = 2 := by
  apply le_antisymm (squareRootMultiplicity_odd_prime_power_le hp hp2 k)
  apply squareRootMultiplicity_two_le
  have hp3 : 3 ≤ p := by have := hp.two_le; omega
  exact hp3.trans (le_self_pow hp.one_le hk.ne')

theorem squareRootMultiplicity_odd_prime {p : Nat} (hp : p.Prime) (hp2 : p ≠ 2) :
    squareRootMultiplicity p = 2 := by
  simpa using squareRootMultiplicity_odd_prime_power hp hp2 (by decide : 0 < 1)

theorem divisorDensity_mul {b c : Nat} (hb : 0 < b) (hc : 0 < c)
    (hbc : Nat.Coprime b c) : divisorDensity (b * c) = divisorDensity b * divisorDensity c := by
  unfold divisorDensity
  rw [Nat.totient_mul hbc, squareRootMultiplicity_mul hb hc hbc]
  simp only [Nat.cast_mul]
  field_simp

theorem divisorDensity_odd_prime {p : Nat} (hp : p.Prime) (hp2 : p ≠ 2) :
    divisorDensity p = ((p : Real) - 1) / (2 * p) := by
  unfold divisorDensity
  rw [Nat.totient_prime hp, squareRootMultiplicity_odd_prime hp hp2, Nat.cast_sub hp.one_le]
  norm_num
  ring

namespace ModularSquareRootExactTests

theorem large_odd_power : squareRootMultiplicity (3 ^ 100) = 2 :=
  squareRootMultiplicity_odd_prime_power (by decide) (by decide) (by decide)

theorem product_density : divisorDensity (3 * 5) = (2 / 15 : Real) := by
  rw [divisorDensity_mul (by decide) (by decide) (by decide)]
  rw [divisorDensity_odd_prime (by decide : Nat.Prime 3) (by decide),
    divisorDensity_odd_prime (by decide : Nat.Prime 5) (by decide)]
  norm_num

end ModularSquareRootExactTests

end JSP848
