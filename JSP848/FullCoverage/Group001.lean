import JSP848.ReplayFullBlock215.Replay
import JSP848.FullDiagonal.Group001
import JSP848.ProgressionCoverage

set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0

namespace JSP848.FullCoverage

#time theorem block000016 : RawReplay.checkRootCoverage
    ReplayFullBlock215.snapshot 33554432
    (diagonalRootsFrom 1048581 FullDiagonal.block000016.entries) = true := by
  apply RawReplay.checkRootCoverageBalanced_sound (fuel := 27)
  decide +kernel

#time theorem block000017 : RawReplay.checkRootCoverage
    ReplayFullBlock215.snapshot 33554432
    (diagonalRootsFrom 1114117 FullDiagonal.block000017.entries) = true := by
  apply RawReplay.checkRootCoverageBalanced_sound (fuel := 27)
  decide +kernel

#time theorem block000018 : RawReplay.checkRootCoverage
    ReplayFullBlock215.snapshot 33554432
    (diagonalRootsFrom 1179653 FullDiagonal.block000018.entries) = true := by
  apply RawReplay.checkRootCoverageBalanced_sound (fuel := 27)
  decide +kernel

#time theorem block000019 : RawReplay.checkRootCoverage
    ReplayFullBlock215.snapshot 33554432
    (diagonalRootsFrom 1245189 FullDiagonal.block000019.entries) = true := by
  apply RawReplay.checkRootCoverageBalanced_sound (fuel := 27)
  decide +kernel

#time theorem block000020 : RawReplay.checkRootCoverage
    ReplayFullBlock215.snapshot 33554432
    (diagonalRootsFrom 1310725 FullDiagonal.block000020.entries) = true := by
  apply RawReplay.checkRootCoverageBalanced_sound (fuel := 27)
  decide +kernel

#time theorem block000021 : RawReplay.checkRootCoverage
    ReplayFullBlock215.snapshot 33554432
    (diagonalRootsFrom 1376261 FullDiagonal.block000021.entries) = true := by
  apply RawReplay.checkRootCoverageBalanced_sound (fuel := 27)
  decide +kernel

#time theorem block000022 : RawReplay.checkRootCoverage
    ReplayFullBlock215.snapshot 33554432
    (diagonalRootsFrom 1441797 FullDiagonal.block000022.entries) = true := by
  apply RawReplay.checkRootCoverageBalanced_sound (fuel := 27)
  decide +kernel

#time theorem block000023 : RawReplay.checkRootCoverage
    ReplayFullBlock215.snapshot 33554432
    (diagonalRootsFrom 1507333 FullDiagonal.block000023.entries) = true := by
  apply RawReplay.checkRootCoverageBalanced_sound (fuel := 27)
  decide +kernel

#time theorem block000024 : RawReplay.checkRootCoverage
    ReplayFullBlock215.snapshot 33554432
    (diagonalRootsFrom 1572869 FullDiagonal.block000024.entries) = true := by
  apply RawReplay.checkRootCoverageBalanced_sound (fuel := 27)
  decide +kernel

#time theorem block000025 : RawReplay.checkRootCoverage
    ReplayFullBlock215.snapshot 33554432
    (diagonalRootsFrom 1638405 FullDiagonal.block000025.entries) = true := by
  apply RawReplay.checkRootCoverageBalanced_sound (fuel := 27)
  decide +kernel

#time theorem block000026 : RawReplay.checkRootCoverage
    ReplayFullBlock215.snapshot 33554432
    (diagonalRootsFrom 1703941 FullDiagonal.block000026.entries) = true := by
  apply RawReplay.checkRootCoverageBalanced_sound (fuel := 27)
  decide +kernel

#time theorem block000027 : RawReplay.checkRootCoverage
    ReplayFullBlock215.snapshot 33554432
    (diagonalRootsFrom 1769477 FullDiagonal.block000027.entries) = true := by
  apply RawReplay.checkRootCoverageBalanced_sound (fuel := 27)
  decide +kernel

