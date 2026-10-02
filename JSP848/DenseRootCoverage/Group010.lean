import JSP848.ReplayFullBlock215.Replay
import JSP848.ProgressionCoverageRange

set_option Elab.async false
set_option maxHeartbeats 0
set_option maxRecDepth 1000000

namespace JSP848.DenseRootCoverage

#time theorem piece000080 : CoversProgression ReplayFullBlock215.snapshot.index
    32768007 25 16384 := by
  apply CoversProgression.of_check
  decide +kernel

#time theorem piece000081 : CoversProgression ReplayFullBlock215.snapshot.index
    33177607 25 15074 := by
  apply CoversProgression.of_check
  decide +kernel

#time theorem piece000082 : CoversProgression ReplayFullBlock215.snapshot.index
    18 25 16384 := by
  apply CoversProgression.of_check
  decide +kernel

#time theorem piece000083 : CoversProgression ReplayFullBlock215.snapshot.index
    409618 25 16384 := by
  apply CoversProgression.of_check
  decide +kernel

#time theorem piece000084 : CoversProgression ReplayFullBlock215.snapshot.index
    819218 25 16384 := by
  apply CoversProgression.of_check
  decide +kernel

#time theorem piece000085 : CoversProgression ReplayFullBlock215.snapshot.index
    1228818 25 16384 := by
  apply CoversProgression.of_check
  decide +kernel

#time theorem piece000086 : CoversProgression ReplayFullBlock215.snapshot.index
    1638418 25 16384 := by
  apply CoversProgression.of_check
  decide +kernel

#time theorem piece000087 : CoversProgression ReplayFullBlock215.snapshot.index
    2048018 25 16384 := by
  apply CoversProgression.of_check
  decide +kernel

end JSP848.DenseRootCoverage
