import JSP848.ReplayFullBlock215.Replay
import JSP848.FullDiagonal.Group024
import JSP848.ProgressionCoverage

set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0

namespace JSP848.FullCoverage

#time theorem block000384 : RawReplay.checkRootCoverage
    ReplayFullBlock215.snapshot 33554432
    (diagonalRootsFrom 25165829 FullDiagonal.block000384.entries) = true := by
  apply RawReplay.checkRootCoverageBalanced_sound (fuel := 27)
  decide +kernel

#time theorem block000385 : RawReplay.checkRootCoverage
    ReplayFullBlock215.snapshot 33554432
    (diagonalRootsFrom 25231365 FullDiagonal.block000385.entries) = true := by
  apply RawReplay.checkRootCoverageBalanced_sound (fuel := 27)
  decide +kernel

#time theorem block000386 : RawReplay.checkRootCoverage
    ReplayFullBlock215.snapshot 33554432
    (diagonalRootsFrom 25296901 FullDiagonal.block000386.entries) = true := by
  apply RawReplay.checkRootCoverageBalanced_sound (fuel := 27)
  decide +kernel

#time theorem block000387 : RawReplay.checkRootCoverage
    ReplayFullBlock215.snapshot 33554432
    (diagonalRootsFrom 25362437 FullDiagonal.block000387.entries) = true := by
  apply RawReplay.checkRootCoverageBalanced_sound (fuel := 27)
  decide +kernel

#time theorem block000388 : RawReplay.checkRootCoverage
    ReplayFullBlock215.snapshot 33554432
    (diagonalRootsFrom 25427973 FullDiagonal.block000388.entries) = true := by
  apply RawReplay.checkRootCoverageBalanced_sound (fuel := 27)
  decide +kernel

#time theorem block000389 : RawReplay.checkRootCoverage
    ReplayFullBlock215.snapshot 33554432
    (diagonalRootsFrom 25493509 FullDiagonal.block000389.entries) = true := by
  apply RawReplay.checkRootCoverageBalanced_sound (fuel := 27)
  decide +kernel

#time theorem block000390 : RawReplay.checkRootCoverage
    ReplayFullBlock215.snapshot 33554432
    (diagonalRootsFrom 25559045 FullDiagonal.block000390.entries) = true := by
  apply RawReplay.checkRootCoverageBalanced_sound (fuel := 27)
  decide +kernel

#time theorem block000391 : RawReplay.checkRootCoverage
    ReplayFullBlock215.snapshot 33554432
    (diagonalRootsFrom 25624581 FullDiagonal.block000391.entries) = true := by
  apply RawReplay.checkRootCoverageBalanced_sound (fuel := 27)
  decide +kernel

#time theorem block000392 : RawReplay.checkRootCoverage
    ReplayFullBlock215.snapshot 33554432
    (diagonalRootsFrom 25690117 FullDiagonal.block000392.entries) = true := by
  apply RawReplay.checkRootCoverageBalanced_sound (fuel := 27)
  decide +kernel

#time theorem block000393 : RawReplay.checkRootCoverage
    ReplayFullBlock215.snapshot 33554432
    (diagonalRootsFrom 25755653 FullDiagonal.block000393.entries) = true := by
  apply RawReplay.checkRootCoverageBalanced_sound (fuel := 27)
  decide +kernel

#time theorem block000394 : RawReplay.checkRootCoverage
    ReplayFullBlock215.snapshot 33554432
    (diagonalRootsFrom 25821189 FullDiagonal.block000394.entries) = true := by
  apply RawReplay.checkRootCoverageBalanced_sound (fuel := 27)
  decide +kernel

#time theorem block000395 : RawReplay.checkRootCoverage
    ReplayFullBlock215.snapshot 33554432
    (diagonalRootsFrom 25886725 FullDiagonal.block000395.entries) = true := by
  apply RawReplay.checkRootCoverageBalanced_sound (fuel := 27)
  decide +kernel

