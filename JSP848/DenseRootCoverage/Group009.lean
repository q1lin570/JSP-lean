import JSP848.ReplayFullBlock215.Replay
import JSP848.ProgressionCoverageRange

set_option Elab.async false
set_option maxHeartbeats 0
set_option maxRecDepth 1000000

namespace JSP848.DenseRootCoverage

#time theorem piece000072 : CoversProgression ReplayFullBlock215.snapshot.index
    29491207 25 16384 := by
  apply CoversProgression.of_check
  decide +kernel

#time theorem piece000073 : CoversProgression ReplayFullBlock215.snapshot.index
    29900807 25 16384 := by
  apply CoversProgression.of_check
  decide +kernel

#time theorem piece000074 : CoversProgression ReplayFullBlock215.snapshot.index
    30310407 25 16384 := by
  apply CoversProgression.of_check
  decide +kernel

#time theorem piece000075 : CoversProgression ReplayFullBlock215.snapshot.index
    30720007 25 16384 := by
  apply CoversProgression.of_check
  decide +kernel

#time theorem piece000076 : CoversProgression ReplayFullBlock215.snapshot.index
    31129607 25 16384 := by
  apply CoversProgression.of_check
  decide +kernel

#time theorem piece000077 : CoversProgression ReplayFullBlock215.snapshot.index
    31539207 25 16384 := by
  apply CoversProgression.of_check
  decide +kernel

#time theorem piece000078 : CoversProgression ReplayFullBlock215.snapshot.index
    31948807 25 16384 := by
  apply CoversProgression.of_check
  decide +kernel

#time theorem piece000079 : CoversProgression ReplayFullBlock215.snapshot.index
    32358407 25 16384 := by
  apply CoversProgression.of_check
  decide +kernel

end JSP848.DenseRootCoverage
