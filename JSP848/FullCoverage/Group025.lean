import JSP848.ReplayFullBlock215.Replay
import JSP848.FullDiagonal.Group025
import JSP848.ProgressionCoverage

set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0

namespace JSP848.FullCoverage

#time theorem block000400 : RawReplay.checkRootCoverage
    ReplayFullBlock215.snapshot 33554432
    (diagonalRootsFrom 26214405 FullDiagonal.block000400.entries) = true := by
  apply RawReplay.checkRootCoverageBalanced_sound (fuel := 27)
  decide +kernel

#time theorem block000401 : RawReplay.checkRootCoverage
    ReplayFullBlock215.snapshot 33554432
    (diagonalRootsFrom 26279941 FullDiagonal.block000401.entries) = true := by
  apply RawReplay.checkRootCoverageBalanced_sound (fuel := 27)
  decide +kernel

#time theorem block000402 : RawReplay.checkRootCoverage
    ReplayFullBlock215.snapshot 33554432
    (diagonalRootsFrom 26345477 FullDiagonal.block000402.entries) = true := by
  apply RawReplay.checkRootCoverageBalanced_sound (fuel := 27)
  decide +kernel

#time theorem block000403 : RawReplay.checkRootCoverage
    ReplayFullBlock215.snapshot 33554432
    (diagonalRootsFrom 26411013 FullDiagonal.block000403.entries) = true := by
  apply RawReplay.checkRootCoverageBalanced_sound (fuel := 27)
  decide +kernel

#time theorem block000404 : RawReplay.checkRootCoverage
    ReplayFullBlock215.snapshot 33554432
    (diagonalRootsFrom 26476549 FullDiagonal.block000404.entries) = true := by
  apply RawReplay.checkRootCoverageBalanced_sound (fuel := 27)
  decide +kernel

#time theorem block000405 : RawReplay.checkRootCoverage
    ReplayFullBlock215.snapshot 33554432
    (diagonalRootsFrom 26542085 FullDiagonal.block000405.entries) = true := by
  apply RawReplay.checkRootCoverageBalanced_sound (fuel := 27)
  decide +kernel

#time theorem block000406 : RawReplay.checkRootCoverage
    ReplayFullBlock215.snapshot 33554432
    (diagonalRootsFrom 26607621 FullDiagonal.block000406.entries) = true := by
  apply RawReplay.checkRootCoverageBalanced_sound (fuel := 27)
  decide +kernel

#time theorem block000407 : RawReplay.checkRootCoverage
    ReplayFullBlock215.snapshot 33554432
    (diagonalRootsFrom 26673157 FullDiagonal.block000407.entries) = true := by
  apply RawReplay.checkRootCoverageBalanced_sound (fuel := 27)
  decide +kernel

#time theorem block000408 : RawReplay.checkRootCoverage
    ReplayFullBlock215.snapshot 33554432
    (diagonalRootsFrom 26738693 FullDiagonal.block000408.entries) = true := by
  apply RawReplay.checkRootCoverageBalanced_sound (fuel := 27)
  decide +kernel

#time theorem block000409 : RawReplay.checkRootCoverage
    ReplayFullBlock215.snapshot 33554432
    (diagonalRootsFrom 26804229 FullDiagonal.block000409.entries) = true := by
  apply RawReplay.checkRootCoverageBalanced_sound (fuel := 27)
  decide +kernel

#time theorem block000410 : RawReplay.checkRootCoverage
    ReplayFullBlock215.snapshot 33554432
    (diagonalRootsFrom 26869765 FullDiagonal.block000410.entries) = true := by
  apply RawReplay.checkRootCoverageBalanced_sound (fuel := 27)
  decide +kernel

#time theorem block000411 : RawReplay.checkRootCoverage
    ReplayFullBlock215.snapshot 33554432
    (diagonalRootsFrom 26935301 FullDiagonal.block000411.entries) = true := by
  apply RawReplay.checkRootCoverageBalanced_sound (fuel := 27)
  decide +kernel

