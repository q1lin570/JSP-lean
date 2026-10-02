import JSP848.ReplayFullBlock215.Replay
import JSP848.ProgressionCoverageRange

set_option Elab.async false
set_option maxHeartbeats 0
set_option maxRecDepth 1000000

namespace JSP848.DenseRootCoverage

#time theorem piece000056 : CoversProgression ReplayFullBlock215.snapshot.index
    22937607 25 16384 := by
  apply CoversProgression.of_check
  decide +kernel

#time theorem piece000057 : CoversProgression ReplayFullBlock215.snapshot.index
    23347207 25 16384 := by
  apply CoversProgression.of_check
  decide +kernel

#time theorem piece000058 : CoversProgression ReplayFullBlock215.snapshot.index
    23756807 25 16384 := by
  apply CoversProgression.of_check
  decide +kernel

#time theorem piece000059 : CoversProgression ReplayFullBlock215.snapshot.index
    24166407 25 16384 := by
  apply CoversProgression.of_check
  decide +kernel

#time theorem piece000060 : CoversProgression ReplayFullBlock215.snapshot.index
    24576007 25 16384 := by
  apply CoversProgression.of_check
  decide +kernel

#time theorem piece000061 : CoversProgression ReplayFullBlock215.snapshot.index
    24985607 25 16384 := by
  apply CoversProgression.of_check
  decide +kernel

#time theorem piece000062 : CoversProgression ReplayFullBlock215.snapshot.index
    25395207 25 16384 := by
  apply CoversProgression.of_check
  decide +kernel

#time theorem piece000063 : CoversProgression ReplayFullBlock215.snapshot.index
    25804807 25 16384 := by
  apply CoversProgression.of_check
  decide +kernel

end JSP848.DenseRootCoverage
