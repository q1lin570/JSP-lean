import JSP848.ReplayFullBlock215.Replay
import JSP848.ProgressionCoverageRange

set_option Elab.async false
set_option maxHeartbeats 0
set_option maxRecDepth 1000000

namespace JSP848.DenseRootCoverage

#time theorem piece000104 : CoversProgression ReplayFullBlock215.snapshot.index
    9011218 25 16384 := by
  apply CoversProgression.of_check
  decide +kernel

#time theorem piece000105 : CoversProgression ReplayFullBlock215.snapshot.index
    9420818 25 16384 := by
  apply CoversProgression.of_check
  decide +kernel

#time theorem piece000106 : CoversProgression ReplayFullBlock215.snapshot.index
    9830418 25 16384 := by
  apply CoversProgression.of_check
  decide +kernel

#time theorem piece000107 : CoversProgression ReplayFullBlock215.snapshot.index
    10240018 25 16384 := by
  apply CoversProgression.of_check
  decide +kernel

#time theorem piece000108 : CoversProgression ReplayFullBlock215.snapshot.index
    10649618 25 16384 := by
  apply CoversProgression.of_check
  decide +kernel

#time theorem piece000109 : CoversProgression ReplayFullBlock215.snapshot.index
    11059218 25 16384 := by
  apply CoversProgression.of_check
  decide +kernel

#time theorem piece000110 : CoversProgression ReplayFullBlock215.snapshot.index
    11468818 25 16384 := by
  apply CoversProgression.of_check
  decide +kernel

#time theorem piece000111 : CoversProgression ReplayFullBlock215.snapshot.index
    11878418 25 16384 := by
  apply CoversProgression.of_check
  decide +kernel

end JSP848.DenseRootCoverage
