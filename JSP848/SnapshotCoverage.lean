import JSP848.RawReplay

namespace JSP848.RawReplay

def checkRootCoverage (s : ReplaySnapshot) (M : Nat) (roots : List DiagonalRoot) : Bool :=
  (diagonalSieve M roots).all s.index.contains

theorem checkRootCoverage_append (s : ReplaySnapshot) (M : Nat)
    (left right : List DiagonalRoot) :
    checkRootCoverage s M (left ++ right) =
      (checkRootCoverage s M left && checkRootCoverage s M right) := by
  simp [checkRootCoverage, diagonalSieve, List.flatMap_append, List.all_append]

theorem upper_bounds_of_rootCoverage {s : ReplaySnapshot} (hs : Valid s)
    {M : Nat} {roots : List DiagonalRoot}
    (hr : forall e, e ∈ roots → e.Valid) (hp : CoversDiagonalPrimes M roots)
    (hc : checkRootCoverage s M roots = true) :
    forall N, N ≤ M → forall A, Admissible N A → A.card ≤ optimum N := by
  obtain ⟨state, hv, rfl⟩ := hs
  obtain ⟨a, _, ha⟩ := hv
  intro N hNM A hA
  apply ha.2.2 N A _ hA
  intro v hmem
  apply List.all_eq_true.mp hc v
  exact (mem_diagonalSieve_iff hr hp).mpr
    (admissible_subset_candidates (admissible_mono hA hNM) hmem)

def checkCoverage (s : ReplaySnapshot) (M : Nat)
    (cert : List DiagonalCertificateEntry) : Bool :=
  checkDiagonalCertificate M cert && checkRootCoverage s M (diagonalRootsFrom 5 cert)

theorem checkCoverage_refines (s : ReplayState) (M : Nat)
    (cert : List DiagonalCertificateEntry) :
    checkCoverage (ReplaySnapshot.ofState s) M cert = s.checkCoverage M cert := rfl

theorem upper_bounds_of_coverage {s : ReplaySnapshot} (hs : Valid s)
    {M : Nat} {cert : List DiagonalCertificateEntry}
    (hc : checkCoverage s M cert = true) :
    forall N, N ≤ M → forall A, Admissible N A → A.card ≤ optimum N := by
  obtain ⟨state, hv, rfl⟩ := hs
  exact ReplayState.upper_bounds_of_coverage hv hc

end JSP848.RawReplay
