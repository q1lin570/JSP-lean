import JSP848.ReplayFullBlock215.Replay
import JSP848.FullDiagonal.Group019
import JSP848.ProgressionCoverage

set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0

namespace JSP848.FullCoverage

#time theorem block000304 : RawReplay.checkRootCoverage
    ReplayFullBlock215.snapshot 33554432
    (diagonalRootsFrom 19922949 FullDiagonal.block000304.entries) = true := by
  apply RawReplay.checkRootCoverageBalanced_sound (fuel := 27)
  decide +kernel

#time theorem block000305 : RawReplay.checkRootCoverage
    ReplayFullBlock215.snapshot 33554432
    (diagonalRootsFrom 19988485 FullDiagonal.block000305.entries) = true := by
  apply RawReplay.checkRootCoverageBalanced_sound (fuel := 27)
  decide +kernel

#time theorem block000306 : RawReplay.checkRootCoverage
    ReplayFullBlock215.snapshot 33554432
    (diagonalRootsFrom 20054021 FullDiagonal.block000306.entries) = true := by
  apply RawReplay.checkRootCoverageBalanced_sound (fuel := 27)
  decide +kernel

#time theorem block000307 : RawReplay.checkRootCoverage
    ReplayFullBlock215.snapshot 33554432
    (diagonalRootsFrom 20119557 FullDiagonal.block000307.entries) = true := by
  apply RawReplay.checkRootCoverageBalanced_sound (fuel := 27)
  decide +kernel

#time theorem block000308 : RawReplay.checkRootCoverage
    ReplayFullBlock215.snapshot 33554432
    (diagonalRootsFrom 20185093 FullDiagonal.block000308.entries) = true := by
  apply RawReplay.checkRootCoverageBalanced_sound (fuel := 27)
  decide +kernel

#time theorem block000309 : RawReplay.checkRootCoverage
    ReplayFullBlock215.snapshot 33554432
    (diagonalRootsFrom 20250629 FullDiagonal.block000309.entries) = true := by
  apply RawReplay.checkRootCoverageBalanced_sound (fuel := 27)
  decide +kernel

#time theorem block000310 : RawReplay.checkRootCoverage
    ReplayFullBlock215.snapshot 33554432
    (diagonalRootsFrom 20316165 FullDiagonal.block000310.entries) = true := by
  apply RawReplay.checkRootCoverageBalanced_sound (fuel := 27)
  decide +kernel

#time theorem block000311 : RawReplay.checkRootCoverage
    ReplayFullBlock215.snapshot 33554432
    (diagonalRootsFrom 20381701 FullDiagonal.block000311.entries) = true := by
  apply RawReplay.checkRootCoverageBalanced_sound (fuel := 27)
  decide +kernel

#time theorem block000312 : RawReplay.checkRootCoverage
    ReplayFullBlock215.snapshot 33554432
    (diagonalRootsFrom 20447237 FullDiagonal.block000312.entries) = true := by
  apply RawReplay.checkRootCoverageBalanced_sound (fuel := 27)
  decide +kernel

#time theorem block000313 : RawReplay.checkRootCoverage
    ReplayFullBlock215.snapshot 33554432
    (diagonalRootsFrom 20512773 FullDiagonal.block000313.entries) = true := by
  apply RawReplay.checkRootCoverageBalanced_sound (fuel := 27)
  decide +kernel

#time theorem block000314 : RawReplay.checkRootCoverage
    ReplayFullBlock215.snapshot 33554432
    (diagonalRootsFrom 20578309 FullDiagonal.block000314.entries) = true := by
  apply RawReplay.checkRootCoverageBalanced_sound (fuel := 27)
  decide +kernel

#time theorem block000315 : RawReplay.checkRootCoverage
    ReplayFullBlock215.snapshot 33554432
    (diagonalRootsFrom 20643845 FullDiagonal.block000315.entries) = true := by
  apply RawReplay.checkRootCoverageBalanced_sound (fuel := 27)
  decide +kernel

