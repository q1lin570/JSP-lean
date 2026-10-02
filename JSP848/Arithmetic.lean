import JSP848.Basic
import Mathlib.NumberTheory.LegendreSymbol.Basic
import Mathlib.Tactic.IntervalCases
import Mathlib.Tactic.Linarith
import Mathlib.Tactic.Positivity
import Mathlib.Tactic.NormNum.Prime

namespace JSP848

theorem prime_square_witness {n : ℕ} (hn : ¬ Squarefree n) :
    ∃ p : ℕ, p.Prime ∧ p ^ 2 ∣ n := by
  by_contra h
  apply hn
  rw [Nat.squarefree_iff_prime_squarefree]
  intro p hp hd
  exact h ⟨p, hp, by simpa only [pow_two] using hd⟩

theorem not_dvd_four_sq_add_one (a : ℕ) : ¬ 4 ∣ a * a + 1 := by
  have hlt := Nat.mod_lt a (by decide : 0 < 4)
  rw [Nat.dvd_iff_mod_eq_zero, Nat.add_mod, Nat.mul_mod]
  interval_cases a % 4 <;> norm_num

theorem dvd_25_sq_add_one_iff (a : ℕ) :
    25 ∣ a * a + 1 ↔ a % 25 = 7 ∨ a % 25 = 18 := by
  have hlt := Nat.mod_lt a (by decide : 0 < 25)
  rw [Nat.dvd_iff_mod_eq_zero, Nat.add_mod, Nat.mul_mod]
  interval_cases a % 25 <;> norm_num

theorem prime_le_of_sq_dvd_sq_add_one {p a : ℕ} (ha : 0 < a)
    (hd : p ^ 2 ∣ a * a + 1) : p ≤ a := by
  have hle : p ^ 2 ≤ a * a + 1 := Nat.le_of_dvd (by positivity) hd
  by_contra h
  have hpa : a + 1 ≤ p := by omega
  have := Nat.mul_le_mul hpa hpa
  nlinarith

theorem prime_mod_four_of_sq_dvd_sq_add_one {p a : ℕ} (hp : p.Prime)
    (hd : p ^ 2 ∣ a * a + 1) : p % 4 = 1 := by
  have hp2 : p ≠ 2 := by
    intro h
    subst p
    exact not_dvd_four_sq_add_one a (by simpa using hd)
  haveI : Fact p.Prime := ⟨hp⟩
  have hp_dvd : p ∣ a * a + 1 :=
    dvd_trans (by simp [pow_two]) hd
  have hz : (a : ZMod p) ^ 2 + 1 = 0 := by
    have := (ZMod.natCast_eq_zero_iff (a * a + 1) p).mpr hp_dvd
    simpa [pow_two] using this
  have hne3 : p % 4 ≠ 3 :=
    ZMod.mod_four_ne_three_of_sq_eq_neg_one (p := p)
      (y := (a : ZMod p)) (eq_neg_of_add_eq_zero_left hz)
  have hodd := (Nat.Prime.mod_two_eq_one_iff_ne_two hp).mpr hp2
  rcases Nat.odd_mod_four_iff.mp hodd with h | h
  · exact h
  · exact (hne3 h).elim

/-- Every diagonal witness is a prime no larger than the vertex itself. -/
theorem diagonal_witness_iff {a : ℕ} (ha : 0 < a) :
    ¬ Squarefree (a * a + 1) ↔
      ∃ p ≤ a, p.Prime ∧ p % 4 = 1 ∧ p ^ 2 ∣ a * a + 1 := by
  constructor
  · intro h
    obtain ⟨p, hp, hd⟩ := prime_square_witness h
    exact ⟨p, prime_le_of_sq_dvd_sq_add_one ha hd, hp,
      prime_mod_four_of_sq_dvd_sq_add_one hp hd, hd⟩
  · rintro ⟨p, _, hp, _, hd⟩ hsq
    have hu : IsUnit p := hsq p (by simpa only [pow_two] using hd)
    exact hp.ne_one (Nat.isUnit_iff.mp hu)

theorem exceptional_diagonal_witness {a : ℕ}
    (h : ¬ Squarefree (a * a + 1)) (ha7 : a % 25 ≠ 7) (ha18 : a % 25 ≠ 18) :
    ∃ p : ℕ, p.Prime ∧ 13 ≤ p ∧ p % 4 = 1 ∧ p ^ 2 ∣ a * a + 1 := by
  obtain ⟨p, hp, hd⟩ := prime_square_witness h
  have hm := prime_mod_four_of_sq_dvd_sq_add_one hp hd
  have hp5 : p ≠ 5 := by
    intro heq
    subst p
    have h25 : 25 ∣ a * a + 1 := by simpa using hd
    exact (dvd_25_sq_add_one_iff a).mp h25 |>.elim ha7 ha18
  refine ⟨p, hp, ?_, hm, hd⟩
  by_contra hsmall
  have hp_lt : p < 13 := by omega
  have hp_options : p = 1 ∨ p = 9 := by omega
  rcases hp_options with rfl | rfl <;> norm_num at hp

end JSP848
