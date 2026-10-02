import JSP848.ReplayFullBlock215.Replay
import JSP848.ProgressionCoverageRange

set_option Elab.async false
set_option maxHeartbeats 0
set_option maxRecDepth 1000000

namespace JSP848.DenseRootCoverage

#time theorem piece000000 : CoversProgression ReplayFullBlock215.snapshot.index
    7 25 16384 := by
  apply CoversProgression.of_check
  decide +kernel

#time theorem piece000001 : CoversProgression ReplayFullBlock215.snapshot.index
    409607 25 16384 := by
  apply CoversProgression.of_check
  decide +kernel

#time theorem piece000002 : CoversProgression ReplayFullBlock215.snapshot.index
    819207 25 16384 := by
  apply CoversProgression.of_check
  decide +kernel

#time theorem piece000003 : CoversProgression ReplayFullBlock215.snapshot.index
    1228807 25 16384 := by
  apply CoversProgression.of_check
  decide +kernel

#time theorem piece000004 : CoversProgression ReplayFullBlock215.snapshot.index
    1638407 25 16384 := by
  apply CoversProgression.of_check
  decide +kernel

#time theorem piece000005 : CoversProgression ReplayFullBlock215.snapshot.index
    2048007 25 16384 := by
  apply CoversProgression.of_check
  decide +kernel

#time theorem piece000006 : CoversProgression ReplayFullBlock215.snapshot.index
    2457607 25 16384 := by
  apply CoversProgression.of_check
  decide +kernel

#time theorem piece000007 : CoversProgression ReplayFullBlock215.snapshot.index
    2867207 25 16384 := by
  apply CoversProgression.of_check
  decide +kernel

end JSP848.DenseRootCoverage
