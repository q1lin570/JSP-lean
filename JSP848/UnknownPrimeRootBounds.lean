import JSP848.UnknownPrimeFactor

namespace JSP848

theorem unknown_prime_root_bound {B b q k : Nat} (hB : 0 < B) (hk : 0 < k)
    (hprod : B * q ^ k ≤ b) :
    (q : Real) ≤ ((b : Real) / B) ^ (1 / (k : Real)) := by
  have hB' : (0 : Real) < B := by exact_mod_cast hB
  have hp : (q : Real) ^ k ≤ (b : Real) / B := by
    apply (le_div_iff₀ hB').mpr
    exact_mod_cast (by simpa only [mul_comm] using hprod : q ^ k * B ≤ b)
  have hm := Real.rpow_le_rpow (pow_nonneg (Nat.cast_nonneg q) k) hp
    (show (0 : Real) ≤ 1 / k by positivity)
  simpa only [one_div, Real.pow_rpow_inv_natCast (Nat.cast_nonneg q) hk.ne'] using hm

theorem rpow_div_sqrt_antitone {l b B a : Real} (hl : 0 < l) (hlb : l ≤ b)
    (hB : 0 < B) (ha : a ≤ 1 / 2) :
    (b / B) ^ a / Real.sqrt b ≤ (l / B) ^ a / Real.sqrt l := by
  have hb := hl.trans_le hlb
  have hm := Real.rpow_le_rpow_of_nonpos hl hlb (show a - 1 / 2 ≤ 0 by linarith)
  rw [Real.div_rpow hb.le hB.le, Real.div_rpow hl.le hB.le,
    Real.sqrt_eq_rpow, Real.sqrt_eq_rpow]
  have he (x : Real) (hx : 0 < x) : x ^ a / B ^ a / x ^ (1 / 2 : Real) =
      x ^ (a - 1 / 2) / B ^ a := by
    rw [Real.rpow_sub hx]
    ring
  rw [he b hb, he l hl]
  exact div_le_div_of_nonneg_right hm (Real.rpow_nonneg hB.le _)

theorem unknown_prime_sqrt_bound {B b q k l : Nat} (hB : 0 < B) (hk : 2 ≤ k)
    (hl : 0 < l) (hlb : l ≤ b) (hprod : B * q ^ k ≤ b) :
    (q : Real) / Real.sqrt b ≤ ((l : Real) / B) ^ (1 / (k : Real)) / Real.sqrt l := by
  have hkpos : 0 < k := by omega
  have hk' : (2 : Real) ≤ k := by exact_mod_cast hk
  have hkpos' : (0 : Real) < k := by exact_mod_cast hkpos
  have ha : (1 : Real) / k ≤ 1 / 2 := by
    apply (div_le_iff₀ hkpos').mpr
    linarith
  calc
    _ ≤ ((b : Real) / B) ^ (1 / (k : Real)) / Real.sqrt b :=
      div_le_div_of_nonneg_right (unknown_prime_root_bound hB hkpos hprod) (Real.sqrt_nonneg _)
    _ ≤ _ := rpow_div_sqrt_antitone (by exact_mod_cast hl) (by exact_mod_cast hlb)
      (by exact_mod_cast hB) ha

theorem unknown_prime_upper_bound {B b q k N : Nat} (hB : 0 < B) (hk : 0 < k)
    (hbN : b ≤ N) (hprod : B * q ^ k ≤ b) :
    (q : Real) ≤ ((N : Real) / B) ^ (1 / (k : Real)) := by
  apply (unknown_prime_root_bound hB hk hprod).trans
  apply Real.rpow_le_rpow (by positivity)
    (div_le_div_of_nonneg_right (by exact_mod_cast hbN) (Nat.cast_nonneg B))
  positivity

namespace UnknownPrimeRootBoundsTests

theorem two_factors : (23 : Real) ≤ (667 : Real) ^ (1 / 2 : Real) := by
  simpa using unknown_prime_root_bound (B := 1) (q := 23) (k := 2) (b := 667)
    (by decide) (by decide) (by decide)

theorem constant_sqrt_ratio {l b : Real} (hl : 0 < l) (hlb : l ≤ b) :
    (b / 3) ^ (1 / 2 : Real) / Real.sqrt b ≤
      (l / 3) ^ (1 / 2 : Real) / Real.sqrt l :=
  rpow_div_sqrt_antitone hl hlb (by norm_num) (by rfl)

end UnknownPrimeRootBoundsTests

end JSP848
