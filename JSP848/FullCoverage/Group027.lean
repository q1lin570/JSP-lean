import JSP848.ReplayFullBlock215.Replay
import JSP848.FullDiagonal.Group027
import JSP848.ProgressionCoverage

set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0

namespace JSP848.FullCoverage

#time theorem block000432 : RawReplay.checkRootCoverage
    ReplayFullBlock215.snapshot 33554432
    (diagonalRootsFrom 28311557 FullDiagonal.block000432.entries) = true := by
  apply RawReplay.checkRootCoverageBalanced_sound (fuel := 27)
  decide +kernel

#time theorem block000433 : RawReplay.checkRootCoverage
    ReplayFullBlock215.snapshot 33554432
    (diagonalRootsFrom 28377093 FullDiagonal.block000433.entries) = true := by
  apply RawReplay.checkRootCoverageBalanced_sound (fuel := 27)
  decide +kernel

#time theorem block000434 : RawReplay.checkRootCoverage
    ReplayFullBlock215.snapshot 33554432
    (diagonalRootsFrom 28442629 FullDiagonal.block000434.entries) = true := by
  apply RawReplay.checkRootCoverageBalanced_sound (fuel := 27)
  decide +kernel

#time theorem block000435 : RawReplay.checkRootCoverage
    ReplayFullBlock215.snapshot 33554432
    (diagonalRootsFrom 28508165 FullDiagonal.block000435.entries) = true := by
  apply RawReplay.checkRootCoverageBalanced_sound (fuel := 27)
  decide +kernel

#time theorem block000436 : RawReplay.checkRootCoverage
    ReplayFullBlock215.snapshot 33554432
    (diagonalRootsFrom 28573701 FullDiagonal.block000436.entries) = true := by
  apply RawReplay.checkRootCoverageBalanced_sound (fuel := 27)
  decide +kernel

#time theorem block000437 : RawReplay.checkRootCoverage
    ReplayFullBlock215.snapshot 33554432
    (diagonalRootsFrom 28639237 FullDiagonal.block000437.entries) = true := by
  apply RawReplay.checkRootCoverageBalanced_sound (fuel := 27)
  decide +kernel

#time theorem block000438 : RawReplay.checkRootCoverage
    ReplayFullBlock215.snapshot 33554432
    (diagonalRootsFrom 28704773 FullDiagonal.block000438.entries) = true := by
  apply RawReplay.checkRootCoverageBalanced_sound (fuel := 27)
  decide +kernel

#time theorem block000439 : RawReplay.checkRootCoverage
    ReplayFullBlock215.snapshot 33554432
    (diagonalRootsFrom 28770309 FullDiagonal.block000439.entries) = true := by
  apply RawReplay.checkRootCoverageBalanced_sound (fuel := 27)
  decide +kernel

#time theorem block000440 : RawReplay.checkRootCoverage
    ReplayFullBlock215.snapshot 33554432
    (diagonalRootsFrom 28835845 FullDiagonal.block000440.entries) = true := by
  apply RawReplay.checkRootCoverageBalanced_sound (fuel := 27)
  decide +kernel

#time theorem block000441 : RawReplay.checkRootCoverage
    ReplayFullBlock215.snapshot 33554432
    (diagonalRootsFrom 28901381 FullDiagonal.block000441.entries) = true := by
  apply RawReplay.checkRootCoverageBalanced_sound (fuel := 27)
  decide +kernel

#time theorem block000442 : RawReplay.checkRootCoverage
    ReplayFullBlock215.snapshot 33554432
    (diagonalRootsFrom 28966917 FullDiagonal.block000442.entries) = true := by
  apply RawReplay.checkRootCoverageBalanced_sound (fuel := 27)
  decide +kernel

#time theorem block000443 : RawReplay.checkRootCoverage
    ReplayFullBlock215.snapshot 33554432
    (diagonalRootsFrom 29032453 FullDiagonal.block000443.entries) = true := by
  apply RawReplay.checkRootCoverageBalanced_sound (fuel := 27)
  decide +kernel

