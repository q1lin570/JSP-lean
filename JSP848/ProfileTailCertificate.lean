import JSP848.MiddleFactorTail

namespace JSP848

def cubicMainRatioRat (lo r : Rat) : Rat :=
  (2 * (lo ^ 3 + 1) / (r * lo ^ 2) + (lo ^ 6 + 1) / (r * lo ^ 2) ^ 2) / lo ^ 3

theorem cubicMainRatioRat_cast (lo r : Rat) :
    (cubicMainRatioRat lo r : Real) = cubicMainRatio lo r := by
  simp [cubicMainRatioRat, cubicMainRatio]

inductive ProfileTailMode where
  | plain
  | wheel
  | unknown
  deriving DecidableEq

structure ProfileTailCertificate where
  mode : ProfileTailMode
  wheel : Finset Nat
  r : Rat
  sqrtUpper : Rat
  firstRoot : Rat
  secondRoot : Rat

namespace ProfileTailCertificate

def RootValid (c : ProfileTailCertificate) (v : FactorProfile) (lo : Rat) : Prop :=
  c.wheel ⊆ v.2.1 ∧ 0 < factorProfileLower v ∧ 0 ≤ c.sqrtUpper ∧
    (lo ^ 3 + 1) / (factorProfileLower v : Rat) ≤ c.sqrtUpper ^ 2

def Valid (c : ProfileTailCertificate) (v : FactorProfile) (lo : Rat) : Prop :=
  0 < lo ∧ 0 < c.r ∧
    match c.mode with
    | .plain => True
    | .wheel => c.RootValid v lo
    | .unknown => c.RootValid v lo ∧ 2 ≤ v.2.2 ∧ 0 ≤ c.firstRoot ∧ 0 ≤ c.secondRoot ∧
        (factorProfileLower v : Rat) / factorProfileBase v ≤ c.firstRoot ^ v.2.2 ∧
        lo ^ 3 / factorProfileBase v ≤ c.secondRoot ^ v.2.2

instance (c : ProfileTailCertificate) (v : FactorProfile) (lo : Rat) : Decidable (c.Valid v lo) := by
  unfold Valid RootValid
  cases c.mode <;> infer_instance

def value (c : ProfileTailCertificate) (v : FactorProfile) (lo : Rat) : Rat :=
  let roots : Rat := factorProfileRoots v
  let density := factorProfileWheelDensity v c.wheel
  let modulus : Rat := factorProfileWheel v c.wheel
  match c.mode with
  | .plain => roots * cubicMainRatioRat lo c.r
  | .wheel => roots * density * cubicMainRatioRat lo c.r +
      roots * (modulus * density) * ((2 * c.sqrtUpper + 1) / lo ^ 3)
  | .unknown => (roots * density / 2) * cubicMainRatioRat lo c.r +
      (roots * density / 2) * modulus *
        ((2 * c.sqrtUpper * c.firstRoot + c.secondRoot) / lo ^ 3)

