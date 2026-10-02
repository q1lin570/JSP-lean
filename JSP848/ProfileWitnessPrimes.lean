import JSP848.FiniteFactorProfiles

namespace JSP848

def profileKnownWitnessFactors (v : FactorProfile) : Finset Nat := v.2.1.erase 5

def profileOverlapOddPrimes (v : FactorProfile) : Finset Nat :=
  (profileSmallPrimes.erase 5) \ v.2.1

theorem profileSmallPrimes_properties {p : Nat} (hp : p ∈ profileSmallPrimes) :
    p.Prime ∧ p ≠ 2 ∧ p ≤ 19 := by
  have h : ∀ p ∈ profileSmallPrimes, p.Prime ∧ p ≠ 2 ∧ p ≤ 19 := by decide
  exact h p hp

theorem canonicalFactorProfile_small_iff {b p : Nat} (hb : 0 < b)
    (hp : p ∈ profileSmallPrimes) : p ∈ (canonicalFactorProfile b).2.1 ↔ p ∣ b := by
  have ht := profileSmallPrimes_properties hp
  change p ∈ profileSmallFactors b ↔ p ∣ b
  simp only [profileSmallFactors, Finset.mem_inter, profileOddFactors, Finset.mem_erase,
    Nat.mem_primeFactors]
  simp [ht.1, ht.2.1, hp, hb.ne']

theorem canonicalFactorProfile_odd_iff {b : Nat} (hb : 0 < b) :
    (canonicalFactorProfile b).1 = 0 ↔ b % 2 = 1 := by
  have hz : b.factorization 2 = 0 ↔ ¬2 ∣ b := by
    simp [Nat.factorization_eq_zero_iff, hb.ne', Nat.prime_two]
  rw [Nat.dvd_iff_mod_eq_zero] at hz
  have hm := Nat.mod_lt b (by decide : 0 < 2)
  change min (b.factorization 2) 3 = 0 ↔ b % 2 = 1
  omega

theorem profileKnownWitnessFactors_sound {b p : Nat}
    (hp : p ∈ profileKnownWitnessFactors (canonicalFactorProfile b)) :
    p.Prime ∧ p ≠ 2 ∧ p ≠ 5 ∧ p ∣ b := by
  obtain ⟨h5, hp⟩ := Finset.mem_erase.mp hp
  have ht := profile_odd_factors_prime (Finset.mem_inter.mp hp).1
  exact ⟨ht.1, ht.2, h5, canonicalFactorProfile_small_dvd hp⟩

theorem profileOverlapOddPrimes_sound {b p : Nat} (hb : 0 < b)
    {R : Real} (hR : 19 ≤ R)
    (hp : p ∈ profileOverlapOddPrimes (canonicalFactorProfile b)) :
    p.Prime ∧ p ≠ 2 ∧ p ≠ 5 ∧ ¬p ∣ b ∧ (p : Real) ≤ R := by
  obtain ⟨hp, hn⟩ := Finset.mem_sdiff.mp hp
  obtain ⟨h5, hp⟩ := Finset.mem_erase.mp hp
  have ht := profileSmallPrimes_properties hp
  refine ⟨ht.1, ht.2.1, h5, ?_, ?_⟩
  · exact fun hd => hn ((canonicalFactorProfile_small_iff hb hp).mpr hd)
  · exact (show (p : Real) ≤ 19 by exact_mod_cast ht.2.2).trans hR

theorem profileOverlapWithTwo_sound {b p : Nat} (hb : 0 < b) (ho : b % 2 = 1)
    {R : Real} (hR : 19 ≤ R)
    (hp : p ∈ insert 2 (profileOverlapOddPrimes (canonicalFactorProfile b))) :
    p.Prime ∧ p ≠ 5 ∧ ¬p ∣ b ∧ (p : Real) ≤ R := by
  rcases Finset.mem_insert.mp hp with rfl | hp
  · refine ⟨by decide, by decide, ?_, (show (2 : Real) ≤ 19 by norm_num).trans hR⟩
    intro hd
    have := Nat.mod_eq_zero_of_dvd hd
    omega
  · have ht := profileOverlapOddPrimes_sound hb hR hp
    exact ⟨ht.1, ht.2.2.1, ht.2.2.2⟩

namespace ProfileWitnessPrimesTests

theorem mixed_known : profileKnownWitnessFactors (3, {3, 5, 7}, 2) = {3, 7} := by decide

theorem mixed_overlap : profileOverlapOddPrimes (3, {3, 5, 7}, 2) = {11, 13, 17, 19} := by decide

end ProfileWitnessPrimesTests

end JSP848
