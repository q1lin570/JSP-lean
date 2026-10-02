import JSP848.TreeBuckets
import JSP848.FastSquarefree

namespace JSP848

def eventIndexFrom (index : Std.TreeMap ℕ Unit) : List BucketEvent → Std.TreeMap ℕ Unit
  | [] => index
  | e :: rest => eventIndexFrom (index.insert e.vertex ()) rest

theorem eventIndexFrom_contains_iff (index : Std.TreeMap ℕ Unit)
    (events : List BucketEvent) (v : ℕ) :
    (eventIndexFrom index events).contains v = true ↔
      index.contains v = true ∨ v ∈ eventVertices events := by
  induction events generalizing index with
  | nil => simp [eventIndexFrom, eventVertices]
  | cons e rest ih =>
    rw [eventIndexFrom, ih, Std.TreeMap.contains_insert]
    simp only [Bool.or_eq_true, beq_iff_eq, Nat.compare_eq_eq]
    have hmem : v ∈ eventVertices (e :: rest) ↔ e.vertex = v ∨ v ∈ eventVertices rest := by
      simp [eventVertices]
    rw [hmem]
    tauto

def eventIndex (events : List BucketEvent) : Std.TreeMap ℕ Unit := eventIndexFrom ∅ events

theorem eventIndex_contains_iff (events : List BucketEvent) (v : ℕ) :
    (eventIndex events).contains v = true ↔ v ∈ eventVertices events := by
  unfold eventIndex
  rw [eventIndexFrom_contains_iff]
  simp

/-- Duplicate or unordered candidates and events are permitted. Every candidate
must be an actual event vertex, not merely a vertex mentioned in a move. -/
def checkEventCoverage (candidates : List ℕ) (events : List BucketEvent) : Bool :=
  let index := eventIndex events
  candidates.all index.contains

theorem checkEventCoverage_iff (candidates : List ℕ) (events : List BucketEvent) :
    checkEventCoverage candidates events = true ↔
      ∀ v ∈ candidates, v ∈ eventVertices events := by
  simp only [checkEventCoverage, List.all_eq_true, eventIndex_contains_iff]

/-- All mathematical premises for the finite range are checked, including prime
coverage, squarefreeness, event replay, and coverage of the diagonal sieve. -/
def checkFiniteCertificate (M : ℕ) (cert : List DiagonalCertificateEntry)
    (events : List BucketEvent) : Bool :=
  checkDiagonalCertificate M cert &&
    (checkTreeBucketEvents fastSquarefree (optimum M) events &&
      checkEventCoverage (diagonalSieve M (diagonalRootsFrom 5 cert)) events)

theorem checkFiniteCertificate_sound {M : ℕ} {cert : List DiagonalCertificateEntry}
    {events : List BucketEvent} (hcheck : checkFiniteCertificate M cert events = true) :
    ∀ N ≤ M, ∀ A, Admissible N A → A.card ≤ optimum N := by
  have hc := Bool.and_eq_true_iff.mp hcheck
  have he := Bool.and_eq_true_iff.mp hc.2
  exact upper_bounds_of_tree_bucket_certificate fastSquarefree_sound hc.1 he.1
    ((checkEventCoverage_iff _ _).mp he.2)

end JSP848
