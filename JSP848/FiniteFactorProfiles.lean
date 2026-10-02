import JSP848.RootFactorProfile

set_option maxRecDepth 100000

namespace JSP848

abbrev FactorProfile := Nat × Finset Nat × Nat

def factorProfileLower (v : FactorProfile) : Nat :=
  2 ^ v.1 * (∏ p ∈ v.2.1, p) * largeFactorProduct v.2.2

def factorProfileRoots (v : FactorProfile) : Nat :=
  profileTwoRoots v.1 * 2 ^ (v.2.1.card + v.2.2)

def factorProfiles (M : Nat) : Finset FactorProfile :=
  ((Finset.range 4) ×ˢ (profileSmallPrimes.powerset ×ˢ Finset.range 12)).filter
    (fun v => factorProfileLower v ≤ M)

def canonicalFactorProfile (b : Nat) : FactorProfile :=
  (min (b.factorization 2) 3, profileSmallFactors b, (profileLargeFactors b).card)

theorem canonicalFactorProfile_mem {b M : Nat} (hb : 0 < b) (hbM : b ≤ M)
    (hM : M ≤ 2 ^ 41) : canonicalFactorProfile b ∈ factorProfiles M := by
  apply Finset.mem_filter.mpr
  constructor
  · apply Finset.mem_product.mpr
    refine ⟨Finset.mem_range.mpr (by simp only [canonicalFactorProfile]; omega), ?_⟩
    apply Finset.mem_product.mpr
    constructor
    · apply Finset.mem_powerset.mpr
      exact Finset.inter_subset_right
    · exact Finset.mem_range.mpr (profile_large_count_lt_twelve hb (hbM.trans hM))
  · exact (profile_lower_bound hb (hbM.trans hM)).trans hbM

theorem canonicalFactorProfile_lower {b M : Nat} (hb : 0 < b) (hbM : b ≤ M)
    (hM : M ≤ 2 ^ 41) : factorProfileLower (canonicalFactorProfile b) ≤ b :=
  profile_lower_bound hb (hbM.trans hM)

theorem canonicalFactorProfile_roots {b : Nat} (hb : 0 < b) :
    squareRootMultiplicity b ≤ factorProfileRoots (canonicalFactorProfile b) :=
  profile_root_count_partitioned hb

theorem canonicalFactorProfile_small_dvd {b p : Nat}
    (hp : p ∈ (canonicalFactorProfile b).2.1) : p ∣ b :=
  Nat.dvd_of_mem_primeFactors (Finset.mem_erase.mp (Finset.mem_inter.mp hp).1).2

theorem canonicalFactorProfile_divisor {b : Nat} (hb : 0 < b) (J : Finset Nat)
    (hJ : J ⊆ (canonicalFactorProfile b).2.1) :
    2 ^ (canonicalFactorProfile b).1 * (∏ p ∈ J, p) ∣ b := by
  have hs : J ⊆ profileOddFactors b := hJ.trans Finset.inter_subset_left
  have hd := Finset.prod_dvd_prod_of_subset _ _ (fun p : Nat => p) hs
  exact (mul_dvd_mul_left (2 ^ min (b.factorization 2) 3) hd).trans
    (profile_factor_product_dvd hb)

/-- Every actual multiplier belongs to the finite enumeration, with certified parameters. -/
theorem factorProfiles_cover {b M : Nat} (hb : 0 < b) (hbM : b ≤ M)
    (hM : M ≤ 2 ^ 41) :
    ∃ v ∈ factorProfiles M, factorProfileLower v ≤ b ∧
      squareRootMultiplicity b ≤ factorProfileRoots v ∧
      (∀ p ∈ v.2.1, p ∣ b) ∧
      (∀ J : Finset Nat, J ⊆ v.2.1 → 2 ^ v.1 * (∏ p ∈ J, p) ∣ b) := by
  refine ⟨canonicalFactorProfile b, canonicalFactorProfile_mem hb hbM hM,
    canonicalFactorProfile_lower hb hbM hM, canonicalFactorProfile_roots hb, ?_, ?_⟩
  · exact fun _ hp => canonicalFactorProfile_small_dvd hp
  · exact fun J hJ => canonicalFactorProfile_divisor hb J hJ

namespace FiniteFactorProfilesTests

theorem unit_profile : canonicalFactorProfile 1 = (0, ∅, 0) := by
  simp [canonicalFactorProfile, profileSmallFactors, profileLargeFactors, profileOddFactors]

theorem mixed_profile : canonicalFactorProfile (8 * 3 * 23) = (3, {3}, 1) := by
  have hf : (8 * 3 * 23 : Nat).factorization 2 = 3 := by
    rw [← Nat.primeFactorsList_count_eq]
    decide +kernel
  unfold canonicalFactorProfile
  rw [hf]
  decide +kernel

theorem mixed_profile_lower : factorProfileLower (3, {3}, 1) = 8 * 3 * 23 := by decide +kernel

theorem mixed_profile_roots : factorProfileRoots (3, {3}, 1) = 16 := by decide +kernel

end FiniteFactorProfilesTests

end JSP848
