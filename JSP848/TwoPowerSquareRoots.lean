import JSP848.ModularSquareRootBounds

namespace JSP848

theorem two_power_roots_one {n r : Nat} (hr : r ∈ inverseSquareRoots (2 ^ (n + 2)) 1) :
    r ∈ ({1, 2 * 2 ^ n + 1, 2 * 2 ^ n - 1, 4 * 2 ^ n - 1} : Finset Nat) := by
  have hq : 0 < 2 ^ n := pow_pos (by decide) _
  have hpow : 2 ^ (n + 2) = 4 * 2 ^ n := by rw [pow_add]; ring
  have hrlt : r < 4 * 2 ^ n := by
    simpa only [hpow] using Finset.mem_range.mp (Finset.mem_filter.mp hr).1
  have he : Nat.ModEq (4 * 2 ^ n) (r ^ 2) 1 := by
    simpa only [one_mul, hpow] using (Finset.mem_filter.mp hr).2
  have htwo : r % 2 = 1 := by
    have hd : 2 ∣ 4 * 2 ^ n := dvd_mul_of_dvd_left (by decide : 2 ∣ 4) _
    have hm := he.of_dvd hd
    change r ^ 2 % 2 = 1 % 2 at hm
    rw [Nat.pow_mod] at hm
    have hl := Nat.mod_lt r (by decide : 0 < 2)
    interval_cases r % 2 <;> norm_num at *
  let s : Nat := r / 2
  have hform : r = 2 * s + 1 := by
    have hm := Nat.div_add_mod r 2
    omega
  have hslt : s < 2 * 2 ^ n := by omega
  have hd : 2 ^ n ∣ s * (s + 1) := by
    have hm : Nat.ModEq (4 * 2 ^ n) (4 * (s * (s + 1)) + 1) (0 + 1) := by
      convert he using 1
      rw [hform]
      ring
    exact (Nat.mul_dvd_mul_iff_left (by decide : 0 < 4)).mp
      (Nat.modEq_zero_iff_dvd.mp (hm.add_right_cancel' 1))
  have hsplit : 2 ^ n ∣ s ∨ 2 ^ n ∣ s + 1 := by
    have hp : Prime (2 : Nat) := Nat.prime_iff.mp (by decide)
    by_cases hs : 2 ∣ s
    · have hn : ¬ 2 ∣ s + 1 := by
        intro ht
        have hsmod := Nat.mod_eq_zero_of_dvd hs
        have htmod := Nat.mod_eq_zero_of_dvd ht
        omega
      exact Or.inl (hp.pow_dvd_of_dvd_mul_right n hn hd)
    · exact Or.inr (hp.pow_dvd_of_dvd_mul_left n hs hd)
  simp only [Finset.mem_insert, Finset.mem_singleton]
  rcases hsplit with ⟨k, hk⟩ | ⟨k, hk⟩
  · have hklt : k < 2 := by nlinarith
    interval_cases k
    · left; omega
    · right; left; omega
  · have hkpos : 0 < k := by
      apply Nat.pos_of_ne_zero
      intro hz
      rw [hz, mul_zero] at hk
      omega
    have hkle : k ≤ 2 := by nlinarith
    interval_cases k
    · right; right; left; omega
    · right; right; right; omega

theorem squareRootMultiplicity_two_power_le (k : Nat) :
    squareRootMultiplicity (2 ^ k) ≤ 4 := by
  rcases k with _ | _ | k
  · change squareRootMultiplicity 1 ≤ 4; decide
  · change squareRootMultiplicity 2 ≤ 4; decide
  · apply (Finset.card_le_card (s := inverseSquareRoots (2 ^ (k + 2)) 1)
      (t := {1, 2 * 2 ^ k + 1, 2 * 2 ^ k - 1, 4 * 2 ^ k - 1}) ?_).trans
      Finset.card_le_four
    exact fun _ hr => two_power_roots_one hr

theorem squareRootMultiplicity_two_power_fifth (k : Nat) :
    squareRootMultiplicity (2 ^ k) ^ 5 ≤ 128 * 2 ^ k := by
  rcases k with _ | _ | _ | k
  · change squareRootMultiplicity 1 ^ 5 ≤ 128; decide
  · change squareRootMultiplicity 2 ^ 5 ≤ 256; decide
  · change squareRootMultiplicity 4 ^ 5 ≤ 512; decide
  · have h := Nat.pow_le_pow_left (squareRootMultiplicity_two_power_le (k + 3)) 5
    have hp : 8 ≤ 2 ^ (k + 3) := by
      have hpos : 1 ≤ 2 ^ k := Nat.one_le_iff_ne_zero.mpr (pow_ne_zero _ (by decide))
      rw [pow_add]
      nlinarith
    exact h.trans (show 4 ^ 5 ≤ 128 * 2 ^ (k + 3) from
      (by decide : 4 ^ 5 ≤ 128 * 8).trans (Nat.mul_le_mul_left 128 hp))

namespace TwoPowerSquareRootsTests

theorem large_power : squareRootMultiplicity (2 ^ 100) ≤ 4 :=
  squareRootMultiplicity_two_power_le 100

theorem first_four_roots : inverseSquareRoots 8 1 = {1, 3, 5, 7} := by decide

end TwoPowerSquareRootsTests

end JSP848
