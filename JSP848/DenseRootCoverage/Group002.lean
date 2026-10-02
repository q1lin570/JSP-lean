import JSP848.ReplayFullBlock215.Replay
import JSP848.ProgressionCoverageRange

set_option Elab.async false
set_option maxHeartbeats 0
set_option maxRecDepth 1000000

namespace JSP848.DenseRootCoverage

#time theorem piece000016 : CoversProgression ReplayFullBlock215.snapshot.index
    6553607 25 16384 := by
  apply CoversProgression.of_check
  decide +kernel

#time theorem piece000017 : CoversProgression ReplayFullBlock215.snapshot.index
    6963207 25 16384 := by
  apply CoversProgression.of_check
  decide +kernel

#time theorem piece000018 : CoversProgression ReplayFullBlock215.snapshot.index
    7372807 25 16384 := by
  apply CoversProgression.of_check
  decide +kernel

#time theorem piece000019 : CoversProgression ReplayFullBlock215.snapshot.index
    7782407 25 16384 := by
  apply CoversProgression.of_check
  decide +kernel

#time theorem piece000020 : CoversProgression ReplayFullBlock215.snapshot.index
    8192007 25 16384 := by
  apply CoversProgression.of_check
  decide +kernel

#time theorem piece000021 : CoversProgression ReplayFullBlock215.snapshot.index
    8601607 25 16384 := by
  apply CoversProgression.of_check
  decide +kernel

#time theorem piece000022 : CoversProgression ReplayFullBlock215.snapshot.index
    9011207 25 16384 := by
  apply CoversProgression.of_check
  decide +kernel

#time theorem piece000023 : CoversProgression ReplayFullBlock215.snapshot.index
    9420807 25 16384 := by
  apply CoversProgression.of_check
  decide +kernel

end JSP848.DenseRootCoverage
