import JSP848.DenseRootCoverage
import JSP848.DenseRootCoverageTail

namespace JSP848.DenseRootCoverage

theorem split_entries : diagonalRootsFrom 5 FullDiagonal.entries000000 =
    diagonalRootsFrom 5 (FullDiagonal.entries000000.take 32) ++
      diagonalRootsFrom 133 (FullDiagonal.entries000000.drop 32) := by
  calc
    _ = diagonalRootsFrom 5
        (FullDiagonal.entries000000.take 32 ++ FullDiagonal.entries000000.drop 32) := by
      rw [List.take_append_drop]
    _ = _ := by
      rw [diagonalRootsFrom_append, List.length_take, FullDiagonal.length000000]
      rfl

theorem block000000 : RawReplay.checkRootCoverage ReplayFullBlock215.snapshot 33554432
    (diagonalRootsFrom 5 FullDiagonal.block000000.entries) = true := by
  change RawReplay.checkRootCoverage ReplayFullBlock215.snapshot 33554432
    (diagonalRootsFrom 5 FullDiagonal.entries000000) = true
  rw [split_entries, RawReplay.checkRootCoverage_append, roots_eq,
    checked, DenseRootCoverageTail.checked]
  rfl

end JSP848.DenseRootCoverage
