import JSP848.ReplayFullBlock215.Replay
import JSP848.FullDiagonal.Group012
import JSP848.ProgressionCoverage

set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0

namespace JSP848.FullCoverage

#time theorem block000192 : RawReplay.checkRootCoverage
    ReplayFullBlock215.snapshot 33554432
    (diagonalRootsFrom 12582917 FullDiagonal.block000192.entries) = true := by
  apply RawReplay.checkRootCoverageBalanced_sound (fuel := 27)
  decide +kernel

#time theorem block000193 : RawReplay.checkRootCoverage
    ReplayFullBlock215.snapshot 33554432
    (diagonalRootsFrom 12648453 FullDiagonal.block000193.entries) = true := by
  apply RawReplay.checkRootCoverageBalanced_sound (fuel := 27)
  decide +kernel

#time theorem block000194 : RawReplay.checkRootCoverage
    ReplayFullBlock215.snapshot 33554432
    (diagonalRootsFrom 12713989 FullDiagonal.block000194.entries) = true := by
  apply RawReplay.checkRootCoverageBalanced_sound (fuel := 27)
  decide +kernel

#time theorem block000195 : RawReplay.checkRootCoverage
    ReplayFullBlock215.snapshot 33554432
    (diagonalRootsFrom 12779525 FullDiagonal.block000195.entries) = true := by
  apply RawReplay.checkRootCoverageBalanced_sound (fuel := 27)
  decide +kernel

#time theorem block000196 : RawReplay.checkRootCoverage
    ReplayFullBlock215.snapshot 33554432
    (diagonalRootsFrom 12845061 FullDiagonal.block000196.entries) = true := by
  apply RawReplay.checkRootCoverageBalanced_sound (fuel := 27)
  decide +kernel

#time theorem block000197 : RawReplay.checkRootCoverage
    ReplayFullBlock215.snapshot 33554432
    (diagonalRootsFrom 12910597 FullDiagonal.block000197.entries) = true := by
  apply RawReplay.checkRootCoverageBalanced_sound (fuel := 27)
  decide +kernel

#time theorem block000198 : RawReplay.checkRootCoverage
    ReplayFullBlock215.snapshot 33554432
    (diagonalRootsFrom 12976133 FullDiagonal.block000198.entries) = true := by
  apply RawReplay.checkRootCoverageBalanced_sound (fuel := 27)
  decide +kernel

#time theorem block000199 : RawReplay.checkRootCoverage
    ReplayFullBlock215.snapshot 33554432
    (diagonalRootsFrom 13041669 FullDiagonal.block000199.entries) = true := by
  apply RawReplay.checkRootCoverageBalanced_sound (fuel := 27)
  decide +kernel

#time theorem block000200 : RawReplay.checkRootCoverage
    ReplayFullBlock215.snapshot 33554432
    (diagonalRootsFrom 13107205 FullDiagonal.block000200.entries) = true := by
  apply RawReplay.checkRootCoverageBalanced_sound (fuel := 27)
  decide +kernel

#time theorem block000201 : RawReplay.checkRootCoverage
    ReplayFullBlock215.snapshot 33554432
    (diagonalRootsFrom 13172741 FullDiagonal.block000201.entries) = true := by
  apply RawReplay.checkRootCoverageBalanced_sound (fuel := 27)
  decide +kernel

#time theorem block000202 : RawReplay.checkRootCoverage
    ReplayFullBlock215.snapshot 33554432
    (diagonalRootsFrom 13238277 FullDiagonal.block000202.entries) = true := by
  apply RawReplay.checkRootCoverageBalanced_sound (fuel := 27)
  decide +kernel

#time theorem block000203 : RawReplay.checkRootCoverage
    ReplayFullBlock215.snapshot 33554432
    (diagonalRootsFrom 13303813 FullDiagonal.block000203.entries) = true := by
  apply RawReplay.checkRootCoverageBalanced_sound (fuel := 27)
  decide +kernel

