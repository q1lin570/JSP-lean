import JSP848.ReplayFullBlock215.Replay
import JSP848.FullDiagonal.Group006
import JSP848.ProgressionCoverage

set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0

namespace JSP848.FullCoverage

#time theorem block000096 : RawReplay.checkRootCoverage
    ReplayFullBlock215.snapshot 33554432
    (diagonalRootsFrom 6291461 FullDiagonal.block000096.entries) = true := by
  apply RawReplay.checkRootCoverageBalanced_sound (fuel := 27)
  decide +kernel

#time theorem block000097 : RawReplay.checkRootCoverage
    ReplayFullBlock215.snapshot 33554432
    (diagonalRootsFrom 6356997 FullDiagonal.block000097.entries) = true := by
  apply RawReplay.checkRootCoverageBalanced_sound (fuel := 27)
  decide +kernel

#time theorem block000098 : RawReplay.checkRootCoverage
    ReplayFullBlock215.snapshot 33554432
    (diagonalRootsFrom 6422533 FullDiagonal.block000098.entries) = true := by
  apply RawReplay.checkRootCoverageBalanced_sound (fuel := 27)
  decide +kernel

#time theorem block000099 : RawReplay.checkRootCoverage
    ReplayFullBlock215.snapshot 33554432
    (diagonalRootsFrom 6488069 FullDiagonal.block000099.entries) = true := by
  apply RawReplay.checkRootCoverageBalanced_sound (fuel := 27)
  decide +kernel

#time theorem block000100 : RawReplay.checkRootCoverage
    ReplayFullBlock215.snapshot 33554432
    (diagonalRootsFrom 6553605 FullDiagonal.block000100.entries) = true := by
  apply RawReplay.checkRootCoverageBalanced_sound (fuel := 27)
  decide +kernel

#time theorem block000101 : RawReplay.checkRootCoverage
    ReplayFullBlock215.snapshot 33554432
    (diagonalRootsFrom 6619141 FullDiagonal.block000101.entries) = true := by
  apply RawReplay.checkRootCoverageBalanced_sound (fuel := 27)
  decide +kernel

#time theorem block000102 : RawReplay.checkRootCoverage
    ReplayFullBlock215.snapshot 33554432
    (diagonalRootsFrom 6684677 FullDiagonal.block000102.entries) = true := by
  apply RawReplay.checkRootCoverageBalanced_sound (fuel := 27)
  decide +kernel

#time theorem block000103 : RawReplay.checkRootCoverage
    ReplayFullBlock215.snapshot 33554432
    (diagonalRootsFrom 6750213 FullDiagonal.block000103.entries) = true := by
  apply RawReplay.checkRootCoverageBalanced_sound (fuel := 27)
  decide +kernel

#time theorem block000104 : RawReplay.checkRootCoverage
    ReplayFullBlock215.snapshot 33554432
    (diagonalRootsFrom 6815749 FullDiagonal.block000104.entries) = true := by
  apply RawReplay.checkRootCoverageBalanced_sound (fuel := 27)
  decide +kernel

#time theorem block000105 : RawReplay.checkRootCoverage
    ReplayFullBlock215.snapshot 33554432
    (diagonalRootsFrom 6881285 FullDiagonal.block000105.entries) = true := by
  apply RawReplay.checkRootCoverageBalanced_sound (fuel := 27)
  decide +kernel

#time theorem block000106 : RawReplay.checkRootCoverage
    ReplayFullBlock215.snapshot 33554432
    (diagonalRootsFrom 6946821 FullDiagonal.block000106.entries) = true := by
  apply RawReplay.checkRootCoverageBalanced_sound (fuel := 27)
  decide +kernel

#time theorem block000107 : RawReplay.checkRootCoverage
    ReplayFullBlock215.snapshot 33554432
    (diagonalRootsFrom 7012357 FullDiagonal.block000107.entries) = true := by
  apply RawReplay.checkRootCoverageBalanced_sound (fuel := 27)
  decide +kernel

