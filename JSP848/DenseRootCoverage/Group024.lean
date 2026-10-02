import JSP848.ReplayFullBlock215.Replay
import JSP848.ProgressionCoverageRange

set_option Elab.async false
set_option maxHeartbeats 0
set_option maxRecDepth 1000000

namespace JSP848.DenseRootCoverage

#time theorem piece000192 : CoversProgression ReplayFullBlock215.snapshot.index
    9470203 289 16384 := by
  apply CoversProgression.of_check
  decide +kernel

#time theorem piece000193 : CoversProgression ReplayFullBlock215.snapshot.index
    14205179 289 16384 := by
  apply CoversProgression.of_check
  decide +kernel

#time theorem piece000194 : CoversProgression ReplayFullBlock215.snapshot.index
    18940155 289 16384 := by
  apply CoversProgression.of_check
  decide +kernel

#time theorem piece000195 : CoversProgression ReplayFullBlock215.snapshot.index
    23675131 289 16384 := by
  apply CoversProgression.of_check
  decide +kernel

#time theorem piece000196 : CoversProgression ReplayFullBlock215.snapshot.index
    28410107 289 16384 := by
  apply CoversProgression.of_check
  decide +kernel

#time theorem piece000197 : CoversProgression ReplayFullBlock215.snapshot.index
    33145083 289 1417 := by
  apply CoversProgression.of_check
  decide +kernel

#time theorem piece000198 : CoversProgression ReplayFullBlock215.snapshot.index
    38 289 16384 := by
  apply CoversProgression.of_check
  decide +kernel

#time theorem piece000199 : CoversProgression ReplayFullBlock215.snapshot.index
    4735014 289 16384 := by
  apply CoversProgression.of_check
  decide +kernel

end JSP848.DenseRootCoverage
