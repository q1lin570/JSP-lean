import JSP848.FiniteRangeUpperBound
import JSP848.MiddleRangeUpperBound

namespace JSP848

/-- The original all-N upper bound, with the diagonal condition included. -/
theorem upper_bound : UpperBound := by
  intro N A hA
  by_cases hN : N ≤ 33554432
  · exact upper_bound_finite N hN A hA
  · exact upper_bound_from_finite_cutoff (by omega) hA

/-- The optimum is attained for every N by the residue class 7 modulo 25. -/
theorem solution : ∀ N, ∃ B : Finset Nat,
    Admissible N B ∧ B.card = optimum N ∧
      ∀ A : Finset Nat, Admissible N A → A.card ≤ B.card :=
  upperBound_iff_exact.mp upper_bound

end JSP848
