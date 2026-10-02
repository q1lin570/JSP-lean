import JSP848.ReplayFullBlock215.Replay
import JSP848.ProgressionCoverageRange

set_option Elab.async false
set_option maxHeartbeats 0
set_option maxRecDepth 1000000

namespace JSP848.DenseRootCoverage

#time theorem piece000224 : CoversProgression ReplayFullBlock215.snapshot.index
    4553 5329 6296 := by
  apply CoversProgression.of_check
  decide +kernel

#time theorem piece000225 : CoversProgression ReplayFullBlock215.snapshot.index
    776 5329 6297 := by
  apply CoversProgression.of_check
  decide +kernel

#time theorem piece000226 : CoversProgression ReplayFullBlock215.snapshot.index
    3861 7921 4236 := by
  apply CoversProgression.of_check
  decide +kernel

#time theorem piece000227 : CoversProgression ReplayFullBlock215.snapshot.index
    4060 7921 4236 := by
  apply CoversProgression.of_check
  decide +kernel

#time theorem piece000228 : CoversProgression ReplayFullBlock215.snapshot.index
    5357 9409 3566 := by
  apply CoversProgression.of_check
  decide +kernel

#time theorem piece000229 : CoversProgression ReplayFullBlock215.snapshot.index
    4052 9409 3566 := by
  apply CoversProgression.of_check
  decide +kernel

#time theorem piece000230 : CoversProgression ReplayFullBlock215.snapshot.index
    515 10201 3290 := by
  apply CoversProgression.of_check
  decide +kernel

#time theorem piece000231 : CoversProgression ReplayFullBlock215.snapshot.index
    9686 10201 3289 := by
  apply CoversProgression.of_check
  decide +kernel

end JSP848.DenseRootCoverage
