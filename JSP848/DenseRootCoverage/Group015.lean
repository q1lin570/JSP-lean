import JSP848.ReplayFullBlock215.Replay
import JSP848.ProgressionCoverageRange

set_option Elab.async false
set_option maxHeartbeats 0
set_option maxRecDepth 1000000

namespace JSP848.DenseRootCoverage

#time theorem piece000120 : CoversProgression ReplayFullBlock215.snapshot.index
    15564818 25 16384 := by
  apply CoversProgression.of_check
  decide +kernel

#time theorem piece000121 : CoversProgression ReplayFullBlock215.snapshot.index
    15974418 25 16384 := by
  apply CoversProgression.of_check
  decide +kernel

#time theorem piece000122 : CoversProgression ReplayFullBlock215.snapshot.index
    16384018 25 16384 := by
  apply CoversProgression.of_check
  decide +kernel

#time theorem piece000123 : CoversProgression ReplayFullBlock215.snapshot.index
    16793618 25 16384 := by
  apply CoversProgression.of_check
  decide +kernel

#time theorem piece000124 : CoversProgression ReplayFullBlock215.snapshot.index
    17203218 25 16384 := by
  apply CoversProgression.of_check
  decide +kernel

#time theorem piece000125 : CoversProgression ReplayFullBlock215.snapshot.index
    17612818 25 16384 := by
  apply CoversProgression.of_check
  decide +kernel

#time theorem piece000126 : CoversProgression ReplayFullBlock215.snapshot.index
    18022418 25 16384 := by
  apply CoversProgression.of_check
  decide +kernel

#time theorem piece000127 : CoversProgression ReplayFullBlock215.snapshot.index
    18432018 25 16384 := by
  apply CoversProgression.of_check
  decide +kernel

end JSP848.DenseRootCoverage