#time theorem block000204 : RawReplay.checkRootCoverage
    ReplayFullBlock215.snapshot 33554432
    (diagonalRootsFrom 13369349 FullDiagonal.block000204.entries) = true := by
  apply RawReplay.checkRootCoverageBalanced_sound (fuel := 27)
  decide +kernel

#time theorem block000205 : RawReplay.checkRootCoverage
    ReplayFullBlock215.snapshot 33554432
    (diagonalRootsFrom 13434885 FullDiagonal.block000205.entries) = true := by
  apply RawReplay.checkRootCoverageBalanced_sound (fuel := 27)
  decide +kernel

#time theorem block000206 : RawReplay.checkRootCoverage
    ReplayFullBlock215.snapshot 33554432
    (diagonalRootsFrom 13500421 FullDiagonal.block000206.entries) = true := by
  apply RawReplay.checkRootCoverageBalanced_sound (fuel := 27)
  decide +kernel

#time theorem block000207 : RawReplay.checkRootCoverage
    ReplayFullBlock215.snapshot 33554432
    (diagonalRootsFrom 13565957 FullDiagonal.block000207.entries) = true := by
  apply RawReplay.checkRootCoverageBalanced_sound (fuel := 27)
  decide +kernel

theorem group012 : RawReplay.checkRootCoverage
    ReplayFullBlock215.snapshot 33554432
    (diagonalRootsFrom 12582917 FullDiagonal.group012.entries) = true :=
  (CheckedDiagonalBlock.rootCoverage_append
    ReplayFullBlock215.snapshot 33554432 ((((((((((((((FullDiagonal.block000192.append FullDiagonal.block000193).append FullDiagonal.block000194).append FullDiagonal.block000195).append FullDiagonal.block000196).append FullDiagonal.block000197).append FullDiagonal.block000198).append FullDiagonal.block000199).append FullDiagonal.block000200).append FullDiagonal.block000201).append FullDiagonal.block000202).append FullDiagonal.block000203).append FullDiagonal.block000204).append FullDiagonal.block000205).append FullDiagonal.block000206) FullDiagonal.block000207
    (CheckedDiagonalBlock.rootCoverage_append
    ReplayFullBlock215.snapshot 33554432 (((((((((((((FullDiagonal.block000192.append FullDiagonal.block000193).append FullDiagonal.block000194).append FullDiagonal.block000195).append FullDiagonal.block000196).append FullDiagonal.block000197).append FullDiagonal.block000198).append FullDiagonal.block000199).append FullDiagonal.block000200).append FullDiagonal.block000201).append FullDiagonal.block000202).append FullDiagonal.block000203).append FullDiagonal.block000204).append FullDiagonal.block000205) FullDiagonal.block000206
    (CheckedDiagonalBlock.rootCoverage_append
    ReplayFullBlock215.snapshot 33554432 ((((((((((((FullDiagonal.block000192.append FullDiagonal.block000193).append FullDiagonal.block000194).append FullDiagonal.block000195).append FullDiagonal.block000196).append FullDiagonal.block000197).append FullDiagonal.block000198).append FullDiagonal.block000199).append FullDiagonal.block000200).append FullDiagonal.block000201).append FullDiagonal.block000202).append FullDiagonal.block000203).append FullDiagonal.block000204) FullDiagonal.block000205
    (CheckedDiagonalBlock.rootCoverage_append
    ReplayFullBlock215.snapshot 33554432 (((((((((((FullDiagonal.block000192.append FullDiagonal.block000193).append FullDiagonal.block000194).append FullDiagonal.block000195).append FullDiagonal.block000196).append FullDiagonal.block000197).append FullDiagonal.block000198).append FullDiagonal.block000199).append FullDiagonal.block000200).append FullDiagonal.block000201).append FullDiagonal.block000202).append FullDiagonal.block000203) FullDiagonal.block000204
    (CheckedDiagonalBlock.rootCoverage_append
    ReplayFullBlock215.snapshot 33554432 ((((((((((FullDiagonal.block000192.append FullDiagonal.block000193).append FullDiagonal.block000194).append FullDiagonal.block000195).append FullDiagonal.block000196).append FullDiagonal.block000197).append FullDiagonal.block000198).append FullDiagonal.block000199).append FullDiagonal.block000200).append FullDiagonal.block000201).append FullDiagonal.block000202) FullDiagonal.block000203
    (CheckedDiagonalBlock.rootCoverage_append
    ReplayFullBlock215.snapshot 33554432 (((((((((FullDiagonal.block000192.append FullDiagonal.block000193).append FullDiagonal.block000194).append FullDiagonal.block000195).append FullDiagonal.block000196).append FullDiagonal.block000197).append FullDiagonal.block000198).append FullDiagonal.block000199).append FullDiagonal.block000200).append FullDiagonal.block000201) FullDiagonal.block000202
    (CheckedDiagonalBlock.rootCoverage_append
    ReplayFullBlock215.snapshot 33554432 ((((((((FullDiagonal.block000192.append FullDiagonal.block000193).append FullDiagonal.block000194).append FullDiagonal.block000195).append FullDiagonal.block000196).append FullDiagonal.block000197).append FullDiagonal.block000198).append FullDiagonal.block000199).append FullDiagonal.block000200) FullDiagonal.block000201
    (CheckedDiagonalBlock.rootCoverage_append
    ReplayFullBlock215.snapshot 33554432 (((((((FullDiagonal.block000192.append FullDiagonal.block000193).append FullDiagonal.block000194).append FullDiagonal.block000195).append FullDiagonal.block000196).append FullDiagonal.block000197).append FullDiagonal.block000198).append FullDiagonal.block000199) FullDiagonal.block000200
    (CheckedDiagonalBlock.rootCoverage_append
    ReplayFullBlock215.snapshot 33554432 ((((((FullDiagonal.block000192.append FullDiagonal.block000193).append FullDiagonal.block000194).append FullDiagonal.block000195).append FullDiagonal.block000196).append FullDiagonal.block000197).append FullDiagonal.block000198) FullDiagonal.block000199
    (CheckedDiagonalBlock.rootCoverage_append
    ReplayFullBlock215.snapshot 33554432 (((((FullDiagonal.block000192.append FullDiagonal.block000193).append FullDiagonal.block000194).append FullDiagonal.block000195).append FullDiagonal.block000196).append FullDiagonal.block000197) FullDiagonal.block000198
    (CheckedDiagonalBlock.rootCoverage_append
    ReplayFullBlock215.snapshot 33554432 ((((FullDiagonal.block000192.append FullDiagonal.block000193).append FullDiagonal.block000194).append FullDiagonal.block000195).append FullDiagonal.block000196) FullDiagonal.block000197
    (CheckedDiagonalBlock.rootCoverage_append
    ReplayFullBlock215.snapshot 33554432 (((FullDiagonal.block000192.append FullDiagonal.block000193).append FullDiagonal.block000194).append FullDiagonal.block000195) FullDiagonal.block000196
    (CheckedDiagonalBlock.rootCoverage_append
    ReplayFullBlock215.snapshot 33554432 ((FullDiagonal.block000192.append FullDiagonal.block000193).append FullDiagonal.block000194) FullDiagonal.block000195
    (CheckedDiagonalBlock.rootCoverage_append
    ReplayFullBlock215.snapshot 33554432 (FullDiagonal.block000192.append FullDiagonal.block000193) FullDiagonal.block000194
    (CheckedDiagonalBlock.rootCoverage_append
    ReplayFullBlock215.snapshot 33554432 FullDiagonal.block000192 FullDiagonal.block000193
    block000192 block000193) block000194) block000195) block000196) block000197) block000198) block000199) block000200) block000201) block000202) block000203) block000204) block000205) block000206) block000207)

end JSP848.FullCoverage
