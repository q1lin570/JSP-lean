import JSP848.ReplayFullBlock215.Replay
import JSP848.FullDiagonal.Group018
import JSP848.ProgressionCoverage

set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0

namespace JSP848.FullCoverage

#time theorem block000288 : RawReplay.checkRootCoverage
    ReplayFullBlock215.snapshot 33554432
    (diagonalRootsFrom 18874373 FullDiagonal.block000288.entries) = true := by
  apply RawReplay.checkRootCoverageBalanced_sound (fuel := 27)
  decide +kernel

#time theorem block000289 : RawReplay.checkRootCoverage
    ReplayFullBlock215.snapshot 33554432
    (diagonalRootsFrom 18939909 FullDiagonal.block000289.entries) = true := by
  apply RawReplay.checkRootCoverageBalanced_sound (fuel := 27)
  decide +kernel

#time theorem block000290 : RawReplay.checkRootCoverage
    ReplayFullBlock215.snapshot 33554432
    (diagonalRootsFrom 19005445 FullDiagonal.block000290.entries) = true := by
  apply RawReplay.checkRootCoverageBalanced_sound (fuel := 27)
  decide +kernel

#time theorem block000291 : RawReplay.checkRootCoverage
    ReplayFullBlock215.snapshot 33554432
    (diagonalRootsFrom 19070981 FullDiagonal.block000291.entries) = true := by
  apply RawReplay.checkRootCoverageBalanced_sound (fuel := 27)
  decide +kernel

#time theorem block000292 : RawReplay.checkRootCoverage
    ReplayFullBlock215.snapshot 33554432
    (diagonalRootsFrom 19136517 FullDiagonal.block000292.entries) = true := by
  apply RawReplay.checkRootCoverageBalanced_sound (fuel := 27)
  decide +kernel

#time theorem block000293 : RawReplay.checkRootCoverage
    ReplayFullBlock215.snapshot 33554432
    (diagonalRootsFrom 19202053 FullDiagonal.block000293.entries) = true := by
  apply RawReplay.checkRootCoverageBalanced_sound (fuel := 27)
  decide +kernel

#time theorem block000294 : RawReplay.checkRootCoverage
    ReplayFullBlock215.snapshot 33554432
    (diagonalRootsFrom 19267589 FullDiagonal.block000294.entries) = true := by
  apply RawReplay.checkRootCoverageBalanced_sound (fuel := 27)
  decide +kernel

#time theorem block000295 : RawReplay.checkRootCoverage
    ReplayFullBlock215.snapshot 33554432
    (diagonalRootsFrom 19333125 FullDiagonal.block000295.entries) = true := by
  apply RawReplay.checkRootCoverageBalanced_sound (fuel := 27)
  decide +kernel

#time theorem block000296 : RawReplay.checkRootCoverage
    ReplayFullBlock215.snapshot 33554432
    (diagonalRootsFrom 19398661 FullDiagonal.block000296.entries) = true := by
  apply RawReplay.checkRootCoverageBalanced_sound (fuel := 27)
  decide +kernel

#time theorem block000297 : RawReplay.checkRootCoverage
    ReplayFullBlock215.snapshot 33554432
    (diagonalRootsFrom 19464197 FullDiagonal.block000297.entries) = true := by
  apply RawReplay.checkRootCoverageBalanced_sound (fuel := 27)
  decide +kernel

#time theorem block000298 : RawReplay.checkRootCoverage
    ReplayFullBlock215.snapshot 33554432
    (diagonalRootsFrom 19529733 FullDiagonal.block000298.entries) = true := by
  apply RawReplay.checkRootCoverageBalanced_sound (fuel := 27)
  decide +kernel

#time theorem block000299 : RawReplay.checkRootCoverage
    ReplayFullBlock215.snapshot 33554432
    (diagonalRootsFrom 19595269 FullDiagonal.block000299.entries) = true := by
  apply RawReplay.checkRootCoverageBalanced_sound (fuel := 27)
  decide +kernel

