import JSP848.ReplayFullBlock215.Replay
import JSP848.FullDiagonal.Group000
import JSP848.ProgressionCoverage

set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0

namespace JSP848.DenseRootCoverageTail

#time theorem checked : RawReplay.checkRootCoverage ReplayFullBlock215.snapshot 33554432
    (diagonalRootsFrom 133 (FullDiagonal.entries000000.drop 32)) = true := by
  apply RawReplay.checkRootCoverageBalanced_sound (fuel := 27)
  decide +kernel

end JSP848.DenseRootCoverageTail
