import JSP848.ModularSquareRootExact
import JSP848.FiniteFactorProfiles

namespace JSP848

theorem divisorDensity_one : divisorDensity 1 = 1 := by
  unfold divisorDensity
  have hr : squareRootMultiplicity 1 = 1 := by decide
  simp [hr]

theorem divisorDensity_prod_odd_primes (J : Finset Nat)
    (hJ : ∀ p ∈ J, p.Prime ∧ p ≠ 2) :
    divisorDensity (∏ p ∈ J, p) = ∏ p ∈ J, ((p : Real) - 1) / (2 * p) := by
  classical
  induction J using Finset.induction_on with
  | empty => simp [divisorDensity_one]
  | @insert p J hp ih =>
      have hprime := hJ p (Finset.mem_insert_self _ _)
      have hsub : ∀ q ∈ J, q.Prime ∧ q ≠ 2 := fun q hq => hJ q (Finset.mem_insert_of_mem hq)
      have hpos : 0 < ∏ q ∈ J, q := Finset.prod_pos (fun q hq => (hsub q hq).1.pos)
      have hcop : Nat.Coprime p (∏ q ∈ J, q) := by
        apply Nat.coprime_prod_right_iff.mpr
        intro q hq
        apply (Nat.coprime_primes hprime.1 (hsub q hq).1).mpr
        intro he
        exact hp (he ▸ hq)
      rw [Finset.prod_insert hp, Finset.prod_insert hp,
        divisorDensity_mul hprime.1.pos hpos hcop,
        divisorDensity_odd_prime hprime.1 hprime.2, ih hsub]

theorem divisorDensity_small_two_power (j : Fin 4) :
    divisorDensity (2 ^ j.val) = 1 / (2 : Real) ^ j.val := by
  have h0 : squareRootMultiplicity 1 = 1 := by decide
  have h1 : squareRootMultiplicity 2 = 1 := by decide
  have h2 : squareRootMultiplicity 4 = 2 := by decide
  have h3 : squareRootMultiplicity 8 = 4 := by decide
  have hphi4 : Nat.totient 4 = 2 := by decide
  have hphi8 : Nat.totient 8 = 4 := by decide
  fin_cases j <;> norm_num [divisorDensity, h0, h1, h2, h3, hphi4, hphi8]

theorem divisorDensity_wheel (j : Fin 4) (J : Finset Nat)
    (hJ : ∀ p ∈ J, p.Prime ∧ p ≠ 2) :
    divisorDensity (2 ^ j.val * (∏ p ∈ J, p)) =
      (1 / (2 : Real) ^ j.val) * (∏ p ∈ J, ((p : Real) - 1) / (2 * p)) := by
  have hpos : 0 < ∏ p ∈ J, p := Finset.prod_pos (fun p hp => (hJ p hp).1.pos)
  have hcop : Nat.Coprime (2 ^ j.val) (∏ p ∈ J, p) := by
    apply Nat.coprime_prod_right_iff.mpr
    intro p hp
    exact ((Nat.coprime_primes (by decide : Nat.Prime 2) (hJ p hp).1).mpr
      (hJ p hp).2.symm).pow_left _
  rw [divisorDensity_mul (pow_pos (by decide : 0 < 2) _) hpos hcop,
    divisorDensity_small_two_power, divisorDensity_prod_odd_primes J hJ]

namespace FactorWheelDensityTests

theorem full_two_part : divisorDensity (8 * (3 * 5)) = (1 / 60 : Real) := by
  have he : (∏ p ∈ ({3, 5} : Finset Nat), p) = 3 * 5 := by decide
  have h := divisorDensity_wheel (3 : Fin 4) {3, 5} (by
    intro p hp
    simp only [Finset.mem_insert, Finset.mem_singleton] at hp
    rcases hp with rfl | rfl <;> norm_num)
  norm_num [he] at h
  exact h

theorem empty_odd_part : divisorDensity (2 ^ 2 * (∏ p ∈ (∅ : Finset Nat), p)) =
    (1 / 4 : Real) := by
  convert divisorDensity_wheel (2 : Fin 4) ∅ (by simp) using 1 <;> norm_num

end FactorWheelDensityTests

end JSP848
