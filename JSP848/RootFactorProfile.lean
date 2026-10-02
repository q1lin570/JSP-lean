import JSP848.UniformSquareRootBound
import JSP848.LargePrimeFactorProduct

namespace JSP848

def profileSmallPrimes : Finset Nat := {3, 5, 7, 11, 13, 17, 19}

def profileOddFactors (b : Nat) : Finset Nat := b.primeFactors.erase 2

def profileSmallFactors (b : Nat) : Finset Nat := profileOddFactors b ∩ profileSmallPrimes

def profileLargeFactors (b : Nat) : Finset Nat := profileOddFactors b \ profileSmallPrimes

def profileTwoRoots (k : Nat) : Nat := if k ≤ 1 then 1 else if k = 2 then 2 else 4

theorem two_power_profile_bound (k : Nat) :
    squareRootMultiplicity (2 ^ k) ≤ profileTwoRoots (min k 3) := by
  rcases k with _ | _ | _ | k
  · change squareRootMultiplicity 1 ≤ 1; decide
  · change squareRootMultiplicity 2 ≤ 1; decide
  · change squareRootMultiplicity 4 ≤ 2; decide
  · have he : min (k + 3) 3 = 3 := Nat.min_eq_right (by omega)
    simpa only [he, profileTwoRoots, show ¬ (3 : Nat) ≤ 1 by decide,
      show (3 : Nat) ≠ 2 by decide, if_false] using squareRootMultiplicity_two_power_le (k + 3)

theorem prime_power_product_with_two {b : Nat} (hb : 0 < b) :
    (∏ p ∈ insert 2 (profileOddFactors b), p ^ b.factorization p) = b := by
  have he := Nat.factorization_prod_pow_eq_self hb.ne'
  by_cases h2 : 2 ∈ b.primeFactors
  · simpa only [profileOddFactors, Finset.insert_erase h2] using he
  · have hz : b.factorization 2 = 0 := by
      apply Finsupp.notMem_support_iff.mp
      simpa only [Nat.support_factorization] using h2
    simpa only [profileOddFactors, Finset.erase_eq_of_notMem h2, Finset.prod_insert h2,
      hz, pow_zero, one_mul] using he

theorem profile_odd_factors_prime {b p : Nat} (hp : p ∈ profileOddFactors b) :
    p.Prime ∧ p ≠ 2 := by
  obtain ⟨h2, hp⟩ := Finset.mem_erase.mp hp
  exact ⟨Nat.prime_of_mem_primeFactors hp, h2⟩

theorem profile_root_count_bound {b : Nat} (hb : 0 < b) :
    squareRootMultiplicity b ≤ profileTwoRoots (min (b.factorization 2) 3) *
      2 ^ (profileOddFactors b).card := by
  have hp : ∀ p ∈ insert 2 (profileOddFactors b), p.Prime := by
    intro p hp
    rcases Finset.mem_insert.mp hp with rfl | hp
    · decide
    · exact (profile_odd_factors_prime hp).1
  have h := squareRootMultiplicity_prod_prime_powers_le _ b.factorization hp
  rw [prime_power_product_with_two hb,
    Finset.prod_insert (show 2 ∉ profileOddFactors b by simp [profileOddFactors])] at h
  have ht := two_power_profile_bound (b.factorization 2)
  have ho : (∏ p ∈ profileOddFactors b, squareRootMultiplicity (p ^ b.factorization p)) ≤
      2 ^ (profileOddFactors b).card := by
    calc
      _ ≤ ∏ _p ∈ profileOddFactors b, 2 := by
        apply Finset.prod_le_prod (fun _ _ => Nat.zero_le _)
        intro p hp
        exact squareRootMultiplicity_odd_prime_power_le (profile_odd_factors_prime hp).1
          (profile_odd_factors_prime hp).2 _
      _ = _ := by simp
  exact h.trans (Nat.mul_le_mul ht ho)

