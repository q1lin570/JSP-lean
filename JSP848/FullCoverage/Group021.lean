import JSP848.ReplayFullBlock215.Replay
import JSP848.FullDiagonal.Group021
import JSP848.ProgressionCoverage

set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0

namespace JSP848.FullCoverage

#time theorem block000336 : RawReplay.checkRootCoverage
    ReplayFullBlock215.snapshot 33554432
    (diagonalRootsFrom 22020101 FullDiagonal.block000336.entries) = true := by
  apply RawReplay.checkRootCoverageBalanced_sound (fuel := 27)
  decide +kernel

#time theorem block000337 : RawReplay.checkRootCoverage
    ReplayFullBlock215.snapshot 33554432
    (diagonalRootsFrom 22085637 FullDiagonal.block000337.entries) = true := by
  apply RawReplay.checkRootCoverageBalanced_sound (fuel := 27)
  decide +kernel

#time theorem block000338 : RawReplay.checkRootCoverage
    ReplayFullBlock215.snapshot 33554432
    (diagonalRootsFrom 22151173 FullDiagonal.block000338.entries) = true := by
  apply RawReplay.checkRootCoverageBalanced_sound (fuel := 27)
  decide +kernel

#time theorem block000339 : RawReplay.checkRootCoverage
    ReplayFullBlock215.snapshot 33554432
    (diagonalRootsFrom 22216709 FullDiagonal.block000339.entries) = true := by
  apply RawReplay.checkRootCoverageBalanced_sound (fuel := 27)
  decide +kernel

#time theorem block000340 : RawReplay.checkRootCoverage
    ReplayFullBlock215.snapshot 33554432
    (diagonalRootsFrom 22282245 FullDiagonal.block000340.entries) = true := by
  apply RawReplay.checkRootCoverageBalanced_sound (fuel := 27)
  decide +kernel

#time theorem block000341 : RawReplay.checkRootCoverage
    ReplayFullBlock215.snapshot 33554432
    (diagonalRootsFrom 22347781 FullDiagonal.block000341.entries) = true := by
  apply RawReplay.checkRootCoverageBalanced_sound (fuel := 27)
  decide +kernel

#time theorem block000342 : RawReplay.checkRootCoverage
    ReplayFullBlock215.snapshot 33554432
    (diagonalRootsFrom 22413317 FullDiagonal.block000342.entries) = true := by
  apply RawReplay.checkRootCoverageBalanced_sound (fuel := 27)
  decide +kernel

#time theorem block000343 : RawReplay.checkRootCoverage
    ReplayFullBlock215.snapshot 33554432
    (diagonalRootsFrom 22478853 FullDiagonal.block000343.entries) = true := by
  apply RawReplay.checkRootCoverageBalanced_sound (fuel := 27)
  decide +kernel

#time theorem block000344 : RawReplay.checkRootCoverage
    ReplayFullBlock215.snapshot 33554432
    (diagonalRootsFrom 22544389 FullDiagonal.block000344.entries) = true := by
  apply RawReplay.checkRootCoverageBalanced_sound (fuel := 27)
  decide +kernel

#time theorem block000345 : RawReplay.checkRootCoverage
    ReplayFullBlock215.snapshot 33554432
    (diagonalRootsFrom 22609925 FullDiagonal.block000345.entries) = true := by
  apply RawReplay.checkRootCoverageBalanced_sound (fuel := 27)
  decide +kernel

#time theorem block000346 : RawReplay.checkRootCoverage
    ReplayFullBlock215.snapshot 33554432
    (diagonalRootsFrom 22675461 FullDiagonal.block000346.entries) = true := by
  apply RawReplay.checkRootCoverageBalanced_sound (fuel := 27)
  decide +kernel

#time theorem block000347 : RawReplay.checkRootCoverage
    ReplayFullBlock215.snapshot 33554432
    (diagonalRootsFrom 22740997 FullDiagonal.block000347.entries) = true := by
  apply RawReplay.checkRootCoverageBalanced_sound (fuel := 27)
  decide +kernel