#time theorem block000028 : RawReplay.checkRootCoverage
    ReplayFullBlock215.snapshot 33554432
    (diagonalRootsFrom 1835013 FullDiagonal.block000028.entries) = true := by
  apply RawReplay.checkRootCoverageBalanced_sound (fuel := 27)
  decide +kernel

#time theorem block000029 : RawReplay.checkRootCoverage
    ReplayFullBlock215.snapshot 33554432
    (diagonalRootsFrom 1900549 FullDiagonal.block000029.entries) = true := by
  apply RawReplay.checkRootCoverageBalanced_sound (fuel := 27)
  decide +kernel

#time theorem block000030 : RawReplay.checkRootCoverage
    ReplayFullBlock215.snapshot 33554432
    (diagonalRootsFrom 1966085 FullDiagonal.block000030.entries) = true := by
  apply RawReplay.checkRootCoverageBalanced_sound (fuel := 27)
  decide +kernel

#time theorem block000031 : RawReplay.checkRootCoverage
    ReplayFullBlock215.snapshot 33554432
    (diagonalRootsFrom 2031621 FullDiagonal.block000031.entries) = true := by
  apply RawReplay.checkRootCoverageBalanced_sound (fuel := 27)
  decide +kernel

theorem group001 : RawReplay.checkRootCoverage
    ReplayFullBlock215.snapshot 33554432
    (diagonalRootsFrom 1048581 FullDiagonal.group001.entries) = true :=
  (CheckedDiagonalBlock.rootCoverage_append
    ReplayFullBlock215.snapshot 33554432 ((((((((((((((FullDiagonal.block000016.append FullDiagonal.block000017).append FullDiagonal.block000018).append FullDiagonal.block000019).append FullDiagonal.block000020).append FullDiagonal.block000021).append FullDiagonal.block000022).append FullDiagonal.block000023).append FullDiagonal.block000024).append FullDiagonal.block000025).append FullDiagonal.block000026).append FullDiagonal.block000027).append FullDiagonal.block000028).append FullDiagonal.block000029).append FullDiagonal.block000030) FullDiagonal.block000031
    (CheckedDiagonalBlock.rootCoverage_append
    ReplayFullBlock215.snapshot 33554432 (((((((((((((FullDiagonal.block000016.append FullDiagonal.block000017).append FullDiagonal.block000018).append FullDiagonal.block000019).append FullDiagonal.block000020).append FullDiagonal.block000021).append FullDiagonal.block000022).append FullDiagonal.block000023).append FullDiagonal.block000024).append FullDiagonal.block000025).append FullDiagonal.block000026).append FullDiagonal.block000027).append FullDiagonal.block000028).append FullDiagonal.block000029) FullDiagonal.block000030
    (CheckedDiagonalBlock.rootCoverage_append
    ReplayFullBlock215.snapshot 33554432 ((((((((((((FullDiagonal.block000016.append FullDiagonal.block000017).append FullDiagonal.block000018).append FullDiagonal.block000019).append FullDiagonal.block000020).append FullDiagonal.block000021).append FullDiagonal.block000022).append FullDiagonal.block000023).append FullDiagonal.block000024).append FullDiagonal.block000025).append FullDiagonal.block000026).append FullDiagonal.block000027).append FullDiagonal.block000028) FullDiagonal.block000029
    (CheckedDiagonalBlock.rootCoverage_append
    ReplayFullBlock215.snapshot 33554432 (((((((((((FullDiagonal.block000016.append FullDiagonal.block000017).append FullDiagonal.block000018).append FullDiagonal.block000019).append FullDiagonal.block000020).append FullDiagonal.block000021).append FullDiagonal.block000022).append FullDiagonal.block000023).append FullDiagonal.block000024).append FullDiagonal.block000025).append FullDiagonal.block000026).append FullDiagonal.block000027) FullDiagonal.block000028
    (CheckedDiagonalBlock.rootCoverage_append
    ReplayFullBlock215.snapshot 33554432 ((((((((((FullDiagonal.block000016.append FullDiagonal.block000017).append FullDiagonal.block000018).append FullDiagonal.block000019).append FullDiagonal.block000020).append FullDiagonal.block000021).append FullDiagonal.block000022).append FullDiagonal.block000023).append FullDiagonal.block000024).append FullDiagonal.block000025).append FullDiagonal.block000026) FullDiagonal.block000027
    (CheckedDiagonalBlock.rootCoverage_append
    ReplayFullBlock215.snapshot 33554432 (((((((((FullDiagonal.block000016.append FullDiagonal.block000017).append FullDiagonal.block000018).append FullDiagonal.block000019).append FullDiagonal.block000020).append FullDiagonal.block000021).append FullDiagonal.block000022).append FullDiagonal.block000023).append FullDiagonal.block000024).append FullDiagonal.block000025) FullDiagonal.block000026
    (CheckedDiagonalBlock.rootCoverage_append
    ReplayFullBlock215.snapshot 33554432 ((((((((FullDiagonal.block000016.append FullDiagonal.block000017).append FullDiagonal.block000018).append FullDiagonal.block000019).append FullDiagonal.block000020).append FullDiagonal.block000021).append FullDiagonal.block000022).append FullDiagonal.block000023).append FullDiagonal.block000024) FullDiagonal.block000025
    (CheckedDiagonalBlock.rootCoverage_append
    ReplayFullBlock215.snapshot 33554432 (((((((FullDiagonal.block000016.append FullDiagonal.block000017).append FullDiagonal.block000018).append FullDiagonal.block000019).append FullDiagonal.block000020).append FullDiagonal.block000021).append FullDiagonal.block000022).append FullDiagonal.block000023) FullDiagonal.block000024
    (CheckedDiagonalBlock.rootCoverage_append
    ReplayFullBlock215.snapshot 33554432 ((((((FullDiagonal.block000016.append FullDiagonal.block000017).append FullDiagonal.block000018).append FullDiagonal.block000019).append FullDiagonal.block000020).append FullDiagonal.block000021).append FullDiagonal.block000022) FullDiagonal.block000023
    (CheckedDiagonalBlock.rootCoverage_append
    ReplayFullBlock215.snapshot 33554432 (((((FullDiagonal.block000016.append FullDiagonal.block000017).append FullDiagonal.block000018).append FullDiagonal.block000019).append FullDiagonal.block000020).append FullDiagonal.block000021) FullDiagonal.block000022
    (CheckedDiagonalBlock.rootCoverage_append
    ReplayFullBlock215.snapshot 33554432 ((((FullDiagonal.block000016.append FullDiagonal.block000017).append FullDiagonal.block000018).append FullDiagonal.block000019).append FullDiagonal.block000020) FullDiagonal.block000021
    (CheckedDiagonalBlock.rootCoverage_append
    ReplayFullBlock215.snapshot 33554432 (((FullDiagonal.block000016.append FullDiagonal.block000017).append FullDiagonal.block000018).append FullDiagonal.block000019) FullDiagonal.block000020
    (CheckedDiagonalBlock.rootCoverage_append
    ReplayFullBlock215.snapshot 33554432 ((FullDiagonal.block000016.append FullDiagonal.block000017).append FullDiagonal.block000018) FullDiagonal.block000019
    (CheckedDiagonalBlock.rootCoverage_append
    ReplayFullBlock215.snapshot 33554432 (FullDiagonal.block000016.append FullDiagonal.block000017) FullDiagonal.block000018
    (CheckedDiagonalBlock.rootCoverage_append
    ReplayFullBlock215.snapshot 33554432 FullDiagonal.block000016 FullDiagonal.block000017
    block000016 block000017) block000018) block000019) block000020) block000021) block000022) block000023) block000024) block000025) block000026) block000027) block000028) block000029) block000030) block000031)

end JSP848.FullCoverage
