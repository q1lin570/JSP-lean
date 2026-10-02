import JSP848.ReplayFullBlock215.Replay
import JSP848.ProgressionCoverageRange

set_option Elab.async false
set_option maxHeartbeats 0
set_option maxRecDepth 1000000

namespace JSP848.DenseRootCoverage

#time theorem piece000168 : CoversProgression ReplayFullBlock215.snapshot.index
    11075683 169 16384 := by
  apply CoversProgression.of_check
  decide +kernel

#time theorem piece000169 : CoversProgression ReplayFullBlock215.snapshot.index
    13844579 169 16384 := by
  apply CoversProgression.of_check
  decide +kernel

#time theorem piece000170 : CoversProgression ReplayFullBlock215.snapshot.index
    16613475 169 16384 := by
  apply CoversProgression.of_check
  decide +kernel

#time theorem piece000171 : CoversProgression ReplayFullBlock215.snapshot.index
    19382371 169 16384 := by
  apply CoversProgression.of_check
  decide +kernel

#time theorem piece000172 : CoversProgression ReplayFullBlock215.snapshot.index
    22151267 169 16384 := by
  apply CoversProgression.of_check
  decide +kernel

#time theorem piece000173 : CoversProgression ReplayFullBlock215.snapshot.index
    24920163 169 16384 := by
  apply CoversProgression.of_check
  decide +kernel

#time theorem piece000174 : CoversProgression ReplayFullBlock215.snapshot.index
    27689059 169 16384 := by
  apply CoversProgression.of_check
  decide +kernel

#time theorem piece000175 : CoversProgression ReplayFullBlock215.snapshot.index
    30457955 169 16384 := by
  apply CoversProgression.of_check
  decide +kernel

end JSP848.DenseRootCoverage
