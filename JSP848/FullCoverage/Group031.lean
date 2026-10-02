import JSP848.ReplayFullBlock215.Replay
import JSP848.FullDiagonal.Group031
import JSP848.ProgressionCoverage

set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0

namespace JSP848.FullCoverage

#time theorem block000496 : RawReplay.checkRootCoverage
    ReplayFullBlock215.snapshot 33554432
    (diagonalRootsFrom 32505861 FullDiagonal.block000496.entries) = true := by
  apply RawReplay.checkRootCoverageBalanced_sound (fuel := 27)
  decide +kernel

#time theorem block000497 : RawReplay.checkRootCoverage
    ReplayFullBlock215.snapshot 33554432
    (diagonalRootsFrom 32571397 FullDiagonal.block000497.entries) = true := by
  apply RawReplay.checkRootCoverageBalanced_sound (fuel := 27)
  decide +kernel

#time theorem block000498 : RawReplay.checkRootCoverage
    ReplayFullBlock215.snapshot 33554432
    (diagonalRootsFrom 32636933 FullDiagonal.block000498.entries) = true := by
  apply RawReplay.checkRootCoverageBalanced_sound (fuel := 27)
  decide +kernel

#time theorem block000499 : RawReplay.checkRootCoverage
    ReplayFullBlock215.snapshot 33554432
    (diagonalRootsFrom 32702469 FullDiagonal.block000499.entries) = true := by
  apply RawReplay.checkRootCoverageBalanced_sound (fuel := 27)
  decide +kernel

#time theorem block000500 : RawReplay.checkRootCoverage
    ReplayFullBlock215.snapshot 33554432
    (diagonalRootsFrom 32768005 FullDiagonal.block000500.entries) = true := by
  apply RawReplay.checkRootCoverageBalanced_sound (fuel := 27)
  decide +kernel

#time theorem block000501 : RawReplay.checkRootCoverage
    ReplayFullBlock215.snapshot 33554432
    (diagonalRootsFrom 32833541 FullDiagonal.block000501.entries) = true := by
  apply RawReplay.checkRootCoverageBalanced_sound (fuel := 27)
  decide +kernel

#time theorem block000502 : RawReplay.checkRootCoverage
    ReplayFullBlock215.snapshot 33554432
    (diagonalRootsFrom 32899077 FullDiagonal.block000502.entries) = true := by
  apply RawReplay.checkRootCoverageBalanced_sound (fuel := 27)
  decide +kernel

#time theorem block000503 : RawReplay.checkRootCoverage
    ReplayFullBlock215.snapshot 33554432
    (diagonalRootsFrom 32964613 FullDiagonal.block000503.entries) = true := by
  apply RawReplay.checkRootCoverageBalanced_sound (fuel := 27)
  decide +kernel

#time theorem block000504 : RawReplay.checkRootCoverage
    ReplayFullBlock215.snapshot 33554432
    (diagonalRootsFrom 33030149 FullDiagonal.block000504.entries) = true := by
  apply RawReplay.checkRootCoverageBalanced_sound (fuel := 27)
  decide +kernel

#time theorem block000505 : RawReplay.checkRootCoverage
    ReplayFullBlock215.snapshot 33554432
    (diagonalRootsFrom 33095685 FullDiagonal.block000505.entries) = true := by
  apply RawReplay.checkRootCoverageBalanced_sound (fuel := 27)
  decide +kernel

#time theorem block000506 : RawReplay.checkRootCoverage
    ReplayFullBlock215.snapshot 33554432
    (diagonalRootsFrom 33161221 FullDiagonal.block000506.entries) = true := by
  apply RawReplay.checkRootCoverageBalanced_sound (fuel := 27)
  decide +kernel

#time theorem block000507 : RawReplay.checkRootCoverage
    ReplayFullBlock215.snapshot 33554432
    (diagonalRootsFrom 33226757 FullDiagonal.block000507.entries) = true := by
  apply RawReplay.checkRootCoverageBalanced_sound (fuel := 27)
  decide +kernel

