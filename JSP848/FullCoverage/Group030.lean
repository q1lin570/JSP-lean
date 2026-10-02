import JSP848.ReplayFullBlock215.Replay
import JSP848.FullDiagonal.Group030
import JSP848.ProgressionCoverage

set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0

namespace JSP848.FullCoverage

#time theorem block000480 : RawReplay.checkRootCoverage
    ReplayFullBlock215.snapshot 33554432
    (diagonalRootsFrom 31457285 FullDiagonal.block000480.entries) = true := by
  apply RawReplay.checkRootCoverageBalanced_sound (fuel := 27)
  decide +kernel

#time theorem block000481 : RawReplay.checkRootCoverage
    ReplayFullBlock215.snapshot 33554432
    (diagonalRootsFrom 31522821 FullDiagonal.block000481.entries) = true := by
  apply RawReplay.checkRootCoverageBalanced_sound (fuel := 27)
  decide +kernel

#time theorem block000482 : RawReplay.checkRootCoverage
    ReplayFullBlock215.snapshot 33554432
    (diagonalRootsFrom 31588357 FullDiagonal.block000482.entries) = true := by
  apply RawReplay.checkRootCoverageBalanced_sound (fuel := 27)
  decide +kernel

#time theorem block000483 : RawReplay.checkRootCoverage
    ReplayFullBlock215.snapshot 33554432
    (diagonalRootsFrom 31653893 FullDiagonal.block000483.entries) = true := by
  apply RawReplay.checkRootCoverageBalanced_sound (fuel := 27)
  decide +kernel

#time theorem block000484 : RawReplay.checkRootCoverage
    ReplayFullBlock215.snapshot 33554432
    (diagonalRootsFrom 31719429 FullDiagonal.block000484.entries) = true := by
  apply RawReplay.checkRootCoverageBalanced_sound (fuel := 27)
  decide +kernel

#time theorem block000485 : RawReplay.checkRootCoverage
    ReplayFullBlock215.snapshot 33554432
    (diagonalRootsFrom 31784965 FullDiagonal.block000485.entries) = true := by
  apply RawReplay.checkRootCoverageBalanced_sound (fuel := 27)
  decide +kernel

#time theorem block000486 : RawReplay.checkRootCoverage
    ReplayFullBlock215.snapshot 33554432
    (diagonalRootsFrom 31850501 FullDiagonal.block000486.entries) = true := by
  apply RawReplay.checkRootCoverageBalanced_sound (fuel := 27)
  decide +kernel

#time theorem block000487 : RawReplay.checkRootCoverage
    ReplayFullBlock215.snapshot 33554432
    (diagonalRootsFrom 31916037 FullDiagonal.block000487.entries) = true := by
  apply RawReplay.checkRootCoverageBalanced_sound (fuel := 27)
  decide +kernel

#time theorem block000488 : RawReplay.checkRootCoverage
    ReplayFullBlock215.snapshot 33554432
    (diagonalRootsFrom 31981573 FullDiagonal.block000488.entries) = true := by
  apply RawReplay.checkRootCoverageBalanced_sound (fuel := 27)
  decide +kernel

#time theorem block000489 : RawReplay.checkRootCoverage
    ReplayFullBlock215.snapshot 33554432
    (diagonalRootsFrom 32047109 FullDiagonal.block000489.entries) = true := by
  apply RawReplay.checkRootCoverageBalanced_sound (fuel := 27)
  decide +kernel

#time theorem block000490 : RawReplay.checkRootCoverage
    ReplayFullBlock215.snapshot 33554432
    (diagonalRootsFrom 32112645 FullDiagonal.block000490.entries) = true := by
  apply RawReplay.checkRootCoverageBalanced_sound (fuel := 27)
  decide +kernel

#time theorem block000491 : RawReplay.checkRootCoverage
    ReplayFullBlock215.snapshot 33554432
    (diagonalRootsFrom 32178181 FullDiagonal.block000491.entries) = true := by
  apply RawReplay.checkRootCoverageBalanced_sound (fuel := 27)
  decide +kernel

