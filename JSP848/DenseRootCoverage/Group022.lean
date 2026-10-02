import JSP848.ReplayFullBlock215.Replay
import JSP848.ProgressionCoverageRange

set_option Elab.async false
set_option maxHeartbeats 0
set_option maxRecDepth 1000000

namespace JSP848.DenseRootCoverage

#time theorem piece000176 : CoversProgression ReplayFullBlock215.snapshot.index
    33226851 169 1939 := by
  apply CoversProgression.of_check
  decide +kernel

#time theorem piece000177 : CoversProgression ReplayFullBlock215.snapshot.index
    70 169 16384 := by
  apply CoversProgression.of_check
  decide +kernel

#time theorem piece000178 : CoversProgression ReplayFullBlock215.snapshot.index
    2768966 169 16384 := by
  apply CoversProgression.of_check
  decide +kernel

#time theorem piece000179 : CoversProgression ReplayFullBlock215.snapshot.index
    5537862 169 16384 := by
  apply CoversProgression.of_check
  decide +kernel

#time theorem piece000180 : CoversProgression ReplayFullBlock215.snapshot.index
    8306758 169 16384 := by
  apply CoversProgression.of_check
  decide +kernel

#time theorem piece000181 : CoversProgression ReplayFullBlock215.snapshot.index
    11075654 169 16384 := by
  apply CoversProgression.of_check
  decide +kernel

#time theorem piece000182 : CoversProgression ReplayFullBlock215.snapshot.index
    13844550 169 16384 := by
  apply CoversProgression.of_check
  decide +kernel

#time theorem piece000183 : CoversProgression ReplayFullBlock215.snapshot.index
    16613446 169 16384 := by
  apply CoversProgression.of_check
  decide +kernel

end JSP848.DenseRootCoverage