#time theorem block000348 : RawReplay.checkRootCoverage
    ReplayFullBlock215.snapshot 33554432
    (diagonalRootsFrom 22806533 FullDiagonal.block000348.entries) = true := by
  apply RawReplay.checkRootCoverageBalanced_sound (fuel := 27)
  decide +kernel

#time theorem block000349 : RawReplay.checkRootCoverage
    ReplayFullBlock215.snapshot 33554432
    (diagonalRootsFrom 22872069 FullDiagonal.block000349.entries) = true := by
  apply RawReplay.checkRootCoverageBalanced_sound (fuel := 27)
  decide +kernel

#time theorem block000350 : RawReplay.checkRootCoverage
    ReplayFullBlock215.snapshot 33554432
    (diagonalRootsFrom 22937605 FullDiagonal.block000350.entries) = true := by
  apply RawReplay.checkRootCoverageBalanced_sound (fuel := 27)
  decide +kernel

#time theorem block000351 : RawReplay.checkRootCoverage
    ReplayFullBlock215.snapshot 33554432
    (diagonalRootsFrom 23003141 FullDiagonal.block000351.entries) = true := by
  apply RawReplay.checkRootCoverageBalanced_sound (fuel := 27)
  decide +kernel

theorem group021 : RawReplay.checkRootCoverage
    ReplayFullBlock215.snapshot 33554432
    (diagonalRootsFrom 22020101 FullDiagonal.group021.entries) = true :=
  (CheckedDiagonalBlock.rootCoverage_append
    ReplayFullBlock215.snapshot 33554432 ((((((((((((((FullDiagonal.block000336.append FullDiagonal.block000337).append FullDiagonal.block000338).append FullDiagonal.block000339).append FullDiagonal.block000340).append FullDiagonal.block000341).append FullDiagonal.block000342).append FullDiagonal.block000343).append FullDiagonal.block000344).append FullDiagonal.block000345).append FullDiagonal.block000346).append FullDiagonal.block000347).append FullDiagonal.block000348).append FullDiagonal.block000349).append FullDiagonal.block000350) FullDiagonal.block000351
    (CheckedDiagonalBlock.rootCoverage_append
    ReplayFullBlock215.snapshot 33554432 (((((((((((((FullDiagonal.block000336.append FullDiagonal.block000337).append FullDiagonal.block000338).append FullDiagonal.block000339).append FullDiagonal.block000340).append FullDiagonal.block000341).append FullDiagonal.block000342).append FullDiagonal.block000343).append FullDiagonal.block000344).append FullDiagonal.block000345).append FullDiagonal.block000346).append FullDiagonal.block000347).append FullDiagonal.block000348).append FullDiagonal.block000349) FullDiagonal.block000350
    (CheckedDiagonalBlock.rootCoverage_append
    ReplayFullBlock215.snapshot 33554432 ((((((((((((FullDiagonal.block000336.append FullDiagonal.block000337).append FullDiagonal.block000338).append FullDiagonal.block000339).append FullDiagonal.block000340).append FullDiagonal.block000341).append FullDiagonal.block000342).append FullDiagonal.block000343).append FullDiagonal.block000344).append FullDiagonal.block000345).append FullDiagonal.block000346).append FullDiagonal.block000347).append FullDiagonal.block000348) FullDiagonal.block000349
    (CheckedDiagonalBlock.rootCoverage_append
    ReplayFullBlock215.snapshot 33554432 (((((((((((FullDiagonal.block000336.append FullDiagonal.block000337).append FullDiagonal.block000338).append FullDiagonal.block000339).append FullDiagonal.block000340).append FullDiagonal.block000341).append FullDiagonal.block000342).append FullDiagonal.block000343).append FullDiagonal.block000344).append FullDiagonal.block000345).append FullDiagonal.block000346).append FullDiagonal.block000347) FullDiagonal.block000348
    (CheckedDiagonalBlock.rootCoverage_append
    ReplayFullBlock215.snapshot 33554432 ((((((((((FullDiagonal.block000336.append FullDiagonal.block000337).append FullDiagonal.block000338).append FullDiagonal.block000339).append FullDiagonal.block000340).append FullDiagonal.block000341).append FullDiagonal.block000342).append FullDiagonal.block000343).append FullDiagonal.block000344).append FullDiagonal.block000345).append FullDiagonal.block000346) FullDiagonal.block000347
    (CheckedDiagonalBlock.rootCoverage_append
    ReplayFullBlock215.snapshot 33554432 (((((((((FullDiagonal.block000336.append FullDiagonal.block000337).append FullDiagonal.block000338).append FullDiagonal.block000339).append FullDiagonal.block000340).append FullDiagonal.block000341).append FullDiagonal.block000342).append FullDiagonal.block000343).append FullDiagonal.block000344).append FullDiagonal.block000345) FullDiagonal.block000346
    (CheckedDiagonalBlock.rootCoverage_append
    ReplayFullBlock215.snapshot 33554432 ((((((((FullDiagonal.block000336.append FullDiagonal.block000337).append FullDiagonal.block000338).append FullDiagonal.block000339).append FullDiagonal.block000340).append FullDiagonal.block000341).append FullDiagonal.block000342).append FullDiagonal.block000343).append FullDiagonal.block000344) FullDiagonal.block000345
    (CheckedDiagonalBlock.rootCoverage_append
    ReplayFullBlock215.snapshot 33554432 (((((((FullDiagonal.block000336.append FullDiagonal.block000337).append FullDiagonal.block000338).append FullDiagonal.block000339).append FullDiagonal.block000340).append FullDiagonal.block000341).append FullDiagonal.block000342).append FullDiagonal.block000343) FullDiagonal.block000344
    (CheckedDiagonalBlock.rootCoverage_append
    ReplayFullBlock215.snapshot 33554432 ((((((FullDiagonal.block000336.append FullDiagonal.block000337).append FullDiagonal.block000338).append FullDiagonal.block000339).append FullDiagonal.block000340).append FullDiagonal.block000341).append FullDiagonal.block000342) FullDiagonal.block000343
    (CheckedDiagonalBlock.rootCoverage_append
    ReplayFullBlock215.snapshot 33554432 (((((FullDiagonal.block000336.append FullDiagonal.block000337).append FullDiagonal.block000338).append FullDiagonal.block000339).append FullDiagonal.block000340).append FullDiagonal.block000341) FullDiagonal.block000342
    (CheckedDiagonalBlock.rootCoverage_append
    ReplayFullBlock215.snapshot 33554432 ((((FullDiagonal.block000336.append FullDiagonal.block000337).append FullDiagonal.block000338).append FullDiagonal.block000339).append FullDiagonal.block000340) FullDiagonal.block000341
    (CheckedDiagonalBlock.rootCoverage_append
    ReplayFullBlock215.snapshot 33554432 (((FullDiagonal.block000336.append FullDiagonal.block000337).append FullDiagonal.block000338).append FullDiagonal.block000339) FullDiagonal.block000340
    (CheckedDiagonalBlock.rootCoverage_append
    ReplayFullBlock215.snapshot 33554432 ((FullDiagonal.block000336.append FullDiagonal.block000337).append FullDiagonal.block000338) FullDiagonal.block000339
    (CheckedDiagonalBlock.rootCoverage_append
    ReplayFullBlock215.snapshot 33554432 (FullDiagonal.block000336.append FullDiagonal.block000337) FullDiagonal.block000338
    (CheckedDiagonalBlock.rootCoverage_append
    ReplayFullBlock215.snapshot 33554432 FullDiagonal.block000336 FullDiagonal.block000337
    block000336 block000337) block000338) block000339) block000340) block000341) block000342) block000343) block000344) block000345) block000346) block000347) block000348) block000349) block000350) block000351)

end JSP848.FullCoverage
