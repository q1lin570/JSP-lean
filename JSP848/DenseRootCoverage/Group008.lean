import JSP848.ReplayFullBlock215.Replay
import JSP848.ProgressionCoverageRange

set_option Elab.async false
set_option maxHeartbeats 0
set_option maxRecDepth 1000000

namespace JSP848.DenseRootCoverage

#time theorem piece000064 : CoversProgression ReplayFullBlock215.snapshot.index
    26214407 25 16384 := by
  apply CoversProgression.of_check
  decide +kernel

#time theorem piece000065 : CoversProgression ReplayFullBlock215.snapshot.index
    26624007 25 16384 := by
  apply CoversProgression.of_check
  decide +kernel

#time theorem piece000066 : CoversProgression ReplayFullBlock215.snapshot.index
    27033607 25 16384 := by
  apply CoversProgression.of_check
  decide +kernel

#time theorem piece000067 : CoversProgression ReplayFullBlock215.snapshot.index
    27443207 25 16384 := by
  apply CoversProgression.of_check
  decide +kernel

#time theorem piece000068 : CoversProgression ReplayFullBlock215.snapshot.index
    27852807 25 16384 := by
  apply CoversProgression.of_check
  decide +kernel

#time theorem piece000069 : CoversProgression ReplayFullBlock215.snapshot.index
    28262407 25 16384 := by
  apply CoversProgression.of_check
  decide +kernel

#time theorem piece000070 : CoversProgression ReplayFullBlock215.snapshot.index
    28672007 25 16384 := by
  apply CoversProgression.of_check
  decide +kernel

#time theorem piece000071 : CoversProgression ReplayFullBlock215.snapshot.index
    29081607 25 16384 := by
  apply CoversProgression.of_check
  decide +kernel

end JSP848.DenseRootCoverage
