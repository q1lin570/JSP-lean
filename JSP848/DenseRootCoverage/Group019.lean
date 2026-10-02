import JSP848.ReplayFullBlock215.Replay
import JSP848.ProgressionCoverageRange

set_option Elab.async false
set_option maxHeartbeats 0
set_option maxRecDepth 1000000

namespace JSP848.DenseRootCoverage

#time theorem piece000152 : CoversProgression ReplayFullBlock215.snapshot.index
    28672018 25 16384 := by
  apply CoversProgression.of_check
  decide +kernel

#time theorem piece000153 : CoversProgression ReplayFullBlock215.snapshot.index
    29081618 25 16384 := by
  apply CoversProgression.of_check
  decide +kernel

#time theorem piece000154 : CoversProgression ReplayFullBlock215.snapshot.index
    29491218 25 16384 := by
  apply CoversProgression.of_check
  decide +kernel

#time theorem piece000155 : CoversProgression ReplayFullBlock215.snapshot.index
    29900818 25 16384 := by
  apply CoversProgression.of_check
  decide +kernel

#time theorem piece000156 : CoversProgression ReplayFullBlock215.snapshot.index
    30310418 25 16384 := by
  apply CoversProgression.of_check
  decide +kernel

#time theorem piece000157 : CoversProgression ReplayFullBlock215.snapshot.index
    30720018 25 16384 := by
  apply CoversProgression.of_check
  decide +kernel

#time theorem piece000158 : CoversProgression ReplayFullBlock215.snapshot.index
    31129618 25 16384 := by
  apply CoversProgression.of_check
  decide +kernel

#time theorem piece000159 : CoversProgression ReplayFullBlock215.snapshot.index
    31539218 25 16384 := by
  apply CoversProgression.of_check
  decide +kernel

end JSP848.DenseRootCoverage
