import JSP848.ReplayFullBlock215.Replay
import JSP848.ProgressionCoverageRange

set_option Elab.async false
set_option maxHeartbeats 0
set_option maxRecDepth 1000000

namespace JSP848.DenseRootCoverage

#time theorem piece000208 : CoversProgression ReplayFullBlock215.snapshot.index
    27557929 841 7131 := by
  apply CoversProgression.of_check
  decide +kernel

#time theorem piece000209 : CoversProgression ReplayFullBlock215.snapshot.index
    800 841 16384 := by
  apply CoversProgression.of_check
  decide +kernel

#time theorem piece000210 : CoversProgression ReplayFullBlock215.snapshot.index
    13779744 841 16384 := by
  apply CoversProgression.of_check
  decide +kernel

#time theorem piece000211 : CoversProgression ReplayFullBlock215.snapshot.index
    27558688 841 7130 := by
  apply CoversProgression.of_check
  decide +kernel

#time theorem piece000212 : CoversProgression ReplayFullBlock215.snapshot.index
    1252 1369 16384 := by
  apply CoversProgression.of_check
  decide +kernel

#time theorem piece000213 : CoversProgression ReplayFullBlock215.snapshot.index
    22430948 1369 8126 := by
  apply CoversProgression.of_check
  decide +kernel

#time theorem piece000214 : CoversProgression ReplayFullBlock215.snapshot.index
    117 1369 16384 := by
  apply CoversProgression.of_check
  decide +kernel

#time theorem piece000215 : CoversProgression ReplayFullBlock215.snapshot.index
    22429813 1369 8127 := by
  apply CoversProgression.of_check
  decide +kernel

end JSP848.DenseRootCoverage
