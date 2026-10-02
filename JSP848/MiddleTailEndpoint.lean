import JSP848.MiddleEndpointBounds
import JSP848.UnknownPrimeTail

namespace JSP848

/-- The modulus-one option pays no residue-rounding correction. -/
theorem large_off_diagonal_endpoint {N b : Nat} {u lo r roots : Real}
    (hb : 0 < b) (hbN : b ≤ N) (hlo : 0 < lo) (hlu : lo ≤ u) (hr : 0 < r)
    (hN : (N : Real) = u ^ 3) (hroots : (squareRootMultiplicity b : Real) ≤ roots)
    (A : Finset Nat) (hA : A ⊆ Finset.Icc 1 N)
    (hw : ∀ a ∈ A, ∃ p : Nat, r * u ^ 2 < (p : Real) ∧ p ^ 2 ∣ a * b + 1) :
    (A.card : Real) ≤ (roots * cubicMainRatio lo r) * N := by
  have hu := hlo.trans_le hlu
  have hn : (0 : Real) < N := by rw [hN]; positivity
  have hh : 0 ≤ roots := (Nat.cast_nonneg _).trans hroots
  have hcut : 0 < r * u ^ 2 := by positivity
  have hm := off_diagonal_main_bound hb hbN hcut
  have ht := large_off_diagonal_tail hb hcut A hA hw
  have hbound : (A.card : Real) ≤ roots *
      (2 * ((N : Real) + 1) / (r * u ^ 2) + ((N : Real) ^ 2 + 1) / (r * u ^ 2) ^ 2) := by
    apply ht.trans
    exact mul_le_mul hroots hm (by positivity) hh
  apply (div_le_iff₀ hn).mp
  calc
    (A.card : Real) / N ≤ (roots *
        (2 * ((N : Real) + 1) / (r * u ^ 2) + ((N : Real) ^ 2 + 1) / (r * u ^ 2) ^ 2)) / N :=
      div_le_div_of_nonneg_right hbound hn.le
    _ = roots * cubicMainRatio u r := by rw [hN]; unfold cubicMainRatio; ring
    _ ≤ roots * cubicMainRatio lo r :=
      mul_le_mul_of_nonneg_left (cubicMainRatio_antitone hlo hlu hr) hh

theorem large_divisor_off_diagonal_endpoint {N b c l : Nat}
    {u lo r roots sqrtUpper : Real} (hc : 0 < c) (hdiv : c ∣ b)
    (hl : 0 < l) (hlb : l ≤ b) (hbN : b ≤ N)
    (hlo : 0 < lo) (hlu : lo ≤ u) (hr : 0 < r) (hN : (N : Real) = u ^ 3)
    (hroots : (squareRootMultiplicity b : Real) ≤ roots)
    (hsqrt0 : 0 ≤ sqrtUpper) (hsqrt : (lo ^ 3 + 1) / l ≤ sqrtUpper ^ 2)
    (A : Finset Nat) (hA : A ⊆ Finset.Icc 1 N)
    (hw : ∀ a ∈ A, ∃ p : Nat, r * u ^ 2 < (p : Real) ∧ p ^ 2 ∣ a * b + 1) :
    (A.card : Real) ≤
      (roots * divisorDensity c * cubicMainRatio lo r +
        roots * ((c : Real) * divisorDensity c) * ((2 * sqrtUpper + 1) / lo ^ 3)) * N := by
  have hu := hlo.trans_le hlu
  have hn : (0 : Real) < N := by rw [hN]; positivity
  have hh : 0 ≤ roots := (Nat.cast_nonneg _).trans hroots
  have hd := divisorDensity_nonneg c
  have hcut : 0 < r * u ^ 2 := by positivity
  have ht := (large_divisor_off_diagonal_tail (hl.trans_le hlb) hc hdiv hcut A hA hw).trans
    (divisorOffDiagonalTailBound_le_parameters hl hlb hbN hroots hcut)
  have hm := mul_le_mul_of_nonneg_left (cubicMainRatio_antitone hlo hlu hr)
    (mul_nonneg hh hd)
  have hs := mul_le_mul_of_nonneg_left
    (known_remainder_le_endpoint hlo hlu (by exact_mod_cast hl) hsqrt0 hsqrt)
    (mul_nonneg hh (mul_nonneg (Nat.cast_nonneg c) hd))
  apply (div_le_iff₀ hn).mp
  calc
    (A.card : Real) / N ≤ _ := div_le_div_of_nonneg_right ht hn.le
    _ = roots * divisorDensity c * cubicMainRatio u r +
        roots * ((c : Real) * divisorDensity c) *
          ((2 * Real.sqrt ((u ^ 3 + 1) / l) + 1) / u ^ 3) := by
      rw [hN]
      unfold cubicMainRatio
      ring
    _ ≤ _ := add_le_add hm hs

