import JSP848.OffDiagonalLarge

namespace JSP848

theorem card_diagonal_residue_class_real (N q s : Nat) (hq : 0 < q)
    {p : Nat} (hp : p.Prime) (hqp : Nat.Coprime q (p ^ 2)) :
    (((Finset.Icc 1 N).filter (fun a => a % q = s ∧ p ^ 2 ∣ a ^ 2 + 1)).card : Real) ≤
      2 * (N : Real) / ((q : Real) * (p : Real) ^ 2) + 2 := by
  classical
  let A := (Finset.Icc 1 N).filter (fun a => a % q = s ∧ p ^ 2 ∣ a ^ 2 + 1)
  change (A.card : Real) ≤ _
  rcases Finset.eq_empty_or_nonempty A with he | he
  · simp only [he, Finset.card_empty, Nat.cast_zero]
    positivity
  obtain ⟨x, hx⟩ := he
  have hxd := (Finset.mem_filter.mp hx).2.2
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
  let C : Finset Nat := {r, p ^ 2 - r}
  have hmap : ∀ a ∈ A, a % (p ^ 2) ∈ C := by
    intro a ha
    simpa only [C, Finset.mem_insert, Finset.mem_singleton] using
      (prime_square_roots_mod hp hp2 hr0 hrp hrd).mp (Finset.mem_filter.mp ha).2.2
  have hc : C.card ≤ 2 := by
    exact (Finset.card_insert_le _ _).trans (by simp)
  have hb : (A.card : Real) ≤ (C.card : Real) * ((N : Real) / (q * p ^ 2 : Nat) + 1) := by
    rw [Finset.card_eq_sum_card_fiberwise (s := A) (f := fun a => a % (p ^ 2)) (t := C)
      (fun a ha => hmap a ha),
      Nat.cast_sum]
    calc
      _ ≤ ∑ t ∈ C, ((N : Real) / (q * p ^ 2 : Nat) + 1) := by
        apply Finset.sum_le_sum
        intro t ht
        apply card_pairwise_modeq_real (Nat.mul_pos hq (pow_pos hp.pos _)) (Nat.cast_nonneg N)
        · intro a ha
          exact_mod_cast (Finset.mem_Icc.mp
            (Finset.mem_filter.mp (Finset.mem_filter.mp ha).1).1).2
        · intro a ha b hb
          obtain ⟨ha, hat⟩ := Finset.mem_filter.mp ha
          obtain ⟨hb, hbt⟩ := Finset.mem_filter.mp hb
          apply (Nat.modEq_and_modEq_iff_modEq_mul hqp).mp
          exact ⟨(Finset.mem_filter.mp ha).2.1.trans (Finset.mem_filter.mp hb).2.1.symm,
            hat.trans hbt.symm⟩
      _ = _ := by simp [nsmul_eq_mul]; ring
  have hc' : (C.card : Real) ≤ 2 := by exact_mod_cast hc
  have hm := mul_le_mul_of_nonneg_right hc'
    (show (0 : Real) ≤ (N : Real) / (q * p ^ 2 : Nat) + 1 by positivity)
  exact hb.trans (hm.trans_eq (by push_cast; ring))

theorem prime_coprime_four {p : Nat} (hp : p.Prime) (hp2 : p ≠ 2) :
    Nat.Coprime 4 (p ^ 2) := by
  have hc : Nat.Coprime 2 p := (by decide : Nat.Prime 2).coprime_iff_not_dvd.mpr (by
    intro hd
    exact hp2 ((Nat.prime_dvd_prime_iff_eq (by decide : Nat.Prime 2) hp).mp hd).symm)
  simpa using hc.pow 2 2

theorem card_diagonal_mod_four_real (N s : Nat) {p : Nat} (hp : p.Prime) (hp2 : p ≠ 2) :
    (((Finset.Icc 1 N).filter (fun a => a % 4 = s ∧ p ^ 2 ∣ a ^ 2 + 1)).card : Real) ≤
      (N : Real) / (2 * (p : Real) ^ 2) + 2 := by
  have hb := card_diagonal_residue_class_real N 4 s (by decide) hp (prime_coprime_four hp hp2)
  convert hb using 1 <;> push_cast <;> ring

namespace DiagonalClassCountTests

theorem one_mod_four (N : Nat) :
    (((Finset.Icc 1 N).filter (fun a => a % 4 = 1 ∧ 25 ∣ a ^ 2 + 1)).card : Real) ≤
      (N : Real) / 50 + 2 := by
  convert card_diagonal_mod_four_real N 1 (p := 5) (by decide) (by decide) using 1 <;> norm_num

theorem exact_first_period :
    ((Finset.Icc 1 100).filter (fun a => a % 4 = 1 ∧ 25 ∣ a ^ 2 + 1)) = {57, 93} := by
  decide

end DiagonalClassCountTests

end JSP848
