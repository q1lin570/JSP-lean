import JSP848.ReplayFullBlock215.Replay
import JSP848.FullDiagonal.Group023
import JSP848.ProgressionCoverage

set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0

namespace JSP848.FullCoverage

#time theorem block000368 : RawReplay.checkRootCoverage
    ReplayFullBlock215.snapshot 33554432
    (diagonalRootsFrom 24117253 FullDiagonal.block000368.entries) = true := by
  apply RawReplay.checkRootCoverageBalanced_sound (fuel := 27)
  decide +kernel

#time theorem block000369 : RawReplay.checkRootCoverage
    ReplayFullBlock215.snapshot 33554432
    (diagonalRootsFrom 24182789 FullDiagonal.block000369.entries) = true := by
  apply RawReplay.checkRootCoverageBalanced_sound (fuel := 27)
  decide +kernel

#time theorem block000370 : RawReplay.checkRootCoverage
    ReplayFullBlock215.snapshot 33554432
    (diagonalRootsFrom 24248325 FullDiagonal.block000370.entries) = true := by
  apply RawReplay.checkRootCoverageBalanced_sound (fuel := 27)
  decide +kernel

#time theorem block000371 : RawReplay.checkRootCoverage
    ReplayFullBlock215.snapshot 33554432
    (diagonalRootsFrom 24313861 FullDiagonal.block000371.entries) = true := by
  apply RawReplay.checkRootCoverageBalanced_sound (fuel := 27)
  decide +kernel

#time theorem block000372 : RawReplay.checkRootCoverage
    ReplayFullBlock215.snapshot 33554432
    (diagonalRootsFrom 24379397 FullDiagonal.block000372.entries) = true := by
  apply RawReplay.checkRootCoverageBalanced_sound (fuel := 27)
  decide +kernel

#time theorem block000373 : RawReplay.checkRootCoverage
    ReplayFullBlock215.snapshot 33554432
    (diagonalRootsFrom 24444933 FullDiagonal.block000373.entries) = true := by
  apply RawReplay.checkRootCoverageBalanced_sound (fuel := 27)
  decide +kernel

#time theorem block000374 : RawReplay.checkRootCoverage
    ReplayFullBlock215.snapshot 33554432
    (diagonalRootsFrom 24510469 FullDiagonal.block000374.entries) = true := by
  apply RawReplay.checkRootCoverageBalanced_sound (fuel := 27)
  decide +kernel

#time theorem block000375 : RawReplay.checkRootCoverage
    ReplayFullBlock215.snapshot 33554432
    (diagonalRootsFrom 24576005 FullDiagonal.block000375.entries) = true := by
  apply RawReplay.checkRootCoverageBalanced_sound (fuel := 27)
  decide +kernel

#time theorem block000376 : RawReplay.checkRootCoverage
    ReplayFullBlock215.snapshot 33554432
    (diagonalRootsFrom 24641541 FullDiagonal.block000376.entries) = true := by
  apply RawReplay.checkRootCoverageBalanced_sound (fuel := 27)
  decide +kernel

#time theorem block000377 : RawReplay.checkRootCoverage
    ReplayFullBlock215.snapshot 33554432
    (diagonalRootsFrom 24707077 FullDiagonal.block000377.entries) = true := by
  apply RawReplay.checkRootCoverageBalanced_sound (fuel := 27)
  decide +kernel

#time theorem block000378 : RawReplay.checkRootCoverage
    ReplayFullBlock215.snapshot 33554432
    (diagonalRootsFrom 24772613 FullDiagonal.block000378.entries) = true := by
  apply RawReplay.checkRootCoverageBalanced_sound (fuel := 27)
  decide +kernel

#time theorem block000379 : RawReplay.checkRootCoverage
    ReplayFullBlock215.snapshot 33554432
    (diagonalRootsFrom 24838149 FullDiagonal.block000379.entries) = true := by
  apply RawReplay.checkRootCoverageBalanced_sound (fuel := 27)
  decide +kernel

