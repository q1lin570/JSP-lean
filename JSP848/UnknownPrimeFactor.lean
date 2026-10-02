import JSP848.RootFactorProfile
import JSP848.ModularSquareRootExact

namespace JSP848

theorem profile_unknown_prime {b : Nat} (hb : 0 < b)
    (hk : 0 < (profileLargeFactors b).card) :
    ∃ q ∈ profileLargeFactors b,
      (2 ^ min (b.factorization 2) 3 * (∏ p ∈ profileSmallFactors b, p)) *
        q ^ (profileLargeFactors b).card ≤ b := by
  have hne := Finset.card_pos.mp hk
  let q := (profileLargeFactors b).min' hne
  refine ⟨q, Finset.min'_mem _ hne, ?_⟩
  have hp : q ^ (profileLargeFactors b).card ≤ ∏ p ∈ profileLargeFactors b, p := by
    calc
      _ = ∏ _p ∈ profileLargeFactors b, q := by simp
      _ ≤ _ := Finset.prod_le_prod (fun _ _ => Nat.zero_le _) (fun p hp => Finset.min'_le _ p hp)
  have hd := Nat.le_of_dvd hb (profile_factor_product_dvd hb)
  obtain ⟨he, hdis⟩ := profile_factor_partition b
  rw [← he, Finset.prod_union hdis] at hd
  exact (Nat.mul_le_mul_left _ hp).trans (by simpa only [mul_assoc] using hd)

theorem profile_large_prime_coprime_divisor {b q : Nat}
    (hq : q ∈ profileLargeFactors b) (J : Finset Nat) (hJ : J ⊆ profileSmallFactors b) :
    Nat.Coprime (2 ^ min (b.factorization 2) 3 * (∏ p ∈ J, p)) q := by
  have hprime := (profile_large_factors_prime hq).1
  have hq2 : q ≠ 2 := by have := (profile_large_factors_prime hq).2; omega
  apply Nat.Coprime.mul_left
  · exact ((Nat.coprime_primes (by decide : Nat.Prime 2) hprime).mpr hq2.symm).pow_left _
  · apply Nat.coprime_prod_left_iff.mpr
    intro p hp
    have hsmall := hJ hp
    have hpprime := (profile_odd_factors_prime (Finset.mem_inter.mp hsmall).1).1
    apply (Nat.coprime_primes hpprime hprime).mpr
    intro he
    subst p
    exact (Finset.mem_sdiff.mp hq).2 (Finset.mem_inter.mp hsmall).2

theorem profile_large_prime_divisor {b q : Nat} (hb : 0 < b)
    (hq : q ∈ profileLargeFactors b) (J : Finset Nat) (hJ : J ⊆ profileSmallFactors b) :
    (2 ^ min (b.factorization 2) 3 * (∏ p ∈ J, p)) * q ∣ b := by
  have hs : J ⊆ profileOddFactors b := hJ.trans Finset.inter_subset_left
  have hd := Finset.prod_dvd_prod_of_subset _ _ (fun p : Nat => p) hs
  have hc := (mul_dvd_mul_left (2 ^ min (b.factorization 2) 3) hd).trans
    (profile_factor_product_dvd hb)
  have hqb := Nat.dvd_of_mem_primeFactors (Finset.mem_erase.mp (Finset.mem_sdiff.mp hq).1).2
  exact (profile_large_prime_coprime_divisor hq J hJ).mul_dvd_of_dvd_of_dvd hc hqb

theorem divisorDensity_odd_prime_le_half {p : Nat} (hp : p.Prime) (hp2 : p ≠ 2) :
    divisorDensity p ≤ (1 / 2 : Real) := by
  rw [divisorDensity_odd_prime hp hp2]
  have hp' : (0 : Real) < p := by exact_mod_cast hp.pos
  apply (div_le_iff₀ (by positivity : (0 : Real) < 2 * p)).mpr
  linarith

theorem divisorDensity_mul_odd_prime_le_half {c p : Nat} (hc : 0 < c)
    (hp : p.Prime) (hp2 : p ≠ 2) (hcp : Nat.Coprime c p) :
    divisorDensity (c * p) ≤ divisorDensity c / 2 := by
  rw [divisorDensity_mul hc hp.pos hcp]
  simpa only [div_eq_mul_inv, one_mul] using mul_le_mul_of_nonneg_left
    (divisorDensity_odd_prime_le_half hp hp2) (divisorDensity_nonneg c)

theorem divisorDensity_mul_odd_prime_remainder {c p : Nat} (hc : 0 < c)
    (hp : p.Prime) (hp2 : p ≠ 2) (hcp : Nat.Coprime c p) {Q : Real} (hQ : (p : Real) ≤ Q) :
    ((c * p : Nat) : Real) * divisorDensity (c * p) ≤
      (c : Real) * Q * (divisorDensity c / 2) := by
  have hd := divisorDensity_mul_odd_prime_le_half hc hp hp2 hcp
  calc
    _ ≤ ((c * p : Nat) : Real) * (divisorDensity c / 2) :=
      mul_le_mul_of_nonneg_left hd (Nat.cast_nonneg _)
    _ ≤ _ := by
      rw [Nat.cast_mul]
      exact mul_le_mul_of_nonneg_right (mul_le_mul_of_nonneg_left hQ (Nat.cast_nonneg c))
        (div_nonneg (divisorDensity_nonneg c) (by norm_num))

namespace UnknownPrimeFactorTests

theorem two_large_factors : ∃ q ∈ profileLargeFactors (23 * 29),
    (2 ^ min ((23 * 29 : Nat).factorization 2) 3 *
      (∏ p ∈ profileSmallFactors (23 * 29), p)) *
      q ^ (profileLargeFactors (23 * 29)).card ≤ 23 * 29 :=
  profile_unknown_prime (by decide) (by decide +kernel)

theorem density_extra_prime : divisorDensity (15 * 23) ≤ divisorDensity 15 / 2 :=
  divisorDensity_mul_odd_prime_le_half (by decide) (by decide) (by decide) (by decide)

end UnknownPrimeFactorTests

end JSP848
