import JSP848.UniformSquareRootBound
import JSP848.OffDiagonalEstimate
import Mathlib.Analysis.SpecialFunctions.Pow.Real

namespace JSP848

theorem squareRootMultiplicity_le_eighteen_rpow {b : Nat} (hb : 0 < b) :
    (squareRootMultiplicity b : Real) ≤ 18 * (b : Real) ^ (1 / 5 : Real) := by
  apply le_of_pow_le_pow_left₀ (n := 5) (by decide) (by positivity)
  have he : ((b : Real) ^ (1 / 5 : Real)) ^ (5 : Nat) = b := by
    rw [← Real.rpow_mul_natCast (Nat.cast_nonneg b)]
    norm_num
  rw [mul_pow, he]
  exact squareRootMultiplicity_fifth_le hb

theorem offDiagonalTailBound_le_uniform {N b : Nat} (hb : 0 < b) (hbN : b ≤ N)
    {R : Real} (hR : 0 < R) :
    offDiagonalTailBound N b R ≤ 18 * (N : Real) ^ (1 / 5 : Real) *
      (2 * ((N : Real) + 1) / R + ((N : Real) ^ 2 + 1) / R ^ 2) := by
  have hb' : (0 : Real) < b := by exact_mod_cast hb
  have hb1 : (1 : Real) ≤ b := by exact_mod_cast hb
  have hbN' : (b : Real) ≤ N := by exact_mod_cast hbN
  have hX : (b : Real) * N + 1 ≤ (N : Real) ^ 2 + 1 := by
    nlinarith [show (0 : Real) ≤ N from Nat.cast_nonneg N]
  have hY : (b : Real) * N + 1 ≤ (b : Real) * ((N : Real) + 1) := by nlinarith
  have hc : (squareRootMultiplicity b : Real) ≤ 18 * (N : Real) ^ (1 / 5 : Real) := by
    apply (squareRootMultiplicity_le_eighteen_rpow hb).trans
    exact mul_le_mul_of_nonneg_left
      (Real.rpow_le_rpow (Nat.cast_nonneg b) hbN' (by norm_num)) (by norm_num)
  have hm : 2 * ((b : Real) * N + 1) / ((b : Real) * R) ≤
      2 * ((N : Real) + 1) / R := by
    calc
      _ ≤ 2 * ((b : Real) * ((N : Real) + 1)) / ((b : Real) * R) :=
        div_le_div_of_nonneg_right (mul_le_mul_of_nonneg_left hY (by norm_num))
          (by positivity)
      _ = _ := by field_simp
  unfold offDiagonalTailBound
  exact mul_le_mul hc (add_le_add hm (div_le_div_of_nonneg_right hX (sq_nonneg R)))
    (by positivity) (by positivity)

theorem large_off_diagonal_uniform_tail {N b : Nat} (hb : 0 < b) (hbN : b ≤ N)
    {R : Real} (hR : 0 < R) (A : Finset Nat) (hA : A ⊆ Finset.Icc 1 N)
    (hw : ∀ a ∈ A, ∃ p : Nat, R < (p : Real) ∧ p ^ 2 ∣ a * b + 1) :
    (A.card : Real) ≤ 18 * (N : Real) ^ (1 / 5 : Real) *
      (2 * ((N : Real) + 1) / R + ((N : Real) ^ 2 + 1) / R ^ 2) :=
  (large_off_diagonal_tail hb hR A hA hw).trans (offDiagonalTailBound_le_uniform hb hbN hR)

namespace UniformOffDiagonalTailTests

theorem modulus_one : (squareRootMultiplicity 1 : Real) ≤ (18 : Real) := by
  simpa using squareRootMultiplicity_le_eighteen_rpow (by decide : 0 < 1)

theorem singleton_tail : (({60} : Finset Nat).card : Real) ≤
    18 * (100 : Real) ^ (1 / 5 : Real) * (2 * (100 + 1) / 10 + (100 ^ 2 + 1) / 10 ^ 2) := by
  apply large_off_diagonal_uniform_tail (b := 2) (by decide) (by decide) (by norm_num)
  · intro a ha
    have he : a = 60 := Finset.mem_singleton.mp ha
    subst a
    decide
  · intro a ha
    have he : a = 60 := Finset.mem_singleton.mp ha
    subst a
    exact ⟨11, by norm_num, by decide⟩

end UniformOffDiagonalTailTests

end JSP848
