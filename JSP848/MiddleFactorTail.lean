import JSP848.MiddleTailEndpoint
import JSP848.FactorWheelDensity

namespace JSP848

def factorProfileBase (v : FactorProfile) : Nat :=
  2 ^ v.1 * (∏ p ∈ v.2.1, p)

def factorProfileWheel (v : FactorProfile) (J : Finset Nat) : Nat :=
  2 ^ v.1 * (∏ p ∈ J, p)

def factorProfileWheelDensity (v : FactorProfile) (J : Finset Nat) : Rat :=
  (1 / (2 : Rat) ^ v.1) * ∏ p ∈ J, ((p : Rat) - 1) / (2 * p)

theorem canonical_wheel_pos {b : Nat} (J : Finset Nat)
    (hJ : J ⊆ (canonicalFactorProfile b).2.1) :
    0 < factorProfileWheel (canonicalFactorProfile b) J := by
  apply Nat.mul_pos (pow_pos (by decide) _)
  apply Finset.prod_pos
  intro p hp
  exact (profile_odd_factors_prime (Finset.mem_inter.mp (hJ hp)).1).1.pos

theorem canonical_wheel_density {b : Nat} (J : Finset Nat)
    (hJ : J ⊆ (canonicalFactorProfile b).2.1) :
    divisorDensity (factorProfileWheel (canonicalFactorProfile b) J) =
      (factorProfileWheelDensity (canonicalFactorProfile b) J : Real) := by
  let j : Fin 4 := ⟨(canonicalFactorProfile b).1, by
    simp only [canonicalFactorProfile]
    omega⟩
  have hp : ∀ p ∈ J, p.Prime ∧ p ≠ 2 := by
    intro p hp
    exact profile_odd_factors_prime (Finset.mem_inter.mp (hJ hp)).1
  have h := divisorDensity_wheel j J hp
  unfold factorProfileWheel factorProfileWheelDensity
  push_cast
  exact h

theorem canonical_plain_tail_endpoint {N b : Nat} {u lo r : Real}
    (hb : 0 < b) (hbN : b ≤ N) (hlo : 0 < lo) (hlu : lo ≤ u)
    (hr : 0 < r) (hN : (N : Real) = u ^ 3)
    (A : Finset Nat) (hA : A ⊆ Finset.Icc 1 N)
    (hw : ∀ a ∈ A, ∃ p : Nat, r * u ^ 2 < (p : Real) ∧ p ^ 2 ∣ a * b + 1) :
    (A.card : Real) ≤
      ((factorProfileRoots (canonicalFactorProfile b) : Real) * cubicMainRatio lo r) * N :=
  large_off_diagonal_endpoint hb hbN hlo hlu hr hN
    (by exact_mod_cast canonicalFactorProfile_roots hb) A hA hw

theorem canonical_wheel_tail_endpoint {N b : Nat} {u lo r sqrtUpper : Real}
    (hb : 0 < b) (hbN : b ≤ N) (hmax : N ≤ 2 ^ 41)
    (J : Finset Nat) (hJ : J ⊆ (canonicalFactorProfile b).2.1)
    (hl : 0 < factorProfileLower (canonicalFactorProfile b))
    (hlo : 0 < lo) (hlu : lo ≤ u) (hr : 0 < r) (hN : (N : Real) = u ^ 3)
    (hsqrt0 : 0 ≤ sqrtUpper)
    (hsqrt : (lo ^ 3 + 1) / factorProfileLower (canonicalFactorProfile b) ≤ sqrtUpper ^ 2)
    (A : Finset Nat) (hA : A ⊆ Finset.Icc 1 N)
    (hw : ∀ a ∈ A, ∃ p : Nat, r * u ^ 2 < (p : Real) ∧ p ^ 2 ∣ a * b + 1) :
    (A.card : Real) ≤
      ((factorProfileRoots (canonicalFactorProfile b) : Real) *
        (factorProfileWheelDensity (canonicalFactorProfile b) J : Real) * cubicMainRatio lo r +
      (factorProfileRoots (canonicalFactorProfile b) : Real) *
        ((factorProfileWheel (canonicalFactorProfile b) J : Real) *
          (factorProfileWheelDensity (canonicalFactorProfile b) J : Real)) *
          ((2 * sqrtUpper + 1) / lo ^ 3)) * N := by
  have h := large_divisor_off_diagonal_endpoint
    (roots := factorProfileRoots (canonicalFactorProfile b)) (canonical_wheel_pos J hJ)
    (canonicalFactorProfile_divisor hb J hJ) hl
    (canonicalFactorProfile_lower hb hbN hmax) hbN hlo hlu hr hN
    (by exact_mod_cast canonicalFactorProfile_roots hb) hsqrt0 hsqrt A hA hw
  rw [canonical_wheel_density J hJ] at h
  exact h

