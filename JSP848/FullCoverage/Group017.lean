import JSP848.ReplayFullBlock215.Replay
import JSP848.FullDiagonal.Group017
import JSP848.ProgressionCoverage

set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0

namespace JSP848.FullCoverage

#time theorem block000272 : RawReplay.checkRootCoverage
    ReplayFullBlock215.snapshot 33554432
    (diagonalRootsFrom 17825797 FullDiagonal.block000272.entries) = true := by
  apply RawReplay.checkRootCoverageBalanced_sound (fuel := 27)
  decide +kernel

#time theorem block000273 : RawReplay.checkRootCoverage
    ReplayFullBlock215.snapshot 33554432
    (diagonalRootsFrom 17891333 FullDiagonal.block000273.entries) = true := by
  apply RawReplay.checkRootCoverageBalanced_sound (fuel := 27)
  decide +kernel

#time theorem block000274 : RawReplay.checkRootCoverage
    ReplayFullBlock215.snapshot 33554432
    (diagonalRootsFrom 17956869 FullDiagonal.block000274.entries) = true := by
  apply RawReplay.checkRootCoverageBalanced_sound (fuel := 27)
  decide +kernel

#time theorem block000275 : RawReplay.checkRootCoverage
    ReplayFullBlock215.snapshot 33554432
    (diagonalRootsFrom 18022405 FullDiagonal.block000275.entries) = true := by
  apply RawReplay.checkRootCoverageBalanced_sound (fuel := 27)
  decide +kernel

#time theorem block000276 : RawReplay.checkRootCoverage
    ReplayFullBlock215.snapshot 33554432
    (diagonalRootsFrom 18087941 FullDiagonal.block000276.entries) = true := by
  apply RawReplay.checkRootCoverageBalanced_sound (fuel := 27)
  decide +kernel

#time theorem block000277 : RawReplay.checkRootCoverage
    ReplayFullBlock215.snapshot 33554432
    (diagonalRootsFrom 18153477 FullDiagonal.block000277.entries) = true := by
  apply RawReplay.checkRootCoverageBalanced_sound (fuel := 27)
  decide +kernel

#time theorem block000278 : RawReplay.checkRootCoverage
    ReplayFullBlock215.snapshot 33554432
    (diagonalRootsFrom 18219013 FullDiagonal.block000278.entries) = true := by
  apply RawReplay.checkRootCoverageBalanced_sound (fuel := 27)
  decide +kernel

#time theorem block000279 : RawReplay.checkRootCoverage
    ReplayFullBlock215.snapshot 33554432
    (diagonalRootsFrom 18284549 FullDiagonal.block000279.entries) = true := by
  apply RawReplay.checkRootCoverageBalanced_sound (fuel := 27)
  decide +kernel

#time theorem block000280 : RawReplay.checkRootCoverage
    ReplayFullBlock215.snapshot 33554432
    (diagonalRootsFrom 18350085 FullDiagonal.block000280.entries) = true := by
  apply RawReplay.checkRootCoverageBalanced_sound (fuel := 27)
  decide +kernel

#time theorem block000281 : RawReplay.checkRootCoverage
    ReplayFullBlock215.snapshot 33554432
    (diagonalRootsFrom 18415621 FullDiagonal.block000281.entries) = true := by
  apply RawReplay.checkRootCoverageBalanced_sound (fuel := 27)
  decide +kernel

#time theorem block000282 : RawReplay.checkRootCoverage
    ReplayFullBlock215.snapshot 33554432
    (diagonalRootsFrom 18481157 FullDiagonal.block000282.entries) = true := by
  apply RawReplay.checkRootCoverageBalanced_sound (fuel := 27)
  decide +kernel

#time theorem block000283 : RawReplay.checkRootCoverage
    ReplayFullBlock215.snapshot 33554432
    (diagonalRootsFrom 18546693 FullDiagonal.block000283.entries) = true := by
  apply RawReplay.checkRootCoverageBalanced_sound (fuel := 27)
  decide +kernel

