import JSP848.ReplayFullBlock215.Replay
import JSP848.ProgressionCoverageRange

set_option Elab.async false
set_option maxHeartbeats 0
set_option maxRecDepth 1000000

namespace JSP848.DenseRootCoverage

#time theorem piece000112 : CoversProgression ReplayFullBlock215.snapshot.index
    12288018 25 16384 := by
  apply CoversProgression.of_check
  decide +kernel

#time theorem piece000113 : CoversProgression ReplayFullBlock215.snapshot.index
    12697618 25 16384 := by
  apply CoversProgression.of_check
  decide +kernel

#time theorem piece000114 : CoversProgression ReplayFullBlock215.snapshot.index
    13107218 25 16384 := by
  apply CoversProgression.of_check
  decide +kernel

#time theorem piece000115 : CoversProgression ReplayFullBlock215.snapshot.index
    13516818 25 16384 := by
  apply CoversProgression.of_check
  decide +kernel

#time theorem piece000116 : CoversProgression ReplayFullBlock215.snapshot.index
    13926418 25 16384 := by
  apply CoversProgression.of_check
  decide +kernel

#time theorem piece000117 : CoversProgression ReplayFullBlock215.snapshot.index
    14336018 25 16384 := by
  apply CoversProgression.of_check
  decide +kernel

#time theorem piece000118 : CoversProgression ReplayFullBlock215.snapshot.index
    14745618 25 16384 := by
  apply CoversProgression.of_check
  decide +kernel

#time theorem piece000119 : CoversProgression ReplayFullBlock215.snapshot.index
    15155218 25 16384 := by
  apply CoversProgression.of_check
  decide +kernel

end JSP848.DenseRootCoverage
