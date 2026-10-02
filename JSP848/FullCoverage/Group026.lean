import JSP848.ReplayFullBlock215.Replay
import JSP848.FullDiagonal.Group026
import JSP848.ProgressionCoverage

set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0

namespace JSP848.FullCoverage

#time theorem block000416 : RawReplay.checkRootCoverage
    ReplayFullBlock215.snapshot 33554432
    (diagonalRootsFrom 27262981 FullDiagonal.block000416.entries) = true := by
  apply RawReplay.checkRootCoverageBalanced_sound (fuel := 27)
  decide +kernel

#time theorem block000417 : RawReplay.checkRootCoverage
    ReplayFullBlock215.snapshot 33554432
    (diagonalRootsFrom 27328517 FullDiagonal.block000417.entries) = true := by
  apply RawReplay.checkRootCoverageBalanced_sound (fuel := 27)
  decide +kernel

#time theorem block000418 : RawReplay.checkRootCoverage
    ReplayFullBlock215.snapshot 33554432
    (diagonalRootsFrom 27394053 FullDiagonal.block000418.entries) = true := by
  apply RawReplay.checkRootCoverageBalanced_sound (fuel := 27)
  decide +kernel

#time theorem block000419 : RawReplay.checkRootCoverage
    ReplayFullBlock215.snapshot 33554432
    (diagonalRootsFrom 27459589 FullDiagonal.block000419.entries) = true := by
  apply RawReplay.checkRootCoverageBalanced_sound (fuel := 27)
  decide +kernel

#time theorem block000420 : RawReplay.checkRootCoverage
    ReplayFullBlock215.snapshot 33554432
    (diagonalRootsFrom 27525125 FullDiagonal.block000420.entries) = true := by
  apply RawReplay.checkRootCoverageBalanced_sound (fuel := 27)
  decide +kernel

#time theorem block000421 : RawReplay.checkRootCoverage
    ReplayFullBlock215.snapshot 33554432
    (diagonalRootsFrom 27590661 FullDiagonal.block000421.entries) = true := by
  apply RawReplay.checkRootCoverageBalanced_sound (fuel := 27)
  decide +kernel

#time theorem block000422 : RawReplay.checkRootCoverage
    ReplayFullBlock215.snapshot 33554432
    (diagonalRootsFrom 27656197 FullDiagonal.block000422.entries) = true := by
  apply RawReplay.checkRootCoverageBalanced_sound (fuel := 27)
  decide +kernel

#time theorem block000423 : RawReplay.checkRootCoverage
    ReplayFullBlock215.snapshot 33554432
    (diagonalRootsFrom 27721733 FullDiagonal.block000423.entries) = true := by
  apply RawReplay.checkRootCoverageBalanced_sound (fuel := 27)
  decide +kernel

#time theorem block000424 : RawReplay.checkRootCoverage
    ReplayFullBlock215.snapshot 33554432
    (diagonalRootsFrom 27787269 FullDiagonal.block000424.entries) = true := by
  apply RawReplay.checkRootCoverageBalanced_sound (fuel := 27)
  decide +kernel

#time theorem block000425 : RawReplay.checkRootCoverage
    ReplayFullBlock215.snapshot 33554432
    (diagonalRootsFrom 27852805 FullDiagonal.block000425.entries) = true := by
  apply RawReplay.checkRootCoverageBalanced_sound (fuel := 27)
  decide +kernel

#time theorem block000426 : RawReplay.checkRootCoverage
    ReplayFullBlock215.snapshot 33554432
    (diagonalRootsFrom 27918341 FullDiagonal.block000426.entries) = true := by
  apply RawReplay.checkRootCoverageBalanced_sound (fuel := 27)
  decide +kernel

#time theorem block000427 : RawReplay.checkRootCoverage
    ReplayFullBlock215.snapshot 33554432
    (diagonalRootsFrom 27983877 FullDiagonal.block000427.entries) = true := by
  apply RawReplay.checkRootCoverageBalanced_sound (fuel := 27)
  decide +kernel

