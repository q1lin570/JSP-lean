import JSP848.ReplayFullBlock215.Replay
import JSP848.FullDiagonal.Group007
import JSP848.ProgressionCoverage

set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0

namespace JSP848.FullCoverage

#time theorem block000112 : RawReplay.checkRootCoverage
    ReplayFullBlock215.snapshot 33554432
    (diagonalRootsFrom 7340037 FullDiagonal.block000112.entries) = true := by
  apply RawReplay.checkRootCoverageBalanced_sound (fuel := 27)
  decide +kernel

#time theorem block000113 : RawReplay.checkRootCoverage
    ReplayFullBlock215.snapshot 33554432
    (diagonalRootsFrom 7405573 FullDiagonal.block000113.entries) = true := by
  apply RawReplay.checkRootCoverageBalanced_sound (fuel := 27)
  decide +kernel

#time theorem block000114 : RawReplay.checkRootCoverage
    ReplayFullBlock215.snapshot 33554432
    (diagonalRootsFrom 7471109 FullDiagonal.block000114.entries) = true := by
  apply RawReplay.checkRootCoverageBalanced_sound (fuel := 27)
  decide +kernel

#time theorem block000115 : RawReplay.checkRootCoverage
    ReplayFullBlock215.snapshot 33554432
    (diagonalRootsFrom 7536645 FullDiagonal.block000115.entries) = true := by
  apply RawReplay.checkRootCoverageBalanced_sound (fuel := 27)
  decide +kernel

#time theorem block000116 : RawReplay.checkRootCoverage
    ReplayFullBlock215.snapshot 33554432
    (diagonalRootsFrom 7602181 FullDiagonal.block000116.entries) = true := by
  apply RawReplay.checkRootCoverageBalanced_sound (fuel := 27)
  decide +kernel

#time theorem block000117 : RawReplay.checkRootCoverage
    ReplayFullBlock215.snapshot 33554432
    (diagonalRootsFrom 7667717 FullDiagonal.block000117.entries) = true := by
  apply RawReplay.checkRootCoverageBalanced_sound (fuel := 27)
  decide +kernel

#time theorem block000118 : RawReplay.checkRootCoverage
    ReplayFullBlock215.snapshot 33554432
    (diagonalRootsFrom 7733253 FullDiagonal.block000118.entries) = true := by
  apply RawReplay.checkRootCoverageBalanced_sound (fuel := 27)
  decide +kernel

#time theorem block000119 : RawReplay.checkRootCoverage
    ReplayFullBlock215.snapshot 33554432
    (diagonalRootsFrom 7798789 FullDiagonal.block000119.entries) = true := by
  apply RawReplay.checkRootCoverageBalanced_sound (fuel := 27)
  decide +kernel

#time theorem block000120 : RawReplay.checkRootCoverage
    ReplayFullBlock215.snapshot 33554432
    (diagonalRootsFrom 7864325 FullDiagonal.block000120.entries) = true := by
  apply RawReplay.checkRootCoverageBalanced_sound (fuel := 27)
  decide +kernel

#time theorem block000121 : RawReplay.checkRootCoverage
    ReplayFullBlock215.snapshot 33554432
    (diagonalRootsFrom 7929861 FullDiagonal.block000121.entries) = true := by
  apply RawReplay.checkRootCoverageBalanced_sound (fuel := 27)
  decide +kernel

#time theorem block000122 : RawReplay.checkRootCoverage
    ReplayFullBlock215.snapshot 33554432
    (diagonalRootsFrom 7995397 FullDiagonal.block000122.entries) = true := by
  apply RawReplay.checkRootCoverageBalanced_sound (fuel := 27)
  decide +kernel

#time theorem block000123 : RawReplay.checkRootCoverage
    ReplayFullBlock215.snapshot 33554432
    (diagonalRootsFrom 8060933 FullDiagonal.block000123.entries) = true := by
  apply RawReplay.checkRootCoverageBalanced_sound (fuel := 27)
  decide +kernel