#time theorem block000284 : RawReplay.checkRootCoverage
    ReplayFullBlock215.snapshot 33554432
    (diagonalRootsFrom 18612229 FullDiagonal.block000284.entries) = true := by
  apply RawReplay.checkRootCoverageBalanced_sound (fuel := 27)
  decide +kernel

#time theorem block000285 : RawReplay.checkRootCoverage
    ReplayFullBlock215.snapshot 33554432
    (diagonalRootsFrom 18677765 FullDiagonal.block000285.entries) = true := by
  apply RawReplay.checkRootCoverageBalanced_sound (fuel := 27)
  decide +kernel

#time theorem block000286 : RawReplay.checkRootCoverage
    ReplayFullBlock215.snapshot 33554432
    (diagonalRootsFrom 18743301 FullDiagonal.block000286.entries) = true := by
  apply RawReplay.checkRootCoverageBalanced_sound (fuel := 27)
  decide +kernel

#time theorem block000287 : RawReplay.checkRootCoverage
    ReplayFullBlock215.snapshot 33554432
    (diagonalRootsFrom 18808837 FullDiagonal.block000287.entries) = true := by
  apply RawReplay.checkRootCoverageBalanced_sound (fuel := 27)
  decide +kernel

theorem group017 : RawReplay.checkRootCoverage
    ReplayFullBlock215.snapshot 33554432
    (diagonalRootsFrom 17825797 FullDiagonal.group017.entries) = true :=
  (CheckedDiagonalBlock.rootCoverage_append
    ReplayFullBlock215.snapshot 33554432 ((((((((((((((FullDiagonal.block000272.append FullDiagonal.block000273).append FullDiagonal.block000274).append FullDiagonal.block000275).append FullDiagonal.block000276).append FullDiagonal.block000277).append FullDiagonal.block000278).append FullDiagonal.block000279).append FullDiagonal.block000280).append FullDiagonal.block000281).append FullDiagonal.block000282).append FullDiagonal.block000283).append FullDiagonal.block000284).append FullDiagonal.block000285).append FullDiagonal.block000286) FullDiagonal.block000287
    (CheckedDiagonalBlock.rootCoverage_append
    ReplayFullBlock215.snapshot 33554432 (((((((((((((FullDiagonal.block000272.append FullDiagonal.block000273).append FullDiagonal.block000274).append FullDiagonal.block000275).append FullDiagonal.block000276).append FullDiagonal.block000277).append FullDiagonal.block000278).append FullDiagonal.block000279).append FullDiagonal.block000280).append FullDiagonal.block000281).append FullDiagonal.block000282).append FullDiagonal.block000283).append FullDiagonal.block000284).append FullDiagonal.block000285) FullDiagonal.block000286
    (CheckedDiagonalBlock.rootCoverage_append
    ReplayFullBlock215.snapshot 33554432 ((((((((((((FullDiagonal.block000272.append FullDiagonal.block000273).append FullDiagonal.block000274).append FullDiagonal.block000275).append FullDiagonal.block000276).append FullDiagonal.block000277).append FullDiagonal.block000278).append FullDiagonal.block000279).append FullDiagonal.block000280).append FullDiagonal.block000281).append FullDiagonal.block000282).append FullDiagonal.block000283).append FullDiagonal.block000284) FullDiagonal.block000285
    (CheckedDiagonalBlock.rootCoverage_append
    ReplayFullBlock215.snapshot 33554432 (((((((((((FullDiagonal.block000272.append FullDiagonal.block000273).append FullDiagonal.block000274).append FullDiagonal.block000275).append FullDiagonal.block000276).append FullDiagonal.block000277).append FullDiagonal.block000278).append FullDiagonal.block000279).append FullDiagonal.block000280).append FullDiagonal.block000281).append FullDiagonal.block000282).append FullDiagonal.block000283) FullDiagonal.block000284
    (CheckedDiagonalBlock.rootCoverage_append
    ReplayFullBlock215.snapshot 33554432 ((((((((((FullDiagonal.block000272.append FullDiagonal.block000273).append FullDiagonal.block000274).append FullDiagonal.block000275).append FullDiagonal.block000276).append FullDiagonal.block000277).append FullDiagonal.block000278).append FullDiagonal.block000279).append FullDiagonal.block000280).append FullDiagonal.block000281).append FullDiagonal.block000282) FullDiagonal.block000283
    (CheckedDiagonalBlock.rootCoverage_append
    ReplayFullBlock215.snapshot 33554432 (((((((((FullDiagonal.block000272.append FullDiagonal.block000273).append FullDiagonal.block000274).append FullDiagonal.block000275).append FullDiagonal.block000276).append FullDiagonal.block000277).append FullDiagonal.block000278).append FullDiagonal.block000279).append FullDiagonal.block000280).append FullDiagonal.block000281) FullDiagonal.block000282
    (CheckedDiagonalBlock.rootCoverage_append
    ReplayFullBlock215.snapshot 33554432 ((((((((FullDiagonal.block000272.append FullDiagonal.block000273).append FullDiagonal.block000274).append FullDiagonal.block000275).append FullDiagonal.block000276).append FullDiagonal.block000277).append FullDiagonal.block000278).append FullDiagonal.block000279).append FullDiagonal.block000280) FullDiagonal.block000281
    (CheckedDiagonalBlock.rootCoverage_append
    ReplayFullBlock215.snapshot 33554432 (((((((FullDiagonal.block000272.append FullDiagonal.block000273).append FullDiagonal.block000274).append FullDiagonal.block000275).append FullDiagonal.block000276).append FullDiagonal.block000277).append FullDiagonal.block000278).append FullDiagonal.block000279) FullDiagonal.block000280
    (CheckedDiagonalBlock.rootCoverage_append
    ReplayFullBlock215.snapshot 33554432 ((((((FullDiagonal.block000272.append FullDiagonal.block000273).append FullDiagonal.block000274).append FullDiagonal.block000275).append FullDiagonal.block000276).append FullDiagonal.block000277).append FullDiagonal.block000278) FullDiagonal.block000279
    (CheckedDiagonalBlock.rootCoverage_append
    ReplayFullBlock215.snapshot 33554432 (((((FullDiagonal.block000272.append FullDiagonal.block000273).append FullDiagonal.block000274).append FullDiagonal.block000275).append FullDiagonal.block000276).append FullDiagonal.block000277) FullDiagonal.block000278
    (CheckedDiagonalBlock.rootCoverage_append
    ReplayFullBlock215.snapshot 33554432 ((((FullDiagonal.block000272.append FullDiagonal.block000273).append FullDiagonal.block000274).append FullDiagonal.block000275).append FullDiagonal.block000276) FullDiagonal.block000277
    (CheckedDiagonalBlock.rootCoverage_append
    ReplayFullBlock215.snapshot 33554432 (((FullDiagonal.block000272.append FullDiagonal.block000273).append FullDiagonal.block000274).append FullDiagonal.block000275) FullDiagonal.block000276
    (CheckedDiagonalBlock.rootCoverage_append
    ReplayFullBlock215.snapshot 33554432 ((FullDiagonal.block000272.append FullDiagonal.block000273).append FullDiagonal.block000274) FullDiagonal.block000275
    (CheckedDiagonalBlock.rootCoverage_append
    ReplayFullBlock215.snapshot 33554432 (FullDiagonal.block000272.append FullDiagonal.block000273) FullDiagonal.block000274
    (CheckedDiagonalBlock.rootCoverage_append
    ReplayFullBlock215.snapshot 33554432 FullDiagonal.block000272 FullDiagonal.block000273
    block000272 block000273) block000274) block000275) block000276) block000277) block000278) block000279) block000280) block000281) block000282) block000283) block000284) block000285) block000286) block000287)

end JSP848.FullCoverage