#time theorem block000444 : RawReplay.checkRootCoverage
    ReplayFullBlock215.snapshot 33554432
    (diagonalRootsFrom 29097989 FullDiagonal.block000444.entries) = true := by
  apply RawReplay.checkRootCoverageBalanced_sound (fuel := 27)
  decide +kernel

#time theorem block000445 : RawReplay.checkRootCoverage
    ReplayFullBlock215.snapshot 33554432
    (diagonalRootsFrom 29163525 FullDiagonal.block000445.entries) = true := by
  apply RawReplay.checkRootCoverageBalanced_sound (fuel := 27)
  decide +kernel

#time theorem block000446 : RawReplay.checkRootCoverage
    ReplayFullBlock215.snapshot 33554432
    (diagonalRootsFrom 29229061 FullDiagonal.block000446.entries) = true := by
  apply RawReplay.checkRootCoverageBalanced_sound (fuel := 27)
  decide +kernel

#time theorem block000447 : RawReplay.checkRootCoverage
    ReplayFullBlock215.snapshot 33554432
    (diagonalRootsFrom 29294597 FullDiagonal.block000447.entries) = true := by
  apply RawReplay.checkRootCoverageBalanced_sound (fuel := 27)
  decide +kernel

theorem group027 : RawReplay.checkRootCoverage
    ReplayFullBlock215.snapshot 33554432
    (diagonalRootsFrom 28311557 FullDiagonal.group027.entries) = true :=
  (CheckedDiagonalBlock.rootCoverage_append
    ReplayFullBlock215.snapshot 33554432 ((((((((((((((FullDiagonal.block000432.append FullDiagonal.block000433).append FullDiagonal.block000434).append FullDiagonal.block000435).append FullDiagonal.block000436).append FullDiagonal.block000437).append FullDiagonal.block000438).append FullDiagonal.block000439).append FullDiagonal.block000440).append FullDiagonal.block000441).append FullDiagonal.block000442).append FullDiagonal.block000443).append FullDiagonal.block000444).append FullDiagonal.block000445).append FullDiagonal.block000446) FullDiagonal.block000447
    (CheckedDiagonalBlock.rootCoverage_append
    ReplayFullBlock215.snapshot 33554432 (((((((((((((FullDiagonal.block000432.append FullDiagonal.block000433).append FullDiagonal.block000434).append FullDiagonal.block000435).append FullDiagonal.block000436).append FullDiagonal.block000437).append FullDiagonal.block000438).append FullDiagonal.block000439).append FullDiagonal.block000440).append FullDiagonal.block000441).append FullDiagonal.block000442).append FullDiagonal.block000443).append FullDiagonal.block000444).append FullDiagonal.block000445) FullDiagonal.block000446
    (CheckedDiagonalBlock.rootCoverage_append
    ReplayFullBlock215.snapshot 33554432 ((((((((((((FullDiagonal.block000432.append FullDiagonal.block000433).append FullDiagonal.block000434).append FullDiagonal.block000435).append FullDiagonal.block000436).append FullDiagonal.block000437).append FullDiagonal.block000438).append FullDiagonal.block000439).append FullDiagonal.block000440).append FullDiagonal.block000441).append FullDiagonal.block000442).append FullDiagonal.block000443).append FullDiagonal.block000444) FullDiagonal.block000445
    (CheckedDiagonalBlock.rootCoverage_append
    ReplayFullBlock215.snapshot 33554432 (((((((((((FullDiagonal.block000432.append FullDiagonal.block000433).append FullDiagonal.block000434).append FullDiagonal.block000435).append FullDiagonal.block000436).append FullDiagonal.block000437).append FullDiagonal.block000438).append FullDiagonal.block000439).append FullDiagonal.block000440).append FullDiagonal.block000441).append FullDiagonal.block000442).append FullDiagonal.block000443) FullDiagonal.block000444
    (CheckedDiagonalBlock.rootCoverage_append
    ReplayFullBlock215.snapshot 33554432 ((((((((((FullDiagonal.block000432.append FullDiagonal.block000433).append FullDiagonal.block000434).append FullDiagonal.block000435).append FullDiagonal.block000436).append FullDiagonal.block000437).append FullDiagonal.block000438).append FullDiagonal.block000439).append FullDiagonal.block000440).append FullDiagonal.block000441).append FullDiagonal.block000442) FullDiagonal.block000443
    (CheckedDiagonalBlock.rootCoverage_append
    ReplayFullBlock215.snapshot 33554432 (((((((((FullDiagonal.block000432.append FullDiagonal.block000433).append FullDiagonal.block000434).append FullDiagonal.block000435).append FullDiagonal.block000436).append FullDiagonal.block000437).append FullDiagonal.block000438).append FullDiagonal.block000439).append FullDiagonal.block000440).append FullDiagonal.block000441) FullDiagonal.block000442
    (CheckedDiagonalBlock.rootCoverage_append
    ReplayFullBlock215.snapshot 33554432 ((((((((FullDiagonal.block000432.append FullDiagonal.block000433).append FullDiagonal.block000434).append FullDiagonal.block000435).append FullDiagonal.block000436).append FullDiagonal.block000437).append FullDiagonal.block000438).append FullDiagonal.block000439).append FullDiagonal.block000440) FullDiagonal.block000441
    (CheckedDiagonalBlock.rootCoverage_append
    ReplayFullBlock215.snapshot 33554432 (((((((FullDiagonal.block000432.append FullDiagonal.block000433).append FullDiagonal.block000434).append FullDiagonal.block000435).append FullDiagonal.block000436).append FullDiagonal.block000437).append FullDiagonal.block000438).append FullDiagonal.block000439) FullDiagonal.block000440
    (CheckedDiagonalBlock.rootCoverage_append
    ReplayFullBlock215.snapshot 33554432 ((((((FullDiagonal.block000432.append FullDiagonal.block000433).append FullDiagonal.block000434).append FullDiagonal.block000435).append FullDiagonal.block000436).append FullDiagonal.block000437).append FullDiagonal.block000438) FullDiagonal.block000439
    (CheckedDiagonalBlock.rootCoverage_append
    ReplayFullBlock215.snapshot 33554432 (((((FullDiagonal.block000432.append FullDiagonal.block000433).append FullDiagonal.block000434).append FullDiagonal.block000435).append FullDiagonal.block000436).append FullDiagonal.block000437) FullDiagonal.block000438
    (CheckedDiagonalBlock.rootCoverage_append
    ReplayFullBlock215.snapshot 33554432 ((((FullDiagonal.block000432.append FullDiagonal.block000433).append FullDiagonal.block000434).append FullDiagonal.block000435).append FullDiagonal.block000436) FullDiagonal.block000437
    (CheckedDiagonalBlock.rootCoverage_append
    ReplayFullBlock215.snapshot 33554432 (((FullDiagonal.block000432.append FullDiagonal.block000433).append FullDiagonal.block000434).append FullDiagonal.block000435) FullDiagonal.block000436
    (CheckedDiagonalBlock.rootCoverage_append
    ReplayFullBlock215.snapshot 33554432 ((FullDiagonal.block000432.append FullDiagonal.block000433).append FullDiagonal.block000434) FullDiagonal.block000435
    (CheckedDiagonalBlock.rootCoverage_append
    ReplayFullBlock215.snapshot 33554432 (FullDiagonal.block000432.append FullDiagonal.block000433) FullDiagonal.block000434
    (CheckedDiagonalBlock.rootCoverage_append
    ReplayFullBlock215.snapshot 33554432 FullDiagonal.block000432 FullDiagonal.block000433
    block000432 block000433) block000434) block000435) block000436) block000437) block000438) block000439) block000440) block000441) block000442) block000443) block000444) block000445) block000446) block000447)

end JSP848.FullCoverage