#time theorem block000316 : RawReplay.checkRootCoverage
    ReplayFullBlock215.snapshot 33554432
    (diagonalRootsFrom 20709381 FullDiagonal.block000316.entries) = true := by
  apply RawReplay.checkRootCoverageBalanced_sound (fuel := 27)
  decide +kernel

#time theorem block000317 : RawReplay.checkRootCoverage
    ReplayFullBlock215.snapshot 33554432
    (diagonalRootsFrom 20774917 FullDiagonal.block000317.entries) = true := by
  apply RawReplay.checkRootCoverageBalanced_sound (fuel := 27)
  decide +kernel

#time theorem block000318 : RawReplay.checkRootCoverage
    ReplayFullBlock215.snapshot 33554432
    (diagonalRootsFrom 20840453 FullDiagonal.block000318.entries) = true := by
  apply RawReplay.checkRootCoverageBalanced_sound (fuel := 27)
  decide +kernel

#time theorem block000319 : RawReplay.checkRootCoverage
    ReplayFullBlock215.snapshot 33554432
    (diagonalRootsFrom 20905989 FullDiagonal.block000319.entries) = true := by
  apply RawReplay.checkRootCoverageBalanced_sound (fuel := 27)
  decide +kernel

theorem group019 : RawReplay.checkRootCoverage
    ReplayFullBlock215.snapshot 33554432
    (diagonalRootsFrom 19922949 FullDiagonal.group019.entries) = true :=
  (CheckedDiagonalBlock.rootCoverage_append
    ReplayFullBlock215.snapshot 33554432 ((((((((((((((FullDiagonal.block000304.append FullDiagonal.block000305).append FullDiagonal.block000306).append FullDiagonal.block000307).append FullDiagonal.block000308).append FullDiagonal.block000309).append FullDiagonal.block000310).append FullDiagonal.block000311).append FullDiagonal.block000312).append FullDiagonal.block000313).append FullDiagonal.block000314).append FullDiagonal.block000315).append FullDiagonal.block000316).append FullDiagonal.block000317).append FullDiagonal.block000318) FullDiagonal.block000319
    (CheckedDiagonalBlock.rootCoverage_append
    ReplayFullBlock215.snapshot 33554432 (((((((((((((FullDiagonal.block000304.append FullDiagonal.block000305).append FullDiagonal.block000306).append FullDiagonal.block000307).append FullDiagonal.block000308).append FullDiagonal.block000309).append FullDiagonal.block000310).append FullDiagonal.block000311).append FullDiagonal.block000312).append FullDiagonal.block000313).append FullDiagonal.block000314).append FullDiagonal.block000315).append FullDiagonal.block000316).append FullDiagonal.block000317) FullDiagonal.block000318
    (CheckedDiagonalBlock.rootCoverage_append
    ReplayFullBlock215.snapshot 33554432 ((((((((((((FullDiagonal.block000304.append FullDiagonal.block000305).append FullDiagonal.block000306).append FullDiagonal.block000307).append FullDiagonal.block000308).append FullDiagonal.block000309).append FullDiagonal.block000310).append FullDiagonal.block000311).append FullDiagonal.block000312).append FullDiagonal.block000313).append FullDiagonal.block000314).append FullDiagonal.block000315).append FullDiagonal.block000316) FullDiagonal.block000317
    (CheckedDiagonalBlock.rootCoverage_append
    ReplayFullBlock215.snapshot 33554432 (((((((((((FullDiagonal.block000304.append FullDiagonal.block000305).append FullDiagonal.block000306).append FullDiagonal.block000307).append FullDiagonal.block000308).append FullDiagonal.block000309).append FullDiagonal.block000310).append FullDiagonal.block000311).append FullDiagonal.block000312).append FullDiagonal.block000313).append FullDiagonal.block000314).append FullDiagonal.block000315) FullDiagonal.block000316
    (CheckedDiagonalBlock.rootCoverage_append
    ReplayFullBlock215.snapshot 33554432 ((((((((((FullDiagonal.block000304.append FullDiagonal.block000305).append FullDiagonal.block000306).append FullDiagonal.block000307).append FullDiagonal.block000308).append FullDiagonal.block000309).append FullDiagonal.block000310).append FullDiagonal.block000311).append FullDiagonal.block000312).append FullDiagonal.block000313).append FullDiagonal.block000314) FullDiagonal.block000315
    (CheckedDiagonalBlock.rootCoverage_append
    ReplayFullBlock215.snapshot 33554432 (((((((((FullDiagonal.block000304.append FullDiagonal.block000305).append FullDiagonal.block000306).append FullDiagonal.block000307).append FullDiagonal.block000308).append FullDiagonal.block000309).append FullDiagonal.block000310).append FullDiagonal.block000311).append FullDiagonal.block000312).append FullDiagonal.block000313) FullDiagonal.block000314
    (CheckedDiagonalBlock.rootCoverage_append
    ReplayFullBlock215.snapshot 33554432 ((((((((FullDiagonal.block000304.append FullDiagonal.block000305).append FullDiagonal.block000306).append FullDiagonal.block000307).append FullDiagonal.block000308).append FullDiagonal.block000309).append FullDiagonal.block000310).append FullDiagonal.block000311).append FullDiagonal.block000312) FullDiagonal.block000313
    (CheckedDiagonalBlock.rootCoverage_append
    ReplayFullBlock215.snapshot 33554432 (((((((FullDiagonal.block000304.append FullDiagonal.block000305).append FullDiagonal.block000306).append FullDiagonal.block000307).append FullDiagonal.block000308).append FullDiagonal.block000309).append FullDiagonal.block000310).append FullDiagonal.block000311) FullDiagonal.block000312
    (CheckedDiagonalBlock.rootCoverage_append
    ReplayFullBlock215.snapshot 33554432 ((((((FullDiagonal.block000304.append FullDiagonal.block000305).append FullDiagonal.block000306).append FullDiagonal.block000307).append FullDiagonal.block000308).append FullDiagonal.block000309).append FullDiagonal.block000310) FullDiagonal.block000311
    (CheckedDiagonalBlock.rootCoverage_append
    ReplayFullBlock215.snapshot 33554432 (((((FullDiagonal.block000304.append FullDiagonal.block000305).append FullDiagonal.block000306).append FullDiagonal.block000307).append FullDiagonal.block000308).append FullDiagonal.block000309) FullDiagonal.block000310
    (CheckedDiagonalBlock.rootCoverage_append
    ReplayFullBlock215.snapshot 33554432 ((((FullDiagonal.block000304.append FullDiagonal.block000305).append FullDiagonal.block000306).append FullDiagonal.block000307).append FullDiagonal.block000308) FullDiagonal.block000309
    (CheckedDiagonalBlock.rootCoverage_append
    ReplayFullBlock215.snapshot 33554432 (((FullDiagonal.block000304.append FullDiagonal.block000305).append FullDiagonal.block000306).append FullDiagonal.block000307) FullDiagonal.block000308
    (CheckedDiagonalBlock.rootCoverage_append
    ReplayFullBlock215.snapshot 33554432 ((FullDiagonal.block000304.append FullDiagonal.block000305).append FullDiagonal.block000306) FullDiagonal.block000307
    (CheckedDiagonalBlock.rootCoverage_append
    ReplayFullBlock215.snapshot 33554432 (FullDiagonal.block000304.append FullDiagonal.block000305) FullDiagonal.block000306
    (CheckedDiagonalBlock.rootCoverage_append
    ReplayFullBlock215.snapshot 33554432 FullDiagonal.block000304 FullDiagonal.block000305
    block000304 block000305) block000306) block000307) block000308) block000309) block000310) block000311) block000312) block000313) block000314) block000315) block000316) block000317) block000318) block000319)

end JSP848.FullCoverage
