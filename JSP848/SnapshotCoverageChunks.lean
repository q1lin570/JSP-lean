import JSP848.SnapshotCoverage
import JSP848.DiagonalChunks

namespace JSP848.CheckedDiagonalBlock

theorem rootCoverage_append {base n m : Nat} (s : ReplaySnapshot) (N : Nat)
    (xs : CheckedDiagonalBlock base n)
    (ys : CheckedDiagonalBlock (base + 4 * n) m)
    (hx : RawReplay.checkRootCoverage s N (diagonalRootsFrom base xs.entries) = true)
    (hy : RawReplay.checkRootCoverage s N
      (diagonalRootsFrom (base + 4 * n) ys.entries) = true) :
    RawReplay.checkRootCoverage s N (diagonalRootsFrom base (xs.append ys).entries) = true := by
  change RawReplay.checkRootCoverage s N (diagonalRootsFrom base (xs.entries ++ ys.entries)) = true
  rw [diagonalRootsFrom_append, xs.length_eq, RawReplay.checkRootCoverage_append, hx, hy]
  rfl

end JSP848.CheckedDiagonalBlock