#time theorem block000428 : RawReplay.checkRootCoverage
    ReplayFullBlock215.snapshot 33554432
    (diagonalRootsFrom 28049413 FullDiagonal.block000428.entries) = true := by
  apply RawReplay.checkRootCoverageBalanced_sound (fuel := 27)
  decide +kernel

#time theorem block000429 : RawReplay.checkRootCoverage
    ReplayFullBlock215.snapshot 33554432
    (diagonalRootsFrom 28114949 FullDiagonal.block000429.entries) = true := by
  apply RawReplay.checkRootCoverageBalanced_sound (fuel := 27)
  decide +kernel

#time theorem block000430 : RawReplay.checkRootCoverage
    ReplayFullBlock215.snapshot 33554432
    (diagonalRootsFrom 28180485 FullDiagonal.block000430.entries) = true := by
  apply RawReplay.checkRootCoverageBalanced_sound (fuel := 27)
  decide +kernel

#time theorem block000431 : RawReplay.checkRootCoverage
    ReplayFullBlock215.snapshot 33554432
    (diagonalRootsFrom 28246021 FullDiagonal.block000431.entries) = true := by
  apply RawReplay.checkRootCoverageBalanced_sound (fuel := 27)
  decide +kernel

theorem group026 : RawReplay.checkRootCoverage
    ReplayFullBlock215.snapshot 33554432
    (diagonalRootsFrom 27262981 FullDiagonal.group026.entries) = true :=
  (CheckedDiagonalBlock.rootCoverage_append
    ReplayFullBlock215.snapshot 33554432 ((((((((((((((FullDiagonal.block000416.append FullDiagonal.block000417).append FullDiagonal.block000418).append FullDiagonal.block000419).append FullDiagonal.block000420).append FullDiagonal.block000421).append FullDiagonal.block000422).append FullDiagonal.block000423).append FullDiagonal.block000424).append FullDiagonal.block000425).append FullDiagonal.block000426).append FullDiagonal.block000427).append FullDiagonal.block000428).append FullDiagonal.block000429).append FullDiagonal.block000430) FullDiagonal.block000431
    (CheckedDiagonalBlock.rootCoverage_append
    ReplayFullBlock215.snapshot 33554432 (((((((((((((FullDiagonal.block000416.append FullDiagonal.block000417).append FullDiagonal.block000418).append FullDiagonal.block000419).append FullDiagonal.block000420).append FullDiagonal.block000421).append FullDiagonal.block000422).append FullDiagonal.block000423).append FullDiagonal.block000424).append FullDiagonal.block000425).append FullDiagonal.block000426).append FullDiagonal.block000427).append FullDiagonal.block000428).append FullDiagonal.block000429) FullDiagonal.block000430
    (CheckedDiagonalBlock.rootCoverage_append
    ReplayFullBlock215.snapshot 33554432 ((((((((((((FullDiagonal.block000416.append FullDiagonal.block000417).append FullDiagonal.block000418).append FullDiagonal.block000419).append FullDiagonal.block000420).append FullDiagonal.block000421).append FullDiagonal.block000422).append FullDiagonal.block000423).append FullDiagonal.block000424).append FullDiagonal.block000425).append FullDiagonal.block000426).append FullDiagonal.block000427).append FullDiagonal.block000428) FullDiagonal.block000429
    (CheckedDiagonalBlock.rootCoverage_append
    ReplayFullBlock215.snapshot 33554432 (((((((((((FullDiagonal.block000416.append FullDiagonal.block000417).append FullDiagonal.block000418).append FullDiagonal.block000419).append FullDiagonal.block000420).append FullDiagonal.block000421).append FullDiagonal.block000422).append FullDiagonal.block000423).append FullDiagonal.block000424).append FullDiagonal.block000425).append FullDiagonal.block000426).append FullDiagonal.block000427) FullDiagonal.block000428
    (CheckedDiagonalBlock.rootCoverage_append
    ReplayFullBlock215.snapshot 33554432 ((((((((((FullDiagonal.block000416.append FullDiagonal.block000417).append FullDiagonal.block000418).append FullDiagonal.block000419).append FullDiagonal.block000420).append FullDiagonal.block000421).append FullDiagonal.block000422).append FullDiagonal.block000423).append FullDiagonal.block000424).append FullDiagonal.block000425).append FullDiagonal.block000426) FullDiagonal.block000427
    (CheckedDiagonalBlock.rootCoverage_append
    ReplayFullBlock215.snapshot 33554432 (((((((((FullDiagonal.block000416.append FullDiagonal.block000417).append FullDiagonal.block000418).append FullDiagonal.block000419).append FullDiagonal.block000420).append FullDiagonal.block000421).append FullDiagonal.block000422).append FullDiagonal.block000423).append FullDiagonal.block000424).append FullDiagonal.block000425) FullDiagonal.block000426
    (CheckedDiagonalBlock.rootCoverage_append
    ReplayFullBlock215.snapshot 33554432 ((((((((FullDiagonal.block000416.append FullDiagonal.block000417).append FullDiagonal.block000418).append FullDiagonal.block000419).append FullDiagonal.block000420).append FullDiagonal.block000421).append FullDiagonal.block000422).append FullDiagonal.block000423).append FullDiagonal.block000424) FullDiagonal.block000425
    (CheckedDiagonalBlock.rootCoverage_append
    ReplayFullBlock215.snapshot 33554432 (((((((FullDiagonal.block000416.append FullDiagonal.block000417).append FullDiagonal.block000418).append FullDiagonal.block000419).append FullDiagonal.block000420).append FullDiagonal.block000421).append FullDiagonal.block000422).append FullDiagonal.block000423) FullDiagonal.block000424
    (CheckedDiagonalBlock.rootCoverage_append
    ReplayFullBlock215.snapshot 33554432 ((((((FullDiagonal.block000416.append FullDiagonal.block000417).append FullDiagonal.block000418).append FullDiagonal.block000419).append FullDiagonal.block000420).append FullDiagonal.block000421).append FullDiagonal.block000422) FullDiagonal.block000423
    (CheckedDiagonalBlock.rootCoverage_append
    ReplayFullBlock215.snapshot 33554432 (((((FullDiagonal.block000416.append FullDiagonal.block000417).append FullDiagonal.block000418).append FullDiagonal.block000419).append FullDiagonal.block000420).append FullDiagonal.block000421) FullDiagonal.block000422
    (CheckedDiagonalBlock.rootCoverage_append
    ReplayFullBlock215.snapshot 33554432 ((((FullDiagonal.block000416.append FullDiagonal.block000417).append FullDiagonal.block000418).append FullDiagonal.block000419).append FullDiagonal.block000420) FullDiagonal.block000421
    (CheckedDiagonalBlock.rootCoverage_append
    ReplayFullBlock215.snapshot 33554432 (((FullDiagonal.block000416.append FullDiagonal.block000417).append FullDiagonal.block000418).append FullDiagonal.block000419) FullDiagonal.block000420
    (CheckedDiagonalBlock.rootCoverage_append
    ReplayFullBlock215.snapshot 33554432 ((FullDiagonal.block000416.append FullDiagonal.block000417).append FullDiagonal.block000418) FullDiagonal.block000419
    (CheckedDiagonalBlock.rootCoverage_append
    ReplayFullBlock215.snapshot 33554432 (FullDiagonal.block000416.append FullDiagonal.block000417) FullDiagonal.block000418
    (CheckedDiagonalBlock.rootCoverage_append
    ReplayFullBlock215.snapshot 33554432 FullDiagonal.block000416 FullDiagonal.block000417
    block000416 block000417) block000418) block000419) block000420) block000421) block000422) block000423) block000424) block000425) block000426) block000427) block000428) block000429) block000430) block000431)

end JSP848.FullCoverage
