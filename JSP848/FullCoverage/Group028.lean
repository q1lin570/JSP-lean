import JSP848.ReplayFullBlock215.Replay
import JSP848.FullDiagonal.Group028
import JSP848.ProgressionCoverage

set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0

namespace JSP848.FullCoverage

#time theorem block000448 : RawReplay.checkRootCoverage
    ReplayFullBlock215.snapshot 33554432
    (diagonalRootsFrom 29360133 FullDiagonal.block000448.entries) = true := by
  apply RawReplay.checkRootCoverageBalanced_sound (fuel := 27)
  decide +kernel

#time theorem block000449 : RawReplay.checkRootCoverage
    ReplayFullBlock215.snapshot 33554432
    (diagonalRootsFrom 29425669 FullDiagonal.block000449.entries) = true := by
  apply RawReplay.checkRootCoverageBalanced_sound (fuel := 27)
  decide +kernel

#time theorem block000450 : RawReplay.checkRootCoverage
    ReplayFullBlock215.snapshot 33554432
    (diagonalRootsFrom 29491205 FullDiagonal.block000450.entries) = true := by
  apply RawReplay.checkRootCoverageBalanced_sound (fuel := 27)
  decide +kernel

#time theorem block000451 : RawReplay.checkRootCoverage
    ReplayFullBlock215.snapshot 33554432
    (diagonalRootsFrom 29556741 FullDiagonal.block000451.entries) = true := by
  apply RawReplay.checkRootCoverageBalanced_sound (fuel := 27)
  decide +kernel

#time theorem block000452 : RawReplay.checkRootCoverage
    ReplayFullBlock215.snapshot 33554432
    (diagonalRootsFrom 29622277 FullDiagonal.block000452.entries) = true := by
  apply RawReplay.checkRootCoverageBalanced_sound (fuel := 27)
  decide +kernel

#time theorem block000453 : RawReplay.checkRootCoverage
    ReplayFullBlock215.snapshot 33554432
    (diagonalRootsFrom 29687813 FullDiagonal.block000453.entries) = true := by
  apply RawReplay.checkRootCoverageBalanced_sound (fuel := 27)
  decide +kernel

#time theorem block000454 : RawReplay.checkRootCoverage
    ReplayFullBlock215.snapshot 33554432
    (diagonalRootsFrom 29753349 FullDiagonal.block000454.entries) = true := by
  apply RawReplay.checkRootCoverageBalanced_sound (fuel := 27)
  decide +kernel

#time theorem block000455 : RawReplay.checkRootCoverage
    ReplayFullBlock215.snapshot 33554432
    (diagonalRootsFrom 29818885 FullDiagonal.block000455.entries) = true := by
  apply RawReplay.checkRootCoverageBalanced_sound (fuel := 27)
  decide +kernel

#time theorem block000456 : RawReplay.checkRootCoverage
    ReplayFullBlock215.snapshot 33554432
    (diagonalRootsFrom 29884421 FullDiagonal.block000456.entries) = true := by
  apply RawReplay.checkRootCoverageBalanced_sound (fuel := 27)
  decide +kernel

#time theorem block000457 : RawReplay.checkRootCoverage
    ReplayFullBlock215.snapshot 33554432
    (diagonalRootsFrom 29949957 FullDiagonal.block000457.entries) = true := by
  apply RawReplay.checkRootCoverageBalanced_sound (fuel := 27)
  decide +kernel

#time theorem block000458 : RawReplay.checkRootCoverage
    ReplayFullBlock215.snapshot 33554432
    (diagonalRootsFrom 30015493 FullDiagonal.block000458.entries) = true := by
  apply RawReplay.checkRootCoverageBalanced_sound (fuel := 27)
  decide +kernel

#time theorem block000459 : RawReplay.checkRootCoverage
    ReplayFullBlock215.snapshot 33554432
    (diagonalRootsFrom 30081029 FullDiagonal.block000459.entries) = true := by
  apply RawReplay.checkRootCoverageBalanced_sound (fuel := 27)
  decide +kernel

