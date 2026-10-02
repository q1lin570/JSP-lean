import JSP848.ReplayFullBlock215.Replay
import JSP848.ProgressionCoverageRange

set_option Elab.async false
set_option maxHeartbeats 0
set_option maxRecDepth 1000000

namespace JSP848.DenseRootCoverage

#time theorem piece000128 : CoversProgression ReplayFullBlock215.snapshot.index
    18841618 25 16384 := by
  apply CoversProgression.of_check
  decide +kernel

#time theorem piece000129 : CoversProgression ReplayFullBlock215.snapshot.index
    19251218 25 16384 := by
  apply CoversProgression.of_check
  decide +kernel

#time theorem piece000130 : CoversProgression ReplayFullBlock215.snapshot.index
    19660818 25 16384 := by
  apply CoversProgression.of_check
  decide +kernel

#time theorem piece000131 : CoversProgression ReplayFullBlock215.snapshot.index
    20070418 25 16384 := by
  apply CoversProgression.of_check
  decide +kernel

#time theorem piece000132 : CoversProgression ReplayFullBlock215.snapshot.index
    20480018 25 16384 := by
  apply CoversProgression.of_check
  decide +kernel

#time theorem piece000133 : CoversProgression ReplayFullBlock215.snapshot.index
    20889618 25 16384 := by
  apply CoversProgression.of_check
  decide +kernel

#time theorem piece000134 : CoversProgression ReplayFullBlock215.snapshot.index
    21299218 25 16384 := by
  apply CoversProgression.of_check
  decide +kernel

#time theorem piece000135 : CoversProgression ReplayFullBlock215.snapshot.index
    21708818 25 16384 := by
  apply CoversProgression.of_check
  decide +kernel

end JSP848.DenseRootCoverage
