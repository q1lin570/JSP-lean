import JSP848.ReplayFullBlock215.Replay
import JSP848.FullDiagonal.Group002
import JSP848.ProgressionCoverage

set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0

namespace JSP848.FullCoverage

#time theorem block000032 : RawReplay.checkRootCoverage
    ReplayFullBlock215.snapshot 33554432
    (diagonalRootsFrom 2097157 FullDiagonal.block000032.entries) = true := by
  apply RawReplay.checkRootCoverageBalanced_sound (fuel := 27)
  decide +kernel

#time theorem block000033 : RawReplay.checkRootCoverage
    ReplayFullBlock215.snapshot 33554432
    (diagonalRootsFrom 2162693 FullDiagonal.block000033.entries) = true := by
  apply RawReplay.checkRootCoverageBalanced_sound (fuel := 27)
  decide +kernel

#time theorem block000034 : RawReplay.checkRootCoverage
    ReplayFullBlock215.snapshot 33554432
    (diagonalRootsFrom 2228229 FullDiagonal.block000034.entries) = true := by
  apply RawReplay.checkRootCoverageBalanced_sound (fuel := 27)
  decide +kernel

#time theorem block000035 : RawReplay.checkRootCoverage
    ReplayFullBlock215.snapshot 33554432
    (diagonalRootsFrom 2293765 FullDiagonal.block000035.entries) = true := by
  apply RawReplay.checkRootCoverageBalanced_sound (fuel := 27)
  decide +kernel

#time theorem block000036 : RawReplay.checkRootCoverage
    ReplayFullBlock215.snapshot 33554432
    (diagonalRootsFrom 2359301 FullDiagonal.block000036.entries) = true := by
  apply RawReplay.checkRootCoverageBalanced_sound (fuel := 27)
  decide +kernel

#time theorem block000037 : RawReplay.checkRootCoverage
    ReplayFullBlock215.snapshot 33554432
    (diagonalRootsFrom 2424837 FullDiagonal.block000037.entries) = true := by
  apply RawReplay.checkRootCoverageBalanced_sound (fuel := 27)
  decide +kernel

#time theorem block000038 : RawReplay.checkRootCoverage
    ReplayFullBlock215.snapshot 33554432
    (diagonalRootsFrom 2490373 FullDiagonal.block000038.entries) = true := by
  apply RawReplay.checkRootCoverageBalanced_sound (fuel := 27)
  decide +kernel

#time theorem block000039 : RawReplay.checkRootCoverage
    ReplayFullBlock215.snapshot 33554432
    (diagonalRootsFrom 2555909 FullDiagonal.block000039.entries) = true := by
  apply RawReplay.checkRootCoverageBalanced_sound (fuel := 27)
  decide +kernel

#time theorem block000040 : RawReplay.checkRootCoverage
    ReplayFullBlock215.snapshot 33554432
    (diagonalRootsFrom 2621445 FullDiagonal.block000040.entries) = true := by
  apply RawReplay.checkRootCoverageBalanced_sound (fuel := 27)
  decide +kernel

#time theorem block000041 : RawReplay.checkRootCoverage
    ReplayFullBlock215.snapshot 33554432
    (diagonalRootsFrom 2686981 FullDiagonal.block000041.entries) = true := by
  apply RawReplay.checkRootCoverageBalanced_sound (fuel := 27)
  decide +kernel

#time theorem block000042 : RawReplay.checkRootCoverage
    ReplayFullBlock215.snapshot 33554432
    (diagonalRootsFrom 2752517 FullDiagonal.block000042.entries) = true := by
  apply RawReplay.checkRootCoverageBalanced_sound (fuel := 27)
  decide +kernel

#time theorem block000043 : RawReplay.checkRootCoverage
    ReplayFullBlock215.snapshot 33554432
    (diagonalRootsFrom 2818053 FullDiagonal.block000043.entries) = true := by
  apply RawReplay.checkRootCoverageBalanced_sound (fuel := 27)
  decide +kernel

