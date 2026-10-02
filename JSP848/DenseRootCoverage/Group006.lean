import JSP848.ReplayFullBlock215.Replay
import JSP848.ProgressionCoverageRange

set_option Elab.async false
set_option maxHeartbeats 0
set_option maxRecDepth 1000000

namespace JSP848.DenseRootCoverage

#time theorem piece000048 : CoversProgression ReplayFullBlock215.snapshot.index
    19660807 25 16384 := by
  apply CoversProgression.of_check
  decide +kernel

#time theorem piece000049 : CoversProgression ReplayFullBlock215.snapshot.index
    20070407 25 16384 := by
  apply CoversProgression.of_check
  decide +kernel

#time theorem piece000050 : CoversProgression ReplayFullBlock215.snapshot.index
    20480007 25 16384 := by
  apply CoversProgression.of_check
  decide +kernel

#time theorem piece000051 : CoversProgression ReplayFullBlock215.snapshot.index
    20889607 25 16384 := by
  apply CoversProgression.of_check
  decide +kernel

#time theorem piece000052 : CoversProgression ReplayFullBlock215.snapshot.index
    21299207 25 16384 := by
  apply CoversProgression.of_check
  decide +kernel

#time theorem piece000053 : CoversProgression ReplayFullBlock215.snapshot.index
    21708807 25 16384 := by
  apply CoversProgression.of_check
  decide +kernel

#time theorem piece000054 : CoversProgression ReplayFullBlock215.snapshot.index
    22118407 25 16384 := by
  apply CoversProgression.of_check
  decide +kernel

#time theorem piece000055 : CoversProgression ReplayFullBlock215.snapshot.index
    22528007 25 16384 := by
  apply CoversProgression.of_check
  decide +kernel

end JSP848.DenseRootCoverage