#time theorem block000460 : RawReplay.checkRootCoverage
    ReplayFullBlock215.snapshot 33554432
    (diagonalRootsFrom 30146565 FullDiagonal.block000460.entries) = true := by
  apply RawReplay.checkRootCoverageBalanced_sound (fuel := 27)
  decide +kernel

#time theorem block000461 : RawReplay.checkRootCoverage
    ReplayFullBlock215.snapshot 33554432
    (diagonalRootsFrom 30212101 FullDiagonal.block000461.entries) = true := by
  apply RawReplay.checkRootCoverageBalanced_sound (fuel := 27)
  decide +kernel

#time theorem block000462 : RawReplay.checkRootCoverage
    ReplayFullBlock215.snapshot 33554432
    (diagonalRootsFrom 30277637 FullDiagonal.block000462.entries) = true := by
  apply RawReplay.checkRootCoverageBalanced_sound (fuel := 27)
  decide +kernel

#time theorem block000463 : RawReplay.checkRootCoverage
    ReplayFullBlock215.snapshot 33554432
    (diagonalRootsFrom 30343173 FullDiagonal.block000463.entries) = true := by
  apply RawReplay.checkRootCoverageBalanced_sound (fuel := 27)
  decide +kernel

theorem group028 : RawReplay.checkRootCoverage
    ReplayFullBlock215.snapshot 33554432
    (diagonalRootsFrom 29360133 FullDiagonal.group028.entries) = true :=
  (CheckedDiagonalBlock.rootCoverage_append
    ReplayFullBlock215.snapshot 33554432 ((((((((((((((FullDiagonal.block000448.append FullDiagonal.block000449).append FullDiagonal.block000450).append FullDiagonal.block000451).append FullDiagonal.block000452).append FullDiagonal.block000453).append FullDiagonal.block000454).append FullDiagonal.block000455).append FullDiagonal.block000456).append FullDiagonal.block000457).append FullDiagonal.block000458).append FullDiagonal.block000459).append FullDiagonal.block000460).append FullDiagonal.block000461).append FullDiagonal.block000462) FullDiagonal.block000463
    (CheckedDiagonalBlock.rootCoverage_append
    ReplayFullBlock215.snapshot 33554432 (((((((((((((FullDiagonal.block000448.append FullDiagonal.block000449).append FullDiagonal.block000450).append FullDiagonal.block000451).append FullDiagonal.block000452).append FullDiagonal.block000453).append FullDiagonal.block000454).append FullDiagonal.block000455).append FullDiagonal.block000456).append FullDiagonal.block000457).append FullDiagonal.block000458).append FullDiagonal.block000459).append FullDiagonal.block000460).append FullDiagonal.block000461) FullDiagonal.block000462
    (CheckedDiagonalBlock.rootCoverage_append
    ReplayFullBlock215.snapshot 33554432 ((((((((((((FullDiagonal.block000448.append FullDiagonal.block000449).append FullDiagonal.block000450).append FullDiagonal.block000451).append FullDiagonal.block000452).append FullDiagonal.block000453).append FullDiagonal.block000454).append FullDiagonal.block000455).append FullDiagonal.block000456).append FullDiagonal.block000457).append FullDiagonal.block000458).append FullDiagonal.block000459).append FullDiagonal.block000460) FullDiagonal.block000461
    (CheckedDiagonalBlock.rootCoverage_append
    ReplayFullBlock215.snapshot 33554432 (((((((((((FullDiagonal.block000448.append FullDiagonal.block000449).append FullDiagonal.block000450).append FullDiagonal.block000451).append FullDiagonal.block000452).append FullDiagonal.block000453).append FullDiagonal.block000454).append FullDiagonal.block000455).append FullDiagonal.block000456).append FullDiagonal.block000457).append FullDiagonal.block000458).append FullDiagonal.block000459) FullDiagonal.block000460
    (CheckedDiagonalBlock.rootCoverage_append
    ReplayFullBlock215.snapshot 33554432 ((((((((((FullDiagonal.block000448.append FullDiagonal.block000449).append FullDiagonal.block000450).append FullDiagonal.block000451).append FullDiagonal.block000452).append FullDiagonal.block000453).append FullDiagonal.block000454).append FullDiagonal.block000455).append FullDiagonal.block000456).append FullDiagonal.block000457).append FullDiagonal.block000458) FullDiagonal.block000459
    (CheckedDiagonalBlock.rootCoverage_append
    ReplayFullBlock215.snapshot 33554432 (((((((((FullDiagonal.block000448.append FullDiagonal.block000449).append FullDiagonal.block000450).append FullDiagonal.block000451).append FullDiagonal.block000452).append FullDiagonal.block000453).append FullDiagonal.block000454).append FullDiagonal.block000455).append FullDiagonal.block000456).append FullDiagonal.block000457) FullDiagonal.block000458
    (CheckedDiagonalBlock.rootCoverage_append
    ReplayFullBlock215.snapshot 33554432 ((((((((FullDiagonal.block000448.append FullDiagonal.block000449).append FullDiagonal.block000450).append FullDiagonal.block000451).append FullDiagonal.block000452).append FullDiagonal.block000453).append FullDiagonal.block000454).append FullDiagonal.block000455).append FullDiagonal.block000456) FullDiagonal.block000457
    (CheckedDiagonalBlock.rootCoverage_append
    ReplayFullBlock215.snapshot 33554432 (((((((FullDiagonal.block000448.append FullDiagonal.block000449).append FullDiagonal.block000450).append FullDiagonal.block000451).append FullDiagonal.block000452).append FullDiagonal.block000453).append FullDiagonal.block000454).append FullDiagonal.block000455) FullDiagonal.block000456
    (CheckedDiagonalBlock.rootCoverage_append
    ReplayFullBlock215.snapshot 33554432 ((((((FullDiagonal.block000448.append FullDiagonal.block000449).append FullDiagonal.block000450).append FullDiagonal.block000451).append FullDiagonal.block000452).append FullDiagonal.block000453).append FullDiagonal.block000454) FullDiagonal.block000455
    (CheckedDiagonalBlock.rootCoverage_append
    ReplayFullBlock215.snapshot 33554432 (((((FullDiagonal.block000448.append FullDiagonal.block000449).append FullDiagonal.block000450).append FullDiagonal.block000451).append FullDiagonal.block000452).append FullDiagonal.block000453) FullDiagonal.block000454
    (CheckedDiagonalBlock.rootCoverage_append
    ReplayFullBlock215.snapshot 33554432 ((((FullDiagonal.block000448.append FullDiagonal.block000449).append FullDiagonal.block000450).append FullDiagonal.block000451).append FullDiagonal.block000452) FullDiagonal.block000453
    (CheckedDiagonalBlock.rootCoverage_append
    ReplayFullBlock215.snapshot 33554432 (((FullDiagonal.block000448.append FullDiagonal.block000449).append FullDiagonal.block000450).append FullDiagonal.block000451) FullDiagonal.block000452
    (CheckedDiagonalBlock.rootCoverage_append
    ReplayFullBlock215.snapshot 33554432 ((FullDiagonal.block000448.append FullDiagonal.block000449).append FullDiagonal.block000450) FullDiagonal.block000451
    (CheckedDiagonalBlock.rootCoverage_append
    ReplayFullBlock215.snapshot 33554432 (FullDiagonal.block000448.append FullDiagonal.block000449) FullDiagonal.block000450
    (CheckedDiagonalBlock.rootCoverage_append
    ReplayFullBlock215.snapshot 33554432 FullDiagonal.block000448 FullDiagonal.block000449
    block000448 block000449) block000450) block000451) block000452) block000453) block000454) block000455) block000456) block000457) block000458) block000459) block000460) block000461) block000462) block000463)

end JSP848.FullCoverage
