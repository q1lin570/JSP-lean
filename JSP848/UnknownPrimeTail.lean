import JSP848.UnknownPrimeRootBounds

namespace JSP848

theorem sqrt_mul_add_one_div_bound {N b : Nat} (hb : 0 < b) :
    Real.sqrt ((b : Real) * N + 1) / b ≤ Real.sqrt ((N : Real) + 1) / Real.sqrt b := by
  have hb' : (0 : Real) < b := by exact_mod_cast hb
  have hb1 : (1 : Real) ≤ b := by exact_mod_cast hb
  have hs : Real.sqrt ((b : Real) * N + 1) ≤ Real.sqrt b * Real.sqrt ((N : Real) + 1) := by
    calc
      _ ≤ Real.sqrt ((b : Real) * ((N : Real) + 1)) := Real.sqrt_le_sqrt (by nlinarith)
      _ = _ := Real.sqrt_mul hb'.le _
  apply (div_le_div_iff₀ hb' (Real.sqrt_pos.mpr hb')).mpr
  calc
    _ ≤ (Real.sqrt b * Real.sqrt ((N : Real) + 1)) * Real.sqrt b :=
      mul_le_mul_of_nonneg_right hs (Real.sqrt_nonneg _)
    _ = Real.sqrt ((N : Real) + 1) * (Real.sqrt b) ^ 2 := by ring
    _ = _ := by rw [Real.sq_sqrt hb'.le]

theorem unknown_prime_remainder_bound {N b B q k l : Nat}
    (hB : 0 < B) (hk : 2 ≤ k) (hl : 0 < l) (hlb : l ≤ b) (hbN : b ≤ N)
    (hprod : B * q ^ k ≤ b) :
    (q : Real) * (2 * Real.sqrt ((b : Real) * N + 1) / b + 1) ≤
      2 * Real.sqrt (((N : Real) + 1) / l) * ((l : Real) / B) ^ (1 / (k : Real)) +
        ((N : Real) / B) ^ (1 / (k : Real)) := by
  have hbase := sqrt_mul_add_one_div_bound (hl.trans_le hlb) (N := N)
  have hsmall := unknown_prime_sqrt_bound hB hk hl hlb hprod
  have hlarge := unknown_prime_upper_bound hB (by omega : 0 < k) hbN hprod
  have hfirst := mul_le_mul_of_nonneg_left hbase (Nat.cast_nonneg q : (0 : Real) ≤ _)
  have hsecond := mul_le_mul_of_nonneg_left hsmall
    (Real.sqrt_nonneg ((N : Real) + 1))
  have hcombine : (q : Real) * (Real.sqrt ((b : Real) * N + 1) / b) ≤
      Real.sqrt (((N : Real) + 1) / l) * ((l : Real) / B) ^ (1 / (k : Real)) := by
    calc
      _ ≤ (q : Real) * (Real.sqrt ((N : Real) + 1) / Real.sqrt b) := hfirst
      _ = Real.sqrt ((N : Real) + 1) * ((q : Real) / Real.sqrt b) := by ring
      _ ≤ Real.sqrt ((N : Real) + 1) *
          (((l : Real) / B) ^ (1 / (k : Real)) / Real.sqrt l) := hsecond
      _ = _ := by rw [Real.sqrt_div (by positivity)]; ring
  simp only [mul_div_assoc] at hcombine ⊢
  nlinarith

theorem off_diagonal_main_bound {N b : Nat} (hb : 0 < b) (hbN : b ≤ N)
    {R : Real} (hR : 0 < R) :
    2 * ((b : Real) * N + 1) / ((b : Real) * R) + ((b : Real) * N + 1) / R ^ 2 ≤
      2 * ((N : Real) + 1) / R + ((N : Real) ^ 2 + 1) / R ^ 2 := by
  have hb' : (0 : Real) < b := by exact_mod_cast hb
  have hb1 : (1 : Real) ≤ b := by exact_mod_cast hb
  have hbN' : (b : Real) ≤ N := by exact_mod_cast hbN
  have hX : (b : Real) * N + 1 ≤ (N : Real) ^ 2 + 1 := by
    nlinarith [show (0 : Real) ≤ N from Nat.cast_nonneg N]
  have hY : (b : Real) * N + 1 ≤ (b : Real) * ((N : Real) + 1) := by nlinarith
  apply add_le_add ?_ (div_le_div_of_nonneg_right hX (sq_nonneg R))
  calc
    _ ≤ 2 * ((b : Real) * ((N : Real) + 1)) / ((b : Real) * R) :=
      div_le_div_of_nonneg_right (mul_le_mul_of_nonneg_left hY (by norm_num)) (by positivity)
    _ = _ := by field_simp

theorem divisorOffDiagonalTailBound_unknown_prime {N b c B q k l : Nat}
    (hc : 0 < c) (hq : q.Prime) (hq2 : q ≠ 2) (hcq : Nat.Coprime c q)
    (hB : 0 < B) (hk : 2 ≤ k) (hl : 0 < l) (hlb : l ≤ b) (hbN : b ≤ N)
    (hprod : B * q ^ k ≤ b) {h R : Real}
    (hroots : (squareRootMultiplicity b : Real) ≤ h) (hR : 0 < R) :
    divisorOffDiagonalTailBound N b (c * q) R ≤
      (h * divisorDensity c / 2) *
        (2 * ((N : Real) + 1) / R + ((N : Real) ^ 2 + 1) / R ^ 2) +
      (h * divisorDensity c / 2) * c *
        (2 * Real.sqrt (((N : Real) + 1) / l) * ((l : Real) / B) ^ (1 / (k : Real)) +
          ((N : Real) / B) ^ (1 / (k : Real))) := by
  have hb := hl.trans_le hlb
  have hh : 0 ≤ h := (Nat.cast_nonneg _).trans hroots
  have hd := divisorDensity_mul_odd_prime_le_half hc hq hq2 hcq
  have hcoef := mul_le_mul hroots hd (divisorDensity_nonneg (c * q)) hh
  have hm := off_diagonal_main_bound hb hbN hR
  have ht := unknown_prime_remainder_bound hB hk hl hlb hbN hprod
  have htail := mul_le_mul_of_nonneg_left ht (Nat.cast_nonneg c : (0 : Real) ≤ _)
  have hsum := add_le_add hm htail
  have hall := mul_le_mul hcoef hsum
    (show (0 : Real) ≤ 2 * ((b : Real) * N + 1) / ((b : Real) * R) +
      ((b : Real) * N + 1) / R ^ 2 +
        (c : Real) * ((q : Real) * (2 * Real.sqrt ((b : Real) * N + 1) / b + 1)) by positivity)
    (mul_nonneg hh (div_nonneg (divisorDensity_nonneg c) (by norm_num)))
  unfold divisorOffDiagonalTailBound
  push_cast
  nlinarith only [hall]

theorem large_unknown_prime_off_diagonal_tail {N b c B q k l : Nat}
    (hc : 0 < c) (hq : q.Prime) (hq2 : q ≠ 2) (hcq : Nat.Coprime c q)
    (hdiv : c * q ∣ b) (hB : 0 < B) (hk : 2 ≤ k) (hl : 0 < l)
    (hlb : l ≤ b) (hbN : b ≤ N) (hprod : B * q ^ k ≤ b) {h R : Real}
    (hroots : (squareRootMultiplicity b : Real) ≤ h) (hR : 0 < R)
    (A : Finset Nat) (hA : A ⊆ Finset.Icc 1 N)
    (hw : ∀ a ∈ A, ∃ p : Nat, R < (p : Real) ∧ p ^ 2 ∣ a * b + 1) :
    (A.card : Real) ≤
      (h * divisorDensity c / 2) *
        (2 * ((N : Real) + 1) / R + ((N : Real) ^ 2 + 1) / R ^ 2) +
      (h * divisorDensity c / 2) * c *
        (2 * Real.sqrt (((N : Real) + 1) / l) * ((l : Real) / B) ^ (1 / (k : Real)) +
          ((N : Real) / B) ^ (1 / (k : Real))) :=
  (large_divisor_off_diagonal_tail (hl.trans_le hlb) (Nat.mul_pos hc hq.pos)
    hdiv hR A hA hw).trans
    (divisorOffDiagonalTailBound_unknown_prime hc hq hq2 hcq hB hk hl hlb hbN
      hprod hroots hR)

end JSP848
