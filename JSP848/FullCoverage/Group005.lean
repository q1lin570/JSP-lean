import JSP848.ReplayFullBlock215.Replay
import JSP848.FullDiagonal.Group005
import JSP848.ProgressionCoverage

set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0

namespace JSP848.FullCoverage

#time theorem block000080 : RawReplay.checkRootCoverage
    ReplayFullBlock215.snapshot 33554432
    (diagonalRootsFrom 5242885 FullDiagonal.block000080.entries) = true := by
  apply RawReplay.checkRootCoverageBalanced_sound (fuel := 27)
  decide +kernel

#time theorem block000081 : RawReplay.checkRootCoverage
    ReplayFullBlock215.snapshot 33554432
    (diagonalRootsFrom 5308421 FullDiagonal.block000081.entries) = true := by
  apply RawReplay.checkRootCoverageBalanced_sound (fuel := 27)
  decide +kernel

#time theorem block000082 : RawReplay.checkRootCoverage
    ReplayFullBlock215.snapshot 33554432
    (diagonalRootsFrom 5373957 FullDiagonal.block000082.entries) = true := by
  apply RawReplay.checkRootCoverageBalanced_sound (fuel := 27)
  decide +kernel

#time theorem block000083 : RawReplay.checkRootCoverage
    ReplayFullBlock215.snapshot 33554432
    (diagonalRootsFrom 5439493 FullDiagonal.block000083.entries) = true := by
  apply RawReplay.checkRootCoverageBalanced_sound (fuel := 27)
  decide +kernel

#time theorem block000084 : RawReplay.checkRootCoverage
    ReplayFullBlock215.snapshot 33554432
    (diagonalRootsFrom 5505029 FullDiagonal.block000084.entries) = true := by
  apply RawReplay.checkRootCoverageBalanced_sound (fuel := 27)
  decide +kernel

#time theorem block000085 : RawReplay.checkRootCoverage
    ReplayFullBlock215.snapshot 33554432
    (diagonalRootsFrom 5570565 FullDiagonal.block000085.entries) = true := by
  apply RawReplay.checkRootCoverageBalanced_sound (fuel := 27)
  decide +kernel

#time theorem block000086 : RawReplay.checkRootCoverage
    ReplayFullBlock215.snapshot 33554432
    (diagonalRootsFrom 5636101 FullDiagonal.block000086.entries) = true := by
  apply RawReplay.checkRootCoverageBalanced_sound (fuel := 27)
  decide +kernel

#time theorem block000087 : RawReplay.checkRootCoverage
    ReplayFullBlock215.snapshot 33554432
    (diagonalRootsFrom 5701637 FullDiagonal.block000087.entries) = true := by
  apply RawReplay.checkRootCoverageBalanced_sound (fuel := 27)
  decide +kernel

#time theorem block000088 : RawReplay.checkRootCoverage
    ReplayFullBlock215.snapshot 33554432
    (diagonalRootsFrom 5767173 FullDiagonal.block000088.entries) = true := by
  apply RawReplay.checkRootCoverageBalanced_sound (fuel := 27)
  decide +kernel

#time theorem block000089 : RawReplay.checkRootCoverage
    ReplayFullBlock215.snapshot 33554432
    (diagonalRootsFrom 5832709 FullDiagonal.block000089.entries) = true := by
  apply RawReplay.checkRootCoverageBalanced_sound (fuel := 27)
  decide +kernel

#time theorem block000090 : RawReplay.checkRootCoverage
    ReplayFullBlock215.snapshot 33554432
    (diagonalRootsFrom 5898245 FullDiagonal.block000090.entries) = true := by
  apply RawReplay.checkRootCoverageBalanced_sound (fuel := 27)
  decide +kernel

#time theorem block000091 : RawReplay.checkRootCoverage
    ReplayFullBlock215.snapshot 33554432
    (diagonalRootsFrom 5963781 FullDiagonal.block000091.entries) = true := by
  apply RawReplay.checkRootCoverageBalanced_sound (fuel := 27)
  decide +kernel

