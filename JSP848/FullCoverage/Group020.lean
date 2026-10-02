import JSP848.ReplayFullBlock215.Replay
import JSP848.FullDiagonal.Group020
import JSP848.ProgressionCoverage

set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0

namespace JSP848.FullCoverage

#time theorem block000320 : RawReplay.checkRootCoverage
    ReplayFullBlock215.snapshot 33554432
    (diagonalRootsFrom 20971525 FullDiagonal.block000320.entries) = true := by
  apply RawReplay.checkRootCoverageBalanced_sound (fuel := 27)
  decide +kernel

#time theorem block000321 : RawReplay.checkRootCoverage
    ReplayFullBlock215.snapshot 33554432
    (diagonalRootsFrom 21037061 FullDiagonal.block000321.entries) = true := by
  apply RawReplay.checkRootCoverageBalanced_sound (fuel := 27)
  decide +kernel

#time theorem block000322 : RawReplay.checkRootCoverage
    ReplayFullBlock215.snapshot 33554432
    (diagonalRootsFrom 21102597 FullDiagonal.block000322.entries) = true := by
  apply RawReplay.checkRootCoverageBalanced_sound (fuel := 27)
  decide +kernel

#time theorem block000323 : RawReplay.checkRootCoverage
    ReplayFullBlock215.snapshot 33554432
    (diagonalRootsFrom 21168133 FullDiagonal.block000323.entries) = true := by
  apply RawReplay.checkRootCoverageBalanced_sound (fuel := 27)
  decide +kernel

#time theorem block000324 : RawReplay.checkRootCoverage
    ReplayFullBlock215.snapshot 33554432
    (diagonalRootsFrom 21233669 FullDiagonal.block000324.entries) = true := by
  apply RawReplay.checkRootCoverageBalanced_sound (fuel := 27)
  decide +kernel

#time theorem block000325 : RawReplay.checkRootCoverage
    ReplayFullBlock215.snapshot 33554432
    (diagonalRootsFrom 21299205 FullDiagonal.block000325.entries) = true := by
  apply RawReplay.checkRootCoverageBalanced_sound (fuel := 27)
  decide +kernel

#time theorem block000326 : RawReplay.checkRootCoverage
    ReplayFullBlock215.snapshot 33554432
    (diagonalRootsFrom 21364741 FullDiagonal.block000326.entries) = true := by
  apply RawReplay.checkRootCoverageBalanced_sound (fuel := 27)
  decide +kernel

#time theorem block000327 : RawReplay.checkRootCoverage
    ReplayFullBlock215.snapshot 33554432
    (diagonalRootsFrom 21430277 FullDiagonal.block000327.entries) = true := by
  apply RawReplay.checkRootCoverageBalanced_sound (fuel := 27)
  decide +kernel

#time theorem block000328 : RawReplay.checkRootCoverage
    ReplayFullBlock215.snapshot 33554432
    (diagonalRootsFrom 21495813 FullDiagonal.block000328.entries) = true := by
  apply RawReplay.checkRootCoverageBalanced_sound (fuel := 27)
  decide +kernel

#time theorem block000329 : RawReplay.checkRootCoverage
    ReplayFullBlock215.snapshot 33554432
    (diagonalRootsFrom 21561349 FullDiagonal.block000329.entries) = true := by
  apply RawReplay.checkRootCoverageBalanced_sound (fuel := 27)
  decide +kernel

#time theorem block000330 : RawReplay.checkRootCoverage
    ReplayFullBlock215.snapshot 33554432
    (diagonalRootsFrom 21626885 FullDiagonal.block000330.entries) = true := by
  apply RawReplay.checkRootCoverageBalanced_sound (fuel := 27)
  decide +kernel

#time theorem block000331 : RawReplay.checkRootCoverage
    ReplayFullBlock215.snapshot 33554432
    (diagonalRootsFrom 21692421 FullDiagonal.block000331.entries) = true := by
  apply RawReplay.checkRootCoverageBalanced_sound (fuel := 27)
  decide +kernel

