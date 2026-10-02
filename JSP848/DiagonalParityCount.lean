import JSP848.DiagonalEstimate
import JSP848.OffDiagonalLarge

namespace JSP848

theorem card_symmetric_residues_real {N q r : Nat} (hr0 : 0 < r) (hrq : r < q)
    (A : Finset Nat) (hA : A ⊆ Finset.Icc 1 N)
    (hm : ∀ a ∈ A, a % q = r ∨ a % q = q - r) :
    (A.card : Real) ≤ 2 * (N : Real) / q + 1 := by
  have hsub : A ⊆ ((residueProgression N q r) ++
      (residueProgression N q (q - r))).toFinset := by
    intro a ha
    apply List.mem_toFinset.mpr
    have ha' := Finset.mem_Icc.mp (hA ha)
    rcases hm a ha with he | he
    · exact List.mem_append_left _ ((mem_residueProgression hr0 hrq).mpr
        ⟨ha'.1, ha'.2, he⟩)
    · exact List.mem_append_right _ ((mem_residueProgression (by omega) (by omega)).mpr
        ⟨ha'.1, ha'.2, he⟩)
  have hc := (Finset.card_le_card hsub).trans (List.toFinset_card_le _)
  rw [List.length_append] at hc
  have hn := (Nat.mul_le_mul_left q hc).trans (symmetric_progressions_length_bound hr0 hrq)
  have hn' : (q : Real) * A.card ≤ 2 * (N : Real) + q := by exact_mod_cast hn
  have hq : (0 : Real) < q := by exact_mod_cast (lt_trans hr0 hrq)
  calc
    (A.card : Real) ≤ (2 * N + q) / q := (le_div_iff₀ hq).mpr (by nlinarith)
    _ = _ := by rw [add_div, div_self hq.ne']

theorem prime_square_odd_roots_modeq {p a r : Nat} (hp : p.Prime) (hp2 : p ≠ 2)
    (ha : a % 2 = 1) (hr : r % 2 = 1)
    (had : p ^ 2 ∣ a ^ 2 + 1) (hrd : p ^ 2 ∣ r ^ 2 + 1) :
    Nat.ModEq (2 * p ^ 2) a r ∨ 2 * p ^ 2 ∣ a + r := by
  have hc : Nat.Coprime 2 (p ^ 2) :=
    ((by decide : Nat.Prime 2).coprime_iff_not_dvd.mpr (by
      intro hd
      exact hp2 ((Nat.prime_dvd_prime_iff_eq (by decide : Nat.Prime 2) hp).mp hd).symm)).pow_right 2
  have hrd' : (p : Int) ^ 2 ∣ (r : Int) ^ 2 + 1 := by exact_mod_cast hrd
  have had' : (p : Int) ^ 2 ∣ (a : Int) ^ 2 + 1 := by exact_mod_cast had
  rcases (prime_square_roots hp hp2 hrd').mp had' with hd | hd
  · apply Or.inl
    apply (Nat.modEq_and_modEq_iff_modEq_mul hc).mp
    refine ⟨ha.trans hr.symm, ?_⟩
    apply Nat.ModEq.symm
    apply Nat.modEq_iff_dvd.mpr
    exact_mod_cast hd
  · apply Or.inr
    apply hc.mul_dvd_of_dvd_of_dvd
    · exact Nat.dvd_of_mod_eq_zero (by simp [Nat.add_mod, ha, hr])
    · exact_mod_cast hd

theorem card_odd_prime_square_divisors_real (N : Nat) {p : Nat} (hp : p.Prime) :
    (((Finset.Icc 1 N).filter (fun a => a % 2 = 1 ∧ p ^ 2 ∣ a ^ 2 + 1)).card : Real) ≤
      (N : Real) / (p : Real) ^ 2 + 1 := by
  classical
  let A := (Finset.Icc 1 N).filter (fun a => a % 2 = 1 ∧ p ^ 2 ∣ a ^ 2 + 1)
  change (A.card : Real) ≤ _
  rcases Finset.eq_empty_or_nonempty A with he | he
  · simp only [he, Finset.card_empty, Nat.cast_zero]
    positivity
  obtain ⟨x, hx⟩ := he
  obtain ⟨_, hxo, hxd⟩ := Finset.mem_filter.mp hx
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
  have hb := card_symmetric_residues_real hr0 hrq A
    (fun a ha => (Finset.mem_filter.mp ha).1) (by
      intro a ha
      obtain ⟨_, hao, had⟩ := Finset.mem_filter.mp ha
      rcases prime_square_odd_roots_modeq hp hp2 hao hxo had hxd with hm | hd
      · exact Or.inl hm
      · apply Or.inr
        have he := Nat.mod_eq_zero_of_dvd hd
        rw [Nat.add_mod] at he
        have haq := Nat.mod_lt a hq
        change (a % q + r) % q = 0 at he
        have heq : a % q + r = q := by
          by_cases hlt : a % q + r < q
          · rw [Nat.mod_eq_of_lt hlt] at he
            omega
          · rw [Nat.mod_eq_sub_mod (by omega), Nat.mod_eq_of_lt (by omega)] at he
            omega
        omega)
  convert hb using 1 <;> push_cast [q] <;> ring

namespace DiagonalParityCountTests

theorem odd_five (N : Nat) :
    (((Finset.Icc 1 N).filter (fun a => a % 2 = 1 ∧ 25 ∣ a ^ 2 + 1)).card : Real) ≤
      (N : Real) / 25 + 1 := by
  convert card_odd_prime_square_divisors_real N (p := 5) (by decide) using 1 <;> norm_num

theorem odd_roots_fifty :
    ((Finset.Icc 1 50).filter (fun a => a % 2 = 1 ∧ 25 ∣ a ^ 2 + 1)) = {7, 43} := by
  decide

theorem even_prime (N : Nat) :
    (((Finset.Icc 1 N).filter (fun a => a % 2 = 1 ∧ 4 ∣ a ^ 2 + 1)).card : Real) ≤
      (N : Real) / 4 + 1 := by
  convert card_odd_prime_square_divisors_real N (p := 2) (by decide) using 1 <;> norm_num

end DiagonalParityCountTests

end JSP848
