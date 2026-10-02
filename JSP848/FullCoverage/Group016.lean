import JSP848.ReplayFullBlock215.Replay
import JSP848.FullDiagonal.Group016
import JSP848.ProgressionCoverage

set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0

namespace JSP848.FullCoverage

#time theorem block000256 : RawReplay.checkRootCoverage
    ReplayFullBlock215.snapshot 33554432
    (diagonalRootsFrom 16777221 FullDiagonal.block000256.entries) = true := by
  apply RawReplay.checkRootCoverageBalanced_sound (fuel := 27)
  decide +kernel

#time theorem block000257 : RawReplay.checkRootCoverage
    ReplayFullBlock215.snapshot 33554432
    (diagonalRootsFrom 16842757 FullDiagonal.block000257.entries) = true := by
  apply RawReplay.checkRootCoverageBalanced_sound (fuel := 27)
  decide +kernel

#time theorem block000258 : RawReplay.checkRootCoverage
    ReplayFullBlock215.snapshot 33554432
    (diagonalRootsFrom 16908293 FullDiagonal.block000258.entries) = true := by
  apply RawReplay.checkRootCoverageBalanced_sound (fuel := 27)
  decide +kernel

#time theorem block000259 : RawReplay.checkRootCoverage
    ReplayFullBlock215.snapshot 33554432
    (diagonalRootsFrom 16973829 FullDiagonal.block000259.entries) = true := by
  apply RawReplay.checkRootCoverageBalanced_sound (fuel := 27)
  decide +kernel

#time theorem block000260 : RawReplay.checkRootCoverage
    ReplayFullBlock215.snapshot 33554432
    (diagonalRootsFrom 17039365 FullDiagonal.block000260.entries) = true := by
  apply RawReplay.checkRootCoverageBalanced_sound (fuel := 27)
  decide +kernel

#time theorem block000261 : RawReplay.checkRootCoverage
    ReplayFullBlock215.snapshot 33554432
    (diagonalRootsFrom 17104901 FullDiagonal.block000261.entries) = true := by
  apply RawReplay.checkRootCoverageBalanced_sound (fuel := 27)
  decide +kernel

#time theorem block000262 : RawReplay.checkRootCoverage
    ReplayFullBlock215.snapshot 33554432
    (diagonalRootsFrom 17170437 FullDiagonal.block000262.entries) = true := by
  apply RawReplay.checkRootCoverageBalanced_sound (fuel := 27)
  decide +kernel

#time theorem block000263 : RawReplay.checkRootCoverage
    ReplayFullBlock215.snapshot 33554432
    (diagonalRootsFrom 17235973 FullDiagonal.block000263.entries) = true := by
  apply RawReplay.checkRootCoverageBalanced_sound (fuel := 27)
  decide +kernel

#time theorem block000264 : RawReplay.checkRootCoverage
    ReplayFullBlock215.snapshot 33554432
    (diagonalRootsFrom 17301509 FullDiagonal.block000264.entries) = true := by
  apply RawReplay.checkRootCoverageBalanced_sound (fuel := 27)
  decide +kernel

#time theorem block000265 : RawReplay.checkRootCoverage
    ReplayFullBlock215.snapshot 33554432
    (diagonalRootsFrom 17367045 FullDiagonal.block000265.entries) = true := by
  apply RawReplay.checkRootCoverageBalanced_sound (fuel := 27)
  decide +kernel

#time theorem block000266 : RawReplay.checkRootCoverage
    ReplayFullBlock215.snapshot 33554432
    (diagonalRootsFrom 17432581 FullDiagonal.block000266.entries) = true := by
  apply RawReplay.checkRootCoverageBalanced_sound (fuel := 27)
  decide +kernel

#time theorem block000267 : RawReplay.checkRootCoverage
    ReplayFullBlock215.snapshot 33554432
    (diagonalRootsFrom 17498117 FullDiagonal.block000267.entries) = true := by
  apply RawReplay.checkRootCoverageBalanced_sound (fuel := 27)
  decide +kernel

