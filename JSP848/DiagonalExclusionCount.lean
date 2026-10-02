import JSP848.SymmetricRootExclusion

namespace JSP848

theorem card_symmetric_residues_excluded_unordered {N q r : Nat}
    (hr : 0 < r) (hrq : r < q) (hq5 : q % 5 ≠ 0)
    (A : Finset Nat) (hA : A ⊆ Finset.Icc 1 N)
    (hm : ∀ a ∈ A, (a % q = r ∨ a % q = q - r) ∧ a % 25 ≠ 7 ∧ a % 25 ≠ 18) :
    (A.card : Real) ≤ (46 / 25 : Real) * ((N : Real) / q) + 69 / 25 := by
  by_cases hh : 2 * r ≤ q
  · exact card_symmetric_residues_excluded hr hh hq5 A hA hm
  · apply card_symmetric_residues_excluded (r := q - r) (by omega) (by omega) hq5 A hA
    intro a ha
    obtain ⟨he, h7, h18⟩ := hm a ha
    exact ⟨by omega, h7, h18⟩

theorem prime_square_not_zero_mod_five {p : Nat} (hp : p.Prime) (h5 : p ≠ 5) :
    p ^ 2 % 5 ≠ 0 := by
  intro he
  have hd := (by decide : Nat.Prime 5).dvd_of_dvd_pow (Nat.dvd_of_mod_eq_zero he)
  exact h5 ((Nat.prime_dvd_prime_iff_eq (by decide : Nat.Prime 5) hp).mp hd).symm

theorem card_diagonal_excluded_real (N : Nat) {p : Nat} (hp : p.Prime) (h5 : p ≠ 5) :
    (((Finset.Icc 1 N).filter
      (fun a => a % 25 ≠ 7 ∧ a % 25 ≠ 18 ∧ p ^ 2 ∣ a ^ 2 + 1)).card : Real) ≤
      (46 / 25 : Real) * ((N : Real) / (p : Real) ^ 2) + 69 / 25 := by
  classical
  let A := (Finset.Icc 1 N).filter
    (fun a => a % 25 ≠ 7 ∧ a % 25 ≠ 18 ∧ p ^ 2 ∣ a ^ 2 + 1)
  change (A.card : Real) ≤ _
  rcases Finset.eq_empty_or_nonempty A with he | he
  · simp only [he, Finset.card_empty, Nat.cast_zero]
    positivity
  obtain ⟨x, hx⟩ := he
  have hxd := (Finset.mem_filter.mp hx).2.2.2
  have hp2 : p ≠ 2 := by
    intro he
    subst p
    exact not_dvd_four_sq_add_one x (by simpa [pow_two] using hxd)
  let r := x % (p ^ 2)
  have hrp : r < p ^ 2 := Nat.mod_lt _ (pow_pos hp.pos _)
  have hrd : p ^ 2 ∣ r ^ 2 + 1 := by
    apply Nat.dvd_of_mod_eq_zero
    have hm := Nat.mod_eq_zero_of_dvd hxd
    simpa only [r, Nat.add_mod, Nat.pow_mod, Nat.mod_mod] using hm
  have hr0 : 0 < r := by
    apply Nat.pos_of_ne_zero
    intro hz
    have hd : p ^ 2 ∣ 1 := by simpa [hz] using hrd
    have hh := Nat.le_of_dvd (by decide : 0 < 1) hd
    have := hp.two_le
    nlinarith
  have hb := card_symmetric_residues_excluded_unordered hr0 hrp
    (prime_square_not_zero_mod_five hp h5) A
    (fun a ha => (Finset.mem_filter.mp ha).1) (by
      intro a ha
      obtain ⟨_, h7, h18, hd⟩ := Finset.mem_filter.mp ha
      exact ⟨(prime_square_roots_mod hp hp2 hr0 hrp hrd).mp hd, h7, h18⟩)
  simpa only [Nat.cast_pow] using hb

