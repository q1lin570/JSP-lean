import JSP848.ReplaySplit16384.Replay
import JSP848.SnapshotInput
import JSP848.RawReplay

set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0

namespace JSP848.ReplayFullBlock000

open SnapshotInput

noncomputable def snapshot : ReplaySnapshot :=
  replaySnapshot% "../../certificates/replay-snapshots33554432-v1/snapshot-0.json" 33554432 0 16384

theorem valid : RawReplay.Valid snapshot :=
  RawReplay.ofState_valid ReplaySplit16384.final_valid

end JSP848.ReplayFullBlock000