#time theorem block000396 : RawReplay.checkRootCoverage
    ReplayFullBlock215.snapshot 33554432
    (diagonalRootsFrom 25952261 FullDiagonal.block000396.entries) = true := by
  apply RawReplay.checkRootCoverageBalanced_sound (fuel := 27)
  decide +kernel

#time theorem block000397 : RawReplay.checkRootCoverage
    ReplayFullBlock215.snapshot 33554432
    (diagonalRootsFrom 26017797 FullDiagonal.block000397.entries) = true := by
  apply RawReplay.checkRootCoverageBalanced_sound (fuel := 27)
  decide +kernel

#time theorem block000398 : RawReplay.checkRootCoverage
    ReplayFullBlock215.snapshot 33554432
    (diagonalRootsFrom 26083333 FullDiagonal.block000398.entries) = true := by
  apply RawReplay.checkRootCoverageBalanced_sound (fuel := 27)
  decide +kernel

#time theorem block000399 : RawReplay.checkRootCoverage
    ReplayFullBlock215.snapshot 33554432
    (diagonalRootsFrom 26148869 FullDiagonal.block000399.entries) = true := by
  apply RawReplay.checkRootCoverageBalanced_sound (fuel := 27)
  decide +kernel

theorem group024 : RawReplay.checkRootCoverage
    ReplayFullBlock215.snapshot 33554432
    (diagonalRootsFrom 25165829 FullDiagonal.group024.entries) = true :=
  (CheckedDiagonalBlock.rootCoverage_append
    ReplayFullBlock215.snapshot 33554432 ((((((((((((((FullDiagonal.block000384.append FullDiagonal.block000385).append FullDiagonal.block000386).append FullDiagonal.block000387).append FullDiagonal.block000388).append FullDiagonal.block000389).append FullDiagonal.block000390).append FullDiagonal.block000391).append FullDiagonal.block000392).append FullDiagonal.block000393).append FullDiagonal.block000394).append FullDiagonal.block000395).append FullDiagonal.block000396).append FullDiagonal.block000397).append FullDiagonal.block000398) FullDiagonal.block000399
    (CheckedDiagonalBlock.rootCoverage_append
    ReplayFullBlock215.snapshot 33554432 (((((((((((((FullDiagonal.block000384.append FullDiagonal.block000385).append FullDiagonal.block000386).append FullDiagonal.block000387).append FullDiagonal.block000388).append FullDiagonal.block000389).append FullDiagonal.block000390).append FullDiagonal.block000391).append FullDiagonal.block000392).append FullDiagonal.block000393).append FullDiagonal.block000394).append FullDiagonal.block000395).append FullDiagonal.block000396).append FullDiagonal.block000397) FullDiagonal.block000398
    (CheckedDiagonalBlock.rootCoverage_append
    ReplayFullBlock215.snapshot 33554432 ((((((((((((FullDiagonal.block000384.append FullDiagonal.block000385).append FullDiagonal.block000386).append FullDiagonal.block000387).append FullDiagonal.block000388).append FullDiagonal.block000389).append FullDiagonal.block000390).append FullDiagonal.block000391).append FullDiagonal.block000392).append FullDiagonal.block000393).append FullDiagonal.block000394).append FullDiagonal.block000395).append FullDiagonal.block000396) FullDiagonal.block000397
    (CheckedDiagonalBlock.rootCoverage_append
    ReplayFullBlock215.snapshot 33554432 (((((((((((FullDiagonal.block000384.append FullDiagonal.block000385).append FullDiagonal.block000386).append FullDiagonal.block000387).append FullDiagonal.block000388).append FullDiagonal.block000389).append FullDiagonal.block000390).append FullDiagonal.block000391).append FullDiagonal.block000392).append FullDiagonal.block000393).append FullDiagonal.block000394).append FullDiagonal.block000395) FullDiagonal.block000396
    (CheckedDiagonalBlock.rootCoverage_append
    ReplayFullBlock215.snapshot 33554432 ((((((((((FullDiagonal.block000384.append FullDiagonal.block000385).append FullDiagonal.block000386).append FullDiagonal.block000387).append FullDiagonal.block000388).append FullDiagonal.block000389).append FullDiagonal.block000390).append FullDiagonal.block000391).append FullDiagonal.block000392).append FullDiagonal.block000393).append FullDiagonal.block000394) FullDiagonal.block000395
    (CheckedDiagonalBlock.rootCoverage_append
    ReplayFullBlock215.snapshot 33554432 (((((((((FullDiagonal.block000384.append FullDiagonal.block000385).append FullDiagonal.block000386).append FullDiagonal.block000387).append FullDiagonal.block000388).append FullDiagonal.block000389).append FullDiagonal.block000390).append FullDiagonal.block000391).append FullDiagonal.block000392).append FullDiagonal.block000393) FullDiagonal.block000394
    (CheckedDiagonalBlock.rootCoverage_append
    ReplayFullBlock215.snapshot 33554432 ((((((((FullDiagonal.block000384.append FullDiagonal.block000385).append FullDiagonal.block000386).append FullDiagonal.block000387).append FullDiagonal.block000388).append FullDiagonal.block000389).append FullDiagonal.block000390).append FullDiagonal.block000391).append FullDiagonal.block000392) FullDiagonal.block000393
    (CheckedDiagonalBlock.rootCoverage_append
    ReplayFullBlock215.snapshot 33554432 (((((((FullDiagonal.block000384.append FullDiagonal.block000385).append FullDiagonal.block000386).append FullDiagonal.block000387).append FullDiagonal.block000388).append FullDiagonal.block000389).append FullDiagonal.block000390).append FullDiagonal.block000391) FullDiagonal.block000392
    (CheckedDiagonalBlock.rootCoverage_append
    ReplayFullBlock215.snapshot 33554432 ((((((FullDiagonal.block000384.append FullDiagonal.block000385).append FullDiagonal.block000386).append FullDiagonal.block000387).append FullDiagonal.block000388).append FullDiagonal.block000389).append FullDiagonal.block000390) FullDiagonal.block000391
    (CheckedDiagonalBlock.rootCoverage_append
    ReplayFullBlock215.snapshot 33554432 (((((FullDiagonal.block000384.append FullDiagonal.block000385).append FullDiagonal.block000386).append FullDiagonal.block000387).append FullDiagonal.block000388).append FullDiagonal.block000389) FullDiagonal.block000390
    (CheckedDiagonalBlock.rootCoverage_append
    ReplayFullBlock215.snapshot 33554432 ((((FullDiagonal.block000384.append FullDiagonal.block000385).append FullDiagonal.block000386).append FullDiagonal.block000387).append FullDiagonal.block000388) FullDiagonal.block000389
    (CheckedDiagonalBlock.rootCoverage_append
    ReplayFullBlock215.snapshot 33554432 (((FullDiagonal.block000384.append FullDiagonal.block000385).append FullDiagonal.block000386).append FullDiagonal.block000387) FullDiagonal.block000388
    (CheckedDiagonalBlock.rootCoverage_append
    ReplayFullBlock215.snapshot 33554432 ((FullDiagonal.block000384.append FullDiagonal.block000385).append FullDiagonal.block000386) FullDiagonal.block000387
    (CheckedDiagonalBlock.rootCoverage_append
    ReplayFullBlock215.snapshot 33554432 (FullDiagonal.block000384.append FullDiagonal.block000385) FullDiagonal.block000386
    (CheckedDiagonalBlock.rootCoverage_append
    ReplayFullBlock215.snapshot 33554432 FullDiagonal.block000384 FullDiagonal.block000385
    block000384 block000385) block000386) block000387) block000388) block000389) block000390) block000391) block000392) block000393) block000394) block000395) block000396) block000397) block000398) block000399)

end JSP848.FullCoverage
