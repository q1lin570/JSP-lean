import JSP848.ReplayFullBlock215.Replay
import JSP848.ProgressionCoverageRange

set_option Elab.async false
set_option maxHeartbeats 0
set_option maxRecDepth 1000000

namespace JSP848.DenseRootCoverage

#time theorem piece000024 : CoversProgression ReplayFullBlock215.snapshot.index
    9830407 25 16384 := by
  apply CoversProgression.of_check
  decide +kernel

#time theorem piece000025 : CoversProgression ReplayFullBlock215.snapshot.index
    10240007 25 16384 := by
  apply CoversProgression.of_check
  decide +kernel

#time theorem piece000026 : CoversProgression ReplayFullBlock215.snapshot.index
    10649607 25 16384 := by
  apply CoversProgression.of_check
  decide +kernel

#time theorem piece000027 : CoversProgression ReplayFullBlock215.snapshot.index
    11059207 25 16384 := by
  apply CoversProgression.of_check
  decide +kernel

#time theorem piece000028 : CoversProgression ReplayFullBlock215.snapshot.index
    11468807 25 16384 := by
  apply CoversProgression.of_check
  decide +kernel

#time theorem piece000029 : CoversProgression ReplayFullBlock215.snapshot.index
    11878407 25 16384 := by
  apply CoversProgression.of_check
  decide +kernel

#time theorem piece000030 : CoversProgression ReplayFullBlock215.snapshot.index
    12288007 25 16384 := by
  apply CoversProgression.of_check
  decide +kernel

#time theorem piece000031 : CoversProgression ReplayFullBlock215.snapshot.index
    12697607 25 16384 := by
  apply CoversProgression.of_check
  decide +kernel

end JSP848.DenseRootCoverage
