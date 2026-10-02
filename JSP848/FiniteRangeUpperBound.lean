import JSP848.ReplayFull.ReplayFull
import JSP848.FullCoverage

namespace JSP848

/-- Complete finite range. Its imports require every transition and coverage group. -/
theorem upper_bound_finite : ∀ N ≤ 33554432, ∀ A,
    Admissible N A → A.card ≤ optimum N :=
  RawReplay.upper_bounds_of_rootCoverage ReplayFull.final_valid
    FullDiagonal.roots_valid FullDiagonal.prime_coverage FullCoverage.checked

end JSP848
