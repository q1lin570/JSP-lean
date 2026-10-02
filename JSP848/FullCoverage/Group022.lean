import JSP848.ReplayFullBlock215.Replay
import JSP848.FullDiagonal.Group022
import JSP848.ProgressionCoverage

set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0

namespace JSP848.FullCoverage

#time theorem block000352 : RawReplay.checkRootCoverage
    ReplayFullBlock215.snapshot 33554432
    (diagonalRootsFrom 23068677 FullDiagonal.block000352.entries) = true := by
  apply RawReplay.checkRootCoverageBalanced_sound (fuel := 27)
  decide +kernel

#time theorem block000353 : RawReplay.checkRootCoverage
    ReplayFullBlock215.snapshot 33554432
    (diagonalRootsFrom 23134213 FullDiagonal.block000353.entries) = true := by
  apply RawReplay.checkRootCoverageBalanced_sound (fuel := 27)
  decide +kernel

#time theorem block000354 : RawReplay.checkRootCoverage
    ReplayFullBlock215.snapshot 33554432
    (diagonalRootsFrom 23199749 FullDiagonal.block000354.entries) = true := by
  apply RawReplay.checkRootCoverageBalanced_sound (fuel := 27)
  decide +kernel

#time theorem block000355 : RawReplay.checkRootCoverage
    ReplayFullBlock215.snapshot 33554432
    (diagonalRootsFrom 23265285 FullDiagonal.block000355.entries) = true := by
  apply RawReplay.checkRootCoverageBalanced_sound (fuel := 27)
  decide +kernel

#time theorem block000356 : RawReplay.checkRootCoverage
    ReplayFullBlock215.snapshot 33554432
    (diagonalRootsFrom 23330821 FullDiagonal.block000356.entries) = true := by
  apply RawReplay.checkRootCoverageBalanced_sound (fuel := 27)
  decide +kernel

#time theorem block000357 : RawReplay.checkRootCoverage
    ReplayFullBlock215.snapshot 33554432
    (diagonalRootsFrom 23396357 FullDiagonal.block000357.entries) = true := by
  apply RawReplay.checkRootCoverageBalanced_sound (fuel := 27)
  decide +kernel

#time theorem block000358 : RawReplay.checkRootCoverage
    ReplayFullBlock215.snapshot 33554432
    (diagonalRootsFrom 23461893 FullDiagonal.block000358.entries) = true := by
  apply RawReplay.checkRootCoverageBalanced_sound (fuel := 27)
  decide +kernel

#time theorem block000359 : RawReplay.checkRootCoverage
    ReplayFullBlock215.snapshot 33554432
    (diagonalRootsFrom 23527429 FullDiagonal.block000359.entries) = true := by
  apply RawReplay.checkRootCoverageBalanced_sound (fuel := 27)
  decide +kernel

#time theorem block000360 : RawReplay.checkRootCoverage
    ReplayFullBlock215.snapshot 33554432
    (diagonalRootsFrom 23592965 FullDiagonal.block000360.entries) = true := by
  apply RawReplay.checkRootCoverageBalanced_sound (fuel := 27)
  decide +kernel

#time theorem block000361 : RawReplay.checkRootCoverage
    ReplayFullBlock215.snapshot 33554432
    (diagonalRootsFrom 23658501 FullDiagonal.block000361.entries) = true := by
  apply RawReplay.checkRootCoverageBalanced_sound (fuel := 27)
  decide +kernel

#time theorem block000362 : RawReplay.checkRootCoverage
    ReplayFullBlock215.snapshot 33554432
    (diagonalRootsFrom 23724037 FullDiagonal.block000362.entries) = true := by
  apply RawReplay.checkRootCoverageBalanced_sound (fuel := 27)
  decide +kernel

#time theorem block000363 : RawReplay.checkRootCoverage
    ReplayFullBlock215.snapshot 33554432
    (diagonalRootsFrom 23789573 FullDiagonal.block000363.entries) = true := by
  apply RawReplay.checkRootCoverageBalanced_sound (fuel := 27)
  decide +kernel

