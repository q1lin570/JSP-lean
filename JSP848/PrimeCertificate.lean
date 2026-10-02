import Mathlib.NumberTheory.LucasPrimality
import Mathlib.Data.Nat.Factors
import Lean.Elab.Tactic.Omega

namespace JSP848

/-- Repeated squaring keeps intermediates reduced even for 50-bit exponents. -/
def modPower (a e n : ℕ) : ℕ :=
  if h : e = 0 then 1 % n else
    let r := modPower a (e / 2) n
    if e % 2 = 0 then r * r % n else a * (r * r) % n
termination_by e
decreasing_by exact Nat.div_lt_self (Nat.pos_of_ne_zero h) (by decide)

theorem modPower_eq (a e n : ℕ) : modPower a e n = a ^ e % n := by
  induction e using Nat.strong_induction_on with
  | h e ih =>
    rw [modPower]
    split
    · rename_i he
      simp [he]
    · rename_i he
      rw [ih (e / 2) (Nat.div_lt_self (Nat.pos_of_ne_zero he) (by decide))]
      have hmod := Nat.mod_two_eq_zero_or_one e
      have hdiv := Nat.div_add_mod e 2
      split
      · rename_i heven
        have hexp : e = e / 2 + e / 2 := by omega
        conv_rhs => rw [hexp, pow_add]
        exact (Nat.mul_mod _ _ _).symm
      · rename_i hodd
        have hexp : e = e / 2 + e / 2 + 1 := by omega
        conv_rhs => rw [hexp, pow_succ', pow_add]
        simp only [Nat.mul_mod, Nat.mod_mod]

def checkPrimeCertificate (p a : ℕ) (factors : List ℕ) : Bool :=
  decide (1 < p ∧ factors.prod = p - 1 ∧ modPower a (p - 1) p = 1) &&
    factors.all (fun q => decide (modPower a ((p - 1) / q) p ≠ 1))

/-- The factors of p-1 must already be proved prime; supplied witnesses are untrusted. -/
theorem checkPrimeCertificate_sound {p a : ℕ} {factors : List ℕ}
    (hf : ∀ q ∈ factors, q.Prime)
    (hcheck : checkPrimeCertificate p a factors = true) : p.Prime := by
  have hc := Bool.and_eq_true_iff.mp hcheck
  have hs : 1 < p ∧ factors.prod = p - 1 ∧ modPower a (p - 1) p = 1 :=
    of_decide_eq_true hc.1
  have hmod : 1 % p = 1 := Nat.mod_eq_of_lt hs.1
  apply lucas_primality p (a : ZMod p)
  · have he := (ZMod.natCast_eq_natCast_iff' (a ^ (p - 1)) 1 p).mpr
      (by simpa only [← modPower_eq, hmod] using hs.2.2)
    simpa only [Nat.cast_pow, Nat.cast_one] using he
  · intro q hq hqp he
    have hmem : q ∈ factors := mem_list_primes_of_dvd_prod (Nat.prime_iff.mp hq)
      (fun q hq => Nat.prime_iff.mp (hf q hq)) (hs.2.1.symm ▸ hqp)
    have hne : modPower a ((p - 1) / q) p ≠ 1 :=
      of_decide_eq_true (List.all_eq_true.mp hc.2 q hmem)
    apply hne
    have he' : ((a ^ ((p - 1) / q) : ℕ) : ZMod p) = (1 : ℕ) := by
      simpa only [Nat.cast_pow, Nat.cast_one] using he
    have hres := (ZMod.natCast_eq_natCast_iff' _ _ p).mp he'
    simpa only [modPower_eq, hmod] using hres

end JSP848
