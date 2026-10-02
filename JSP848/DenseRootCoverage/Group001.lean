import JSP848.ReplayFullBlock215.Replay
import JSP848.ProgressionCoverageRange

set_option Elab.async false
set_option maxHeartbeats 0
set_option maxRecDepth 1000000

namespace JSP848.DenseRootCoverage

#time theorem piece000008 : CoversProgression ReplayFullBlock215.snapshot.index
    3276807 25 16384 := by
  apply CoversProgression.of_check
  decide +kernel

#time theorem piece000009 : CoversProgression ReplayFullBlock215.snapshot.index
    3686407 25 16384 := by
  apply CoversProgression.of_check
  decide +kernel

#time theorem piece000010 : CoversProgression ReplayFullBlock215.snapshot.index
    4096007 25 16384 := by
  apply CoversProgression.of_check
  decide +kernel

#time theorem piece000011 : CoversProgression ReplayFullBlock215.snapshot.index
    4505607 25 16384 := by
  apply CoversProgression.of_check
  decide +kernel

#time theorem piece000012 : CoversProgression ReplayFullBlock215.snapshot.index
    4915207 25 16384 := by
  apply CoversProgression.of_check
  decide +kernel

#time theorem piece000013 : CoversProgression ReplayFullBlock215.snapshot.index
    5324807 25 16384 := by
  apply CoversProgression.of_check
  decide +kernel

#time theorem piece000014 : CoversProgression ReplayFullBlock215.snapshot.index
    5734407 25 16384 := by
  apply CoversProgression.of_check
  decide +kernel

#time theorem piece000015 : CoversProgression ReplayFullBlock215.snapshot.index
    6144007 25 16384 := by
  apply CoversProgression.of_check
  decide +kernel

end JSP848.DenseRootCoverage
