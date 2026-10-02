import JSP848.TwoPowerSquareRoots
import Mathlib.Data.Nat.Factorization.Basic
import Mathlib.Data.Nat.GCD.BigOperators
import Mathlib.Algebra.Order.BigOperators.GroupWithZero.Finset

namespace JSP848

theorem squareRootMultiplicity_prod_prime_powers_le (S : Finset Nat) (e : Nat → Nat) :
    (∀ p ∈ S, p.Prime) →
    squareRootMultiplicity (∏ p ∈ S, p ^ e p) ≤
      ∏ p ∈ S, squareRootMultiplicity (p ^ e p) := by
  classical
  induction S using Finset.induction_on with
  | empty => intro _; change squareRootMultiplicity 1 ≤ 1; decide
  | @insert p S hp ih =>
      intro hP
      have hprime := hP p (Finset.mem_insert_self p S)
      have hS : ∀ q ∈ S, q.Prime := fun q hq => hP q (Finset.mem_insert_of_mem hq)
      have hpos : 0 < ∏ q ∈ S, q ^ e q :=
        Finset.prod_pos (fun q hq => pow_pos (hS q hq).pos _)
      have hc : Nat.Coprime (p ^ e p) (∏ q ∈ S, q ^ e q) := by
        apply Nat.coprime_prod_right_iff.mpr
        intro q hq
        apply Nat.Coprime.pow
        exact (Nat.coprime_primes hprime (hS q hq)).mpr (by
          intro he
          exact hp (he ▸ hq))
      rw [Finset.prod_insert hp, Finset.prod_insert hp]
      exact (squareRootMultiplicity_mul_le (pow_pos hprime.pos _) hpos hc).trans
        (Nat.mul_le_mul_left _ (ih hS))

def smallRootPrimes : Finset Nat := {2, 3, 5, 7, 11, 13, 17, 19, 23, 29, 31}

noncomputable def rootPrimeWeight (p : Nat) : Real :=
  if p = 2 then 128 else max 1 (32 / (p : Real))

theorem rootPrimeWeight_one_le (p : Nat) : 1 ≤ rootPrimeWeight p := by
  by_cases hp : p = 2
  · simp [rootPrimeWeight, hp]
  · simp only [rootPrimeWeight, if_neg hp]
    exact le_max_left _ _

theorem rootPrimeWeight_of_not_mem {p : Nat} (hp : p.Prime) (hP : p ∉ smallRootPrimes) :
    rootPrimeWeight p = 1 := by
  have hs : (Finset.range 32).filter Nat.Prime ⊆ smallRootPrimes := by decide
  have hlo : 32 ≤ p := by
    by_contra h
    exact hP (hs (Finset.mem_filter.mpr ⟨Finset.mem_range.mpr (by omega), hp⟩))
  have hp2 : p ≠ 2 := by omega
  rw [rootPrimeWeight, if_neg hp2, max_eq_left]
  apply (div_le_iff₀ (show (0 : Real) < p by exact_mod_cast hp.pos)).mpr
  exact_mod_cast (by simpa using hlo : 32 ≤ 1 * p)

theorem prime_power_root_fifth_le {p : Nat} (hp : p.Prime) (k : Nat) :
    (squareRootMultiplicity (p ^ k) : Real) ^ 5 ≤ rootPrimeWeight p * (p : Real) ^ k := by
  by_cases hp2 : p = 2
  · subst p
    simpa only [rootPrimeWeight, if_pos rfl, Nat.cast_ofNat, Nat.cast_pow,
      Nat.cast_mul] using (show (squareRootMultiplicity (2 ^ k) : Real) ^ 5 ≤
        (128 : Real) * 2 ^ k by exact_mod_cast squareRootMultiplicity_two_power_fifth k)
  by_cases hk : k = 0
  · subst k
    simpa only [pow_zero, mul_one, ModularSquareRootsTests.modulus_one, Nat.cast_one,
      one_pow] using
      rootPrimeWeight_one_le p
  have hr : (squareRootMultiplicity (p ^ k) : Real) ^ 5 ≤ 32 := by
    exact_mod_cast Nat.pow_le_pow_left (squareRootMultiplicity_odd_prime_power_le hp hp2 k) 5
  have hweight : 32 / (p : Real) ≤ rootPrimeWeight p := by
    simp only [rootPrimeWeight, if_neg hp2]
    exact le_max_right _ _
  have hm : (32 : Real) ≤ rootPrimeWeight p * p :=
    (div_le_iff₀ (show (0 : Real) < p by exact_mod_cast hp.pos)).mp hweight
  have hpow : (p : Real) ≤ (p : Real) ^ k := by
    exact_mod_cast le_self_pow hp.one_le hk
  exact hr.trans (hm.trans (mul_le_mul_of_nonneg_left hpow
    ((by norm_num : (0 : Real) ≤ 1).trans (rootPrimeWeight_one_le p))))