theorem profile_factor_product_dvd {b : Nat} (hb : 0 < b) :
    2 ^ min (b.factorization 2) 3 * (∏ p ∈ profileOddFactors b, p) ∣ b := by
  let w : Nat → Nat := fun p => if p = 2 then 2 ^ min (b.factorization 2) 3 else p
  have hw : ∀ p ∈ insert 2 (profileOddFactors b), w p ∣ p ^ b.factorization p := by
    intro p hp
    by_cases h2 : p = 2
    · subst p
      exact pow_dvd_pow 2 (Nat.min_le_left _ _)
    · have hm : p ∈ b.primeFactors :=
        (Finset.mem_erase.mp ((Finset.mem_insert.mp hp).resolve_left h2)).2
      have hprime := Nat.prime_of_mem_primeFactors hm
      have hk := hprime.factorization_pos_of_dvd hb.ne' (Nat.dvd_of_mem_primeFactors hm)
      simpa only [w, if_neg h2] using dvd_pow_self p hk.ne'
  have hd := Finset.prod_dvd_prod_of_dvd w (fun p => p ^ b.factorization p) hw
  rw [prime_power_product_with_two hb] at hd
  have he : (∏ p ∈ insert 2 (profileOddFactors b), w p) =
      2 ^ min (b.factorization 2) 3 * (∏ p ∈ profileOddFactors b, p) := by
    rw [Finset.prod_insert (show 2 ∉ profileOddFactors b by simp [profileOddFactors])]
    simp only [w, if_pos rfl]
    congr 1
    apply Finset.prod_congr rfl
    intro p hp
    simp only [if_neg (profile_odd_factors_prime hp).2]
  rwa [he] at hd

theorem profile_factor_partition (b : Nat) :
    profileSmallFactors b ∪ profileLargeFactors b = profileOddFactors b ∧
    Disjoint (profileSmallFactors b) (profileLargeFactors b) := by
  constructor
  · ext p
    simp [profileSmallFactors, profileLargeFactors]
    tauto
  · apply Finset.disjoint_left.mpr
    intro p hp hq
    exact (Finset.mem_sdiff.mp hq).2 (Finset.mem_inter.mp hp).2

theorem profile_large_factors_prime {b p : Nat} (hp : p ∈ profileLargeFactors b) :
    p.Prime ∧ 23 ≤ p := by
  obtain ⟨ho, hs⟩ := Finset.mem_sdiff.mp hp
  obtain ⟨hprime, h2⟩ := profile_odd_factors_prime ho
  refine ⟨hprime, ?_⟩
  have hsmall : ∀ p ∈ Finset.range 23, p.Prime → p = 2 ∨ p ∈ profileSmallPrimes := by
    decide +kernel
  by_contra hn
  exact (hsmall p (Finset.mem_range.mpr (by omega)) hprime).elim h2 hs

theorem profile_large_count_lt_twelve {b : Nat} (hb : 0 < b) (hmax : b ≤ 2 ^ 41) :
    (profileLargeFactors b).card < 12 := by
  apply large_prime_factors_card_lt_twelve _ (fun p hp => profile_large_factors_prime hp)
  have hs : profileLargeFactors b ⊆ b.primeFactors := by
    intro p hp
    exact (Finset.mem_erase.mp (Finset.mem_sdiff.mp hp).1).2
  have hd := (Finset.prod_dvd_prod_of_subset _ _ (fun p : Nat => p) hs).trans
    (Nat.prod_primeFactors_dvd b)
  exact (Nat.le_of_dvd hb hd).trans hmax

theorem profile_lower_bound {b : Nat} (hb : 0 < b) (hmax : b ≤ 2 ^ 41) :
    2 ^ min (b.factorization 2) 3 * (∏ p ∈ profileSmallFactors b, p) *
      largeFactorProduct (profileLargeFactors b).card ≤ b := by
  have hl := largeFactorProduct_le (profileLargeFactors b)
    (fun p hp => profile_large_factors_prime hp) (by rfl)
    (profile_large_count_lt_twelve hb hmax).le
  have hm := Nat.mul_le_mul_left
    (2 ^ min (b.factorization 2) 3 * (∏ p ∈ profileSmallFactors b, p)) hl
  have hd := Nat.le_of_dvd hb (profile_factor_product_dvd hb)
  obtain ⟨he, hdis⟩ := profile_factor_partition b
  rw [← he, Finset.prod_union hdis] at hd
  simpa only [mul_assoc] using hm.trans (by simpa only [mul_assoc] using hd)

theorem profile_root_count_partitioned {b : Nat} (hb : 0 < b) :
    squareRootMultiplicity b ≤ profileTwoRoots (min (b.factorization 2) 3) *
      2 ^ ((profileSmallFactors b).card + (profileLargeFactors b).card) := by
  have h := profile_root_count_bound hb
  obtain ⟨he, hdis⟩ := profile_factor_partition b
  rwa [← he, Finset.card_union_of_disjoint hdis] at h

end JSP848
