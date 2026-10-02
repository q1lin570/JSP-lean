import JSP848.ReciprocalSquareTail
import JSP848.FastPrimeDensity

namespace JSP848

def densityScale : Nat := 1000000000

def roundedSquareWeight (coefficient p : Nat) : Nat :=
  coefficient * densityScale / p ^ 2 + 1

theorem reciprocal_square_le_rounded (coefficient p : Nat) (hp : 0 < p) :
    (coefficient : Real) / (p : Real) ^ 2 ≤
      (roundedSquareWeight coefficient p : Real) / densityScale := by
  have hpos : 0 < p ^ 2 := pow_pos hp _
  have hm := Nat.mod_lt (coefficient * densityScale) hpos
  have he := Nat.div_add_mod (coefficient * densityScale) (p ^ 2)
  have hn : coefficient * densityScale ≤ roundedSquareWeight coefficient p * p ^ 2 := by
    unfold roundedSquareWeight
    nlinarith
  have hr : (coefficient : Real) * densityScale ≤
      (roundedSquareWeight coefficient p : Real) * (p : Real) ^ 2 := by
    exact_mod_cast hn
  exact (div_le_div_iff₀ (by positivity) (by norm_num [densityScale])).mpr hr

def diagonalDensityPrimes : Finset Nat :=
  (Finset.range 10001).filter (fun p => 13 ≤ p ∧ p.Prime ∧ p % 4 = 1)

def offDiagonalDensityPrimes : Finset Nat :=
  (Finset.range 10001).filter (fun p => p.Prime ∧ p ≠ 2 ∧ p ≠ 5)

theorem diagonal_density_checked :
    (∑ p ∈ diagonalDensityPrimes, roundedSquareWeight 2 p) ≤ 27620000 :=
  FastPrimeDensity.diagonal_checked

theorem off_diagonal_density_checked :
    (∑ p ∈ offDiagonalDensityPrimes, roundedSquareWeight 1 p) ≤ 162240000 :=
  FastPrimeDensity.off_diagonal_checked

theorem sum_reciprocal_square_le_rounded (P : Finset Nat) (coefficient bound : Nat)
    (hP : ∀ p ∈ P, 0 < p) (hb : (∑ p ∈ P, roundedSquareWeight coefficient p) ≤ bound) :
    (∑ p ∈ P, (coefficient : Real) / (p : Real) ^ 2) ≤ (bound : Real) / densityScale := by
  calc
    _ ≤ ∑ p ∈ P, (roundedSquareWeight coefficient p : Real) / densityScale :=
      Finset.sum_le_sum (fun p hp => reciprocal_square_le_rounded coefficient p (hP p hp))
    _ = ((∑ p ∈ P, roundedSquareWeight coefficient p : Nat) : Real) / densityScale := by
      simp only [Nat.cast_sum, Finset.sum_div]
    _ ≤ _ := div_le_div_of_nonneg_right (by exact_mod_cast hb) (Nat.cast_nonneg _)

theorem diagonal_density_small :
    (∑ p ∈ diagonalDensityPrimes, 2 / (p : Real) ^ 2) ≤ (1381 / 50000 : Real) := by
  have hb := sum_reciprocal_square_le_rounded diagonalDensityPrimes 2 27620000
    (fun p hp => by have := (Finset.mem_filter.mp hp).2.1; omega)
    diagonal_density_checked
  norm_num [densityScale] at hb ⊢
  exact hb

theorem off_diagonal_density_small :
    (∑ p ∈ offDiagonalDensityPrimes, 1 / (p : Real) ^ 2) ≤ (507 / 3125 : Real) := by
  have hb := sum_reciprocal_square_le_rounded offDiagonalDensityPrimes 1 162240000
    (fun p hp => (Finset.mem_filter.mp hp).2.1.pos) off_diagonal_density_checked
  norm_num [densityScale] at hb ⊢
  exact hb

end JSP848