/-- The unknown prime is obtained from the actual multiplier, not supplied by a generator. -/
theorem canonical_unknown_tail_endpoint {N b : Nat}
    {u lo r sqrtUpper firstRoot secondRoot : Real}
    (hb : 0 < b) (hbN : b ≤ N) (hmax : N ≤ 2 ^ 41)
    (J : Finset Nat) (hJ : J ⊆ (canonicalFactorProfile b).2.1)
    (hk : 2 ≤ (canonicalFactorProfile b).2.2)
    (hl : 0 < factorProfileLower (canonicalFactorProfile b))
    (hlo : 0 < lo) (hlu : lo ≤ u) (hr : 0 < r) (hN : (N : Real) = u ^ 3)
    (hsqrt0 : 0 ≤ sqrtUpper) (hfirst0 : 0 ≤ firstRoot) (hsecond0 : 0 ≤ secondRoot)
    (hsqrt : (lo ^ 3 + 1) / factorProfileLower (canonicalFactorProfile b) ≤ sqrtUpper ^ 2)
    (hfirst : (factorProfileLower (canonicalFactorProfile b) : Real) /
      factorProfileBase (canonicalFactorProfile b) ≤ firstRoot ^ (canonicalFactorProfile b).2.2)
    (hsecond : lo ^ 3 / factorProfileBase (canonicalFactorProfile b) ≤
      secondRoot ^ (canonicalFactorProfile b).2.2)
    (A : Finset Nat) (hA : A ⊆ Finset.Icc 1 N)
    (hw : ∀ a ∈ A, ∃ p : Nat, r * u ^ 2 < (p : Real) ∧ p ^ 2 ∣ a * b + 1) :
    (A.card : Real) ≤
      (((factorProfileRoots (canonicalFactorProfile b) : Real) *
          (factorProfileWheelDensity (canonicalFactorProfile b) J : Real) / 2) *
            cubicMainRatio lo r +
        ((factorProfileRoots (canonicalFactorProfile b) : Real) *
          (factorProfileWheelDensity (canonicalFactorProfile b) J : Real) / 2) *
          factorProfileWheel (canonicalFactorProfile b) J *
            ((2 * sqrtUpper * firstRoot + secondRoot) / lo ^ 3)) * N := by
  have hk' : 0 < (profileLargeFactors b).card := by
    change 2 ≤ (profileLargeFactors b).card at hk
    omega
  obtain ⟨q, hq, hprod⟩ := profile_unknown_prime hb hk'
  have hp := profile_large_factors_prime hq
  have hq2 : q ≠ 2 := by omega
  have hbase : 0 < factorProfileBase (canonicalFactorProfile b) :=
    canonical_wheel_pos _ (Finset.Subset.refl _)
  have h := large_unknown_prime_off_diagonal_endpoint
    (roots := factorProfileRoots (canonicalFactorProfile b)) (canonical_wheel_pos J hJ)
    hp.1 hq2 (profile_large_prime_coprime_divisor hq J hJ)
    (profile_large_prime_divisor hb hq J hJ) hbase hk hl
    (canonicalFactorProfile_lower hb hbN hmax) hbN hprod hlo hlu hr hN
    (by exact_mod_cast canonicalFactorProfile_roots hb)
    hsqrt0 hfirst0 hsecond0 hsqrt hfirst hsecond A hA hw
  rw [canonical_wheel_density J hJ] at h
  exact h

end JSP848