#time theorem block000124 : RawReplay.checkRootCoverage
    ReplayFullBlock215.snapshot 33554432
    (diagonalRootsFrom 8126469 FullDiagonal.block000124.entries) = true := by
  apply RawReplay.checkRootCoverageBalanced_sound (fuel := 27)
  decide +kernel

#time theorem block000125 : RawReplay.checkRootCoverage
    ReplayFullBlock215.snapshot 33554432
    (diagonalRootsFrom 8192005 FullDiagonal.block000125.entries) = true := by
  apply RawReplay.checkRootCoverageBalanced_sound (fuel := 27)
  decide +kernel

#time theorem block000126 : RawReplay.checkRootCoverage
    ReplayFullBlock215.snapshot 33554432
    (diagonalRootsFrom 8257541 FullDiagonal.block000126.entries) = true := by
  apply RawReplay.checkRootCoverageBalanced_sound (fuel := 27)
  decide +kernel

#time theorem block000127 : RawReplay.checkRootCoverage
    ReplayFullBlock215.snapshot 33554432
    (diagonalRootsFrom 8323077 FullDiagonal.block000127.entries) = true := by
  apply RawReplay.checkRootCoverageBalanced_sound (fuel := 27)
  decide +kernel

theorem group007 : RawReplay.checkRootCoverage
    ReplayFullBlock215.snapshot 33554432
    (diagonalRootsFrom 7340037 FullDiagonal.group007.entries) = true :=
  (CheckedDiagonalBlock.rootCoverage_append
    ReplayFullBlock215.snapshot 33554432 ((((((((((((((FullDiagonal.block000112.append FullDiagonal.block000113).append FullDiagonal.block000114).append FullDiagonal.block000115).append FullDiagonal.block000116).append FullDiagonal.block000117).append FullDiagonal.block000118).append FullDiagonal.block000119).append FullDiagonal.block000120).append FullDiagonal.block000121).append FullDiagonal.block000122).append FullDiagonal.block000123).append FullDiagonal.block000124).append FullDiagonal.block000125).append FullDiagonal.block000126) FullDiagonal.block000127
    (CheckedDiagonalBlock.rootCoverage_append
    ReplayFullBlock215.snapshot 33554432 (((((((((((((FullDiagonal.block000112.append FullDiagonal.block000113).append FullDiagonal.block000114).append FullDiagonal.block000115).append FullDiagonal.block000116).append FullDiagonal.block000117).append FullDiagonal.block000118).append FullDiagonal.block000119).append FullDiagonal.block000120).append FullDiagonal.block000121).append FullDiagonal.block000122).append FullDiagonal.block000123).append FullDiagonal.block000124).append FullDiagonal.block000125) FullDiagonal.block000126
    (CheckedDiagonalBlock.rootCoverage_append
    ReplayFullBlock215.snapshot 33554432 ((((((((((((FullDiagonal.block000112.append FullDiagonal.block000113).append FullDiagonal.block000114).append FullDiagonal.block000115).append FullDiagonal.block000116).append FullDiagonal.block000117).append FullDiagonal.block000118).append FullDiagonal.block000119).append FullDiagonal.block000120).append FullDiagonal.block000121).append FullDiagonal.block000122).append FullDiagonal.block000123).append FullDiagonal.block000124) FullDiagonal.block000125
    (CheckedDiagonalBlock.rootCoverage_append
    ReplayFullBlock215.snapshot 33554432 (((((((((((FullDiagonal.block000112.append FullDiagonal.block000113).append FullDiagonal.block000114).append FullDiagonal.block000115).append FullDiagonal.block000116).append FullDiagonal.block000117).append FullDiagonal.block000118).append FullDiagonal.block000119).append FullDiagonal.block000120).append FullDiagonal.block000121).append FullDiagonal.block000122).append FullDiagonal.block000123) FullDiagonal.block000124
    (CheckedDiagonalBlock.rootCoverage_append
    ReplayFullBlock215.snapshot 33554432 ((((((((((FullDiagonal.block000112.append FullDiagonal.block000113).append FullDiagonal.block000114).append FullDiagonal.block000115).append FullDiagonal.block000116).append FullDiagonal.block000117).append FullDiagonal.block000118).append FullDiagonal.block000119).append FullDiagonal.block000120).append FullDiagonal.block000121).append FullDiagonal.block000122) FullDiagonal.block000123
    (CheckedDiagonalBlock.rootCoverage_append
    ReplayFullBlock215.snapshot 33554432 (((((((((FullDiagonal.block000112.append FullDiagonal.block000113).append FullDiagonal.block000114).append FullDiagonal.block000115).append FullDiagonal.block000116).append FullDiagonal.block000117).append FullDiagonal.block000118).append FullDiagonal.block000119).append FullDiagonal.block000120).append FullDiagonal.block000121) FullDiagonal.block000122
    (CheckedDiagonalBlock.rootCoverage_append
    ReplayFullBlock215.snapshot 33554432 ((((((((FullDiagonal.block000112.append FullDiagonal.block000113).append FullDiagonal.block000114).append FullDiagonal.block000115).append FullDiagonal.block000116).append FullDiagonal.block000117).append FullDiagonal.block000118).append FullDiagonal.block000119).append FullDiagonal.block000120) FullDiagonal.block000121
    (CheckedDiagonalBlock.rootCoverage_append
    ReplayFullBlock215.snapshot 33554432 (((((((FullDiagonal.block000112.append FullDiagonal.block000113).append FullDiagonal.block000114).append FullDiagonal.block000115).append FullDiagonal.block000116).append FullDiagonal.block000117).append FullDiagonal.block000118).append FullDiagonal.block000119) FullDiagonal.block000120
    (CheckedDiagonalBlock.rootCoverage_append
    ReplayFullBlock215.snapshot 33554432 ((((((FullDiagonal.block000112.append FullDiagonal.block000113).append FullDiagonal.block000114).append FullDiagonal.block000115).append FullDiagonal.block000116).append FullDiagonal.block000117).append FullDiagonal.block000118) FullDiagonal.block000119
    (CheckedDiagonalBlock.rootCoverage_append
    ReplayFullBlock215.snapshot 33554432 (((((FullDiagonal.block000112.append FullDiagonal.block000113).append FullDiagonal.block000114).append FullDiagonal.block000115).append FullDiagonal.block000116).append FullDiagonal.block000117) FullDiagonal.block000118
    (CheckedDiagonalBlock.rootCoverage_append
    ReplayFullBlock215.snapshot 33554432 ((((FullDiagonal.block000112.append FullDiagonal.block000113).append FullDiagonal.block000114).append FullDiagonal.block000115).append FullDiagonal.block000116) FullDiagonal.block000117
    (CheckedDiagonalBlock.rootCoverage_append
    ReplayFullBlock215.snapshot 33554432 (((FullDiagonal.block000112.append FullDiagonal.block000113).append FullDiagonal.block000114).append FullDiagonal.block000115) FullDiagonal.block000116
    (CheckedDiagonalBlock.rootCoverage_append
    ReplayFullBlock215.snapshot 33554432 ((FullDiagonal.block000112.append FullDiagonal.block000113).append FullDiagonal.block000114) FullDiagonal.block000115
    (CheckedDiagonalBlock.rootCoverage_append
    ReplayFullBlock215.snapshot 33554432 (FullDiagonal.block000112.append FullDiagonal.block000113) FullDiagonal.block000114
    (CheckedDiagonalBlock.rootCoverage_append
    ReplayFullBlock215.snapshot 33554432 FullDiagonal.block000112 FullDiagonal.block000113
    block000112 block000113) block000114) block000115) block000116) block000117) block000118) block000119) block000120) block000121) block000122) block000123) block000124) block000125) block000126) block000127)

end JSP848.FullCoverage
