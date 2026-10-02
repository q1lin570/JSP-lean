import JSP848.ProfileTailCertificate
import JSP848.MiddlePrimeCertificate
import JSP848.ProfileWitnessPrimes
import JSP848.OffDiagonalOverlap

namespace JSP848

def primeSquareSumRat (P : Finset Nat) : Rat := ∑ p ∈ P, 1 / (p : Rat) ^ 2

def primeSquareOverlapRat (P : Finset Nat) : Rat :=
  primeSquareSumRat P - (1 - ∏ p ∈ P, (1 - 1 / (p : Rat) ^ 2))

def profileOverlapPrimes (v : FactorProfile) (allowTwo : Bool) : Finset Nat :=
  if allowTwo then insert 2 (profileOverlapOddPrimes v) else profileOverlapOddPrimes v

def profileNeighborDensity (v : FactorProfile) (allowTwo : Bool) : Rat :=
  (if allowTwo then 1031 / 2500 else 203 / 1250) -
    primeSquareSumRat (profileKnownWitnessFactors v) -
    primeSquareOverlapRat (profileOverlapPrimes v allowTwo)

theorem primeSquareSumRat_cast (P : Finset Nat) :
    (primeSquareSumRat P : Real) = ∑ p ∈ P, 1 / (p : Real) ^ 2 := by
  simp [primeSquareSumRat]

theorem primeSquareOverlapRat_cast (P : Finset Nat) :
    (primeSquareOverlapRat P : Real) = primeSquareOverlap P := by
  simp [primeSquareOverlapRat, primeSquareOverlap, primeSquareSumRat]

theorem profileNeighborDensity_cast (v : FactorProfile) (allowTwo : Bool) :
    (profileNeighborDensity v allowTwo : Real) =
      (if allowTwo then 1031 / 2500 else 203 / 1250) -
        (∑ p ∈ profileKnownWitnessFactors v, 1 / (p : Real) ^ 2) -
        primeSquareOverlap (profileOverlapPrimes v allowTwo) := by
  cases allowTwo <;>
    simp [profileNeighborDensity, primeSquareSumRat_cast, primeSquareOverlapRat_cast]

structure ProfileNeighborhoodCertificate where
  prime : MiddlePrimeCertificate
  tail : ProfileTailCertificate

namespace ProfileNeighborhoodCertificate

def Valid (c : ProfileNeighborhoodCertificate) (v : FactorProfile) (lo hi : Rat) : Prop :=
  c.prime.Valid lo hi ∧ c.tail.Valid v lo ∧ c.tail.r = c.prime.r ∧
    19 ≤ c.prime.r * lo ^ 2

instance (c : ProfileNeighborhoodCertificate) (v : FactorProfile) (lo hi : Rat) :
    Decidable (c.Valid v lo hi) := by unfold Valid; infer_instance

def value (c : ProfileNeighborhoodCertificate) (v : FactorProfile) (lo volume classes : Rat)
    (allowTwo : Bool) : Rat :=
  volume * profileNeighborDensity v allowTwo +
    classes * (c.prime.value lo + 2 ^ (profileOverlapPrimes v allowTwo).card / lo ^ 3) +
    c.tail.value v lo

theorem cutoff_lower (c : ProfileNeighborhoodCertificate) {v : FactorProfile}
    {lo hi : Rat} {u : Real} (hc : c.Valid v lo hi) (hlu : (lo : Real) ≤ u) :
    19 ≤ (c.prime.r : Real) * u ^ 2 := by
  have hlo : (0 : Real) < lo := by exact_mod_cast hc.1.1
  have hr : (0 : Real) < c.prime.r := by exact_mod_cast hc.1.2.1
  have h := mul_le_mul_of_nonneg_left (pow_le_pow_left₀ hlo.le hlu 2) hr.le
  have hl : (19 : Real) ≤ (c.prime.r : Real) * (lo : Real) ^ 2 := by
    exact_mod_cast hc.2.2.2
  exact hl.trans h