theorem card_odd_diagonal_excluded_real (N : Nat) {p : Nat} (hp : p.Prime) (h5 : p ≠ 5) :
    (((Finset.Icc 1 N).filter (fun a => a % 2 = 1 ∧
      a % 25 ≠ 7 ∧ a % 25 ≠ 18 ∧ p ^ 2 ∣ a ^ 2 + 1)).card : Real) ≤
      (23 / 25 : Real) * ((N : Real) / (p : Real) ^ 2) + 69 / 25 := by
  classical
  let A := (Finset.Icc 1 N).filter (fun a => a % 2 = 1 ∧
    a % 25 ≠ 7 ∧ a % 25 ≠ 18 ∧ p ^ 2 ∣ a ^ 2 + 1)
  change (A.card : Real) ≤ _
  rcases Finset.eq_empty_or_nonempty A with he | he
  · simp only [he, Finset.card_empty, Nat.cast_zero]
    positivity
  obtain ⟨x, hx⟩ := he
  obtain ⟨_, hxo, _, _, hxd⟩ := Finset.mem_filter.mp hx
  have hp2 : p ≠ 2 := by
    intro he
    subst p
    exact not_dvd_four_sq_add_one x (by simpa [pow_two] using hxd)
  let q := 2 * p ^ 2
  let r := x % q
  have hq : 0 < q := Nat.mul_pos (by decide) (pow_pos hp.pos _)
  have hrq : r < q := Nat.mod_lt _ hq
  have hr2 : r % 2 = 1 := by
    dsimp [r, q]
    rw [Nat.mod_mod_of_dvd _ (by simp)]
    exact hxo
  have hr0 : 0 < r := by omega
  have hq5 : q % 5 ≠ 0 := by
    have hp5 := prime_square_not_zero_mod_five hp h5
    have hpmod := Nat.mod_lt (p ^ 2) (by decide : 0 < 5)
    dsimp [q]
    rw [Nat.mul_mod]
    omega
  have hb := card_symmetric_residues_excluded_unordered hr0 hrq hq5 A
    (fun a ha => (Finset.mem_filter.mp ha).1) (by
      intro a ha
      obtain ⟨_, hao, h7, h18, had⟩ := Finset.mem_filter.mp ha
      refine ⟨?_, h7, h18⟩
      rcases prime_square_odd_roots_modeq hp hp2 hao hxo had hxd with hm | hd
      · exact Or.inl hm
      · apply Or.inr
        have he := Nat.mod_eq_zero_of_dvd hd
        rw [Nat.add_mod] at he
        have haq := Nat.mod_lt a hq
        change (a % q + r) % q = 0 at he
        by_cases hlt : a % q + r < q
        · rw [Nat.mod_eq_of_lt hlt] at he
          omega
        · rw [Nat.mod_eq_sub_mod (by omega), Nat.mod_eq_of_lt (by omega)] at he
          omega)
  convert hb using 1 <;> push_cast [q] <;> ring

namespace DiagonalExclusionCountTests

theorem thirteen_all (N : Nat) :
    (((Finset.Icc 1 N).filter
      (fun a => a % 25 ≠ 7 ∧ a % 25 ≠ 18 ∧ 169 ∣ a ^ 2 + 1)).card : Real) ≤
      (46 / 25 : Real) * ((N : Real) / 169) + 69 / 25 := by
  convert card_diagonal_excluded_real N (p := 13) (by decide) (by decide) using 1 <;> norm_num

theorem thirteen_odd (N : Nat) :
    (((Finset.Icc 1 N).filter (fun a => a % 2 = 1 ∧
      a % 25 ≠ 7 ∧ a % 25 ≠ 18 ∧ 169 ∣ a ^ 2 + 1)).card : Real) ≤
      (23 / 25 : Real) * ((N : Real) / 169) + 69 / 25 := by
  convert card_odd_diagonal_excluded_real N (p := 13) (by decide) (by decide) using 1 <;> norm_num

end DiagonalExclusionCountTests

end JSP848