#time theorem block000044 : RawReplay.checkRootCoverage
    ReplayFullBlock215.snapshot 33554432
    (diagonalRootsFrom 2883589 FullDiagonal.block000044.entries) = true := by
  apply RawReplay.checkRootCoverageBalanced_sound (fuel := 27)
  decide +kernel

#time theorem block000045 : RawReplay.checkRootCoverage
    ReplayFullBlock215.snapshot 33554432
    (diagonalRootsFrom 2949125 FullDiagonal.block000045.entries) = true := by
  apply RawReplay.checkRootCoverageBalanced_sound (fuel := 27)
  decide +kernel

#time theorem block000046 : RawReplay.checkRootCoverage
    ReplayFullBlock215.snapshot 33554432
    (diagonalRootsFrom 3014661 FullDiagonal.block000046.entries) = true := by
  apply RawReplay.checkRootCoverageBalanced_sound (fuel := 27)
  decide +kernel

#time theorem block000047 : RawReplay.checkRootCoverage
    ReplayFullBlock215.snapshot 33554432
    (diagonalRootsFrom 3080197 FullDiagonal.block000047.entries) = true := by
  apply RawReplay.checkRootCoverageBalanced_sound (fuel := 27)
  decide +kernel

theorem group002 : RawReplay.checkRootCoverage
    ReplayFullBlock215.snapshot 33554432
    (diagonalRootsFrom 2097157 FullDiagonal.group002.entries) = true :=
  (CheckedDiagonalBlock.rootCoverage_append
    ReplayFullBlock215.snapshot 33554432 ((((((((((((((FullDiagonal.block000032.append FullDiagonal.block000033).append FullDiagonal.block000034).append FullDiagonal.block000035).append FullDiagonal.block000036).append FullDiagonal.block000037).append FullDiagonal.block000038).append FullDiagonal.block000039).append FullDiagonal.block000040).append FullDiagonal.block000041).append FullDiagonal.block000042).append FullDiagonal.block000043).append FullDiagonal.block000044).append FullDiagonal.block000045).append FullDiagonal.block000046) FullDiagonal.block000047
    (CheckedDiagonalBlock.rootCoverage_append
    ReplayFullBlock215.snapshot 33554432 (((((((((((((FullDiagonal.block000032.append FullDiagonal.block000033).append FullDiagonal.block000034).append FullDiagonal.block000035).append FullDiagonal.block000036).append FullDiagonal.block000037).append FullDiagonal.block000038).append FullDiagonal.block000039).append FullDiagonal.block000040).append FullDiagonal.block000041).append FullDiagonal.block000042).append FullDiagonal.block000043).append FullDiagonal.block000044).append FullDiagonal.block000045) FullDiagonal.block000046
    (CheckedDiagonalBlock.rootCoverage_append
    ReplayFullBlock215.snapshot 33554432 ((((((((((((FullDiagonal.block000032.append FullDiagonal.block000033).append FullDiagonal.block000034).append FullDiagonal.block000035).append FullDiagonal.block000036).append FullDiagonal.block000037).append FullDiagonal.block000038).append FullDiagonal.block000039).append FullDiagonal.block000040).append FullDiagonal.block000041).append FullDiagonal.block000042).append FullDiagonal.block000043).append FullDiagonal.block000044) FullDiagonal.block000045
    (CheckedDiagonalBlock.rootCoverage_append
    ReplayFullBlock215.snapshot 33554432 (((((((((((FullDiagonal.block000032.append FullDiagonal.block000033).append FullDiagonal.block000034).append FullDiagonal.block000035).append FullDiagonal.block000036).append FullDiagonal.block000037).append FullDiagonal.block000038).append FullDiagonal.block000039).append FullDiagonal.block000040).append FullDiagonal.block000041).append FullDiagonal.block000042).append FullDiagonal.block000043) FullDiagonal.block000044
    (CheckedDiagonalBlock.rootCoverage_append
    ReplayFullBlock215.snapshot 33554432 ((((((((((FullDiagonal.block000032.append FullDiagonal.block000033).append FullDiagonal.block000034).append FullDiagonal.block000035).append FullDiagonal.block000036).append FullDiagonal.block000037).append FullDiagonal.block000038).append FullDiagonal.block000039).append FullDiagonal.block000040).append FullDiagonal.block000041).append FullDiagonal.block000042) FullDiagonal.block000043
    (CheckedDiagonalBlock.rootCoverage_append
    ReplayFullBlock215.snapshot 33554432 (((((((((FullDiagonal.block000032.append FullDiagonal.block000033).append FullDiagonal.block000034).append FullDiagonal.block000035).append FullDiagonal.block000036).append FullDiagonal.block000037).append FullDiagonal.block000038).append FullDiagonal.block000039).append FullDiagonal.block000040).append FullDiagonal.block000041) FullDiagonal.block000042
    (CheckedDiagonalBlock.rootCoverage_append
    ReplayFullBlock215.snapshot 33554432 ((((((((FullDiagonal.block000032.append FullDiagonal.block000033).append FullDiagonal.block000034).append FullDiagonal.block000035).append FullDiagonal.block000036).append FullDiagonal.block000037).append FullDiagonal.block000038).append FullDiagonal.block000039).append FullDiagonal.block000040) FullDiagonal.block000041
    (CheckedDiagonalBlock.rootCoverage_append
    ReplayFullBlock215.snapshot 33554432 (((((((FullDiagonal.block000032.append FullDiagonal.block000033).append FullDiagonal.block000034).append FullDiagonal.block000035).append FullDiagonal.block000036).append FullDiagonal.block000037).append FullDiagonal.block000038).append FullDiagonal.block000039) FullDiagonal.block000040
    (CheckedDiagonalBlock.rootCoverage_append
    ReplayFullBlock215.snapshot 33554432 ((((((FullDiagonal.block000032.append FullDiagonal.block000033).append FullDiagonal.block000034).append FullDiagonal.block000035).append FullDiagonal.block000036).append FullDiagonal.block000037).append FullDiagonal.block000038) FullDiagonal.block000039
    (CheckedDiagonalBlock.rootCoverage_append
    ReplayFullBlock215.snapshot 33554432 (((((FullDiagonal.block000032.append FullDiagonal.block000033).append FullDiagonal.block000034).append FullDiagonal.block000035).append FullDiagonal.block000036).append FullDiagonal.block000037) FullDiagonal.block000038
    (CheckedDiagonalBlock.rootCoverage_append
    ReplayFullBlock215.snapshot 33554432 ((((FullDiagonal.block000032.append FullDiagonal.block000033).append FullDiagonal.block000034).append FullDiagonal.block000035).append FullDiagonal.block000036) FullDiagonal.block000037
    (CheckedDiagonalBlock.rootCoverage_append
    ReplayFullBlock215.snapshot 33554432 (((FullDiagonal.block000032.append FullDiagonal.block000033).append FullDiagonal.block000034).append FullDiagonal.block000035) FullDiagonal.block000036
    (CheckedDiagonalBlock.rootCoverage_append
    ReplayFullBlock215.snapshot 33554432 ((FullDiagonal.block000032.append FullDiagonal.block000033).append FullDiagonal.block000034) FullDiagonal.block000035
    (CheckedDiagonalBlock.rootCoverage_append
    ReplayFullBlock215.snapshot 33554432 (FullDiagonal.block000032.append FullDiagonal.block000033) FullDiagonal.block000034
    (CheckedDiagonalBlock.rootCoverage_append
    ReplayFullBlock215.snapshot 33554432 FullDiagonal.block000032 FullDiagonal.block000033
    block000032 block000033) block000034) block000035) block000036) block000037) block000038) block000039) block000040) block000041) block000042) block000043) block000044) block000045) block000046) block000047)

end JSP848.FullCoverage
