import JSP848.ReplayFullBlock215.Replay
import JSP848.ProgressionCoverageRange

set_option Elab.async false
set_option maxHeartbeats 0
set_option maxRecDepth 1000000

namespace JSP848.DenseRootCoverage

#time theorem piece000144 : CoversProgression ReplayFullBlock215.snapshot.index
    25395218 25 16384 := by
  apply CoversProgression.of_check
  decide +kernel

#time theorem piece000145 : CoversProgression ReplayFullBlock215.snapshot.index
    25804818 25 16384 := by
  apply CoversProgression.of_check
  decide +kernel

#time theorem piece000146 : CoversProgression ReplayFullBlock215.snapshot.index
    26214418 25 16384 := by
  apply CoversProgression.of_check
  decide +kernel

#time theorem piece000147 : CoversProgression ReplayFullBlock215.snapshot.index
    26624018 25 16384 := by
  apply CoversProgression.of_check
  decide +kernel

#time theorem piece000148 : CoversProgression ReplayFullBlock215.snapshot.index
    27033618 25 16384 := by
  apply CoversProgression.of_check
  decide +kernel

#time theorem piece000149 : CoversProgression ReplayFullBlock215.snapshot.index
    27443218 25 16384 := by
  apply CoversProgression.of_check
  decide +kernel

#time theorem piece000150 : CoversProgression ReplayFullBlock215.snapshot.index
    27852818 25 16384 := by
  apply CoversProgression.of_check
  decide +kernel

#time theorem piece000151 : CoversProgression ReplayFullBlock215.snapshot.index
    28262418 25 16384 := by
  apply CoversProgression.of_check
  decide +kernel

end JSP848.DenseRootCoverage