theorem tail_bound (c : ProfileNeighborhoodCertificate) {N b : Nat} {u : Real}
    {lo hi : Rat} (hc : c.Valid (canonicalFactorProfile b) lo hi)
    (hb : 0 < b) (hbN : b ≤ N) (hmax : N ≤ 2 ^ 41)
    (hlu : (lo : Real) ≤ u) (hN : (N : Real) = u ^ 3)
    (A : Finset Nat) (hA : A ⊆ Finset.Icc 1 N)
    (hw : ∀ a ∈ A, ∃ p : Nat, (c.prime.r : Real) * u ^ 2 < (p : Real) ∧
      p ^ 2 ∣ a * b + 1) :
    (A.card : Real) ≤ (c.tail.value (canonicalFactorProfile b) lo : Real) * N := by
  apply c.tail.sound hc.2.1 hb hbN hmax hlu hN A hA
  simpa only [hc.2.2.1] using hw

theorem rounding_bound {N : Nat} {u : Real} {lo : Rat}
    (hlo : 0 < lo) (hlu : (lo : Real) ≤ u) (hN : (N : Real) = u ^ 3)
    (k : Nat) : (2 : Real) ^ k ≤ ((2 ^ k / lo ^ 3 : Rat) : Real) * N := by
  have hl : (0 : Real) < lo := by exact_mod_cast hlo
  have hp : (0 : Real) < (lo : Real) ^ 3 := pow_pos hl 3
  have hpow := pow_le_pow_left₀ hl.le hlu 3
  rw [← hN] at hpow
  have hmul := mul_le_mul_of_nonneg_left hpow (show (0 : Real) ≤ 2 ^ k / (lo : Real) ^ 3 by positivity)
  have he : (2 : Real) ^ k / (lo : Real) ^ 3 * (lo : Real) ^ 3 = 2 ^ k :=
    div_mul_cancel₀ _ hp.ne'
  rw [he] at hmul
  simpa only [Rat.cast_div, Rat.cast_pow, Rat.cast_ofNat] using hmul

/-- Normalize an actual counting expression using only checked rational data. -/
theorem expression_bound (c : ProfileNeighborhoodCertificate) {N : Nat} {u : Real}
    {v : FactorProfile} {lo hi volume classes : Rat} (allowTwo : Bool)
    (hc : c.Valid v lo hi) (hclasses : 0 ≤ classes)
    (hlu : (lo : Real) ≤ u) (huh : u ≤ hi) (hN : (N : Real) = u ^ 3) :
    (volume : Real) * (profileNeighborDensity v allowTwo : Real) * N +
      (classes : Real) * (Nat.primeCounting ⌊(c.prime.r : Real) * u ^ 2⌋₊ : Real) +
      (classes : Real) * 2 ^ (profileOverlapPrimes v allowTwo).card +
      (c.tail.value v lo : Real) * N ≤ (c.value v lo volume classes allowTwo : Real) * N := by
  have hp := c.prime.sound hc.1 hlu huh hN
  have hr := rounding_bound hc.1.1 hlu hN (profileOverlapPrimes v allowTwo).card
  have hz : (0 : Real) ≤ classes := by exact_mod_cast hclasses
  have hp' := mul_le_mul_of_nonneg_left hp hz
  have hr' := mul_le_mul_of_nonneg_left hr hz
  have h := add_le_add hp' hr'
  simp only [value, Rat.cast_add, Rat.cast_mul] at *
  nlinarith

end ProfileNeighborhoodCertificate

namespace ProfileNeighborhoodCertificateTests

def twoLarge : ProfileNeighborhoodCertificate :=
  ⟨⟨.weak, 1, 11549 / 1000, 16, 6⟩, ProfileTailCertificateTests.twoLarge⟩

theorem two_large_valid : twoLarge.Valid (0, ∅, 2) 322 646 := by decide +kernel

theorem rejects_mismatched_cutoff :
    ¬ ({twoLarge with tail := {twoLarge.tail with r := 2}}).Valid (0, ∅, 2) 322 646 := by
  decide +kernel

theorem rejects_false_log :
    ¬ ({twoLarge with prime := {twoLarge.prime with logLower := 12}}).Valid
      (0, ∅, 2) 322 646 := by decide +kernel

theorem odd_single_bound : twoLarge.value (0, ∅, 2) 322 (1 / 25) 1 true < (1 / 40 : Rat) := by
  decide +kernel

end ProfileNeighborhoodCertificateTests

end JSP848
