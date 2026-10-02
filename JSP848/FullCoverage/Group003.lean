import JSP848.ReplayFullBlock215.Replay
import JSP848.FullDiagonal.Group003
import JSP848.ProgressionCoverage

set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0

namespace JSP848.FullCoverage

#time theorem block000048 : RawReplay.checkRootCoverage
    ReplayFullBlock215.snapshot 33554432
    (diagonalRootsFrom 3145733 FullDiagonal.block000048.entries) = true := by
  apply RawReplay.checkRootCoverageBalanced_sound (fuel := 27)
  decide +kernel

#time theorem block000049 : RawReplay.checkRootCoverage
    ReplayFullBlock215.snapshot 33554432
    (diagonalRootsFrom 3211269 FullDiagonal.block000049.entries) = true := by
  apply RawReplay.checkRootCoverageBalanced_sound (fuel := 27)
  decide +kernel

#time theorem block000050 : RawReplay.checkRootCoverage
    ReplayFullBlock215.snapshot 33554432
    (diagonalRootsFrom 3276805 FullDiagonal.block000050.entries) = true := by
  apply RawReplay.checkRootCoverageBalanced_sound (fuel := 27)
  decide +kernel

#time theorem block000051 : RawReplay.checkRootCoverage
    ReplayFullBlock215.snapshot 33554432
    (diagonalRootsFrom 3342341 FullDiagonal.block000051.entries) = true := by
  apply RawReplay.checkRootCoverageBalanced_sound (fuel := 27)
  decide +kernel

#time theorem block000052 : RawReplay.checkRootCoverage
    ReplayFullBlock215.snapshot 33554432
    (diagonalRootsFrom 3407877 FullDiagonal.block000052.entries) = true := by
  apply RawReplay.checkRootCoverageBalanced_sound (fuel := 27)
  decide +kernel

#time theorem block000053 : RawReplay.checkRootCoverage
    ReplayFullBlock215.snapshot 33554432
    (diagonalRootsFrom 3473413 FullDiagonal.block000053.entries) = true := by
  apply RawReplay.checkRootCoverageBalanced_sound (fuel := 27)
  decide +kernel

#time theorem block000054 : RawReplay.checkRootCoverage
    ReplayFullBlock215.snapshot 33554432
    (diagonalRootsFrom 3538949 FullDiagonal.block000054.entries) = true := by
  apply RawReplay.checkRootCoverageBalanced_sound (fuel := 27)
  decide +kernel

#time theorem block000055 : RawReplay.checkRootCoverage
    ReplayFullBlock215.snapshot 33554432
    (diagonalRootsFrom 3604485 FullDiagonal.block000055.entries) = true := by
  apply RawReplay.checkRootCoverageBalanced_sound (fuel := 27)
  decide +kernel

#time theorem block000056 : RawReplay.checkRootCoverage
    ReplayFullBlock215.snapshot 33554432
    (diagonalRootsFrom 3670021 FullDiagonal.block000056.entries) = true := by
  apply RawReplay.checkRootCoverageBalanced_sound (fuel := 27)
  decide +kernel

#time theorem block000057 : RawReplay.checkRootCoverage
    ReplayFullBlock215.snapshot 33554432
    (diagonalRootsFrom 3735557 FullDiagonal.block000057.entries) = true := by
  apply RawReplay.checkRootCoverageBalanced_sound (fuel := 27)
  decide +kernel

#time theorem block000058 : RawReplay.checkRootCoverage
    ReplayFullBlock215.snapshot 33554432
    (diagonalRootsFrom 3801093 FullDiagonal.block000058.entries) = true := by
  apply RawReplay.checkRootCoverageBalanced_sound (fuel := 27)
  decide +kernel

#time theorem block000059 : RawReplay.checkRootCoverage
    ReplayFullBlock215.snapshot 33554432
    (diagonalRootsFrom 3866629 FullDiagonal.block000059.entries) = true := by
  apply RawReplay.checkRootCoverageBalanced_sound (fuel := 27)
  decide +kernel

