import JSP848.ReplayFullBlock215.Replay
import JSP848.ProgressionCoverageRange

set_option Elab.async false
set_option maxHeartbeats 0
set_option maxRecDepth 1000000

namespace JSP848.DenseRootCoverage

#time theorem piece000160 : CoversProgression ReplayFullBlock215.snapshot.index
    31948818 25 16384 := by
  apply CoversProgression.of_check
  decide +kernel

#time theorem piece000161 : CoversProgression ReplayFullBlock215.snapshot.index
    32358418 25 16384 := by
  apply CoversProgression.of_check
  decide +kernel

#time theorem piece000162 : CoversProgression ReplayFullBlock215.snapshot.index
    32768018 25 16384 := by
  apply CoversProgression.of_check
  decide +kernel

#time theorem piece000163 : CoversProgression ReplayFullBlock215.snapshot.index
    33177618 25 15073 := by
  apply CoversProgression.of_check
  decide +kernel

#time theorem piece000164 : CoversProgression ReplayFullBlock215.snapshot.index
    99 169 16384 := by
  apply CoversProgression.of_check
  decide +kernel

#time theorem piece000165 : CoversProgression ReplayFullBlock215.snapshot.index
    2768995 169 16384 := by
  apply CoversProgression.of_check
  decide +kernel

#time theorem piece000166 : CoversProgression ReplayFullBlock215.snapshot.index
    5537891 169 16384 := by
  apply CoversProgression.of_check
  decide +kernel

#time theorem piece000167 : CoversProgression ReplayFullBlock215.snapshot.index
    8306787 169 16384 := by
  apply CoversProgression.of_check
  decide +kernel

end JSP848.DenseRootCoverage