#time theorem block000508 : RawReplay.checkRootCoverage
    ReplayFullBlock215.snapshot 33554432
    (diagonalRootsFrom 33292293 FullDiagonal.block000508.entries) = true := by
  apply RawReplay.checkRootCoverageBalanced_sound (fuel := 27)
  decide +kernel

#time theorem block000509 : RawReplay.checkRootCoverage
    ReplayFullBlock215.snapshot 33554432
    (diagonalRootsFrom 33357829 FullDiagonal.block000509.entries) = true := by
  apply RawReplay.checkRootCoverageBalanced_sound (fuel := 27)
  decide +kernel

#time theorem block000510 : RawReplay.checkRootCoverage
    ReplayFullBlock215.snapshot 33554432
    (diagonalRootsFrom 33423365 FullDiagonal.block000510.entries) = true := by
  apply RawReplay.checkRootCoverageBalanced_sound (fuel := 27)
  decide +kernel

#time theorem block000511 : RawReplay.checkRootCoverage
    ReplayFullBlock215.snapshot 33554432
    (diagonalRootsFrom 33488901 FullDiagonal.block000511.entries) = true := by
  apply RawReplay.checkRootCoverageBalanced_sound (fuel := 27)
  decide +kernel

theorem group031 : RawReplay.checkRootCoverage
    ReplayFullBlock215.snapshot 33554432
    (diagonalRootsFrom 32505861 FullDiagonal.group031.entries) = true :=
  (CheckedDiagonalBlock.rootCoverage_append
    ReplayFullBlock215.snapshot 33554432 ((((((((((((((FullDiagonal.block000496.append FullDiagonal.block000497).append FullDiagonal.block000498).append FullDiagonal.block000499).append FullDiagonal.block000500).append FullDiagonal.block000501).append FullDiagonal.block000502).append FullDiagonal.block000503).append FullDiagonal.block000504).append FullDiagonal.block000505).append FullDiagonal.block000506).append FullDiagonal.block000507).append FullDiagonal.block000508).append FullDiagonal.block000509).append FullDiagonal.block000510) FullDiagonal.block000511
    (CheckedDiagonalBlock.rootCoverage_append
    ReplayFullBlock215.snapshot 33554432 (((((((((((((FullDiagonal.block000496.append FullDiagonal.block000497).append FullDiagonal.block000498).append FullDiagonal.block000499).append FullDiagonal.block000500).append FullDiagonal.block000501).append FullDiagonal.block000502).append FullDiagonal.block000503).append FullDiagonal.block000504).append FullDiagonal.block000505).append FullDiagonal.block000506).append FullDiagonal.block000507).append FullDiagonal.block000508).append FullDiagonal.block000509) FullDiagonal.block000510
    (CheckedDiagonalBlock.rootCoverage_append
    ReplayFullBlock215.snapshot 33554432 ((((((((((((FullDiagonal.block000496.append FullDiagonal.block000497).append FullDiagonal.block000498).append FullDiagonal.block000499).append FullDiagonal.block000500).append FullDiagonal.block000501).append FullDiagonal.block000502).append FullDiagonal.block000503).append FullDiagonal.block000504).append FullDiagonal.block000505).append FullDiagonal.block000506).append FullDiagonal.block000507).append FullDiagonal.block000508) FullDiagonal.block000509
    (CheckedDiagonalBlock.rootCoverage_append
    ReplayFullBlock215.snapshot 33554432 (((((((((((FullDiagonal.block000496.append FullDiagonal.block000497).append FullDiagonal.block000498).append FullDiagonal.block000499).append FullDiagonal.block000500).append FullDiagonal.block000501).append FullDiagonal.block000502).append FullDiagonal.block000503).append FullDiagonal.block000504).append FullDiagonal.block000505).append FullDiagonal.block000506).append FullDiagonal.block000507) FullDiagonal.block000508
    (CheckedDiagonalBlock.rootCoverage_append
    ReplayFullBlock215.snapshot 33554432 ((((((((((FullDiagonal.block000496.append FullDiagonal.block000497).append FullDiagonal.block000498).append FullDiagonal.block000499).append FullDiagonal.block000500).append FullDiagonal.block000501).append FullDiagonal.block000502).append FullDiagonal.block000503).append FullDiagonal.block000504).append FullDiagonal.block000505).append FullDiagonal.block000506) FullDiagonal.block000507
    (CheckedDiagonalBlock.rootCoverage_append
    ReplayFullBlock215.snapshot 33554432 (((((((((FullDiagonal.block000496.append FullDiagonal.block000497).append FullDiagonal.block000498).append FullDiagonal.block000499).append FullDiagonal.block000500).append FullDiagonal.block000501).append FullDiagonal.block000502).append FullDiagonal.block000503).append FullDiagonal.block000504).append FullDiagonal.block000505) FullDiagonal.block000506
    (CheckedDiagonalBlock.rootCoverage_append
    ReplayFullBlock215.snapshot 33554432 ((((((((FullDiagonal.block000496.append FullDiagonal.block000497).append FullDiagonal.block000498).append FullDiagonal.block000499).append FullDiagonal.block000500).append FullDiagonal.block000501).append FullDiagonal.block000502).append FullDiagonal.block000503).append FullDiagonal.block000504) FullDiagonal.block000505
    (CheckedDiagonalBlock.rootCoverage_append
    ReplayFullBlock215.snapshot 33554432 (((((((FullDiagonal.block000496.append FullDiagonal.block000497).append FullDiagonal.block000498).append FullDiagonal.block000499).append FullDiagonal.block000500).append FullDiagonal.block000501).append FullDiagonal.block000502).append FullDiagonal.block000503) FullDiagonal.block000504
    (CheckedDiagonalBlock.rootCoverage_append
    ReplayFullBlock215.snapshot 33554432 ((((((FullDiagonal.block000496.append FullDiagonal.block000497).append FullDiagonal.block000498).append FullDiagonal.block000499).append FullDiagonal.block000500).append FullDiagonal.block000501).append FullDiagonal.block000502) FullDiagonal.block000503
    (CheckedDiagonalBlock.rootCoverage_append
    ReplayFullBlock215.snapshot 33554432 (((((FullDiagonal.block000496.append FullDiagonal.block000497).append FullDiagonal.block000498).append FullDiagonal.block000499).append FullDiagonal.block000500).append FullDiagonal.block000501) FullDiagonal.block000502
    (CheckedDiagonalBlock.rootCoverage_append
    ReplayFullBlock215.snapshot 33554432 ((((FullDiagonal.block000496.append FullDiagonal.block000497).append FullDiagonal.block000498).append FullDiagonal.block000499).append FullDiagonal.block000500) FullDiagonal.block000501
    (CheckedDiagonalBlock.rootCoverage_append
    ReplayFullBlock215.snapshot 33554432 (((FullDiagonal.block000496.append FullDiagonal.block000497).append FullDiagonal.block000498).append FullDiagonal.block000499) FullDiagonal.block000500
    (CheckedDiagonalBlock.rootCoverage_append
    ReplayFullBlock215.snapshot 33554432 ((FullDiagonal.block000496.append FullDiagonal.block000497).append FullDiagonal.block000498) FullDiagonal.block000499
    (CheckedDiagonalBlock.rootCoverage_append
    ReplayFullBlock215.snapshot 33554432 (FullDiagonal.block000496.append FullDiagonal.block000497) FullDiagonal.block000498
    (CheckedDiagonalBlock.rootCoverage_append
    ReplayFullBlock215.snapshot 33554432 FullDiagonal.block000496 FullDiagonal.block000497
    block000496 block000497) block000498) block000499) block000500) block000501) block000502) block000503) block000504) block000505) block000506) block000507) block000508) block000509) block000510) block000511)

end JSP848.FullCoverage
