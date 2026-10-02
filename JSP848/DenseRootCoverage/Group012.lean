import JSP848.ReplayFullBlock215.Replay
import JSP848.ProgressionCoverageRange

set_option Elab.async false
set_option maxHeartbeats 0
set_option maxRecDepth 1000000

namespace JSP848.DenseRootCoverage

#time theorem piece000096 : CoversProgression ReplayFullBlock215.snapshot.index
    5734418 25 16384 := by
  apply CoversProgression.of_check
  decide +kernel

#time theorem piece000097 : CoversProgression ReplayFullBlock215.snapshot.index
    6144018 25 16384 := by
  apply CoversProgression.of_check
  decide +kernel

#time theorem piece000098 : CoversProgression ReplayFullBlock215.snapshot.index
    6553618 25 16384 := by
  apply CoversProgression.of_check
  decide +kernel

#time theorem piece000099 : CoversProgression ReplayFullBlock215.snapshot.index
    6963218 25 16384 := by
  apply CoversProgression.of_check
  decide +kernel

#time theorem piece000100 : CoversProgression ReplayFullBlock215.snapshot.index
    7372818 25 16384 := by
  apply CoversProgression.of_check
  decide +kernel

#time theorem piece000101 : CoversProgression ReplayFullBlock215.snapshot.index
    7782418 25 16384 := by
  apply CoversProgression.of_check
  decide +kernel

#time theorem piece000102 : CoversProgression ReplayFullBlock215.snapshot.index
    8192018 25 16384 := by
  apply CoversProgression.of_check
  decide +kernel

#time theorem piece000103 : CoversProgression ReplayFullBlock215.snapshot.index
    8601618 25 16384 := by
  apply CoversProgression.of_check
  decide +kernel

end JSP848.DenseRootCoverage