#time theorem block000268 : RawReplay.checkRootCoverage
    ReplayFullBlock215.snapshot 33554432
    (diagonalRootsFrom 17563653 FullDiagonal.block000268.entries) = true := by
  apply RawReplay.checkRootCoverageBalanced_sound (fuel := 27)
  decide +kernel

#time theorem block000269 : RawReplay.checkRootCoverage
    ReplayFullBlock215.snapshot 33554432
    (diagonalRootsFrom 17629189 FullDiagonal.block000269.entries) = true := by
  apply RawReplay.checkRootCoverageBalanced_sound (fuel := 27)
  decide +kernel

#time theorem block000270 : RawReplay.checkRootCoverage
    ReplayFullBlock215.snapshot 33554432
    (diagonalRootsFrom 17694725 FullDiagonal.block000270.entries) = true := by
  apply RawReplay.checkRootCoverageBalanced_sound (fuel := 27)
  decide +kernel

#time theorem block000271 : RawReplay.checkRootCoverage
    ReplayFullBlock215.snapshot 33554432
    (diagonalRootsFrom 17760261 FullDiagonal.block000271.entries) = true := by
  apply RawReplay.checkRootCoverageBalanced_sound (fuel := 27)
  decide +kernel

theorem group016 : RawReplay.checkRootCoverage
    ReplayFullBlock215.snapshot 33554432
    (diagonalRootsFrom 16777221 FullDiagonal.group016.entries) = true :=
  (CheckedDiagonalBlock.rootCoverage_append
    ReplayFullBlock215.snapshot 33554432 ((((((((((((((FullDiagonal.block000256.append FullDiagonal.block000257).append FullDiagonal.block000258).append FullDiagonal.block000259).append FullDiagonal.block000260).append FullDiagonal.block000261).append FullDiagonal.block000262).append FullDiagonal.block000263).append FullDiagonal.block000264).append FullDiagonal.block000265).append FullDiagonal.block000266).append FullDiagonal.block000267).append FullDiagonal.block000268).append FullDiagonal.block000269).append FullDiagonal.block000270) FullDiagonal.block000271
    (CheckedDiagonalBlock.rootCoverage_append
    ReplayFullBlock215.snapshot 33554432 (((((((((((((FullDiagonal.block000256.append FullDiagonal.block000257).append FullDiagonal.block000258).append FullDiagonal.block000259).append FullDiagonal.block000260).append FullDiagonal.block000261).append FullDiagonal.block000262).append FullDiagonal.block000263).append FullDiagonal.block000264).append FullDiagonal.block000265).append FullDiagonal.block000266).append FullDiagonal.block000267).append FullDiagonal.block000268).append FullDiagonal.block000269) FullDiagonal.block000270
    (CheckedDiagonalBlock.rootCoverage_append
    ReplayFullBlock215.snapshot 33554432 ((((((((((((FullDiagonal.block000256.append FullDiagonal.block000257).append FullDiagonal.block000258).append FullDiagonal.block000259).append FullDiagonal.block000260).append FullDiagonal.block000261).append FullDiagonal.block000262).append FullDiagonal.block000263).append FullDiagonal.block000264).append FullDiagonal.block000265).append FullDiagonal.block000266).append FullDiagonal.block000267).append FullDiagonal.block000268) FullDiagonal.block000269
    (CheckedDiagonalBlock.rootCoverage_append
    ReplayFullBlock215.snapshot 33554432 (((((((((((FullDiagonal.block000256.append FullDiagonal.block000257).append FullDiagonal.block000258).append FullDiagonal.block000259).append FullDiagonal.block000260).append FullDiagonal.block000261).append FullDiagonal.block000262).append FullDiagonal.block000263).append FullDiagonal.block000264).append FullDiagonal.block000265).append FullDiagonal.block000266).append FullDiagonal.block000267) FullDiagonal.block000268
    (CheckedDiagonalBlock.rootCoverage_append
    ReplayFullBlock215.snapshot 33554432 ((((((((((FullDiagonal.block000256.append FullDiagonal.block000257).append FullDiagonal.block000258).append FullDiagonal.block000259).append FullDiagonal.block000260).append FullDiagonal.block000261).append FullDiagonal.block000262).append FullDiagonal.block000263).append FullDiagonal.block000264).append FullDiagonal.block000265).append FullDiagonal.block000266) FullDiagonal.block000267
    (CheckedDiagonalBlock.rootCoverage_append
    ReplayFullBlock215.snapshot 33554432 (((((((((FullDiagonal.block000256.append FullDiagonal.block000257).append FullDiagonal.block000258).append FullDiagonal.block000259).append FullDiagonal.block000260).append FullDiagonal.block000261).append FullDiagonal.block000262).append FullDiagonal.block000263).append FullDiagonal.block000264).append FullDiagonal.block000265) FullDiagonal.block000266
    (CheckedDiagonalBlock.rootCoverage_append
    ReplayFullBlock215.snapshot 33554432 ((((((((FullDiagonal.block000256.append FullDiagonal.block000257).append FullDiagonal.block000258).append FullDiagonal.block000259).append FullDiagonal.block000260).append FullDiagonal.block000261).append FullDiagonal.block000262).append FullDiagonal.block000263).append FullDiagonal.block000264) FullDiagonal.block000265
    (CheckedDiagonalBlock.rootCoverage_append
    ReplayFullBlock215.snapshot 33554432 (((((((FullDiagonal.block000256.append FullDiagonal.block000257).append FullDiagonal.block000258).append FullDiagonal.block000259).append FullDiagonal.block000260).append FullDiagonal.block000261).append FullDiagonal.block000262).append FullDiagonal.block000263) FullDiagonal.block000264
    (CheckedDiagonalBlock.rootCoverage_append
    ReplayFullBlock215.snapshot 33554432 ((((((FullDiagonal.block000256.append FullDiagonal.block000257).append FullDiagonal.block000258).append FullDiagonal.block000259).append FullDiagonal.block000260).append FullDiagonal.block000261).append FullDiagonal.block000262) FullDiagonal.block000263
    (CheckedDiagonalBlock.rootCoverage_append
    ReplayFullBlock215.snapshot 33554432 (((((FullDiagonal.block000256.append FullDiagonal.block000257).append FullDiagonal.block000258).append FullDiagonal.block000259).append FullDiagonal.block000260).append FullDiagonal.block000261) FullDiagonal.block000262
    (CheckedDiagonalBlock.rootCoverage_append
    ReplayFullBlock215.snapshot 33554432 ((((FullDiagonal.block000256.append FullDiagonal.block000257).append FullDiagonal.block000258).append FullDiagonal.block000259).append FullDiagonal.block000260) FullDiagonal.block000261
    (CheckedDiagonalBlock.rootCoverage_append
    ReplayFullBlock215.snapshot 33554432 (((FullDiagonal.block000256.append FullDiagonal.block000257).append FullDiagonal.block000258).append FullDiagonal.block000259) FullDiagonal.block000260
    (CheckedDiagonalBlock.rootCoverage_append
    ReplayFullBlock215.snapshot 33554432 ((FullDiagonal.block000256.append FullDiagonal.block000257).append FullDiagonal.block000258) FullDiagonal.block000259
    (CheckedDiagonalBlock.rootCoverage_append
    ReplayFullBlock215.snapshot 33554432 (FullDiagonal.block000256.append FullDiagonal.block000257) FullDiagonal.block000258
    (CheckedDiagonalBlock.rootCoverage_append
    ReplayFullBlock215.snapshot 33554432 FullDiagonal.block000256 FullDiagonal.block000257
    block000256 block000257) block000258) block000259) block000260) block000261) block000262) block000263) block000264) block000265) block000266) block000267) block000268) block000269) block000270) block000271)

end JSP848.FullCoverage
