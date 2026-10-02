import JSP848.AnalyticCaseReduction
import JSP848.LargeRangeErrorBounds

namespace JSP848

/-- The original upper bound on the complete unbounded range starting at 2^41. -/
theorem upper_bound_large {N : Nat} (hN : 2 ^ 41 ≤ N) {A : Finset Nat}
    (hA : Admissible N A) : A.card ≤ optimum N := by
  have hNpos : (0 : Real) < N := by exact_mod_cast (show 0 < N by omega)
  let u : Real := (N : Real) ^ (1 / 60 : Real)
  have hu : 0 < u := Real.rpow_pos_of_pos hNpos _
  have hpower : u ^ 60 = (N : Real) := by
    dsimp [u]
    rw [← Real.rpow_mul_natCast hNpos.le]
    norm_num
  have hbase : (2199023255552 : Real) ≤ u ^ 60 := by
    rw [hpower]
    exact_mod_cast hN
  have hrho : (N : Real) ^ (1 / 5 : Real) = u ^ 12 := by
    rw [← hpower, ← Real.rpow_natCast_mul hu.le]
    norm_num
  obtain ⟨hR, hS⟩ := largeRoot_cutoffs hu.le hbase
  apply upper_bound_of_large_error_bounds (show 1000 ≤ N by omega) hA
    (R := 3 * u ^ 45) (S := 4 * u ^ 40) (coefficientR := 3) (coefficientS := 3)
    (by positivity) (by linarith)
    (primeCounting_le_three_mul_div_log hR) (primeCounting_le_three_mul_div_log hS)
  · simpa only [hpower] using largeRoot_prime_error_R hu hbase
  · rw [hrho, ← hpower]
    exact largeRoot_uniform_tail hu hbase
  · rw [← hpower]
    exact largeRoot_diagonal_error hu hbase hpower.symm

theorem exact_large_range {N : Nat} (hN : 2 ^ 41 ≤ N) :
    ∃ B : Finset Nat, Admissible N B ∧ B.card = optimum N ∧
      ∀ A : Finset Nat, Admissible N A → A.card ≤ B.card := by
  refine ⟨extremal N, admissible_extremal N, card_extremal N, ?_⟩
  intro A hA
  rw [card_extremal]
  exact upper_bound_large hN hA

namespace LargeRangeUpperBoundTests

theorem seventy_admissible {N : Nat} (hN : 70 ≤ N) : Admissible N {70} := by
  constructor
  · simpa only [Finset.singleton_subset_iff, Finset.mem_Icc] using
      (show 1 ≤ 70 ∧ 70 ≤ N from ⟨by decide, hN⟩)
  · intro a ha b hb
    have ha70 := Finset.mem_singleton.mp ha
    have hb70 := Finset.mem_singleton.mp hb
    subst a
    subst b
    intro hs
    have hunit := hs 13 (by norm_num)
    norm_num at hunit

theorem boundary_singleton : ({70} : Finset Nat).card ≤ optimum (2 ^ 41) :=
  upper_bound_large (by rfl) (seventy_admissible (by norm_num))

theorem boundary_exact : ∃ B : Finset Nat,
    Admissible (2 ^ 41) B ∧ B.card = optimum (2 ^ 41) ∧
      ∀ A : Finset Nat, Admissible (2 ^ 41) A → A.card ≤ B.card :=
  exact_large_range (by rfl)

end LargeRangeUpperBoundTests

end JSP848