#time theorem block000060 : RawReplay.checkRootCoverage
    ReplayFullBlock215.snapshot 33554432
    (diagonalRootsFrom 3932165 FullDiagonal.block000060.entries) = true := by
  apply RawReplay.checkRootCoverageBalanced_sound (fuel := 27)
  decide +kernel

#time theorem block000061 : RawReplay.checkRootCoverage
    ReplayFullBlock215.snapshot 33554432
    (diagonalRootsFrom 3997701 FullDiagonal.block000061.entries) = true := by
  apply RawReplay.checkRootCoverageBalanced_sound (fuel := 27)
  decide +kernel

#time theorem block000062 : RawReplay.checkRootCoverage
    ReplayFullBlock215.snapshot 33554432
    (diagonalRootsFrom 4063237 FullDiagonal.block000062.entries) = true := by
  apply RawReplay.checkRootCoverageBalanced_sound (fuel := 27)
  decide +kernel

#time theorem block000063 : RawReplay.checkRootCoverage
    ReplayFullBlock215.snapshot 33554432
    (diagonalRootsFrom 4128773 FullDiagonal.block000063.entries) = true := by
  apply RawReplay.checkRootCoverageBalanced_sound (fuel := 27)
  decide +kernel

theorem group003 : RawReplay.checkRootCoverage
    ReplayFullBlock215.snapshot 33554432
    (diagonalRootsFrom 3145733 FullDiagonal.group003.entries) = true :=
  (CheckedDiagonalBlock.rootCoverage_append
    ReplayFullBlock215.snapshot 33554432 ((((((((((((((FullDiagonal.block000048.append FullDiagonal.block000049).append FullDiagonal.block000050).append FullDiagonal.block000051).append FullDiagonal.block000052).append FullDiagonal.block000053).append FullDiagonal.block000054).append FullDiagonal.block000055).append FullDiagonal.block000056).append FullDiagonal.block000057).append FullDiagonal.block000058).append FullDiagonal.block000059).append FullDiagonal.block000060).append FullDiagonal.block000061).append FullDiagonal.block000062) FullDiagonal.block000063
    (CheckedDiagonalBlock.rootCoverage_append
    ReplayFullBlock215.snapshot 33554432 (((((((((((((FullDiagonal.block000048.append FullDiagonal.block000049).append FullDiagonal.block000050).append FullDiagonal.block000051).append FullDiagonal.block000052).append FullDiagonal.block000053).append FullDiagonal.block000054).append FullDiagonal.block000055).append FullDiagonal.block000056).append FullDiagonal.block000057).append FullDiagonal.block000058).append FullDiagonal.block000059).append FullDiagonal.block000060).append FullDiagonal.block000061) FullDiagonal.block000062
    (CheckedDiagonalBlock.rootCoverage_append
    ReplayFullBlock215.snapshot 33554432 ((((((((((((FullDiagonal.block000048.append FullDiagonal.block000049).append FullDiagonal.block000050).append FullDiagonal.block000051).append FullDiagonal.block000052).append FullDiagonal.block000053).append FullDiagonal.block000054).append FullDiagonal.block000055).append FullDiagonal.block000056).append FullDiagonal.block000057).append FullDiagonal.block000058).append FullDiagonal.block000059).append FullDiagonal.block000060) FullDiagonal.block000061
    (CheckedDiagonalBlock.rootCoverage_append
    ReplayFullBlock215.snapshot 33554432 (((((((((((FullDiagonal.block000048.append FullDiagonal.block000049).append FullDiagonal.block000050).append FullDiagonal.block000051).append FullDiagonal.block000052).append FullDiagonal.block000053).append FullDiagonal.block000054).append FullDiagonal.block000055).append FullDiagonal.block000056).append FullDiagonal.block000057).append FullDiagonal.block000058).append FullDiagonal.block000059) FullDiagonal.block000060
    (CheckedDiagonalBlock.rootCoverage_append
    ReplayFullBlock215.snapshot 33554432 ((((((((((FullDiagonal.block000048.append FullDiagonal.block000049).append FullDiagonal.block000050).append FullDiagonal.block000051).append FullDiagonal.block000052).append FullDiagonal.block000053).append FullDiagonal.block000054).append FullDiagonal.block000055).append FullDiagonal.block000056).append FullDiagonal.block000057).append FullDiagonal.block000058) FullDiagonal.block000059
    (CheckedDiagonalBlock.rootCoverage_append
    ReplayFullBlock215.snapshot 33554432 (((((((((FullDiagonal.block000048.append FullDiagonal.block000049).append FullDiagonal.block000050).append FullDiagonal.block000051).append FullDiagonal.block000052).append FullDiagonal.block000053).append FullDiagonal.block000054).append FullDiagonal.block000055).append FullDiagonal.block000056).append FullDiagonal.block000057) FullDiagonal.block000058
    (CheckedDiagonalBlock.rootCoverage_append
    ReplayFullBlock215.snapshot 33554432 ((((((((FullDiagonal.block000048.append FullDiagonal.block000049).append FullDiagonal.block000050).append FullDiagonal.block000051).append FullDiagonal.block000052).append FullDiagonal.block000053).append FullDiagonal.block000054).append FullDiagonal.block000055).append FullDiagonal.block000056) FullDiagonal.block000057
    (CheckedDiagonalBlock.rootCoverage_append
    ReplayFullBlock215.snapshot 33554432 (((((((FullDiagonal.block000048.append FullDiagonal.block000049).append FullDiagonal.block000050).append FullDiagonal.block000051).append FullDiagonal.block000052).append FullDiagonal.block000053).append FullDiagonal.block000054).append FullDiagonal.block000055) FullDiagonal.block000056
    (CheckedDiagonalBlock.rootCoverage_append
    ReplayFullBlock215.snapshot 33554432 ((((((FullDiagonal.block000048.append FullDiagonal.block000049).append FullDiagonal.block000050).append FullDiagonal.block000051).append FullDiagonal.block000052).append FullDiagonal.block000053).append FullDiagonal.block000054) FullDiagonal.block000055
    (CheckedDiagonalBlock.rootCoverage_append
    ReplayFullBlock215.snapshot 33554432 (((((FullDiagonal.block000048.append FullDiagonal.block000049).append FullDiagonal.block000050).append FullDiagonal.block000051).append FullDiagonal.block000052).append FullDiagonal.block000053) FullDiagonal.block000054
    (CheckedDiagonalBlock.rootCoverage_append
    ReplayFullBlock215.snapshot 33554432 ((((FullDiagonal.block000048.append FullDiagonal.block000049).append FullDiagonal.block000050).append FullDiagonal.block000051).append FullDiagonal.block000052) FullDiagonal.block000053
    (CheckedDiagonalBlock.rootCoverage_append
    ReplayFullBlock215.snapshot 33554432 (((FullDiagonal.block000048.append FullDiagonal.block000049).append FullDiagonal.block000050).append FullDiagonal.block000051) FullDiagonal.block000052
    (CheckedDiagonalBlock.rootCoverage_append
    ReplayFullBlock215.snapshot 33554432 ((FullDiagonal.block000048.append FullDiagonal.block000049).append FullDiagonal.block000050) FullDiagonal.block000051
    (CheckedDiagonalBlock.rootCoverage_append
    ReplayFullBlock215.snapshot 33554432 (FullDiagonal.block000048.append FullDiagonal.block000049) FullDiagonal.block000050
    (CheckedDiagonalBlock.rootCoverage_append
    ReplayFullBlock215.snapshot 33554432 FullDiagonal.block000048 FullDiagonal.block000049
    block000048 block000049) block000050) block000051) block000052) block000053) block000054) block000055) block000056) block000057) block000058) block000059) block000060) block000061) block000062) block000063)

end JSP848.FullCoverage