#time theorem block000380 : RawReplay.checkRootCoverage
    ReplayFullBlock215.snapshot 33554432
    (diagonalRootsFrom 24903685 FullDiagonal.block000380.entries) = true := by
  apply RawReplay.checkRootCoverageBalanced_sound (fuel := 27)
  decide +kernel

#time theorem block000381 : RawReplay.checkRootCoverage
    ReplayFullBlock215.snapshot 33554432
    (diagonalRootsFrom 24969221 FullDiagonal.block000381.entries) = true := by
  apply RawReplay.checkRootCoverageBalanced_sound (fuel := 27)
  decide +kernel

#time theorem block000382 : RawReplay.checkRootCoverage
    ReplayFullBlock215.snapshot 33554432
    (diagonalRootsFrom 25034757 FullDiagonal.block000382.entries) = true := by
  apply RawReplay.checkRootCoverageBalanced_sound (fuel := 27)
  decide +kernel

#time theorem block000383 : RawReplay.checkRootCoverage
    ReplayFullBlock215.snapshot 33554432
    (diagonalRootsFrom 25100293 FullDiagonal.block000383.entries) = true := by
  apply RawReplay.checkRootCoverageBalanced_sound (fuel := 27)
  decide +kernel

theorem group023 : RawReplay.checkRootCoverage
    ReplayFullBlock215.snapshot 33554432
    (diagonalRootsFrom 24117253 FullDiagonal.group023.entries) = true :=
  (CheckedDiagonalBlock.rootCoverage_append
    ReplayFullBlock215.snapshot 33554432 ((((((((((((((FullDiagonal.block000368.append FullDiagonal.block000369).append FullDiagonal.block000370).append FullDiagonal.block000371).append FullDiagonal.block000372).append FullDiagonal.block000373).append FullDiagonal.block000374).append FullDiagonal.block000375).append FullDiagonal.block000376).append FullDiagonal.block000377).append FullDiagonal.block000378).append FullDiagonal.block000379).append FullDiagonal.block000380).append FullDiagonal.block000381).append FullDiagonal.block000382) FullDiagonal.block000383
    (CheckedDiagonalBlock.rootCoverage_append
    ReplayFullBlock215.snapshot 33554432 (((((((((((((FullDiagonal.block000368.append FullDiagonal.block000369).append FullDiagonal.block000370).append FullDiagonal.block000371).append FullDiagonal.block000372).append FullDiagonal.block000373).append FullDiagonal.block000374).append FullDiagonal.block000375).append FullDiagonal.block000376).append FullDiagonal.block000377).append FullDiagonal.block000378).append FullDiagonal.block000379).append FullDiagonal.block000380).append FullDiagonal.block000381) FullDiagonal.block000382
    (CheckedDiagonalBlock.rootCoverage_append
    ReplayFullBlock215.snapshot 33554432 ((((((((((((FullDiagonal.block000368.append FullDiagonal.block000369).append FullDiagonal.block000370).append FullDiagonal.block000371).append FullDiagonal.block000372).append FullDiagonal.block000373).append FullDiagonal.block000374).append FullDiagonal.block000375).append FullDiagonal.block000376).append FullDiagonal.block000377).append FullDiagonal.block000378).append FullDiagonal.block000379).append FullDiagonal.block000380) FullDiagonal.block000381
    (CheckedDiagonalBlock.rootCoverage_append
    ReplayFullBlock215.snapshot 33554432 (((((((((((FullDiagonal.block000368.append FullDiagonal.block000369).append FullDiagonal.block000370).append FullDiagonal.block000371).append FullDiagonal.block000372).append FullDiagonal.block000373).append FullDiagonal.block000374).append FullDiagonal.block000375).append FullDiagonal.block000376).append FullDiagonal.block000377).append FullDiagonal.block000378).append FullDiagonal.block000379) FullDiagonal.block000380
    (CheckedDiagonalBlock.rootCoverage_append
    ReplayFullBlock215.snapshot 33554432 ((((((((((FullDiagonal.block000368.append FullDiagonal.block000369).append FullDiagonal.block000370).append FullDiagonal.block000371).append FullDiagonal.block000372).append FullDiagonal.block000373).append FullDiagonal.block000374).append FullDiagonal.block000375).append FullDiagonal.block000376).append FullDiagonal.block000377).append FullDiagonal.block000378) FullDiagonal.block000379
    (CheckedDiagonalBlock.rootCoverage_append
    ReplayFullBlock215.snapshot 33554432 (((((((((FullDiagonal.block000368.append FullDiagonal.block000369).append FullDiagonal.block000370).append FullDiagonal.block000371).append FullDiagonal.block000372).append FullDiagonal.block000373).append FullDiagonal.block000374).append FullDiagonal.block000375).append FullDiagonal.block000376).append FullDiagonal.block000377) FullDiagonal.block000378
    (CheckedDiagonalBlock.rootCoverage_append
    ReplayFullBlock215.snapshot 33554432 ((((((((FullDiagonal.block000368.append FullDiagonal.block000369).append FullDiagonal.block000370).append FullDiagonal.block000371).append FullDiagonal.block000372).append FullDiagonal.block000373).append FullDiagonal.block000374).append FullDiagonal.block000375).append FullDiagonal.block000376) FullDiagonal.block000377
    (CheckedDiagonalBlock.rootCoverage_append
    ReplayFullBlock215.snapshot 33554432 (((((((FullDiagonal.block000368.append FullDiagonal.block000369).append FullDiagonal.block000370).append FullDiagonal.block000371).append FullDiagonal.block000372).append FullDiagonal.block000373).append FullDiagonal.block000374).append FullDiagonal.block000375) FullDiagonal.block000376
    (CheckedDiagonalBlock.rootCoverage_append
    ReplayFullBlock215.snapshot 33554432 ((((((FullDiagonal.block000368.append FullDiagonal.block000369).append FullDiagonal.block000370).append FullDiagonal.block000371).append FullDiagonal.block000372).append FullDiagonal.block000373).append FullDiagonal.block000374) FullDiagonal.block000375
    (CheckedDiagonalBlock.rootCoverage_append
    ReplayFullBlock215.snapshot 33554432 (((((FullDiagonal.block000368.append FullDiagonal.block000369).append FullDiagonal.block000370).append FullDiagonal.block000371).append FullDiagonal.block000372).append FullDiagonal.block000373) FullDiagonal.block000374
    (CheckedDiagonalBlock.rootCoverage_append
    ReplayFullBlock215.snapshot 33554432 ((((FullDiagonal.block000368.append FullDiagonal.block000369).append FullDiagonal.block000370).append FullDiagonal.block000371).append FullDiagonal.block000372) FullDiagonal.block000373
    (CheckedDiagonalBlock.rootCoverage_append
    ReplayFullBlock215.snapshot 33554432 (((FullDiagonal.block000368.append FullDiagonal.block000369).append FullDiagonal.block000370).append FullDiagonal.block000371) FullDiagonal.block000372
    (CheckedDiagonalBlock.rootCoverage_append
    ReplayFullBlock215.snapshot 33554432 ((FullDiagonal.block000368.append FullDiagonal.block000369).append FullDiagonal.block000370) FullDiagonal.block000371
    (CheckedDiagonalBlock.rootCoverage_append
    ReplayFullBlock215.snapshot 33554432 (FullDiagonal.block000368.append FullDiagonal.block000369) FullDiagonal.block000370
    (CheckedDiagonalBlock.rootCoverage_append
    ReplayFullBlock215.snapshot 33554432 FullDiagonal.block000368 FullDiagonal.block000369
    block000368 block000369) block000370) block000371) block000372) block000373) block000374) block000375) block000376) block000377) block000378) block000379) block000380) block000381) block000382) block000383)

end JSP848.FullCoverage
