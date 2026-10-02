import JSP848.ReplayFullBlock215.Replay
import JSP848.ProgressionCoverageRange

set_option Elab.async false
set_option maxHeartbeats 0
set_option maxRecDepth 1000000

namespace JSP848.DenseRootCoverage

#time theorem piece000032 : CoversProgression ReplayFullBlock215.snapshot.index
    13107207 25 16384 := by
  apply CoversProgression.of_check
  decide +kernel

#time theorem piece000033 : CoversProgression ReplayFullBlock215.snapshot.index
    13516807 25 16384 := by
  apply CoversProgression.of_check
  decide +kernel

#time theorem piece000034 : CoversProgression ReplayFullBlock215.snapshot.index
    13926407 25 16384 := by
  apply CoversProgression.of_check
  decide +kernel

#time theorem piece000035 : CoversProgression ReplayFullBlock215.snapshot.index
    14336007 25 16384 := by
  apply CoversProgression.of_check
  decide +kernel

#time theorem piece000036 : CoversProgression ReplayFullBlock215.snapshot.index
    14745607 25 16384 := by
  apply CoversProgression.of_check
  decide +kernel

#time theorem piece000037 : CoversProgression ReplayFullBlock215.snapshot.index
    15155207 25 16384 := by
  apply CoversProgression.of_check
  decide +kernel

#time theorem piece000038 : CoversProgression ReplayFullBlock215.snapshot.index
    15564807 25 16384 := by
  apply CoversProgression.of_check
  decide +kernel

#time theorem piece000039 : CoversProgression ReplayFullBlock215.snapshot.index
    15974407 25 16384 := by
  apply CoversProgression.of_check
  decide +kernel

end JSP848.DenseRootCoverage
