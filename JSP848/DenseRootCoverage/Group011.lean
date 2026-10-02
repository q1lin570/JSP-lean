import JSP848.ReplayFullBlock215.Replay
import JSP848.ProgressionCoverageRange

set_option Elab.async false
set_option maxHeartbeats 0
set_option maxRecDepth 1000000

namespace JSP848.DenseRootCoverage

#time theorem piece000088 : CoversProgression ReplayFullBlock215.snapshot.index
    2457618 25 16384 := by
  apply CoversProgression.of_check
  decide +kernel

#time theorem piece000089 : CoversProgression ReplayFullBlock215.snapshot.index
    2867218 25 16384 := by
  apply CoversProgression.of_check
  decide +kernel

#time theorem piece000090 : CoversProgression ReplayFullBlock215.snapshot.index
    3276818 25 16384 := by
  apply CoversProgression.of_check
  decide +kernel

#time theorem piece000091 : CoversProgression ReplayFullBlock215.snapshot.index
    3686418 25 16384 := by
  apply CoversProgression.of_check
  decide +kernel

#time theorem piece000092 : CoversProgression ReplayFullBlock215.snapshot.index
    4096018 25 16384 := by
  apply CoversProgression.of_check
  decide +kernel

#time theorem piece000093 : CoversProgression ReplayFullBlock215.snapshot.index
    4505618 25 16384 := by
  apply CoversProgression.of_check
  decide +kernel

#time theorem piece000094 : CoversProgression ReplayFullBlock215.snapshot.index
    4915218 25 16384 := by
  apply CoversProgression.of_check
  decide +kernel

#time theorem piece000095 : CoversProgression ReplayFullBlock215.snapshot.index
    5324818 25 16384 := by
  apply CoversProgression.of_check
  decide +kernel

end JSP848.DenseRootCoverage
