import JSP848.MiddleClosing25
import JSP848.MiddleClosing26
import JSP848.MiddleClosing27
import JSP848.MiddleClosing28To30
import JSP848.MiddleClosing30To41
import JSP848.LargeRangeUpperBound

namespace JSP848

theorem upper_bound_middle {N : Nat} {A : Finset Nat}
    (hlo : 2 ^ 25 <= N) (hhi : N <= 2 ^ 41) (hA : Admissible N A) :
    A.card <= optimum N := by
  by_cases h26 : N <= 2 ^ 26
  · exact upper_bound_middle25 hlo h26 hA
  by_cases h27 : N <= 2 ^ 27
  · exact upper_bound_middle26 (by omega) h27 hA
  by_cases h28 : N <= 2 ^ 28
  · exact upper_bound_middle27 (by omega) h28 hA
  by_cases h30 : N <= 2 ^ 30
  · exact upper_bound_middle28To30 (by omega) h30 hA
  exact upper_bound_middle30To41 (by omega) hhi hA

/-- Complete analytic range; only the finite range below 2^25 remains. -/
theorem upper_bound_from_finite_cutoff {N : Nat} {A : Finset Nat}
    (hlo : 2 ^ 25 <= N) (hA : Admissible N A) : A.card <= optimum N := by
  by_cases hhi : N <= 2 ^ 41
  · exact upper_bound_middle hlo hhi hA
  exact upper_bound_large (by omega) hA

theorem exact_from_finite_cutoff {N : Nat} (hlo : 2 ^ 25 <= N) :
    ∃ B : Finset Nat, Admissible N B ∧ B.card = optimum N ∧
      forall A : Finset Nat, Admissible N A -> A.card <= B.card := by
  refine ⟨extremal N, admissible_extremal N, card_extremal N, ?_⟩
  intro A hA
  rw [card_extremal]
  exact upper_bound_from_finite_cutoff hlo hA

namespace MiddleRangeUpperBoundTests

theorem cutoff {A : Finset Nat} (hA : Admissible (2 ^ 25) A) :
    A.card <= 1342178 := by
  simpa [optimum] using upper_bound_from_finite_cutoff (by decide) hA

theorem wide_interval_join {A : Finset Nat} (hA : Admissible (2 ^ 30) A) :
    A.card <= 42949673 := by
  simpa [optimum] using upper_bound_middle (by decide) (by decide) hA

theorem unbounded_interval_join {A : Finset Nat} (hA : Admissible (2 ^ 41) A) :
    A.card <= 87960930222 := by
  simpa [optimum] using upper_bound_from_finite_cutoff (by decide) hA

end MiddleRangeUpperBoundTests

end JSP848
