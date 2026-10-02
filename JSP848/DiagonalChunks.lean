import JSP848.SieveCertificate

namespace JSP848

theorem checkDiagonalEntries_append (base : ℕ) (xs ys : List DiagonalCertificateEntry) :
    checkDiagonalEntries base (xs ++ ys) =
      (checkDiagonalEntries base xs && checkDiagonalEntries (base + 4 * xs.length) ys) := by
  induction xs generalizing base with
  | nil => simp [checkDiagonalEntries]
  | cons entry rest ih =>
    simp only [List.cons_append, checkDiagonalEntries, ih, List.length_cons]
    have hbase : base + 4 + 4 * rest.length = base + 4 * (rest.length + 1) := by omega
    rw [hbase, Bool.and_assoc]

theorem diagonalRootsFrom_append (base : ℕ) (xs ys : List DiagonalCertificateEntry) :
    diagonalRootsFrom base (xs ++ ys) =
      diagonalRootsFrom base xs ++ diagonalRootsFrom (base + 4 * xs.length) ys := by
  induction xs generalizing base with
  | nil => simp [diagonalRootsFrom]
  | cons entry rest ih =>
    have hbase : base + 4 + 4 * rest.length = base + 4 * (rest.length + 1) := by omega
    cases entry <;> simp [diagonalRootsFrom, ih, hbase]

theorem checkDiagonalEntries_compose {base : ℕ} {xs ys : List DiagonalCertificateEntry}
    (hx : checkDiagonalEntries base xs = true)
    (hy : checkDiagonalEntries (base + 4 * xs.length) ys = true) :
    checkDiagonalEntries base (xs ++ ys) = true := by
  rw [checkDiagonalEntries_append, hx, hy]
  rfl

/-- Store the checked length so concatenation need not traverse earlier entries. -/
structure CheckedDiagonalBlock (base count : ℕ) where
  entries : List DiagonalCertificateEntry
  length_eq : entries.length = count
  checked : checkDiagonalEntries base entries = true

namespace CheckedDiagonalBlock

def append {base n m : ℕ} (xs : CheckedDiagonalBlock base n)
    (ys : CheckedDiagonalBlock (base + 4 * n) m) : CheckedDiagonalBlock base (n + m) where
  entries := xs.entries ++ ys.entries
  length_eq := by simp only [List.length_append, xs.length_eq, ys.length_eq]
  checked := checkDiagonalEntries_compose xs.checked (by simpa only [xs.length_eq] using ys.checked)

theorem certificate_checked {count N : ℕ} (block : CheckedDiagonalBlock 5 count)
    (hN : N ≤ 4 * count + 4) : checkDiagonalCertificate N block.entries = true := by
  apply Bool.and_eq_true_iff.mpr
  exact ⟨by simpa only [block.length_eq] using (decide_eq_true hN), block.checked⟩

end CheckedDiagonalBlock

end JSP848
