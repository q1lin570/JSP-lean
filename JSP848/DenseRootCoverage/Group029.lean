import JSP848.ReplayFullBlock215.Replay
import JSP848.ProgressionCoverageRange

set_option Elab.async false
set_option maxHeartbeats 0
set_option maxRecDepth 1000000

namespace JSP848.DenseRootCoverage

#time theorem piece000232 : CoversProgression ReplayFullBlock215.snapshot.index
    6137 11881 2824 := by
  apply CoversProgression.of_check
  decide +kernel

#time theorem piece000233 : CoversProgression ReplayFullBlock215.snapshot.index
    5744 11881 2824 := by
  apply CoversProgression.of_check
  decide +kernel

#time theorem piece000234 : CoversProgression ReplayFullBlock215.snapshot.index
    11059 12769 2627 := by
  apply CoversProgression.of_check
  decide +kernel

#time theorem piece000235 : CoversProgression ReplayFullBlock215.snapshot.index
    1710 12769 2628 := by
  apply CoversProgression.of_check
  decide +kernel

end JSP848.DenseRootCoverage
