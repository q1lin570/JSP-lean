import JSP848.ReplayFullBlock215.Replay
import JSP848.ProgressionCoverageRange

set_option Elab.async false
set_option maxHeartbeats 0
set_option maxRecDepth 1000000

namespace JSP848.DenseRootCoverage

#time theorem piece000200 : CoversProgression ReplayFullBlock215.snapshot.index
    9469990 289 16384 := by
  apply CoversProgression.of_check
  decide +kernel

#time theorem piece000201 : CoversProgression ReplayFullBlock215.snapshot.index
    14204966 289 16384 := by
  apply CoversProgression.of_check
  decide +kernel

#time theorem piece000202 : CoversProgression ReplayFullBlock215.snapshot.index
    18939942 289 16384 := by
  apply CoversProgression.of_check
  decide +kernel

#time theorem piece000203 : CoversProgression ReplayFullBlock215.snapshot.index
    23674918 289 16384 := by
  apply CoversProgression.of_check
  decide +kernel

#time theorem piece000204 : CoversProgression ReplayFullBlock215.snapshot.index
    28409894 289 16384 := by
  apply CoversProgression.of_check
  decide +kernel

#time theorem piece000205 : CoversProgression ReplayFullBlock215.snapshot.index
    33144870 289 1418 := by
  apply CoversProgression.of_check
  decide +kernel

#time theorem piece000206 : CoversProgression ReplayFullBlock215.snapshot.index
    41 841 16384 := by
  apply CoversProgression.of_check
  decide +kernel

#time theorem piece000207 : CoversProgression ReplayFullBlock215.snapshot.index
    13778985 841 16384 := by
  apply CoversProgression.of_check
  decide +kernel

end JSP848.DenseRootCoverage
