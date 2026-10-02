import JSP848.ModularSquareRoots

namespace JSP848

theorem squareRootMultiplicity_mul_le {b c : Nat} (hb : 0 < b) (hc : 0 < c)
    (hbc : Nat.Coprime b c) :
    squareRootMultiplicity (b * c) ≤ squareRootMultiplicity b * squareRootMultiplicity c := by
  classical
  let f : Nat → Nat × Nat := fun r => (r % b, r % c)
  have hm : ∀ r ∈ inverseSquareRoots (b * c) 1,
      f r ∈ (inverseSquareRoots b 1) ×ˢ (inverseSquareRoots c 1) := by
    intro r hr
    have he : Nat.ModEq (b * c) (r ^ 2) 1 := by
      simpa only [one_mul] using (Finset.mem_filter.mp hr).2
    apply Finset.mem_product.mpr
    constructor
    · refine Finset.mem_filter.mpr ⟨Finset.mem_range.mpr (Nat.mod_lt _ hb), ?_⟩
      simpa only [f, one_mul, Nat.ModEq, Nat.pow_mod, Nat.mod_mod] using he.of_mul_right c
    · refine Finset.mem_filter.mpr ⟨Finset.mem_range.mpr (Nat.mod_lt _ hc), ?_⟩
      simpa only [f, one_mul, Nat.ModEq, Nat.pow_mod, Nat.mod_mod] using he.of_mul_left b
  have hi : Set.InjOn f (inverseSquareRoots (b * c) 1 : Set Nat) := by
    intro r hr s hs he
    have h₁ : Nat.ModEq b r s := congrArg Prod.fst he
    have h₂ : Nat.ModEq c r s := congrArg Prod.snd he
    exact ((Nat.modEq_and_modEq_iff_modEq_mul hbc).mp ⟨h₁, h₂⟩).eq_of_lt_of_lt
      (Finset.mem_range.mp (Finset.mem_filter.mp hr).1)
      (Finset.mem_range.mp (Finset.mem_filter.mp hs).1)
  calc
    squareRootMultiplicity (b * c) = ((inverseSquareRoots (b * c) 1).image f).card :=
      (Finset.card_image_of_injOn hi).symm
    _ ≤ ((inverseSquareRoots b 1) ×ˢ (inverseSquareRoots c 1)).card :=
      Finset.card_le_card (by
        intro r hr
        obtain ⟨s, hs, rfl⟩ := Finset.mem_image.mp hr
        exact hm s hs)
    _ = squareRootMultiplicity b * squareRootMultiplicity c := Finset.card_product _ _

theorem odd_prime_power_roots_one {p k r : Nat} (hp : p.Prime) (hp2 : p ≠ 2)
    (hk : 0 < k) (hr : r ∈ inverseSquareRoots (p ^ k) 1) :
    r = 1 ∨ r = p ^ k - 1 := by
  have hrlt : r < p ^ k := Finset.mem_range.mp (Finset.mem_filter.mp hr).1
  have he : Nat.ModEq (p ^ k) (r ^ 2) 1 := by
    simpa only [one_mul] using (Finset.mem_filter.mp hr).2
  have hq : 1 < p ^ k := one_lt_pow' hp.one_lt hk.ne'
  have hpz : Prime (p : Int) := Nat.prime_iff_prime_int.mp hp
  have hp_two : ¬ (p : Int) ∣ 2 := by
    intro hd
    have hd' : p ∣ 2 := by exact_mod_cast hd
    exact hp2 (le_antisymm (Nat.le_of_dvd (by decide) hd') hp.two_le)
  have hd : (p : Int) ^ k ∣ (r : Int) ^ 2 - 1 := by
    exact_mod_cast Nat.modEq_iff_dvd.mp he.symm
  have hprod : (p : Int) ^ k ∣ ((r : Int) - 1) * ((r : Int) + 1) := by
    convert hd using 1
    ring
  have hsplit : (p : Int) ^ k ∣ (r : Int) - 1 ∨
      (p : Int) ^ k ∣ (r : Int) + 1 := by
    by_cases hm : (p : Int) ∣ (r : Int) - 1
    · have hn : ¬ (p : Int) ∣ (r : Int) + 1 := by
        intro hh
        apply hp_two
        convert dvd_sub hh hm using 1
        ring
      exact Or.inl (hpz.pow_dvd_of_dvd_mul_right k hn hprod)
    · exact Or.inr (hpz.pow_dvd_of_dvd_mul_left k hm hprod)
  rcases hsplit with hm | hn
  · left
    have hm' : Nat.ModEq (p ^ k) 1 r := Nat.modEq_iff_dvd.mpr (by exact_mod_cast hm)
    exact hm'.symm.eq_of_lt_of_lt hrlt hq
  · right
    have hn' : p ^ k ∣ r + 1 := by exact_mod_cast hn
    have hlo := Nat.le_of_dvd (Nat.succ_pos r) hn'
    omega

theorem squareRootMultiplicity_odd_prime_power_le {p : Nat} (hp : p.Prime)
    (hp2 : p ≠ 2) (k : Nat) : squareRootMultiplicity (p ^ k) ≤ 2 := by
  cases k with
  | zero => change squareRootMultiplicity 1 ≤ 2; decide
  | succ k =>
      apply (Finset.card_le_card (s := inverseSquareRoots (p ^ (k + 1)) 1)
        (t := {1, p ^ (k + 1) - 1}) ?_).trans Finset.card_le_two
      intro r hr
      simpa only [Finset.mem_insert, Finset.mem_singleton] using
        odd_prime_power_roots_one hp hp2 (Nat.succ_pos k) hr

namespace ModularSquareRootBoundsTests

theorem odd_large_power : squareRootMultiplicity (3 ^ 20) ≤ 2 :=
  squareRootMultiplicity_odd_prime_power_le (by decide) (by decide) 20

theorem coprime_product : squareRootMultiplicity (9 * 25) ≤ 4 := by
  have h := squareRootMultiplicity_mul_le (by decide : 0 < 9)
    (by decide : 0 < 25) (by decide : Nat.Coprime 9 25)
  have h₃ := squareRootMultiplicity_odd_prime_power_le (by decide : Nat.Prime 3)
    (by decide) 2
  have h₅ := squareRootMultiplicity_odd_prime_power_le (by decide : Nat.Prime 5)
    (by decide) 2
  exact h.trans (by simpa using Nat.mul_le_mul h₃ h₅)

end ModularSquareRootBoundsTests

end JSP848