theorem rootPrimeWeight_product_checked :
    (∏ p ∈ smallRootPrimes, rootPrimeWeight p) ≤ (18 : Real) ^ 5 := by
  norm_num [smallRootPrimes, rootPrimeWeight]

theorem rootPrimeWeight_product_le (P : Finset Nat) (hP : ∀ p ∈ P, p.Prime) :
    (∏ p ∈ P, rootPrimeWeight p) ≤ (18 : Real) ^ 5 := by
  have he : (∏ p ∈ P, rootPrimeWeight p) = ∏ p ∈ P ∩ smallRootPrimes, rootPrimeWeight p := by
    symm
    apply Finset.prod_subset Finset.inter_subset_left
    intro p hp hn
    apply rootPrimeWeight_of_not_mem (hP p hp)
    intro hs
    exact hn (Finset.mem_inter.mpr ⟨hp, hs⟩)
  rw [he]
  have hs : (1 : Real) ≤ ∏ p ∈ smallRootPrimes \ (P ∩ smallRootPrimes), rootPrimeWeight p :=
    Finset.one_le_prod _ rootPrimeWeight_one_le
  have hn : 0 ≤ ∏ p ∈ P ∩ smallRootPrimes, rootPrimeWeight p :=
    Finset.prod_nonneg (fun p _ => (by norm_num : (0 : Real) ≤ 1).trans
      (rootPrimeWeight_one_le p))
  have hm := mul_le_mul_of_nonneg_right hs hn
  rw [one_mul, Finset.prod_sdiff Finset.inter_subset_right] at hm
  exact hm.trans rootPrimeWeight_product_checked

theorem squareRootMultiplicity_fifth_le {b : Nat} (hb : 0 < b) :
    (squareRootMultiplicity b : Real) ^ 5 ≤ (18 : Real) ^ 5 * b := by
  have he : (∏ p ∈ b.primeFactors, p ^ b.factorization p) = b :=
    Nat.factorization_prod_pow_eq_self hb.ne'
  have hn := squareRootMultiplicity_prod_prime_powers_le b.primeFactors b.factorization
    (fun p hp => Nat.prime_of_mem_primeFactors hp)
  rw [he] at hn
  have hprod : (squareRootMultiplicity b : Real) ≤
      ∏ p ∈ b.primeFactors, (squareRootMultiplicity (p ^ b.factorization p) : Real) := by
    exact_mod_cast hn
  calc
    _ ≤ (∏ p ∈ b.primeFactors, (squareRootMultiplicity (p ^ b.factorization p) : Real)) ^ 5 :=
      pow_le_pow_left₀ (Nat.cast_nonneg _) hprod _
    _ = ∏ p ∈ b.primeFactors, (squareRootMultiplicity (p ^ b.factorization p) : Real) ^ 5 :=
      (Finset.prod_pow _ _ _).symm
    _ ≤ ∏ p ∈ b.primeFactors, rootPrimeWeight p * (p : Real) ^ b.factorization p := by
      apply Finset.prod_le_prod (fun p hp => by positivity)
      exact fun p hp => prime_power_root_fifth_le (Nat.prime_of_mem_primeFactors hp) _
    _ = (∏ p ∈ b.primeFactors, rootPrimeWeight p) * b := by
      rw [Finset.prod_mul_distrib]
      congr 1
      exact_mod_cast he
    _ ≤ (18 : Real) ^ 5 * b := mul_le_mul_of_nonneg_right
      (rootPrimeWeight_product_le _ (fun p hp => Nat.prime_of_mem_primeFactors hp))
      (Nat.cast_nonneg _)

end JSP848
