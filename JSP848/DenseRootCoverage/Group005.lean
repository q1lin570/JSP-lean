import JSP848.ReplayFullBlock215.Replay
import JSP848.ProgressionCoverageRange

set_option Elab.async false
set_option maxHeartbeats 0
set_option maxRecDepth 1000000

namespace JSP848.DenseRootCoverage

#time theorem piece000040 : CoversProgression ReplayFullBlock215.snapshot.index
    16384007 25 16384 := by
  apply CoversProgression.of_check
  decide +kernel

#time theorem piece000041 : CoversProgression ReplayFullBlock215.snapshot.index
    16793607 25 16384 := by
  apply CoversProgression.of_check
  decide +kernel

#time theorem piece000042 : CoversProgression ReplayFullBlock215.snapshot.index
    17203207 25 16384 := by
  apply CoversProgression.of_check
  decide +kernel

#time theorem piece000043 : CoversProgression ReplayFullBlock215.snapshot.index
    17612807 25 16384 := by
  apply CoversProgression.of_check
  decide +kernel

#time theorem piece000044 : CoversProgression ReplayFullBlock215.snapshot.index
    18022407 25 16384 := by
  apply CoversProgression.of_check
  decide +kernel

#time theorem piece000045 : CoversProgression ReplayFullBlock215.snapshot.index
    18432007 25 16384 := by
  apply CoversProgression.of_check
  decide +kernel

#time theorem piece000046 : CoversProgression ReplayFullBlock215.snapshot.index
    18841607 25 16384 := by
  apply CoversProgression.of_check
  decide +kernel

#time theorem piece000047 : CoversProgression ReplayFullBlock215.snapshot.index
    19251207 25 16384 := by
  apply CoversProgression.of_check
  decide +kernel

end JSP848.DenseRootCoverage
