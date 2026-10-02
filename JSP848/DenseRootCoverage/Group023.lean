import JSP848.ReplayFullBlock215.Replay
import JSP848.ProgressionCoverageRange

set_option Elab.async false
set_option maxHeartbeats 0
set_option maxRecDepth 1000000

namespace JSP848.DenseRootCoverage

#time theorem piece000184 : CoversProgression ReplayFullBlock215.snapshot.index
    19382342 169 16384 := by
  apply CoversProgression.of_check
  decide +kernel

#time theorem piece000185 : CoversProgression ReplayFullBlock215.snapshot.index
    22151238 169 16384 := by
  apply CoversProgression.of_check
  decide +kernel

#time theorem piece000186 : CoversProgression ReplayFullBlock215.snapshot.index
    24920134 169 16384 := by
  apply CoversProgression.of_check
  decide +kernel

#time theorem piece000187 : CoversProgression ReplayFullBlock215.snapshot.index
    27689030 169 16384 := by
  apply CoversProgression.of_check
  decide +kernel

#time theorem piece000188 : CoversProgression ReplayFullBlock215.snapshot.index
    30457926 169 16384 := by
  apply CoversProgression.of_check
  decide +kernel

#time theorem piece000189 : CoversProgression ReplayFullBlock215.snapshot.index
    33226822 169 1939 := by
  apply CoversProgression.of_check
  decide +kernel

#time theorem piece000190 : CoversProgression ReplayFullBlock215.snapshot.index
    251 289 16384 := by
  apply CoversProgression.of_check
  decide +kernel

#time theorem piece000191 : CoversProgression ReplayFullBlock215.snapshot.index
    4735227 289 16384 := by
  apply CoversProgression.of_check
  decide +kernel

end JSP848.DenseRootCoverage
