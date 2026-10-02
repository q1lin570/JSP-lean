import JSP848.ReplayFullBlock215.Replay
import JSP848.FullDiagonal.Group029
import JSP848.ProgressionCoverage

set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0

namespace JSP848.FullCoverage

#time theorem block000464 : RawReplay.checkRootCoverage
    ReplayFullBlock215.snapshot 33554432
    (diagonalRootsFrom 30408709 FullDiagonal.block000464.entries) = true := by
  apply RawReplay.checkRootCoverageBalanced_sound (fuel := 27)
  decide +kernel

#time theorem block000465 : RawReplay.checkRootCoverage
    ReplayFullBlock215.snapshot 33554432
    (diagonalRootsFrom 30474245 FullDiagonal.block000465.entries) = true := by
  apply RawReplay.checkRootCoverageBalanced_sound (fuel := 27)
  decide +kernel

#time theorem block000466 : RawReplay.checkRootCoverage
    ReplayFullBlock215.snapshot 33554432
    (diagonalRootsFrom 30539781 FullDiagonal.block000466.entries) = true := by
  apply RawReplay.checkRootCoverageBalanced_sound (fuel := 27)
  decide +kernel

#time theorem block000467 : RawReplay.checkRootCoverage
    ReplayFullBlock215.snapshot 33554432
    (diagonalRootsFrom 30605317 FullDiagonal.block000467.entries) = true := by
  apply RawReplay.checkRootCoverageBalanced_sound (fuel := 27)
  decide +kernel

#time theorem block000468 : RawReplay.checkRootCoverage
    ReplayFullBlock215.snapshot 33554432
    (diagonalRootsFrom 30670853 FullDiagonal.block000468.entries) = true := by
  apply RawReplay.checkRootCoverageBalanced_sound (fuel := 27)
  decide +kernel

#time theorem block000469 : RawReplay.checkRootCoverage
    ReplayFullBlock215.snapshot 33554432
    (diagonalRootsFrom 30736389 FullDiagonal.block000469.entries) = true := by
  apply RawReplay.checkRootCoverageBalanced_sound (fuel := 27)
  decide +kernel

#time theorem block000470 : RawReplay.checkRootCoverage
    ReplayFullBlock215.snapshot 33554432
    (diagonalRootsFrom 30801925 FullDiagonal.block000470.entries) = true := by
  apply RawReplay.checkRootCoverageBalanced_sound (fuel := 27)
  decide +kernel

#time theorem block000471 : RawReplay.checkRootCoverage
    ReplayFullBlock215.snapshot 33554432
    (diagonalRootsFrom 30867461 FullDiagonal.block000471.entries) = true := by
  apply RawReplay.checkRootCoverageBalanced_sound (fuel := 27)
  decide +kernel

#time theorem block000472 : RawReplay.checkRootCoverage
    ReplayFullBlock215.snapshot 33554432
    (diagonalRootsFrom 30932997 FullDiagonal.block000472.entries) = true := by
  apply RawReplay.checkRootCoverageBalanced_sound (fuel := 27)
  decide +kernel

#time theorem block000473 : RawReplay.checkRootCoverage
    ReplayFullBlock215.snapshot 33554432
    (diagonalRootsFrom 30998533 FullDiagonal.block000473.entries) = true := by
  apply RawReplay.checkRootCoverageBalanced_sound (fuel := 27)
  decide +kernel

#time theorem block000474 : RawReplay.checkRootCoverage
    ReplayFullBlock215.snapshot 33554432
    (diagonalRootsFrom 31064069 FullDiagonal.block000474.entries) = true := by
  apply RawReplay.checkRootCoverageBalanced_sound (fuel := 27)
  decide +kernel

#time theorem block000475 : RawReplay.checkRootCoverage
    ReplayFullBlock215.snapshot 33554432
    (diagonalRootsFrom 31129605 FullDiagonal.block000475.entries) = true := by
  apply RawReplay.checkRootCoverageBalanced_sound (fuel := 27)
  decide +kernel

