import JSP848.LinearCongruenceCount
import Mathlib.Data.Nat.GCD.BigOperators

namespace JSP848

theorem prime_square_product_dvd_iff (F : Finset Nat) (n : Nat)
    (hF : ∀ p ∈ F, p.Prime) :
    (∏ p ∈ F, p ^ 2) ∣ n ↔ ∀ p ∈ F, p ^ 2 ∣ n := by
  classical
  revert hF
  induction F using Finset.induction_on with
  | empty => simp
  | @insert p F hpF ih =>
    intro hF
    have hp := hF p (Finset.mem_insert_self _ _)
    have hF' : ∀ t ∈ F, t.Prime := fun t ht => hF t (Finset.mem_insert_of_mem ht)
    have hc : Nat.Coprime (p ^ 2) (∏ t ∈ F, t ^ 2) := by
      apply Nat.coprime_prod_right_iff.mpr
      intro t ht
      exact ((Nat.coprime_primes hp (hF' t ht)).mpr (by
        intro he
        subst t
        exact hpF ht)).pow 2 2
    rw [Finset.prod_insert hpF]
    constructor
    · intro hd t ht
      rcases Finset.mem_insert.mp ht with he | ht
      · subst t
        exact (dvd_mul_right (p ^ 2) _).trans hd
      · exact (ih hF').mp ((dvd_mul_left (∏ t ∈ F, t ^ 2) _).trans hd) t ht
    · intro hd
      exact hc.mul_dvd_of_dvd_of_dvd (hd p (Finset.mem_insert_self _ _))
        ((ih hF').mpr (fun t ht => hd t (Finset.mem_insert_of_mem ht)))

theorem prime_square_intersection_error {N b q r : Nat} (hq : 0 < q) (hr : r < q)
    (F : Finset Nat) (hne : F.Nonempty)
    (hF : ∀ p ∈ F, p.Prime ∧ Nat.Coprime q (p ^ 2) ∧ ¬p ∣ b) :
    |(((Finset.Icc 1 N).filter
        (fun a => a % q = r ∧ ∀ p ∈ F, p ^ 2 ∣ a * b + 1)).card : Real) -
      (N : Real) / q * (∏ p ∈ F, 1 / (p : Real) ^ 2)| ≤ 1 := by
  have hpr : ∀ p ∈ F, p.Prime := fun p hp => (hF p hp).1
  have hm : 1 < ∏ p ∈ F, p ^ 2 := by
    obtain ⟨p, hp⟩ := hne
    have hpos : 0 < ∏ t ∈ F, t ^ 2 := Finset.prod_pos (fun t ht => pow_pos (hpr t ht).pos 2)
    have hle := Nat.le_of_dvd hpos (Finset.dvd_prod_of_mem (fun t : Nat => t ^ 2) hp)
    have := (hpr p hp).two_le
    nlinarith
  have hqm : Nat.Coprime q (∏ p ∈ F, p ^ 2) :=
    Nat.coprime_prod_right_iff.mpr (fun p hp => (hF p hp).2.1)
  have hmb : Nat.Coprime (∏ p ∈ F, p ^ 2) b := by
    apply Nat.coprime_prod_left_iff.mpr
    intro p hp
    exact ((hpr p hp).coprime_iff_not_dvd.mpr (hF p hp).2.2).pow_left 2
  have he := mixed_linear_card_error (N := N) hq hr hm hqm hmb
  have hf : (Finset.Icc 1 N).filter
      (fun a => a % q = r ∧ (∏ p ∈ F, p ^ 2) ∣ a * b + 1) =
      (Finset.Icc 1 N).filter (fun a => a % q = r ∧ ∀ p ∈ F, p ^ 2 ∣ a * b + 1) := by
    ext a
    simp only [Finset.mem_filter, prime_square_product_dvd_iff F _ hpr]
  rw [hf] at he
  have hden : (N : Real) / ((q : Real) * ((∏ p ∈ F, p ^ 2 : Nat) : Real)) =
      (N : Real) / q * (∏ p ∈ F, 1 / (p : Real) ^ 2) := by
    simp only [Nat.cast_prod, Nat.cast_pow, one_div, Finset.prod_inv_distrib]
    ring
  rwa [hden] at he

namespace PrimeSquareIntersectionsTests

theorem two_primes (N : Nat) :
    |(((Finset.Icc 1 N).filter
      (fun a => a % 25 = 7 ∧ ∀ p ∈ ({2, 3} : Finset Nat), p ^ 2 ∣ a * 7 + 1)).card : Real) -
      (N : Real) / 900| ≤ 1 := by
  have he := prime_square_intersection_error (N := N) (b := 7) (q := 25) (r := 7)
    (by decide) (by decide) {2, 3} (by decide) (by
      intro p hp
      simp only [Finset.mem_insert, Finset.mem_singleton] at hp
      rcases hp with rfl | rfl <;> norm_num)
  convert he using 1 <;> norm_num <;> ring

end PrimeSquareIntersectionsTests

end JSP848
