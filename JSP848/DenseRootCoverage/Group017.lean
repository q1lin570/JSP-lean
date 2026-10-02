import JSP848.ReplayFullBlock215.Replay
import JSP848.ProgressionCoverageRange

set_option Elab.async false
set_option maxHeartbeats 0
set_option maxRecDepth 1000000

namespace JSP848.DenseRootCoverage

#time theorem piece000136 : CoversProgression ReplayFullBlock215.snapshot.index
    22118418 25 16384 := by
  apply CoversProgression.of_check
  decide +kernel

#time theorem piece000137 : CoversProgression ReplayFullBlock215.snapshot.index
    22528018 25 16384 := by
  apply CoversProgression.of_check
  decide +kernel

#time theorem piece000138 : CoversProgression ReplayFullBlock215.snapshot.index
    22937618 25 16384 := by
  apply CoversProgression.of_check
  decide +kernel

#time theorem piece000139 : CoversProgression ReplayFullBlock215.snapshot.index
    23347218 25 16384 := by
  apply CoversProgression.of_check
  decide +kernel

#time theorem piece000140 : CoversProgression ReplayFullBlock215.snapshot.index
    23756818 25 16384 := by
  apply CoversProgression.of_check
  decide +kernel

#time theorem piece000141 : CoversProgression ReplayFullBlock215.snapshot.index
    24166418 25 16384 := by
  apply CoversProgression.of_check
  decide +kernel

#time theorem piece000142 : CoversProgression ReplayFullBlock215.snapshot.index
    24576018 25 16384 := by
  apply CoversProgression.of_check
  decide +kernel

#time theorem piece000143 : CoversProgression ReplayFullBlock215.snapshot.index
    24985618 25 16384 := by
  apply CoversProgression.of_check
  decide +kernel

end JSP848.DenseRootCoverage