#time theorem block000108 : RawReplay.checkRootCoverage
    ReplayFullBlock215.snapshot 33554432
    (diagonalRootsFrom 7077893 FullDiagonal.block000108.entries) = true := by
  apply RawReplay.checkRootCoverageBalanced_sound (fuel := 27)
  decide +kernel

#time theorem block000109 : RawReplay.checkRootCoverage
    ReplayFullBlock215.snapshot 33554432
    (diagonalRootsFrom 7143429 FullDiagonal.block000109.entries) = true := by
  apply RawReplay.checkRootCoverageBalanced_sound (fuel := 27)
  decide +kernel

#time theorem block000110 : RawReplay.checkRootCoverage
    ReplayFullBlock215.snapshot 33554432
    (diagonalRootsFrom 7208965 FullDiagonal.block000110.entries) = true := by
  apply RawReplay.checkRootCoverageBalanced_sound (fuel := 27)
  decide +kernel

#time theorem block000111 : RawReplay.checkRootCoverage
    ReplayFullBlock215.snapshot 33554432
    (diagonalRootsFrom 7274501 FullDiagonal.block000111.entries) = true := by
  apply RawReplay.checkRootCoverageBalanced_sound (fuel := 27)
  decide +kernel

theorem group006 : RawReplay.checkRootCoverage
    ReplayFullBlock215.snapshot 33554432
    (diagonalRootsFrom 6291461 FullDiagonal.group006.entries) = true :=
  (CheckedDiagonalBlock.rootCoverage_append
    ReplayFullBlock215.snapshot 33554432 ((((((((((((((FullDiagonal.block000096.append FullDiagonal.block000097).append FullDiagonal.block000098).append FullDiagonal.block000099).append FullDiagonal.block000100).append FullDiagonal.block000101).append FullDiagonal.block000102).append FullDiagonal.block000103).append FullDiagonal.block000104).append FullDiagonal.block000105).append FullDiagonal.block000106).append FullDiagonal.block000107).append FullDiagonal.block000108).append FullDiagonal.block000109).append FullDiagonal.block000110) FullDiagonal.block000111
    (CheckedDiagonalBlock.rootCoverage_append
    ReplayFullBlock215.snapshot 33554432 (((((((((((((FullDiagonal.block000096.append FullDiagonal.block000097).append FullDiagonal.block000098).append FullDiagonal.block000099).append FullDiagonal.block000100).append FullDiagonal.block000101).append FullDiagonal.block000102).append FullDiagonal.block000103).append FullDiagonal.block000104).append FullDiagonal.block000105).append FullDiagonal.block000106).append FullDiagonal.block000107).append FullDiagonal.block000108).append FullDiagonal.block000109) FullDiagonal.block000110
    (CheckedDiagonalBlock.rootCoverage_append
    ReplayFullBlock215.snapshot 33554432 ((((((((((((FullDiagonal.block000096.append FullDiagonal.block000097).append FullDiagonal.block000098).append FullDiagonal.block000099).append FullDiagonal.block000100).append FullDiagonal.block000101).append FullDiagonal.block000102).append FullDiagonal.block000103).append FullDiagonal.block000104).append FullDiagonal.block000105).append FullDiagonal.block000106).append FullDiagonal.block000107).append FullDiagonal.block000108) FullDiagonal.block000109
    (CheckedDiagonalBlock.rootCoverage_append
    ReplayFullBlock215.snapshot 33554432 (((((((((((FullDiagonal.block000096.append FullDiagonal.block000097).append FullDiagonal.block000098).append FullDiagonal.block000099).append FullDiagonal.block000100).append FullDiagonal.block000101).append FullDiagonal.block000102).append FullDiagonal.block000103).append FullDiagonal.block000104).append FullDiagonal.block000105).append FullDiagonal.block000106).append FullDiagonal.block000107) FullDiagonal.block000108
    (CheckedDiagonalBlock.rootCoverage_append
    ReplayFullBlock215.snapshot 33554432 ((((((((((FullDiagonal.block000096.append FullDiagonal.block000097).append FullDiagonal.block000098).append FullDiagonal.block000099).append FullDiagonal.block000100).append FullDiagonal.block000101).append FullDiagonal.block000102).append FullDiagonal.block000103).append FullDiagonal.block000104).append FullDiagonal.block000105).append FullDiagonal.block000106) FullDiagonal.block000107
    (CheckedDiagonalBlock.rootCoverage_append
    ReplayFullBlock215.snapshot 33554432 (((((((((FullDiagonal.block000096.append FullDiagonal.block000097).append FullDiagonal.block000098).append FullDiagonal.block000099).append FullDiagonal.block000100).append FullDiagonal.block000101).append FullDiagonal.block000102).append FullDiagonal.block000103).append FullDiagonal.block000104).append FullDiagonal.block000105) FullDiagonal.block000106
    (CheckedDiagonalBlock.rootCoverage_append
    ReplayFullBlock215.snapshot 33554432 ((((((((FullDiagonal.block000096.append FullDiagonal.block000097).append FullDiagonal.block000098).append FullDiagonal.block000099).append FullDiagonal.block000100).append FullDiagonal.block000101).append FullDiagonal.block000102).append FullDiagonal.block000103).append FullDiagonal.block000104) FullDiagonal.block000105
    (CheckedDiagonalBlock.rootCoverage_append
    ReplayFullBlock215.snapshot 33554432 (((((((FullDiagonal.block000096.append FullDiagonal.block000097).append FullDiagonal.block000098).append FullDiagonal.block000099).append FullDiagonal.block000100).append FullDiagonal.block000101).append FullDiagonal.block000102).append FullDiagonal.block000103) FullDiagonal.block000104
    (CheckedDiagonalBlock.rootCoverage_append
    ReplayFullBlock215.snapshot 33554432 ((((((FullDiagonal.block000096.append FullDiagonal.block000097).append FullDiagonal.block000098).append FullDiagonal.block000099).append FullDiagonal.block000100).append FullDiagonal.block000101).append FullDiagonal.block000102) FullDiagonal.block000103
    (CheckedDiagonalBlock.rootCoverage_append
    ReplayFullBlock215.snapshot 33554432 (((((FullDiagonal.block000096.append FullDiagonal.block000097).append FullDiagonal.block000098).append FullDiagonal.block000099).append FullDiagonal.block000100).append FullDiagonal.block000101) FullDiagonal.block000102
    (CheckedDiagonalBlock.rootCoverage_append
    ReplayFullBlock215.snapshot 33554432 ((((FullDiagonal.block000096.append FullDiagonal.block000097).append FullDiagonal.block000098).append FullDiagonal.block000099).append FullDiagonal.block000100) FullDiagonal.block000101
    (CheckedDiagonalBlock.rootCoverage_append
    ReplayFullBlock215.snapshot 33554432 (((FullDiagonal.block000096.append FullDiagonal.block000097).append FullDiagonal.block000098).append FullDiagonal.block000099) FullDiagonal.block000100
    (CheckedDiagonalBlock.rootCoverage_append
    ReplayFullBlock215.snapshot 33554432 ((FullDiagonal.block000096.append FullDiagonal.block000097).append FullDiagonal.block000098) FullDiagonal.block000099
    (CheckedDiagonalBlock.rootCoverage_append
    ReplayFullBlock215.snapshot 33554432 (FullDiagonal.block000096.append FullDiagonal.block000097) FullDiagonal.block000098
    (CheckedDiagonalBlock.rootCoverage_append
    ReplayFullBlock215.snapshot 33554432 FullDiagonal.block000096 FullDiagonal.block000097
    block000096 block000097) block000098) block000099) block000100) block000101) block000102) block000103) block000104) block000105) block000106) block000107) block000108) block000109) block000110) block000111)

end JSP848.FullCoverage