#time theorem block000092 : RawReplay.checkRootCoverage
    ReplayFullBlock215.snapshot 33554432
    (diagonalRootsFrom 6029317 FullDiagonal.block000092.entries) = true := by
  apply RawReplay.checkRootCoverageBalanced_sound (fuel := 27)
  decide +kernel

#time theorem block000093 : RawReplay.checkRootCoverage
    ReplayFullBlock215.snapshot 33554432
    (diagonalRootsFrom 6094853 FullDiagonal.block000093.entries) = true := by
  apply RawReplay.checkRootCoverageBalanced_sound (fuel := 27)
  decide +kernel

#time theorem block000094 : RawReplay.checkRootCoverage
    ReplayFullBlock215.snapshot 33554432
    (diagonalRootsFrom 6160389 FullDiagonal.block000094.entries) = true := by
  apply RawReplay.checkRootCoverageBalanced_sound (fuel := 27)
  decide +kernel

#time theorem block000095 : RawReplay.checkRootCoverage
    ReplayFullBlock215.snapshot 33554432
    (diagonalRootsFrom 6225925 FullDiagonal.block000095.entries) = true := by
  apply RawReplay.checkRootCoverageBalanced_sound (fuel := 27)
  decide +kernel

theorem group005 : RawReplay.checkRootCoverage
    ReplayFullBlock215.snapshot 33554432
    (diagonalRootsFrom 5242885 FullDiagonal.group005.entries) = true :=
  (CheckedDiagonalBlock.rootCoverage_append
    ReplayFullBlock215.snapshot 33554432 ((((((((((((((FullDiagonal.block000080.append FullDiagonal.block000081).append FullDiagonal.block000082).append FullDiagonal.block000083).append FullDiagonal.block000084).append FullDiagonal.block000085).append FullDiagonal.block000086).append FullDiagonal.block000087).append FullDiagonal.block000088).append FullDiagonal.block000089).append FullDiagonal.block000090).append FullDiagonal.block000091).append FullDiagonal.block000092).append FullDiagonal.block000093).append FullDiagonal.block000094) FullDiagonal.block000095
    (CheckedDiagonalBlock.rootCoverage_append
    ReplayFullBlock215.snapshot 33554432 (((((((((((((FullDiagonal.block000080.append FullDiagonal.block000081).append FullDiagonal.block000082).append FullDiagonal.block000083).append FullDiagonal.block000084).append FullDiagonal.block000085).append FullDiagonal.block000086).append FullDiagonal.block000087).append FullDiagonal.block000088).append FullDiagonal.block000089).append FullDiagonal.block000090).append FullDiagonal.block000091).append FullDiagonal.block000092).append FullDiagonal.block000093) FullDiagonal.block000094
    (CheckedDiagonalBlock.rootCoverage_append
    ReplayFullBlock215.snapshot 33554432 ((((((((((((FullDiagonal.block000080.append FullDiagonal.block000081).append FullDiagonal.block000082).append FullDiagonal.block000083).append FullDiagonal.block000084).append FullDiagonal.block000085).append FullDiagonal.block000086).append FullDiagonal.block000087).append FullDiagonal.block000088).append FullDiagonal.block000089).append FullDiagonal.block000090).append FullDiagonal.block000091).append FullDiagonal.block000092) FullDiagonal.block000093
    (CheckedDiagonalBlock.rootCoverage_append
    ReplayFullBlock215.snapshot 33554432 (((((((((((FullDiagonal.block000080.append FullDiagonal.block000081).append FullDiagonal.block000082).append FullDiagonal.block000083).append FullDiagonal.block000084).append FullDiagonal.block000085).append FullDiagonal.block000086).append FullDiagonal.block000087).append FullDiagonal.block000088).append FullDiagonal.block000089).append FullDiagonal.block000090).append FullDiagonal.block000091) FullDiagonal.block000092
    (CheckedDiagonalBlock.rootCoverage_append
    ReplayFullBlock215.snapshot 33554432 ((((((((((FullDiagonal.block000080.append FullDiagonal.block000081).append FullDiagonal.block000082).append FullDiagonal.block000083).append FullDiagonal.block000084).append FullDiagonal.block000085).append FullDiagonal.block000086).append FullDiagonal.block000087).append FullDiagonal.block000088).append FullDiagonal.block000089).append FullDiagonal.block000090) FullDiagonal.block000091
    (CheckedDiagonalBlock.rootCoverage_append
    ReplayFullBlock215.snapshot 33554432 (((((((((FullDiagonal.block000080.append FullDiagonal.block000081).append FullDiagonal.block000082).append FullDiagonal.block000083).append FullDiagonal.block000084).append FullDiagonal.block000085).append FullDiagonal.block000086).append FullDiagonal.block000087).append FullDiagonal.block000088).append FullDiagonal.block000089) FullDiagonal.block000090
    (CheckedDiagonalBlock.rootCoverage_append
    ReplayFullBlock215.snapshot 33554432 ((((((((FullDiagonal.block000080.append FullDiagonal.block000081).append FullDiagonal.block000082).append FullDiagonal.block000083).append FullDiagonal.block000084).append FullDiagonal.block000085).append FullDiagonal.block000086).append FullDiagonal.block000087).append FullDiagonal.block000088) FullDiagonal.block000089
    (CheckedDiagonalBlock.rootCoverage_append
    ReplayFullBlock215.snapshot 33554432 (((((((FullDiagonal.block000080.append FullDiagonal.block000081).append FullDiagonal.block000082).append FullDiagonal.block000083).append FullDiagonal.block000084).append FullDiagonal.block000085).append FullDiagonal.block000086).append FullDiagonal.block000087) FullDiagonal.block000088
    (CheckedDiagonalBlock.rootCoverage_append
    ReplayFullBlock215.snapshot 33554432 ((((((FullDiagonal.block000080.append FullDiagonal.block000081).append FullDiagonal.block000082).append FullDiagonal.block000083).append FullDiagonal.block000084).append FullDiagonal.block000085).append FullDiagonal.block000086) FullDiagonal.block000087
    (CheckedDiagonalBlock.rootCoverage_append
    ReplayFullBlock215.snapshot 33554432 (((((FullDiagonal.block000080.append FullDiagonal.block000081).append FullDiagonal.block000082).append FullDiagonal.block000083).append FullDiagonal.block000084).append FullDiagonal.block000085) FullDiagonal.block000086
    (CheckedDiagonalBlock.rootCoverage_append
    ReplayFullBlock215.snapshot 33554432 ((((FullDiagonal.block000080.append FullDiagonal.block000081).append FullDiagonal.block000082).append FullDiagonal.block000083).append FullDiagonal.block000084) FullDiagonal.block000085
    (CheckedDiagonalBlock.rootCoverage_append
    ReplayFullBlock215.snapshot 33554432 (((FullDiagonal.block000080.append FullDiagonal.block000081).append FullDiagonal.block000082).append FullDiagonal.block000083) FullDiagonal.block000084
    (CheckedDiagonalBlock.rootCoverage_append
    ReplayFullBlock215.snapshot 33554432 ((FullDiagonal.block000080.append FullDiagonal.block000081).append FullDiagonal.block000082) FullDiagonal.block000083
    (CheckedDiagonalBlock.rootCoverage_append
    ReplayFullBlock215.snapshot 33554432 (FullDiagonal.block000080.append FullDiagonal.block000081) FullDiagonal.block000082
    (CheckedDiagonalBlock.rootCoverage_append
    ReplayFullBlock215.snapshot 33554432 FullDiagonal.block000080 FullDiagonal.block000081
    block000080 block000081) block000082) block000083) block000084) block000085) block000086) block000087) block000088) block000089) block000090) block000091) block000092) block000093) block000094) block000095)

end JSP848.FullCoverage
