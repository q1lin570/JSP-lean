import JSP848.ProgressionRounding
import Mathlib.Data.ZMod.Basic
import Mathlib.Data.Nat.ChineseRemainder

namespace JSP848

theorem exists_positive_linear_residue {m b : Nat} (hm : 1 < m) (hc : Nat.Coprime m b) :
    ∃ u : Nat, 0 < u ∧ u < m ∧ m ∣ u * b + 1 := by
  haveI : NeZero m := ⟨by omega⟩
  let z : ZMod m := -(b : ZMod m)⁻¹
  have hd : m ∣ z.val * b + 1 := by
    apply (ZMod.natCast_eq_zero_iff _ _).mp
    rw [Nat.cast_add, Nat.cast_mul, ZMod.natCast_zmod_val, Nat.cast_one]
    dsimp [z]
    rw [neg_mul, mul_comm ((b : ZMod m)⁻¹), ZMod.coe_mul_inv_eq_one b hc.symm]
    ring
  refine ⟨z.val, ?_, z.val_lt, hd⟩
  by_contra h
  have hz : z.val = 0 := by omega
  have h1 : m ∣ 1 := by simpa only [hz, zero_mul, zero_add] using hd
  have := Nat.le_of_dvd (by decide : 0 < 1) h1
  omega

theorem mixed_linear_residue {q m b r : Nat} (hq : 0 < q) (hr : r < q)
    (hm : 1 < m) (hqm : Nat.Coprime q m) (hmb : Nat.Coprime m b) :
    ∃ t : Nat, 0 < t ∧ t < q * m ∧
      ∀ a : Nat, (a % q = r ∧ m ∣ a * b + 1) ↔ a % (q * m) = t := by
  obtain ⟨u, _, hu, hud⟩ := exists_positive_linear_residue hm hmb
  let t : Nat := Nat.chineseRemainder hqm r u
  have ht : t < q * m := Nat.chineseRemainder_lt_mul hqm r u hq.ne' (by omega)
  have htq : t % q = r := by
    have he := (Nat.chineseRemainder hqm r u).property.1
    simpa only [Nat.ModEq, Nat.mod_eq_of_lt hr] using he
  have htd : m ∣ t * b + 1 :=
    (((Nat.chineseRemainder hqm r u).property.2.mul_right b).add_right 1).dvd_iff dvd_rfl |>.mpr hud
  have ht0 : 0 < t := by
    by_contra hn
    have hz : t = 0 := by omega
    have h1 : m ∣ 1 := by simpa only [hz, zero_mul, zero_add] using htd
    have := Nat.le_of_dvd (by decide : 0 < 1) h1
    omega
  refine ⟨t, ht0, ht, ?_⟩
  intro a
  constructor
  · rintro ⟨haq, had⟩
    have he : Nat.ModEq (q * m) a t := (Nat.modEq_and_modEq_iff_modEq_mul hqm).mp
      ⟨haq.trans htq.symm, off_diagonal_modeq had htd⟩
    simpa only [Nat.ModEq, Nat.mod_eq_of_lt ht] using he
  · intro ha
    have he : Nat.ModEq (q * m) a t := by
      simpa only [Nat.ModEq, Nat.mod_eq_of_lt ht] using ha
    have heq := he.of_dvd (dvd_mul_right q m)
    have hem := he.of_dvd (dvd_mul_left m q)
    exact ⟨(show a % q = t % q from heq).trans htq,
      ((hem.mul_right b).add_right 1).dvd_iff dvd_rfl |>.mpr htd⟩

theorem mixed_linear_card_error {N q m b r : Nat} (hq : 0 < q) (hr : r < q)
    (hm : 1 < m) (hqm : Nat.Coprime q m) (hmb : Nat.Coprime m b) :
    |(((Finset.Icc 1 N).filter (fun a => a % q = r ∧ m ∣ a * b + 1)).card : Real) -
      (N : Real) / ((q : Real) * m)| ≤ 1 := by
  obtain ⟨t, ht0, ht, he⟩ := mixed_linear_residue hq hr hm hqm hmb
  have hf : (Finset.Icc 1 N).filter (fun a => a % q = r ∧ m ∣ a * b + 1) =
      (Finset.Icc 1 N).filter (fun a => a % (q * m) = t) := by
    ext a
    simp only [Finset.mem_filter, he]
  rw [hf]
  simpa only [Nat.cast_mul] using nonzero_residue_card_error (N := N) ht0 ht

namespace LinearCongruenceCountTests

theorem fixed_base_and_square (N : Nat) :
    |(((Finset.Icc 1 N).filter (fun a => a % 25 = 7 ∧ 9 ∣ a * 2 + 1)).card : Real) -
      (N : Real) / 225| ≤ 1 := by
  convert mixed_linear_card_error (N := N) (q := 25) (r := 7) (m := 9) (b := 2)
    (by decide) (by decide) (by decide) (by decide) (by decide) using 1 <;> norm_num

end LinearCongruenceCountTests

end JSP848