/-- A finite rational check supplies an actual large-square-factor counting bound. -/
theorem sound (c : ProfileTailCertificate) {N b : Nat} {u : Real} {lo : Rat}
    (hc : c.Valid (canonicalFactorProfile b) lo)
    (hb : 0 < b) (hbN : b ≤ N) (hmax : N ≤ 2 ^ 41)
    (hlu : (lo : Real) ≤ u) (hN : (N : Real) = u ^ 3)
    (A : Finset Nat) (hA : A ⊆ Finset.Icc 1 N)
    (hw : ∀ a ∈ A, ∃ p : Nat, (c.r : Real) * u ^ 2 < (p : Real) ∧ p ^ 2 ∣ a * b + 1) :
    (A.card : Real) ≤ (c.value (canonicalFactorProfile b) lo : Real) * N := by
  obtain ⟨hlo, hr, hrest⟩ := hc
  have hlo' : (0 : Real) < lo := by exact_mod_cast hlo
  have hr' : (0 : Real) < c.r := by exact_mod_cast hr
  cases hm : c.mode with
  | plain =>
      have h := canonical_plain_tail_endpoint hb hbN hlo' hlu hr' hN A hA hw
      simpa only [value, hm, Rat.cast_mul, Rat.cast_natCast, cubicMainRatioRat_cast] using h
  | wheel =>
      simp only [hm, RootValid] at hrest
      obtain ⟨hJ, hl, hs0, hs⟩ := hrest
      have h := canonical_wheel_tail_endpoint (sqrtUpper := c.sqrtUpper)
        hb hbN hmax c.wheel hJ hl hlo' hlu hr' hN
        (by exact_mod_cast hs0) (by exact_mod_cast hs) A hA hw
      simpa only [value, hm, Rat.cast_add, Rat.cast_mul, Rat.cast_div, Rat.cast_pow,
        Rat.cast_natCast, Rat.cast_ofNat, Rat.cast_one, cubicMainRatioRat_cast] using h
  | unknown =>
      simp only [hm, RootValid] at hrest
      obtain ⟨⟨hJ, hl, hs0, hs⟩, hk, hf0, hz0, hf, hz⟩ := hrest
      have h := canonical_unknown_tail_endpoint (sqrtUpper := c.sqrtUpper)
        (firstRoot := c.firstRoot) (secondRoot := c.secondRoot)
        hb hbN hmax c.wheel hJ hk hl hlo' hlu hr' hN
        (by exact_mod_cast hs0) (by exact_mod_cast hf0) (by exact_mod_cast hz0)
        (by exact_mod_cast hs)
        (by
          have h := (Rat.cast_le (K := Real)).mpr hf
          push_cast at h
          exact h)
        (by exact_mod_cast hz) A hA hw
      simpa only [value, hm, Rat.cast_add, Rat.cast_mul, Rat.cast_div, Rat.cast_pow,
        Rat.cast_natCast, Rat.cast_ofNat, Rat.cast_one, cubicMainRatioRat_cast] using h

end ProfileTailCertificate

namespace ProfileTailCertificateTests

def twoLarge : ProfileTailCertificate := ⟨.unknown, ∅, 1, 224, 26, 5779⟩

theorem two_large_valid : twoLarge.Valid (0, ∅, 2) 322 := by decide +kernel

theorem two_large_bound : twoLarge.value (0, ∅, 2) 322 < (8 / 1000 : Rat) := by decide +kernel

theorem rejects_small_root : ¬ ({twoLarge with firstRoot := 20}).Valid (0, ∅, 2) 322 := by
  decide +kernel

theorem rejects_one_unknown : ¬ twoLarge.Valid (0, ∅, 1) 322 := by decide +kernel

theorem rejects_zero_cutoff : ¬ ({twoLarge with r := 0}).Valid (0, ∅, 2) 322 := by
  decide +kernel

theorem actual_large_square_witness :
    ∃ u : Real, (33554432 : Real) = u ^ 3 ∧ 322 ≤ u ∧ u ≤ 323 ∧
      (({26680400} : Finset Nat).card : Real) ≤
        (twoLarge.value (0, ∅, 2) 322 : Real) * 33554432 := by
  obtain ⟨u, hu, hN⟩ := exists_cubic_parameter (by decide : 0 < 33554432)
  obtain ⟨hlu, huh⟩ := cubic_parameter_interval hu.le
    (by norm_num : (0 : Real) ≤ 322) (by norm_num : (0 : Real) ≤ 323) hN
    (by norm_num) (by norm_num)
  have hprofile : canonicalFactorProfile 667 = (0, ∅, 2) := by
    have hf : (667 : Nat).factorization 2 = 0 := by norm_num [Nat.factorization_eq_zero_iff]
    unfold canonicalFactorProfile
    rw [hf]
    decide +kernel
  have hc : twoLarge.Valid (canonicalFactorProfile 667) 322 := by
    rw [hprofile]
    exact two_large_valid
  have h := twoLarge.sound hc (by decide : 0 < 667) (by decide : 667 ≤ 33554432)
    (by norm_num) hlu hN {26680400} (by
      intro a ha
      have he := Finset.mem_singleton.mp ha
      subst a
      exact Finset.mem_Icc.mpr ⟨by decide, by decide⟩) (by
      intro a ha
      have he := Finset.mem_singleton.mp ha
      subst a
      refine ⟨133401, ?_, by decide⟩
      have hp := pow_le_pow_left₀ hu.le huh 2
      norm_num [twoLarge] at hp ⊢
      linarith)
  rw [hprofile] at h
  exact ⟨u, hN, hlu, huh, by simpa only [Nat.cast_ofNat] using h⟩

end ProfileTailCertificateTests

end JSP848
