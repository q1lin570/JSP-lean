import Mathlib.Data.Finset.Sort
import Mathlib.Order.Interval.Finset.Fin
import Mathlib.Data.Nat.Prime.Basic
import Mathlib.Algebra.Order.BigOperators.GroupWithZero.Finset
import Mathlib.Tactic

namespace JSP848

def largeFactorPrime (i : Nat) : Nat :=
  #[23, 29, 31, 37, 41, 43, 47, 53, 59, 61, 67, 71].getD i 1

def largeFactorProduct (k : Nat) : Nat := ∏ i ∈ Finset.range k, largeFactorPrime i

theorem largeFactorPrime_prefix_checked : ∀ i : Fin 12,
    ((Finset.range (largeFactorPrime i)).filter (fun p => p.Prime ∧ 23 ≤ p)).card ≤ i := by
  decide +kernel

theorem ordered_value_lower_of_prefix_count (P : Finset Nat) (Q : Nat → Prop)
    [DecidablePred Q] (hP : ∀ p ∈ P, Q p) (i : Fin P.card) (c : Nat)
    (hc : ((Finset.range c).filter Q).card ≤ i) : c ≤ P.orderEmbOfFin rfl i := by
  classical
  by_contra hn
  have hs : (Finset.Iic i).image (P.orderEmbOfFin rfl) ⊆ (Finset.range c).filter Q := by
    intro p hp
    obtain ⟨j, hj, rfl⟩ := Finset.mem_image.mp hp
    have hij := (P.orderEmbOfFin rfl).monotone (Finset.mem_Iic.mp hj)
    exact Finset.mem_filter.mpr ⟨Finset.mem_range.mpr (by omega),
      hP _ (P.orderEmbOfFin_mem rfl j)⟩
  have hsize : ((Finset.Iic i).image (P.orderEmbOfFin rfl)).card = i.val + 1 := by
    rw [Finset.card_image_of_injective _ (P.orderEmbOfFin rfl).injective]
    simp
  have hb := Finset.card_le_card hs
  rw [hsize] at hb
  omega

/-- A finite checked prime list bounds every set of large prime factors. -/
theorem largeFactorProduct_le (P : Finset Nat) (hP : ∀ p ∈ P, p.Prime ∧ 23 ≤ p)
    {k : Nat} (hk : k ≤ P.card) (hk12 : k ≤ 12) :
    largeFactorProduct k ≤ ∏ p ∈ P, p := by
  classical
  let f := P.orderEmbOfCardLe hk
  have hf : ∀ i : Fin k, f i ∈ P := fun i => P.orderEmbOfCardLe_mem hk i
  have hlow : ∀ i : Fin k, largeFactorPrime i ≤ f i := by
    intro i
    apply ordered_value_lower_of_prefix_count P (fun p => p.Prime ∧ 23 ≤ p) hP
      ⟨i, lt_of_lt_of_le i.isLt hk⟩ (largeFactorPrime i)
    exact largeFactorPrime_prefix_checked ⟨i, lt_of_lt_of_le i.isLt hk12⟩
  have hsub : Finset.univ.image f ⊆ P := by
    intro p hp
    obtain ⟨i, _, rfl⟩ := Finset.mem_image.mp hp
    exact hf i
  calc
    largeFactorProduct k = ∏ i : Fin k, largeFactorPrime i := by
      simp [largeFactorProduct, Fin.prod_univ_eq_prod_range]
    _ ≤ ∏ i : Fin k, f i := Finset.prod_le_prod (fun i _ => Nat.zero_le _) (fun i _ => hlow i)
    _ = ∏ p ∈ Finset.univ.image f, p := by
      rw [Finset.prod_image]
      exact fun _ _ _ _ h => f.injective h
    _ ≤ ∏ p ∈ P, p := Finset.prod_le_prod_of_subset_of_one_le' hsub
      (fun p hp _ => (hP p hp).1.one_le)

theorem largeFactorProduct_twelve_gt : 2 ^ 41 < largeFactorProduct 12 := by decide +kernel

theorem large_prime_factors_card_lt_twelve (P : Finset Nat)
    (hP : ∀ p ∈ P, p.Prime ∧ 23 ≤ p) (hprod : (∏ p ∈ P, p) ≤ 2 ^ 41) : P.card < 12 := by
  by_contra hn
  have hb := largeFactorProduct_le P hP (by omega : 12 ≤ P.card) (by rfl)
  have := largeFactorProduct_twelve_gt
  omega

namespace LargePrimeFactorProductTests

theorem two_factors : largeFactorProduct 2 ≤ 29 * 31 := by
  have h := largeFactorProduct_le ({29, 31} : Finset Nat)
    (by intro p hp; simp only [Finset.mem_insert, Finset.mem_singleton] at hp
        rcases hp with rfl | rfl <;> norm_num) (by decide : 2 ≤ ({29, 31} : Finset Nat).card)
    (by decide)
  simpa using h

theorem empty_product : largeFactorProduct 0 = 1 := rfl

end LargePrimeFactorProductTests

end JSP848
