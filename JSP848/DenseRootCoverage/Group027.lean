import JSP848.ReplayFullBlock215.Replay
import JSP848.ProgressionCoverageRange

set_option Elab.async false
set_option maxHeartbeats 0
set_option maxRecDepth 1000000

namespace JSP848.DenseRootCoverage

#time theorem piece000216 : CoversProgression ReplayFullBlock215.snapshot.index
    378 1681 16384 := by
  apply CoversProgression.of_check
  decide +kernel

#time theorem piece000217 : CoversProgression ReplayFullBlock215.snapshot.index
    27541882 1681 3577 := by
  apply CoversProgression.of_check
  decide +kernel

#time theorem piece000218 : CoversProgression ReplayFullBlock215.snapshot.index
    1303 1681 16384 := by
  apply CoversProgression.of_check
  decide +kernel

#time theorem piece000219 : CoversProgression ReplayFullBlock215.snapshot.index
    27542807 1681 3577 := by
  apply CoversProgression.of_check
  decide +kernel

#time theorem piece000220 : CoversProgression ReplayFullBlock215.snapshot.index
    2309 2809 11945 := by
  apply CoversProgression.of_check
  decide +kernel

#time theorem piece000221 : CoversProgression ReplayFullBlock215.snapshot.index
    500 2809 11946 := by
  apply CoversProgression.of_check
  decide +kernel

#time theorem piece000222 : CoversProgression ReplayFullBlock215.snapshot.index
    682 3721 9018 := by
  apply CoversProgression.of_check
  decide +kernel

#time theorem piece000223 : CoversProgression ReplayFullBlock215.snapshot.index
    3039 3721 9017 := by
  apply CoversProgression.of_check
  decide +kernel

end JSP848.DenseRootCoverage
