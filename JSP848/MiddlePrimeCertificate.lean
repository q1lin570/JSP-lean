import JSP848.MiddleEndpointBounds
import JSP848.FinitePrimeBounds
import JSP848.ElementaryPrimeBound

namespace JSP848

structure CubicIntervalCertificate where
  lower : Nat
  upper : Nat
  rootLower : Rat
  rootUpper : Rat

namespace CubicIntervalCertificate

def Valid (c : CubicIntervalCertificate) : Prop :=
  3 ≤ c.rootLower ∧ 0 ≤ c.rootUpper ∧ c.rootLower ^ 3 ≤ c.lower ∧
    (c.upper : Rat) ≤ c.rootUpper ^ 3

instance (c : CubicIntervalCertificate) : Decidable c.Valid := by
  unfold Valid
  infer_instance

theorem sound (c : CubicIntervalCertificate) (hc : c.Valid) {N : Nat}
    (hlo : c.lower ≤ N) (hhi : N ≤ c.upper) :
    ∃ u : Real, (N : Real) = u ^ 3 ∧ (c.rootLower : Real) ≤ u ∧ u ≤ c.rootUpper := by
  obtain ⟨hroot, hh, hlower, hupper⟩ := hc
  have hroot' : (3 : Real) ≤ c.rootLower := by exact_mod_cast hroot
  have hlower' : (c.rootLower : Real) ^ 3 ≤ c.lower := by exact_mod_cast hlower
  have hNlow : (c.lower : Real) ≤ N := by exact_mod_cast hlo
  have hpos : (0 : Real) < N :=
    (pow_pos (by linarith : (0 : Real) < c.rootLower) 3).trans_le (hlower'.trans hNlow)
  obtain ⟨u, hu, hN⟩ := exists_cubic_parameter (by exact_mod_cast hpos)
  have hupper' : (N : Real) ≤ (c.rootUpper : Real) ^ 3 :=
    (show (N : Real) ≤ c.upper by exact_mod_cast hhi).trans (by exact_mod_cast hupper)
  obtain ⟨hul, huh⟩ := cubic_parameter_interval hu.le (by linarith) (by exact_mod_cast hh)
    hN (hlower'.trans hNlow) hupper'
  exact ⟨u, hN, hul, huh⟩

end CubicIntervalCertificate

inductive MiddlePrimeMode where
  | weak
  | strong
  | elementary
  deriving DecidableEq

structure MiddlePrimeCertificate where
  mode : MiddlePrimeMode
  r : Rat
  logLower : Rat
  exponent : Nat
  terms : Nat

namespace MiddlePrimeCertificate

def coefficient (c : MiddlePrimeCertificate) : Rat :=
  match c.mode with
  | .weak => 29 / 25
  | .strong => 28 / 25
  | .elementary => 3

def Valid (c : MiddlePrimeCertificate) (lo hi : Rat) : Prop :=
  0 < lo ∧ 0 < c.r ∧ 0 < c.logLower ∧
    (2 : Rat) ^ c.exponent ≤ c.r * lo ^ 2 ∧
    c.logLower ≤ scaledLogLower (c.r * lo ^ 2) c.exponent c.terms ∧
    match c.mode with
    | .weak => 16384 ≤ c.r * lo ^ 2 ∧ c.r * hi ^ 2 ≤ 33554432
    | .strong => 524288 ≤ c.r * lo ^ 2 ∧ c.r * hi ^ 2 ≤ 33554432
    | .elementary => 65536 ≤ c.r * lo ^ 2

instance (c : MiddlePrimeCertificate) (lo hi : Rat) : Decidable (c.Valid lo hi) := by
  unfold Valid
  cases c.mode <;> infer_instance

def value (c : MiddlePrimeCertificate) (lo : Rat) : Rat :=
  c.coefficient * c.r / (lo * c.logLower)

theorem sound (c : MiddlePrimeCertificate) {N : Nat} {u : Real} {lo hi : Rat}
    (hc : c.Valid lo hi) (hlu : (lo : Real) ≤ u) (huh : u ≤ hi) (hN : (N : Real) = u ^ 3) :
    (Nat.primeCounting ⌊(c.r : Real) * u ^ 2⌋₊ : Real) ≤ (c.value lo : Real) * N := by
  obtain ⟨hlo, hr, hlogpos, hscale, hlog, hcuts⟩ := hc
  have hlo' : (0 : Real) < lo := by exact_mod_cast hlo
  have hr' : (0 : Real) < c.r := by exact_mod_cast hr
  obtain ⟨hcutlo, hcuthi⟩ := cubic_cutoff_interval hlo'.le hlu huh hr'.le
  have hpi : (Nat.primeCounting ⌊(c.r : Real) * u ^ 2⌋₊ : Real) ≤
      (c.coefficient : Real) * ((c.r : Real) * u ^ 2) / Real.log ((c.r : Real) * u ^ 2) := by
    cases hm : c.mode with
    | weak =>
        simp only [hm] at hcuts
        have hl : (16384 : Real) ≤ (c.r : Real) * (lo : Real) ^ 2 := by exact_mod_cast hcuts.1
        have hh : (c.r : Real) * (hi : Real) ^ 2 ≤ 33554432 := by exact_mod_cast hcuts.2
        have h := FinitePrimeBounds.weak_bound ((c.r : Real) * u ^ 2)
          (by norm_num; exact hl.trans hcutlo) (by norm_num; exact hcuthi.trans hh)
        simpa [coefficient, hm] using h
    | strong =>
        simp only [hm] at hcuts
        have hl : (524288 : Real) ≤ (c.r : Real) * (lo : Real) ^ 2 := by exact_mod_cast hcuts.1
        have hh : (c.r : Real) * (hi : Real) ^ 2 ≤ 33554432 := by exact_mod_cast hcuts.2
        have h := FinitePrimeBounds.strong_bound ((c.r : Real) * u ^ 2)
          (by norm_num; exact hl.trans hcutlo) (by norm_num; exact hcuthi.trans hh)
        simpa [coefficient, hm] using h
    | elementary =>
        simp only [hm] at hcuts
        have hl : (65536 : Real) ≤ (c.r : Real) * (lo : Real) ^ 2 := by exact_mod_cast hcuts
        simpa [coefficient, hm] using primeCounting_le_three_mul_div_log (hl.trans hcutlo)
  have hcoef : (0 : Real) ≤ c.coefficient := by
    unfold coefficient
    cases c.mode <;> norm_num
  have hlog' : (c.logLower : Real) ≤ Real.log ((c.r : Real) * (lo : Real) ^ 2) := by
    simpa only [Rat.cast_mul, Rat.cast_pow] using log_lower_of_scaled hscale hlog
  have hbound := cubicPrimeRatio_le_endpoint hlo' hlu hr' hcoef
    (by exact_mod_cast hlogpos) hlog'
  unfold cubicPrimeRatio at hbound
  have hu := hlo'.trans_le hlu
  have hfinal := (div_le_iff₀ (pow_pos hu 3)).mp hbound
  have hresult := hpi.trans hfinal
  rw [← hN] at hresult
  simpa only [value, Rat.cast_mul, Rat.cast_div] using hresult

end MiddlePrimeCertificate

namespace MiddlePrimeCertificateTests

def initial : CubicIntervalCertificate := ⟨2 ^ 25, 2 ^ 28, 322, 646⟩
def cutoff : MiddlePrimeCertificate := ⟨.weak, 3, 12647 / 1000, 18, 6⟩

theorem interval_valid : initial.Valid := by decide +kernel
theorem cutoff_valid : cutoff.Valid initial.rootLower initial.rootUpper := by decide +kernel
theorem rejects_short_upper : ¬ ({initial with rootUpper := 645}).Valid := by decide +kernel
theorem rejects_large_cutoff : ¬ ({cutoff with r := 100}).Valid 322 646 := by decide +kernel
theorem rejects_false_log : ¬ ({cutoff with logLower := 13}).Valid 322 646 := by decide +kernel

end MiddlePrimeCertificateTests

end JSP848
