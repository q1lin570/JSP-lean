import JSP848.RestrictedOffDiagonalTail
import JSP848.CofactorDensityBound

namespace JSP848

noncomputable def divisorDensity (c : Nat) : Real :=
  (Nat.totient c : Real) / ((c : Real) * squareRootMultiplicity c)

theorem divisorDensity_nonneg (c : Nat) : 0 ≤ divisorDensity c := by
  unfold divisorDensity
  positivity

noncomputable def divisorOffDiagonalTailBound (N b c : Nat) (R : Real) : Real :=
  (squareRootMultiplicity b : Real) *
    (divisorDensity c * (2 * ((b : Real) * N + 1) / ((b : Real) * R) +
      ((b : Real) * N + 1) / R ^ 2) +
        ((c : Real) * divisorDensity c) * (2 * Real.sqrt ((b : Real) * N + 1) / b + 1))

theorem restrictedOffDiagonalTailBound_le_totient {N b c : Nat}
    (hc : 0 < c) {R : Real} (hR : 0 < R) :
    restrictedOffDiagonalTailBound N b c R ≤ divisorOffDiagonalTailBound N b c R := by
  have hd : cofactorDensity c ≤ divisorDensity c := cofactorDensity_le_totient hc
  have hcard : ((inverseSquareResidues c).card : Real) ≤ (c : Real) * divisorDensity c := by
    have he := (div_le_iff₀ (show (0 : Real) < c by exact_mod_cast hc)).mp hd
    simpa only [mul_comm] using he
  have hmain := mul_le_mul_of_nonneg_right hd
    (show 0 ≤ 2 * ((b : Real) * N + 1) / ((b : Real) * R) +
      ((b : Real) * N + 1) / R ^ 2 by positivity)
  have ht : Real.sqrt ((b : Real) * N + 1) / b + 1 ≤
      2 * Real.sqrt ((b : Real) * N + 1) / b + 1 := by
    have hnonneg : 0 ≤ Real.sqrt ((b : Real) * N + 1) / b := by positivity
    rw [mul_div_assoc]
    linarith
  have htail := mul_le_mul hcard ht (by positivity)
    (mul_nonneg (Nat.cast_nonneg c) (divisorDensity_nonneg c))
  exact mul_le_mul_of_nonneg_left (add_le_add hmain htail)
    (Nat.cast_nonneg (squareRootMultiplicity b))

theorem large_divisor_off_diagonal_tail {N b c : Nat}
    (hb : 0 < b) (hc : 0 < c) (hcb : c ∣ b) {R : Real} (hR : 0 < R)
    (A : Finset Nat) (hA : A ⊆ Finset.Icc 1 N)
    (hw : ∀ a ∈ A, ∃ p : Nat, R < (p : Real) ∧ p ^ 2 ∣ a * b + 1) :
    (A.card : Real) ≤ divisorOffDiagonalTailBound N b c R :=
  (large_restricted_off_diagonal_tail hb hc hcb hR A hA hw).trans
    (restrictedOffDiagonalTailBound_le_totient hc hR)

theorem divisorOffDiagonalTailBound_le_parameters {N b c l : Nat}
    (hl : 0 < l) (hlb : l ≤ b) (hbN : b ≤ N) {h R : Real}
    (hρ : (squareRootMultiplicity b : Real) ≤ h) (hR : 0 < R) :
    divisorOffDiagonalTailBound N b c R ≤
      h * divisorDensity c * (2 * ((N : Real) + 1) / R + ((N : Real) ^ 2 + 1) / R ^ 2) +
        h * ((c : Real) * divisorDensity c) * (2 * Real.sqrt (((N : Real) + 1) / l) + 1) := by
  have hb : 0 < b := lt_of_lt_of_le hl hlb
  have hb' : (0 : Real) < b := by exact_mod_cast hb
  have hl' : (0 : Real) < l := by exact_mod_cast hl
  have hlb' : (l : Real) ≤ b := by exact_mod_cast hlb
  have hbN' : (b : Real) ≤ N := by exact_mod_cast hbN
  have hb1 : (1 : Real) ≤ b := by exact_mod_cast hb
  have hh : 0 ≤ h := (Nat.cast_nonneg _).trans hρ
  have hX : (b : Real) * N + 1 ≤ (N : Real) ^ 2 + 1 := by
    nlinarith [show (0 : Real) ≤ N from Nat.cast_nonneg N]
  have hY : (b : Real) * N + 1 ≤ (b : Real) * ((N : Real) + 1) := by nlinarith
  have hmain₁ : 2 * ((b : Real) * N + 1) / ((b : Real) * R) ≤
      2 * ((N : Real) + 1) / R := by
    calc
      _ ≤ 2 * ((b : Real) * ((N : Real) + 1)) / ((b : Real) * R) :=
        div_le_div_of_nonneg_right (mul_le_mul_of_nonneg_left hY (by norm_num)) (by positivity)
      _ = _ := by field_simp
  have hs : Real.sqrt ((b : Real) * N + 1) / b ≤ Real.sqrt (((N : Real) + 1) / l) := by
    apply Real.le_sqrt_of_sq_le
    rw [div_pow, Real.sq_sqrt (by positivity)]
    apply (div_le_div_iff₀ (sq_pos_of_pos hb') hl').mpr
    calc
      _ ≤ ((b : Real) * ((N : Real) + 1)) * l := mul_le_mul_of_nonneg_right hY hl'.le
      _ ≤ ((b : Real) * ((N : Real) + 1)) * b :=
        mul_le_mul_of_nonneg_left hlb' (by positivity)
      _ = _ := by ring
  have hmain := mul_le_mul_of_nonneg_left
    (add_le_add hmain₁ (div_le_div_of_nonneg_right hX (sq_nonneg R)))
    (divisorDensity_nonneg c)
  have htail := mul_le_mul_of_nonneg_left
    (show 2 * Real.sqrt ((b : Real) * N + 1) / b + 1 ≤
      2 * Real.sqrt (((N : Real) + 1) / l) + 1 by
        rw [mul_div_assoc]
        linarith)
    (mul_nonneg (Nat.cast_nonneg c) (divisorDensity_nonneg c))
  have hm := mul_le_mul hρ (add_le_add hmain htail)
    (by have := divisorDensity_nonneg c; positivity) hh
  unfold divisorOffDiagonalTailBound
  exact hm.trans_eq (by ring)

namespace DivisorOffDiagonalTailTests

theorem density_fifteen : divisorDensity 15 = (2 / 15 : Real) := by
  have hρ : squareRootMultiplicity 15 = 4 := by decide
  have hφ : Nat.totient 15 = 8 := by decide
  rw [divisorDensity, hρ, hφ]
  norm_num

theorem actual_tail : (({4} : Finset Nat).card : Real) ≤ divisorOffDiagonalTailBound 4 6 3 4 := by
  apply large_divisor_off_diagonal_tail (by decide) (by decide) (by decide) (by norm_num)
  · intro a ha
    have he := Finset.mem_singleton.mp ha
    subst a
    decide
  · intro a ha
    have he := Finset.mem_singleton.mp ha
    subst a
    exact ⟨5, by norm_num, by decide⟩

end DivisorOffDiagonalTailTests

end JSP848