#time theorem block000492 : RawReplay.checkRootCoverage
    ReplayFullBlock215.snapshot 33554432
    (diagonalRootsFrom 32243717 FullDiagonal.block000492.entries) = true := by
  apply RawReplay.checkRootCoverageBalanced_sound (fuel := 27)
  decide +kernel

#time theorem block000493 : RawReplay.checkRootCoverage
    ReplayFullBlock215.snapshot 33554432
    (diagonalRootsFrom 32309253 FullDiagonal.block000493.entries) = true := by
  apply RawReplay.checkRootCoverageBalanced_sound (fuel := 27)
  decide +kernel

#time theorem block000494 : RawReplay.checkRootCoverage
    ReplayFullBlock215.snapshot 33554432
    (diagonalRootsFrom 32374789 FullDiagonal.block000494.entries) = true := by
  apply RawReplay.checkRootCoverageBalanced_sound (fuel := 27)
  decide +kernel

#time theorem block000495 : RawReplay.checkRootCoverage
    ReplayFullBlock215.snapshot 33554432
    (diagonalRootsFrom 32440325 FullDiagonal.block000495.entries) = true := by
  apply RawReplay.checkRootCoverageBalanced_sound (fuel := 27)
  decide +kernel

theorem group030 : RawReplay.checkRootCoverage
    ReplayFullBlock215.snapshot 33554432
    (diagonalRootsFrom 31457285 FullDiagonal.group030.entries) = true :=
  (CheckedDiagonalBlock.rootCoverage_append
    ReplayFullBlock215.snapshot 33554432 ((((((((((((((FullDiagonal.block000480.append FullDiagonal.block000481).append FullDiagonal.block000482).append FullDiagonal.block000483).append FullDiagonal.block000484).append FullDiagonal.block000485).append FullDiagonal.block000486).append FullDiagonal.block000487).append FullDiagonal.block000488).append FullDiagonal.block000489).append FullDiagonal.block000490).append FullDiagonal.block000491).append FullDiagonal.block000492).append FullDiagonal.block000493).append FullDiagonal.block000494) FullDiagonal.block000495
    (CheckedDiagonalBlock.rootCoverage_append
    ReplayFullBlock215.snapshot 33554432 (((((((((((((FullDiagonal.block000480.append FullDiagonal.block000481).append FullDiagonal.block000482).append FullDiagonal.block000483).append FullDiagonal.block000484).append FullDiagonal.block000485).append FullDiagonal.block000486).append FullDiagonal.block000487).append FullDiagonal.block000488).append FullDiagonal.block000489).append FullDiagonal.block000490).append FullDiagonal.block000491).append FullDiagonal.block000492).append FullDiagonal.block000493) FullDiagonal.block000494
    (CheckedDiagonalBlock.rootCoverage_append
    ReplayFullBlock215.snapshot 33554432 ((((((((((((FullDiagonal.block000480.append FullDiagonal.block000481).append FullDiagonal.block000482).append FullDiagonal.block000483).append FullDiagonal.block000484).append FullDiagonal.block000485).append FullDiagonal.block000486).append FullDiagonal.block000487).append FullDiagonal.block000488).append FullDiagonal.block000489).append FullDiagonal.block000490).append FullDiagonal.block000491).append FullDiagonal.block000492) FullDiagonal.block000493
    (CheckedDiagonalBlock.rootCoverage_append
    ReplayFullBlock215.snapshot 33554432 (((((((((((FullDiagonal.block000480.append FullDiagonal.block000481).append FullDiagonal.block000482).append FullDiagonal.block000483).append FullDiagonal.block000484).append FullDiagonal.block000485).append FullDiagonal.block000486).append FullDiagonal.block000487).append FullDiagonal.block000488).append FullDiagonal.block000489).append FullDiagonal.block000490).append FullDiagonal.block000491) FullDiagonal.block000492
    (CheckedDiagonalBlock.rootCoverage_append
    ReplayFullBlock215.snapshot 33554432 ((((((((((FullDiagonal.block000480.append FullDiagonal.block000481).append FullDiagonal.block000482).append FullDiagonal.block000483).append FullDiagonal.block000484).append FullDiagonal.block000485).append FullDiagonal.block000486).append FullDiagonal.block000487).append FullDiagonal.block000488).append FullDiagonal.block000489).append FullDiagonal.block000490) FullDiagonal.block000491
    (CheckedDiagonalBlock.rootCoverage_append
    ReplayFullBlock215.snapshot 33554432 (((((((((FullDiagonal.block000480.append FullDiagonal.block000481).append FullDiagonal.block000482).append FullDiagonal.block000483).append FullDiagonal.block000484).append FullDiagonal.block000485).append FullDiagonal.block000486).append FullDiagonal.block000487).append FullDiagonal.block000488).append FullDiagonal.block000489) FullDiagonal.block000490
    (CheckedDiagonalBlock.rootCoverage_append
    ReplayFullBlock215.snapshot 33554432 ((((((((FullDiagonal.block000480.append FullDiagonal.block000481).append FullDiagonal.block000482).append FullDiagonal.block000483).append FullDiagonal.block000484).append FullDiagonal.block000485).append FullDiagonal.block000486).append FullDiagonal.block000487).append FullDiagonal.block000488) FullDiagonal.block000489
    (CheckedDiagonalBlock.rootCoverage_append
    ReplayFullBlock215.snapshot 33554432 (((((((FullDiagonal.block000480.append FullDiagonal.block000481).append FullDiagonal.block000482).append FullDiagonal.block000483).append FullDiagonal.block000484).append FullDiagonal.block000485).append FullDiagonal.block000486).append FullDiagonal.block000487) FullDiagonal.block000488
    (CheckedDiagonalBlock.rootCoverage_append
    ReplayFullBlock215.snapshot 33554432 ((((((FullDiagonal.block000480.append FullDiagonal.block000481).append FullDiagonal.block000482).append FullDiagonal.block000483).append FullDiagonal.block000484).append FullDiagonal.block000485).append FullDiagonal.block000486) FullDiagonal.block000487
    (CheckedDiagonalBlock.rootCoverage_append
    ReplayFullBlock215.snapshot 33554432 (((((FullDiagonal.block000480.append FullDiagonal.block000481).append FullDiagonal.block000482).append FullDiagonal.block000483).append FullDiagonal.block000484).append FullDiagonal.block000485) FullDiagonal.block000486
    (CheckedDiagonalBlock.rootCoverage_append
    ReplayFullBlock215.snapshot 33554432 ((((FullDiagonal.block000480.append FullDiagonal.block000481).append FullDiagonal.block000482).append FullDiagonal.block000483).append FullDiagonal.block000484) FullDiagonal.block000485
    (CheckedDiagonalBlock.rootCoverage_append
    ReplayFullBlock215.snapshot 33554432 (((FullDiagonal.block000480.append FullDiagonal.block000481).append FullDiagonal.block000482).append FullDiagonal.block000483) FullDiagonal.block000484
    (CheckedDiagonalBlock.rootCoverage_append
    ReplayFullBlock215.snapshot 33554432 ((FullDiagonal.block000480.append FullDiagonal.block000481).append FullDiagonal.block000482) FullDiagonal.block000483
    (CheckedDiagonalBlock.rootCoverage_append
    ReplayFullBlock215.snapshot 33554432 (FullDiagonal.block000480.append FullDiagonal.block000481) FullDiagonal.block000482
    (CheckedDiagonalBlock.rootCoverage_append
    ReplayFullBlock215.snapshot 33554432 FullDiagonal.block000480 FullDiagonal.block000481
    block000480 block000481) block000482) block000483) block000484) block000485) block000486) block000487) block000488) block000489) block000490) block000491) block000492) block000493) block000494) block000495)

end JSP848.FullCoverage