theorem large_unknown_prime_off_diagonal_endpoint {N b c B q k l : Nat}
    {u lo r roots sqrtUpper firstRoot secondRoot : Real}
    (hc : 0 < c) (hq : q.Prime) (hq2 : q ≠ 2) (hcq : Nat.Coprime c q)
    (hdiv : c * q ∣ b) (hB : 0 < B) (hk : 2 ≤ k) (hl : 0 < l)
    (hlb : l ≤ b) (hbN : b ≤ N) (hprod : B * q ^ k ≤ b)
    (hlo : 0 < lo) (hlu : lo ≤ u) (hr : 0 < r) (hN : (N : Real) = u ^ 3)
    (hroots : (squareRootMultiplicity b : Real) ≤ roots)
    (hsqrt0 : 0 ≤ sqrtUpper) (hfirst0 : 0 ≤ firstRoot) (hsecond0 : 0 ≤ secondRoot)
    (hsqrt : (lo ^ 3 + 1) / l ≤ sqrtUpper ^ 2)
    (hfirst : (l : Real) / B ≤ firstRoot ^ k) (hsecond : lo ^ 3 / B ≤ secondRoot ^ k)
    (A : Finset Nat) (hA : A ⊆ Finset.Icc 1 N)
    (hw : ∀ a ∈ A, ∃ p : Nat, r * u ^ 2 < (p : Real) ∧ p ^ 2 ∣ a * b + 1) :
    (A.card : Real) ≤
      ((roots * divisorDensity c / 2) * cubicMainRatio lo r +
        (roots * divisorDensity c / 2) * c *
          ((2 * sqrtUpper * firstRoot + secondRoot) / lo ^ 3)) * N := by
  have hu := hlo.trans_le hlu
  have hn : (0 : Real) < N := by rw [hN]; positivity
  have hh : 0 ≤ roots := (Nat.cast_nonneg _).trans hroots
  have hd := divisorDensity_nonneg c
  have hcut : 0 < r * u ^ 2 := by positivity
  have ht := large_unknown_prime_off_diagonal_tail hc hq hq2 hcq hdiv hB hk hl
    hlb hbN hprod hroots hcut A hA hw
  have hm := mul_le_mul_of_nonneg_left (cubicMainRatio_antitone hlo hlu hr)
    (show 0 ≤ roots * divisorDensity c / 2 by positivity)
  have hs := mul_le_mul_of_nonneg_left
    (unknown_remainder_le_endpoint hlo hlu (by exact_mod_cast hl) (by exact_mod_cast hB)
      (by omega : 1 ≤ k) hsqrt0 hfirst0 hsecond0 hsqrt hfirst hsecond)
    (show 0 ≤ (roots * divisorDensity c / 2) * c by positivity)
  apply (div_le_iff₀ hn).mp
  calc
    (A.card : Real) / N ≤ _ := div_le_div_of_nonneg_right ht hn.le
    _ = (roots * divisorDensity c / 2) * cubicMainRatio u r +
        (roots * divisorDensity c / 2) * c *
          ((2 * Real.sqrt ((u ^ 3 + 1) / l) * ((l : Real) / B) ^ (1 / (k : Real)) +
            (u ^ 3 / B) ^ (1 / (k : Real))) / u ^ 3) := by
      rw [hN]
      unfold cubicMainRatio
      ring
    _ ≤ _ := add_le_add hm hs

end JSP848