#time theorem block000364 : RawReplay.checkRootCoverage
    ReplayFullBlock215.snapshot 33554432
    (diagonalRootsFrom 23855109 FullDiagonal.block000364.entries) = true := by
  apply RawReplay.checkRootCoverageBalanced_sound (fuel := 27)
  decide +kernel

#time theorem block000365 : RawReplay.checkRootCoverage
    ReplayFullBlock215.snapshot 33554432
    (diagonalRootsFrom 23920645 FullDiagonal.block000365.entries) = true := by
  apply RawReplay.checkRootCoverageBalanced_sound (fuel := 27)
  decide +kernel

#time theorem block000366 : RawReplay.checkRootCoverage
    ReplayFullBlock215.snapshot 33554432
    (diagonalRootsFrom 23986181 FullDiagonal.block000366.entries) = true := by
  apply RawReplay.checkRootCoverageBalanced_sound (fuel := 27)
  decide +kernel

#time theorem block000367 : RawReplay.checkRootCoverage
    ReplayFullBlock215.snapshot 33554432
    (diagonalRootsFrom 24051717 FullDiagonal.block000367.entries) = true := by
  apply RawReplay.checkRootCoverageBalanced_sound (fuel := 27)
  decide +kernel

theorem group022 : RawReplay.checkRootCoverage
    ReplayFullBlock215.snapshot 33554432
    (diagonalRootsFrom 23068677 FullDiagonal.group022.entries) = true :=
  (CheckedDiagonalBlock.rootCoverage_append
    ReplayFullBlock215.snapshot 33554432 ((((((((((((((FullDiagonal.block000352.append FullDiagonal.block000353).append FullDiagonal.block000354).append FullDiagonal.block000355).append FullDiagonal.block000356).append FullDiagonal.block000357).append FullDiagonal.block000358).append FullDiagonal.block000359).append FullDiagonal.block000360).append FullDiagonal.block000361).append FullDiagonal.block000362).append FullDiagonal.block000363).append FullDiagonal.block000364).append FullDiagonal.block000365).append FullDiagonal.block000366) FullDiagonal.block000367
    (CheckedDiagonalBlock.rootCoverage_append
    ReplayFullBlock215.snapshot 33554432 (((((((((((((FullDiagonal.block000352.append FullDiagonal.block000353).append FullDiagonal.block000354).append FullDiagonal.block000355).append FullDiagonal.block000356).append FullDiagonal.block000357).append FullDiagonal.block000358).append FullDiagonal.block000359).append FullDiagonal.block000360).append FullDiagonal.block000361).append FullDiagonal.block000362).append FullDiagonal.block000363).append FullDiagonal.block000364).append FullDiagonal.block000365) FullDiagonal.block000366
    (CheckedDiagonalBlock.rootCoverage_append
    ReplayFullBlock215.snapshot 33554432 ((((((((((((FullDiagonal.block000352.append FullDiagonal.block000353).append FullDiagonal.block000354).append FullDiagonal.block000355).append FullDiagonal.block000356).append FullDiagonal.block000357).append FullDiagonal.block000358).append FullDiagonal.block000359).append FullDiagonal.block000360).append FullDiagonal.block000361).append FullDiagonal.block000362).append FullDiagonal.block000363).append FullDiagonal.block000364) FullDiagonal.block000365
    (CheckedDiagonalBlock.rootCoverage_append
    ReplayFullBlock215.snapshot 33554432 (((((((((((FullDiagonal.block000352.append FullDiagonal.block000353).append FullDiagonal.block000354).append FullDiagonal.block000355).append FullDiagonal.block000356).append FullDiagonal.block000357).append FullDiagonal.block000358).append FullDiagonal.block000359).append FullDiagonal.block000360).append FullDiagonal.block000361).append FullDiagonal.block000362).append FullDiagonal.block000363) FullDiagonal.block000364
    (CheckedDiagonalBlock.rootCoverage_append
    ReplayFullBlock215.snapshot 33554432 ((((((((((FullDiagonal.block000352.append FullDiagonal.block000353).append FullDiagonal.block000354).append FullDiagonal.block000355).append FullDiagonal.block000356).append FullDiagonal.block000357).append FullDiagonal.block000358).append FullDiagonal.block000359).append FullDiagonal.block000360).append FullDiagonal.block000361).append FullDiagonal.block000362) FullDiagonal.block000363
    (CheckedDiagonalBlock.rootCoverage_append
    ReplayFullBlock215.snapshot 33554432 (((((((((FullDiagonal.block000352.append FullDiagonal.block000353).append FullDiagonal.block000354).append FullDiagonal.block000355).append FullDiagonal.block000356).append FullDiagonal.block000357).append FullDiagonal.block000358).append FullDiagonal.block000359).append FullDiagonal.block000360).append FullDiagonal.block000361) FullDiagonal.block000362
    (CheckedDiagonalBlock.rootCoverage_append
    ReplayFullBlock215.snapshot 33554432 ((((((((FullDiagonal.block000352.append FullDiagonal.block000353).append FullDiagonal.block000354).append FullDiagonal.block000355).append FullDiagonal.block000356).append FullDiagonal.block000357).append FullDiagonal.block000358).append FullDiagonal.block000359).append FullDiagonal.block000360) FullDiagonal.block000361
    (CheckedDiagonalBlock.rootCoverage_append
    ReplayFullBlock215.snapshot 33554432 (((((((FullDiagonal.block000352.append FullDiagonal.block000353).append FullDiagonal.block000354).append FullDiagonal.block000355).append FullDiagonal.block000356).append FullDiagonal.block000357).append FullDiagonal.block000358).append FullDiagonal.block000359) FullDiagonal.block000360
    (CheckedDiagonalBlock.rootCoverage_append
    ReplayFullBlock215.snapshot 33554432 ((((((FullDiagonal.block000352.append FullDiagonal.block000353).append FullDiagonal.block000354).append FullDiagonal.block000355).append FullDiagonal.block000356).append FullDiagonal.block000357).append FullDiagonal.block000358) FullDiagonal.block000359
    (CheckedDiagonalBlock.rootCoverage_append
    ReplayFullBlock215.snapshot 33554432 (((((FullDiagonal.block000352.append FullDiagonal.block000353).append FullDiagonal.block000354).append FullDiagonal.block000355).append FullDiagonal.block000356).append FullDiagonal.block000357) FullDiagonal.block000358
    (CheckedDiagonalBlock.rootCoverage_append
    ReplayFullBlock215.snapshot 33554432 ((((FullDiagonal.block000352.append FullDiagonal.block000353).append FullDiagonal.block000354).append FullDiagonal.block000355).append FullDiagonal.block000356) FullDiagonal.block000357
    (CheckedDiagonalBlock.rootCoverage_append
    ReplayFullBlock215.snapshot 33554432 (((FullDiagonal.block000352.append FullDiagonal.block000353).append FullDiagonal.block000354).append FullDiagonal.block000355) FullDiagonal.block000356
    (CheckedDiagonalBlock.rootCoverage_append
    ReplayFullBlock215.snapshot 33554432 ((FullDiagonal.block000352.append FullDiagonal.block000353).append FullDiagonal.block000354) FullDiagonal.block000355
    (CheckedDiagonalBlock.rootCoverage_append
    ReplayFullBlock215.snapshot 33554432 (FullDiagonal.block000352.append FullDiagonal.block000353) FullDiagonal.block000354
    (CheckedDiagonalBlock.rootCoverage_append
    ReplayFullBlock215.snapshot 33554432 FullDiagonal.block000352 FullDiagonal.block000353
    block000352 block000353) block000354) block000355) block000356) block000357) block000358) block000359) block000360) block000361) block000362) block000363) block000364) block000365) block000366) block000367)

end JSP848.FullCoverage