#time theorem block000300 : RawReplay.checkRootCoverage
    ReplayFullBlock215.snapshot 33554432
    (diagonalRootsFrom 19660805 FullDiagonal.block000300.entries) = true := by
  apply RawReplay.checkRootCoverageBalanced_sound (fuel := 27)
  decide +kernel

#time theorem block000301 : RawReplay.checkRootCoverage
    ReplayFullBlock215.snapshot 33554432
    (diagonalRootsFrom 19726341 FullDiagonal.block000301.entries) = true := by
  apply RawReplay.checkRootCoverageBalanced_sound (fuel := 27)
  decide +kernel

#time theorem block000302 : RawReplay.checkRootCoverage
    ReplayFullBlock215.snapshot 33554432
    (diagonalRootsFrom 19791877 FullDiagonal.block000302.entries) = true := by
  apply RawReplay.checkRootCoverageBalanced_sound (fuel := 27)
  decide +kernel

#time theorem block000303 : RawReplay.checkRootCoverage
    ReplayFullBlock215.snapshot 33554432
    (diagonalRootsFrom 19857413 FullDiagonal.block000303.entries) = true := by
  apply RawReplay.checkRootCoverageBalanced_sound (fuel := 27)
  decide +kernel

theorem group018 : RawReplay.checkRootCoverage
    ReplayFullBlock215.snapshot 33554432
    (diagonalRootsFrom 18874373 FullDiagonal.group018.entries) = true :=
  (CheckedDiagonalBlock.rootCoverage_append
    ReplayFullBlock215.snapshot 33554432 ((((((((((((((FullDiagonal.block000288.append FullDiagonal.block000289).append FullDiagonal.block000290).append FullDiagonal.block000291).append FullDiagonal.block000292).append FullDiagonal.block000293).append FullDiagonal.block000294).append FullDiagonal.block000295).append FullDiagonal.block000296).append FullDiagonal.block000297).append FullDiagonal.block000298).append FullDiagonal.block000299).append FullDiagonal.block000300).append FullDiagonal.block000301).append FullDiagonal.block000302) FullDiagonal.block000303
    (CheckedDiagonalBlock.rootCoverage_append
    ReplayFullBlock215.snapshot 33554432 (((((((((((((FullDiagonal.block000288.append FullDiagonal.block000289).append FullDiagonal.block000290).append FullDiagonal.block000291).append FullDiagonal.block000292).append FullDiagonal.block000293).append FullDiagonal.block000294).append FullDiagonal.block000295).append FullDiagonal.block000296).append FullDiagonal.block000297).append FullDiagonal.block000298).append FullDiagonal.block000299).append FullDiagonal.block000300).append FullDiagonal.block000301) FullDiagonal.block000302
    (CheckedDiagonalBlock.rootCoverage_append
    ReplayFullBlock215.snapshot 33554432 ((((((((((((FullDiagonal.block000288.append FullDiagonal.block000289).append FullDiagonal.block000290).append FullDiagonal.block000291).append FullDiagonal.block000292).append FullDiagonal.block000293).append FullDiagonal.block000294).append FullDiagonal.block000295).append FullDiagonal.block000296).append FullDiagonal.block000297).append FullDiagonal.block000298).append FullDiagonal.block000299).append FullDiagonal.block000300) FullDiagonal.block000301
    (CheckedDiagonalBlock.rootCoverage_append
    ReplayFullBlock215.snapshot 33554432 (((((((((((FullDiagonal.block000288.append FullDiagonal.block000289).append FullDiagonal.block000290).append FullDiagonal.block000291).append FullDiagonal.block000292).append FullDiagonal.block000293).append FullDiagonal.block000294).append FullDiagonal.block000295).append FullDiagonal.block000296).append FullDiagonal.block000297).append FullDiagonal.block000298).append FullDiagonal.block000299) FullDiagonal.block000300
    (CheckedDiagonalBlock.rootCoverage_append
    ReplayFullBlock215.snapshot 33554432 ((((((((((FullDiagonal.block000288.append FullDiagonal.block000289).append FullDiagonal.block000290).append FullDiagonal.block000291).append FullDiagonal.block000292).append FullDiagonal.block000293).append FullDiagonal.block000294).append FullDiagonal.block000295).append FullDiagonal.block000296).append FullDiagonal.block000297).append FullDiagonal.block000298) FullDiagonal.block000299
    (CheckedDiagonalBlock.rootCoverage_append
    ReplayFullBlock215.snapshot 33554432 (((((((((FullDiagonal.block000288.append FullDiagonal.block000289).append FullDiagonal.block000290).append FullDiagonal.block000291).append FullDiagonal.block000292).append FullDiagonal.block000293).append FullDiagonal.block000294).append FullDiagonal.block000295).append FullDiagonal.block000296).append FullDiagonal.block000297) FullDiagonal.block000298
    (CheckedDiagonalBlock.rootCoverage_append
    ReplayFullBlock215.snapshot 33554432 ((((((((FullDiagonal.block000288.append FullDiagonal.block000289).append FullDiagonal.block000290).append FullDiagonal.block000291).append FullDiagonal.block000292).append FullDiagonal.block000293).append FullDiagonal.block000294).append FullDiagonal.block000295).append FullDiagonal.block000296) FullDiagonal.block000297
    (CheckedDiagonalBlock.rootCoverage_append
    ReplayFullBlock215.snapshot 33554432 (((((((FullDiagonal.block000288.append FullDiagonal.block000289).append FullDiagonal.block000290).append FullDiagonal.block000291).append FullDiagonal.block000292).append FullDiagonal.block000293).append FullDiagonal.block000294).append FullDiagonal.block000295) FullDiagonal.block000296
    (CheckedDiagonalBlock.rootCoverage_append
    ReplayFullBlock215.snapshot 33554432 ((((((FullDiagonal.block000288.append FullDiagonal.block000289).append FullDiagonal.block000290).append FullDiagonal.block000291).append FullDiagonal.block000292).append FullDiagonal.block000293).append FullDiagonal.block000294) FullDiagonal.block000295
    (CheckedDiagonalBlock.rootCoverage_append
    ReplayFullBlock215.snapshot 33554432 (((((FullDiagonal.block000288.append FullDiagonal.block000289).append FullDiagonal.block000290).append FullDiagonal.block000291).append FullDiagonal.block000292).append FullDiagonal.block000293) FullDiagonal.block000294
    (CheckedDiagonalBlock.rootCoverage_append
    ReplayFullBlock215.snapshot 33554432 ((((FullDiagonal.block000288.append FullDiagonal.block000289).append FullDiagonal.block000290).append FullDiagonal.block000291).append FullDiagonal.block000292) FullDiagonal.block000293
    (CheckedDiagonalBlock.rootCoverage_append
    ReplayFullBlock215.snapshot 33554432 (((FullDiagonal.block000288.append FullDiagonal.block000289).append FullDiagonal.block000290).append FullDiagonal.block000291) FullDiagonal.block000292
    (CheckedDiagonalBlock.rootCoverage_append
    ReplayFullBlock215.snapshot 33554432 ((FullDiagonal.block000288.append FullDiagonal.block000289).append FullDiagonal.block000290) FullDiagonal.block000291
    (CheckedDiagonalBlock.rootCoverage_append
    ReplayFullBlock215.snapshot 33554432 (FullDiagonal.block000288.append FullDiagonal.block000289) FullDiagonal.block000290
    (CheckedDiagonalBlock.rootCoverage_append
    ReplayFullBlock215.snapshot 33554432 FullDiagonal.block000288 FullDiagonal.block000289
    block000288 block000289) block000290) block000291) block000292) block000293) block000294) block000295) block000296) block000297) block000298) block000299) block000300) block000301) block000302) block000303)

end JSP848.FullCoverage