#time theorem block000332 : RawReplay.checkRootCoverage
    ReplayFullBlock215.snapshot 33554432
    (diagonalRootsFrom 21757957 FullDiagonal.block000332.entries) = true := by
  apply RawReplay.checkRootCoverageBalanced_sound (fuel := 27)
  decide +kernel

#time theorem block000333 : RawReplay.checkRootCoverage
    ReplayFullBlock215.snapshot 33554432
    (diagonalRootsFrom 21823493 FullDiagonal.block000333.entries) = true := by
  apply RawReplay.checkRootCoverageBalanced_sound (fuel := 27)
  decide +kernel

#time theorem block000334 : RawReplay.checkRootCoverage
    ReplayFullBlock215.snapshot 33554432
    (diagonalRootsFrom 21889029 FullDiagonal.block000334.entries) = true := by
  apply RawReplay.checkRootCoverageBalanced_sound (fuel := 27)
  decide +kernel

#time theorem block000335 : RawReplay.checkRootCoverage
    ReplayFullBlock215.snapshot 33554432
    (diagonalRootsFrom 21954565 FullDiagonal.block000335.entries) = true := by
  apply RawReplay.checkRootCoverageBalanced_sound (fuel := 27)
  decide +kernel

theorem group020 : RawReplay.checkRootCoverage
    ReplayFullBlock215.snapshot 33554432
    (diagonalRootsFrom 20971525 FullDiagonal.group020.entries) = true :=
  (CheckedDiagonalBlock.rootCoverage_append
    ReplayFullBlock215.snapshot 33554432 ((((((((((((((FullDiagonal.block000320.append FullDiagonal.block000321).append FullDiagonal.block000322).append FullDiagonal.block000323).append FullDiagonal.block000324).append FullDiagonal.block000325).append FullDiagonal.block000326).append FullDiagonal.block000327).append FullDiagonal.block000328).append FullDiagonal.block000329).append FullDiagonal.block000330).append FullDiagonal.block000331).append FullDiagonal.block000332).append FullDiagonal.block000333).append FullDiagonal.block000334) FullDiagonal.block000335
    (CheckedDiagonalBlock.rootCoverage_append
    ReplayFullBlock215.snapshot 33554432 (((((((((((((FullDiagonal.block000320.append FullDiagonal.block000321).append FullDiagonal.block000322).append FullDiagonal.block000323).append FullDiagonal.block000324).append FullDiagonal.block000325).append FullDiagonal.block000326).append FullDiagonal.block000327).append FullDiagonal.block000328).append FullDiagonal.block000329).append FullDiagonal.block000330).append FullDiagonal.block000331).append FullDiagonal.block000332).append FullDiagonal.block000333) FullDiagonal.block000334
    (CheckedDiagonalBlock.rootCoverage_append
    ReplayFullBlock215.snapshot 33554432 ((((((((((((FullDiagonal.block000320.append FullDiagonal.block000321).append FullDiagonal.block000322).append FullDiagonal.block000323).append FullDiagonal.block000324).append FullDiagonal.block000325).append FullDiagonal.block000326).append FullDiagonal.block000327).append FullDiagonal.block000328).append FullDiagonal.block000329).append FullDiagonal.block000330).append FullDiagonal.block000331).append FullDiagonal.block000332) FullDiagonal.block000333
    (CheckedDiagonalBlock.rootCoverage_append
    ReplayFullBlock215.snapshot 33554432 (((((((((((FullDiagonal.block000320.append FullDiagonal.block000321).append FullDiagonal.block000322).append FullDiagonal.block000323).append FullDiagonal.block000324).append FullDiagonal.block000325).append FullDiagonal.block000326).append FullDiagonal.block000327).append FullDiagonal.block000328).append FullDiagonal.block000329).append FullDiagonal.block000330).append FullDiagonal.block000331) FullDiagonal.block000332
    (CheckedDiagonalBlock.rootCoverage_append
    ReplayFullBlock215.snapshot 33554432 ((((((((((FullDiagonal.block000320.append FullDiagonal.block000321).append FullDiagonal.block000322).append FullDiagonal.block000323).append FullDiagonal.block000324).append FullDiagonal.block000325).append FullDiagonal.block000326).append FullDiagonal.block000327).append FullDiagonal.block000328).append FullDiagonal.block000329).append FullDiagonal.block000330) FullDiagonal.block000331
    (CheckedDiagonalBlock.rootCoverage_append
    ReplayFullBlock215.snapshot 33554432 (((((((((FullDiagonal.block000320.append FullDiagonal.block000321).append FullDiagonal.block000322).append FullDiagonal.block000323).append FullDiagonal.block000324).append FullDiagonal.block000325).append FullDiagonal.block000326).append FullDiagonal.block000327).append FullDiagonal.block000328).append FullDiagonal.block000329) FullDiagonal.block000330
    (CheckedDiagonalBlock.rootCoverage_append
    ReplayFullBlock215.snapshot 33554432 ((((((((FullDiagonal.block000320.append FullDiagonal.block000321).append FullDiagonal.block000322).append FullDiagonal.block000323).append FullDiagonal.block000324).append FullDiagonal.block000325).append FullDiagonal.block000326).append FullDiagonal.block000327).append FullDiagonal.block000328) FullDiagonal.block000329
    (CheckedDiagonalBlock.rootCoverage_append
    ReplayFullBlock215.snapshot 33554432 (((((((FullDiagonal.block000320.append FullDiagonal.block000321).append FullDiagonal.block000322).append FullDiagonal.block000323).append FullDiagonal.block000324).append FullDiagonal.block000325).append FullDiagonal.block000326).append FullDiagonal.block000327) FullDiagonal.block000328
    (CheckedDiagonalBlock.rootCoverage_append
    ReplayFullBlock215.snapshot 33554432 ((((((FullDiagonal.block000320.append FullDiagonal.block000321).append FullDiagonal.block000322).append FullDiagonal.block000323).append FullDiagonal.block000324).append FullDiagonal.block000325).append FullDiagonal.block000326) FullDiagonal.block000327
    (CheckedDiagonalBlock.rootCoverage_append
    ReplayFullBlock215.snapshot 33554432 (((((FullDiagonal.block000320.append FullDiagonal.block000321).append FullDiagonal.block000322).append FullDiagonal.block000323).append FullDiagonal.block000324).append FullDiagonal.block000325) FullDiagonal.block000326
    (CheckedDiagonalBlock.rootCoverage_append
    ReplayFullBlock215.snapshot 33554432 ((((FullDiagonal.block000320.append FullDiagonal.block000321).append FullDiagonal.block000322).append FullDiagonal.block000323).append FullDiagonal.block000324) FullDiagonal.block000325
    (CheckedDiagonalBlock.rootCoverage_append
    ReplayFullBlock215.snapshot 33554432 (((FullDiagonal.block000320.append FullDiagonal.block000321).append FullDiagonal.block000322).append FullDiagonal.block000323) FullDiagonal.block000324
    (CheckedDiagonalBlock.rootCoverage_append
    ReplayFullBlock215.snapshot 33554432 ((FullDiagonal.block000320.append FullDiagonal.block000321).append FullDiagonal.block000322) FullDiagonal.block000323
    (CheckedDiagonalBlock.rootCoverage_append
    ReplayFullBlock215.snapshot 33554432 (FullDiagonal.block000320.append FullDiagonal.block000321) FullDiagonal.block000322
    (CheckedDiagonalBlock.rootCoverage_append
    ReplayFullBlock215.snapshot 33554432 FullDiagonal.block000320 FullDiagonal.block000321
    block000320 block000321) block000322) block000323) block000324) block000325) block000326) block000327) block000328) block000329) block000330) block000331) block000332) block000333) block000334) block000335)

end JSP848.FullCoverage
