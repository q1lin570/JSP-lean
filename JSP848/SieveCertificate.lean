import JSP848.Sieve
import JSP848.Coloring

namespace JSP848

/-- Each integer `5, 9, 13, ...` supplies either a root or a proper divisor. -/
inductive DiagonalCertificateEntry where
  | root (value : ℕ)
  | factor (value : ℕ)
  deriving DecidableEq, Repr

def checkDiagonalEntry (base : ℕ) : DiagonalCertificateEntry → Bool
  | .root r => decide (DiagonalRoot.Valid ⟨base, r⟩)
  | .factor d => decide (1 < d ∧ d < base ∧ d ∣ base)

def checkDiagonalEntries (base : ℕ) : List DiagonalCertificateEntry → Bool
  | [] => true
  | entry :: rest => checkDiagonalEntry base entry && checkDiagonalEntries (base + 4) rest

def diagonalRootsFrom (base : ℕ) : List DiagonalCertificateEntry → List DiagonalRoot
  | [] => []
  | .root r :: rest => ⟨base, r⟩ :: diagonalRootsFrom (base + 4) rest
  | .factor _ :: rest => diagonalRootsFrom (base + 4) rest

theorem checkedDiagonalEntries_valid {base : ℕ} {cert : List DiagonalCertificateEntry}
    (hcheck : checkDiagonalEntries base cert = true) :
    ∀ e ∈ diagonalRootsFrom base cert, e.Valid := by
  induction cert generalizing base with
  | nil => simp [diagonalRootsFrom]
  | cons entry rest ih =>
    have hc := Bool.and_eq_true_iff.mp hcheck
    cases entry with
    | root r =>
      intro e he
      simp only [diagonalRootsFrom, List.mem_cons] at he
      rcases he with rfl | he
      · exact of_decide_eq_true hc.1
      · exact ih hc.2 e he
    | factor d => exact ih hc.2

theorem checkedDiagonalEntries_cover_index {base : ℕ}
    {cert : List DiagonalCertificateEntry} (hcheck : checkDiagonalEntries base cert = true) :
    ∀ i < cert.length, (base + 4 * i).Prime →
      ∃ e ∈ diagonalRootsFrom base cert, e.base = base + 4 * i := by
  induction cert generalizing base with
  | nil => simp
  | cons entry rest ih =>
    have hc := Bool.and_eq_true_iff.mp hcheck
    intro i hi hp
    cases i with
    | zero =>
      have hpbase : base.Prime := by simpa using hp
      cases entry with
      | root r =>
        exact ⟨⟨base, r⟩, by simp [diagonalRootsFrom], by simp⟩
      | factor d =>
        have hf : 1 < d ∧ d < base ∧ d ∣ base := of_decide_eq_true hc.1
        have := (Nat.dvd_prime hpbase).mp hf.2.2
        omega
    | succ i =>
      have hi' : i < rest.length := by simpa using hi
      have hp' : (base + 4 + 4 * i).Prime := by
        convert hp using 1
        omega
      obtain ⟨e, he, hbase⟩ := ih hc.2 i hi' hp'
      refine ⟨e, ?_, by omega⟩
      cases entry <;> simp [diagonalRootsFrom, he]

/-- Coverage includes all possible prime witnesses up to `N`, not just the supplied roots. -/
def checkDiagonalCertificate (N : ℕ) (cert : List DiagonalCertificateEntry) : Bool :=
  decide (N ≤ 4 * cert.length + 4) && checkDiagonalEntries 5 cert

theorem checkedDiagonalCertificate_cover {N : ℕ} {cert : List DiagonalCertificateEntry}
    (hcheck : checkDiagonalCertificate N cert = true) :
    CoversDiagonalPrimes N (diagonalRootsFrom 5 cert) := by
  have hc := Bool.and_eq_true_iff.mp hcheck
  have hlength : N ≤ 4 * cert.length + 4 := of_decide_eq_true hc.1
  intro p hpN hp hp4
  have hp2 := hp.two_le
  have hpdiv := Nat.div_add_mod p 4
  have hi : p / 4 - 1 < cert.length := by omega
  have heq : 5 + 4 * (p / 4 - 1) = p := by omega
  obtain ⟨e, he, hep⟩ := checkedDiagonalEntries_cover_index hc.2 _ hi (by rwa [heq])
  exact ⟨e, he, hep.trans heq⟩

/-- A checked certificate discharges both root validity and prime-table completeness. -/
theorem mem_checkedDiagonalSieve_iff {N a : ℕ} {cert : List DiagonalCertificateEntry}
    (hcheck : checkDiagonalCertificate N cert = true) :
    a ∈ diagonalSieve N (diagonalRootsFrom 5 cert) ↔ a ∈ diagonalCandidates N :=
  mem_diagonalSieve_iff (checkedDiagonalEntries_valid (Bool.and_eq_true_iff.mp hcheck).2)
    (checkedDiagonalCertificate_cover hcheck)

theorem upper_bounds_of_checked_sieve_colorings {M : ℕ}
    {cert : List DiagonalCertificateEntry}
    (hcheck : checkDiagonalCertificate M cert = true)
    (hc : ∀ m ∈ diagonalSieve M (diagonalRootsFrom 5 cert),
      ∃ color, ValidColoring m (optimum m) color) :
    ∀ N ≤ M, ∀ A, Admissible N A → A.card ≤ optimum N := by
  apply upper_bounds_of_candidate_colorings
  intro m hm
  exact hc m ((mem_checkedDiagonalSieve_iff hcheck).mpr hm)

end JSP848