#time theorem block000476 : RawReplay.checkRootCoverage
    ReplayFullBlock215.snapshot 33554432
    (diagonalRootsFrom 31195141 FullDiagonal.block000476.entries) = true := by
  apply RawReplay.checkRootCoverageBalanced_sound (fuel := 27)
  decide +kernel

#time theorem block000477 : RawReplay.checkRootCoverage
    ReplayFullBlock215.snapshot 33554432
    (diagonalRootsFrom 31260677 FullDiagonal.block000477.entries) = true := by
  apply RawReplay.checkRootCoverageBalanced_sound (fuel := 27)
  decide +kernel

#time theorem block000478 : RawReplay.checkRootCoverage
    ReplayFullBlock215.snapshot 33554432
    (diagonalRootsFrom 31326213 FullDiagonal.block000478.entries) = true := by
  apply RawReplay.checkRootCoverageBalanced_sound (fuel := 27)
  decide +kernel

#time theorem block000479 : RawReplay.checkRootCoverage
    ReplayFullBlock215.snapshot 33554432
    (diagonalRootsFrom 31391749 FullDiagonal.block000479.entries) = true := by
  apply RawReplay.checkRootCoverageBalanced_sound (fuel := 27)
  decide +kernel

theorem group029 : RawReplay.checkRootCoverage
    ReplayFullBlock215.snapshot 33554432
    (diagonalRootsFrom 30408709 FullDiagonal.group029.entries) = true :=
  (CheckedDiagonalBlock.rootCoverage_append
    ReplayFullBlock215.snapshot 33554432 ((((((((((((((FullDiagonal.block000464.append FullDiagonal.block000465).append FullDiagonal.block000466).append FullDiagonal.block000467).append FullDiagonal.block000468).append FullDiagonal.block000469).append FullDiagonal.block000470).append FullDiagonal.block000471).append FullDiagonal.block000472).append FullDiagonal.block000473).append FullDiagonal.block000474).append FullDiagonal.block000475).append FullDiagonal.block000476).append FullDiagonal.block000477).append FullDiagonal.block000478) FullDiagonal.block000479
    (CheckedDiagonalBlock.rootCoverage_append
    ReplayFullBlock215.snapshot 33554432 (((((((((((((FullDiagonal.block000464.append FullDiagonal.block000465).append FullDiagonal.block000466).append FullDiagonal.block000467).append FullDiagonal.block000468).append FullDiagonal.block000469).append FullDiagonal.block000470).append FullDiagonal.block000471).append FullDiagonal.block000472).append FullDiagonal.block000473).append FullDiagonal.block000474).append FullDiagonal.block000475).append FullDiagonal.block000476).append FullDiagonal.block000477) FullDiagonal.block000478
    (CheckedDiagonalBlock.rootCoverage_append
    ReplayFullBlock215.snapshot 33554432 ((((((((((((FullDiagonal.block000464.append FullDiagonal.block000465).append FullDiagonal.block000466).append FullDiagonal.block000467).append FullDiagonal.block000468).append FullDiagonal.block000469).append FullDiagonal.block000470).append FullDiagonal.block000471).append FullDiagonal.block000472).append FullDiagonal.block000473).append FullDiagonal.block000474).append FullDiagonal.block000475).append FullDiagonal.block000476) FullDiagonal.block000477
    (CheckedDiagonalBlock.rootCoverage_append
    ReplayFullBlock215.snapshot 33554432 (((((((((((FullDiagonal.block000464.append FullDiagonal.block000465).append FullDiagonal.block000466).append FullDiagonal.block000467).append FullDiagonal.block000468).append FullDiagonal.block000469).append FullDiagonal.block000470).append FullDiagonal.block000471).append FullDiagonal.block000472).append FullDiagonal.block000473).append FullDiagonal.block000474).append FullDiagonal.block000475) FullDiagonal.block000476
    (CheckedDiagonalBlock.rootCoverage_append
    ReplayFullBlock215.snapshot 33554432 ((((((((((FullDiagonal.block000464.append FullDiagonal.block000465).append FullDiagonal.block000466).append FullDiagonal.block000467).append FullDiagonal.block000468).append FullDiagonal.block000469).append FullDiagonal.block000470).append FullDiagonal.block000471).append FullDiagonal.block000472).append FullDiagonal.block000473).append FullDiagonal.block000474) FullDiagonal.block000475
    (CheckedDiagonalBlock.rootCoverage_append
    ReplayFullBlock215.snapshot 33554432 (((((((((FullDiagonal.block000464.append FullDiagonal.block000465).append FullDiagonal.block000466).append FullDiagonal.block000467).append FullDiagonal.block000468).append FullDiagonal.block000469).append FullDiagonal.block000470).append FullDiagonal.block000471).append FullDiagonal.block000472).append FullDiagonal.block000473) FullDiagonal.block000474
    (CheckedDiagonalBlock.rootCoverage_append
    ReplayFullBlock215.snapshot 33554432 ((((((((FullDiagonal.block000464.append FullDiagonal.block000465).append FullDiagonal.block000466).append FullDiagonal.block000467).append FullDiagonal.block000468).append FullDiagonal.block000469).append FullDiagonal.block000470).append FullDiagonal.block000471).append FullDiagonal.block000472) FullDiagonal.block000473
    (CheckedDiagonalBlock.rootCoverage_append
    ReplayFullBlock215.snapshot 33554432 (((((((FullDiagonal.block000464.append FullDiagonal.block000465).append FullDiagonal.block000466).append FullDiagonal.block000467).append FullDiagonal.block000468).append FullDiagonal.block000469).append FullDiagonal.block000470).append FullDiagonal.block000471) FullDiagonal.block000472
    (CheckedDiagonalBlock.rootCoverage_append
    ReplayFullBlock215.snapshot 33554432 ((((((FullDiagonal.block000464.append FullDiagonal.block000465).append FullDiagonal.block000466).append FullDiagonal.block000467).append FullDiagonal.block000468).append FullDiagonal.block000469).append FullDiagonal.block000470) FullDiagonal.block000471
    (CheckedDiagonalBlock.rootCoverage_append
    ReplayFullBlock215.snapshot 33554432 (((((FullDiagonal.block000464.append FullDiagonal.block000465).append FullDiagonal.block000466).append FullDiagonal.block000467).append FullDiagonal.block000468).append FullDiagonal.block000469) FullDiagonal.block000470
    (CheckedDiagonalBlock.rootCoverage_append
    ReplayFullBlock215.snapshot 33554432 ((((FullDiagonal.block000464.append FullDiagonal.block000465).append FullDiagonal.block000466).append FullDiagonal.block000467).append FullDiagonal.block000468) FullDiagonal.block000469
    (CheckedDiagonalBlock.rootCoverage_append
    ReplayFullBlock215.snapshot 33554432 (((FullDiagonal.block000464.append FullDiagonal.block000465).append FullDiagonal.block000466).append FullDiagonal.block000467) FullDiagonal.block000468
    (CheckedDiagonalBlock.rootCoverage_append
    ReplayFullBlock215.snapshot 33554432 ((FullDiagonal.block000464.append FullDiagonal.block000465).append FullDiagonal.block000466) FullDiagonal.block000467
    (CheckedDiagonalBlock.rootCoverage_append
    ReplayFullBlock215.snapshot 33554432 (FullDiagonal.block000464.append FullDiagonal.block000465) FullDiagonal.block000466
    (CheckedDiagonalBlock.rootCoverage_append
    ReplayFullBlock215.snapshot 33554432 FullDiagonal.block000464 FullDiagonal.block000465
    block000464 block000465) block000466) block000467) block000468) block000469) block000470) block000471) block000472) block000473) block000474) block000475) block000476) block000477) block000478) block000479)

end JSP848.FullCoverage