#time theorem block000412 : RawReplay.checkRootCoverage
    ReplayFullBlock215.snapshot 33554432
    (diagonalRootsFrom 27000837 FullDiagonal.block000412.entries) = true := by
  apply RawReplay.checkRootCoverageBalanced_sound (fuel := 27)
  decide +kernel

#time theorem block000413 : RawReplay.checkRootCoverage
    ReplayFullBlock215.snapshot 33554432
    (diagonalRootsFrom 27066373 FullDiagonal.block000413.entries) = true := by
  apply RawReplay.checkRootCoverageBalanced_sound (fuel := 27)
  decide +kernel

#time theorem block000414 : RawReplay.checkRootCoverage
    ReplayFullBlock215.snapshot 33554432
    (diagonalRootsFrom 27131909 FullDiagonal.block000414.entries) = true := by
  apply RawReplay.checkRootCoverageBalanced_sound (fuel := 27)
  decide +kernel

#time theorem block000415 : RawReplay.checkRootCoverage
    ReplayFullBlock215.snapshot 33554432
    (diagonalRootsFrom 27197445 FullDiagonal.block000415.entries) = true := by
  apply RawReplay.checkRootCoverageBalanced_sound (fuel := 27)
  decide +kernel

theorem group025 : RawReplay.checkRootCoverage
    ReplayFullBlock215.snapshot 33554432
    (diagonalRootsFrom 26214405 FullDiagonal.group025.entries) = true :=
  (CheckedDiagonalBlock.rootCoverage_append
    ReplayFullBlock215.snapshot 33554432 ((((((((((((((FullDiagonal.block000400.append FullDiagonal.block000401).append FullDiagonal.block000402).append FullDiagonal.block000403).append FullDiagonal.block000404).append FullDiagonal.block000405).append FullDiagonal.block000406).append FullDiagonal.block000407).append FullDiagonal.block000408).append FullDiagonal.block000409).append FullDiagonal.block000410).append FullDiagonal.block000411).append FullDiagonal.block000412).append FullDiagonal.block000413).append FullDiagonal.block000414) FullDiagonal.block000415
    (CheckedDiagonalBlock.rootCoverage_append
    ReplayFullBlock215.snapshot 33554432 (((((((((((((FullDiagonal.block000400.append FullDiagonal.block000401).append FullDiagonal.block000402).append FullDiagonal.block000403).append FullDiagonal.block000404).append FullDiagonal.block000405).append FullDiagonal.block000406).append FullDiagonal.block000407).append FullDiagonal.block000408).append FullDiagonal.block000409).append FullDiagonal.block000410).append FullDiagonal.block000411).append FullDiagonal.block000412).append FullDiagonal.block000413) FullDiagonal.block000414
    (CheckedDiagonalBlock.rootCoverage_append
    ReplayFullBlock215.snapshot 33554432 ((((((((((((FullDiagonal.block000400.append FullDiagonal.block000401).append FullDiagonal.block000402).append FullDiagonal.block000403).append FullDiagonal.block000404).append FullDiagonal.block000405).append FullDiagonal.block000406).append FullDiagonal.block000407).append FullDiagonal.block000408).append FullDiagonal.block000409).append FullDiagonal.block000410).append FullDiagonal.block000411).append FullDiagonal.block000412) FullDiagonal.block000413
    (CheckedDiagonalBlock.rootCoverage_append
    ReplayFullBlock215.snapshot 33554432 (((((((((((FullDiagonal.block000400.append FullDiagonal.block000401).append FullDiagonal.block000402).append FullDiagonal.block000403).append FullDiagonal.block000404).append FullDiagonal.block000405).append FullDiagonal.block000406).append FullDiagonal.block000407).append FullDiagonal.block000408).append FullDiagonal.block000409).append FullDiagonal.block000410).append FullDiagonal.block000411) FullDiagonal.block000412
    (CheckedDiagonalBlock.rootCoverage_append
    ReplayFullBlock215.snapshot 33554432 ((((((((((FullDiagonal.block000400.append FullDiagonal.block000401).append FullDiagonal.block000402).append FullDiagonal.block000403).append FullDiagonal.block000404).append FullDiagonal.block000405).append FullDiagonal.block000406).append FullDiagonal.block000407).append FullDiagonal.block000408).append FullDiagonal.block000409).append FullDiagonal.block000410) FullDiagonal.block000411
    (CheckedDiagonalBlock.rootCoverage_append
    ReplayFullBlock215.snapshot 33554432 (((((((((FullDiagonal.block000400.append FullDiagonal.block000401).append FullDiagonal.block000402).append FullDiagonal.block000403).append FullDiagonal.block000404).append FullDiagonal.block000405).append FullDiagonal.block000406).append FullDiagonal.block000407).append FullDiagonal.block000408).append FullDiagonal.block000409) FullDiagonal.block000410
    (CheckedDiagonalBlock.rootCoverage_append
    ReplayFullBlock215.snapshot 33554432 ((((((((FullDiagonal.block000400.append FullDiagonal.block000401).append FullDiagonal.block000402).append FullDiagonal.block000403).append FullDiagonal.block000404).append FullDiagonal.block000405).append FullDiagonal.block000406).append FullDiagonal.block000407).append FullDiagonal.block000408) FullDiagonal.block000409
    (CheckedDiagonalBlock.rootCoverage_append
    ReplayFullBlock215.snapshot 33554432 (((((((FullDiagonal.block000400.append FullDiagonal.block000401).append FullDiagonal.block000402).append FullDiagonal.block000403).append FullDiagonal.block000404).append FullDiagonal.block000405).append FullDiagonal.block000406).append FullDiagonal.block000407) FullDiagonal.block000408
    (CheckedDiagonalBlock.rootCoverage_append
    ReplayFullBlock215.snapshot 33554432 ((((((FullDiagonal.block000400.append FullDiagonal.block000401).append FullDiagonal.block000402).append FullDiagonal.block000403).append FullDiagonal.block000404).append FullDiagonal.block000405).append FullDiagonal.block000406) FullDiagonal.block000407
    (CheckedDiagonalBlock.rootCoverage_append
    ReplayFullBlock215.snapshot 33554432 (((((FullDiagonal.block000400.append FullDiagonal.block000401).append FullDiagonal.block000402).append FullDiagonal.block000403).append FullDiagonal.block000404).append FullDiagonal.block000405) FullDiagonal.block000406
    (CheckedDiagonalBlock.rootCoverage_append
    ReplayFullBlock215.snapshot 33554432 ((((FullDiagonal.block000400.append FullDiagonal.block000401).append FullDiagonal.block000402).append FullDiagonal.block000403).append FullDiagonal.block000404) FullDiagonal.block000405
    (CheckedDiagonalBlock.rootCoverage_append
    ReplayFullBlock215.snapshot 33554432 (((FullDiagonal.block000400.append FullDiagonal.block000401).append FullDiagonal.block000402).append FullDiagonal.block000403) FullDiagonal.block000404
    (CheckedDiagonalBlock.rootCoverage_append
    ReplayFullBlock215.snapshot 33554432 ((FullDiagonal.block000400.append FullDiagonal.block000401).append FullDiagonal.block000402) FullDiagonal.block000403
    (CheckedDiagonalBlock.rootCoverage_append
    ReplayFullBlock215.snapshot 33554432 (FullDiagonal.block000400.append FullDiagonal.block000401) FullDiagonal.block000402
    (CheckedDiagonalBlock.rootCoverage_append
    ReplayFullBlock215.snapshot 33554432 FullDiagonal.block000400 FullDiagonal.block000401
    block000400 block000401) block000402) block000403) block000404) block000405) block000406) block000407) block000408) block000409) block000410) block000411) block000412) block000413) block000414) block000415)

end JSP848.FullCoverage
