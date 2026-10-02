import JSP848.ReplayFullBlock215.Replay
import JSP848.FullDiagonal.Group004
import JSP848.ProgressionCoverage

set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0

namespace JSP848.FullCoverage

#time theorem block000064 : RawReplay.checkRootCoverage
    ReplayFullBlock215.snapshot 33554432
    (diagonalRootsFrom 4194309 FullDiagonal.block000064.entries) = true := by
  apply RawReplay.checkRootCoverageBalanced_sound (fuel := 27)
  decide +kernel

#time theorem block000065 : RawReplay.checkRootCoverage
    ReplayFullBlock215.snapshot 33554432
    (diagonalRootsFrom 4259845 FullDiagonal.block000065.entries) = true := by
  apply RawReplay.checkRootCoverageBalanced_sound (fuel := 27)
  decide +kernel

#time theorem block000066 : RawReplay.checkRootCoverage
    ReplayFullBlock215.snapshot 33554432
    (diagonalRootsFrom 4325381 FullDiagonal.block000066.entries) = true := by
  apply RawReplay.checkRootCoverageBalanced_sound (fuel := 27)
  decide +kernel

#time theorem block000067 : RawReplay.checkRootCoverage
    ReplayFullBlock215.snapshot 33554432
    (diagonalRootsFrom 4390917 FullDiagonal.block000067.entries) = true := by
  apply RawReplay.checkRootCoverageBalanced_sound (fuel := 27)
  decide +kernel

#time theorem block000068 : RawReplay.checkRootCoverage
    ReplayFullBlock215.snapshot 33554432
    (diagonalRootsFrom 4456453 FullDiagonal.block000068.entries) = true := by
  apply RawReplay.checkRootCoverageBalanced_sound (fuel := 27)
  decide +kernel

#time theorem block000069 : RawReplay.checkRootCoverage
    ReplayFullBlock215.snapshot 33554432
    (diagonalRootsFrom 4521989 FullDiagonal.block000069.entries) = true := by
  apply RawReplay.checkRootCoverageBalanced_sound (fuel := 27)
  decide +kernel

#time theorem block000070 : RawReplay.checkRootCoverage
    ReplayFullBlock215.snapshot 33554432
    (diagonalRootsFrom 4587525 FullDiagonal.block000070.entries) = true := by
  apply RawReplay.checkRootCoverageBalanced_sound (fuel := 27)
  decide +kernel

#time theorem block000071 : RawReplay.checkRootCoverage
    ReplayFullBlock215.snapshot 33554432
    (diagonalRootsFrom 4653061 FullDiagonal.block000071.entries) = true := by
  apply RawReplay.checkRootCoverageBalanced_sound (fuel := 27)
  decide +kernel

#time theorem block000072 : RawReplay.checkRootCoverage
    ReplayFullBlock215.snapshot 33554432
    (diagonalRootsFrom 4718597 FullDiagonal.block000072.entries) = true := by
  apply RawReplay.checkRootCoverageBalanced_sound (fuel := 27)
  decide +kernel

#time theorem block000073 : RawReplay.checkRootCoverage
    ReplayFullBlock215.snapshot 33554432
    (diagonalRootsFrom 4784133 FullDiagonal.block000073.entries) = true := by
  apply RawReplay.checkRootCoverageBalanced_sound (fuel := 27)
  decide +kernel

#time theorem block000074 : RawReplay.checkRootCoverage
    ReplayFullBlock215.snapshot 33554432
    (diagonalRootsFrom 4849669 FullDiagonal.block000074.entries) = true := by
  apply RawReplay.checkRootCoverageBalanced_sound (fuel := 27)
  decide +kernel

#time theorem block000075 : RawReplay.checkRootCoverage
    ReplayFullBlock215.snapshot 33554432
    (diagonalRootsFrom 4915205 FullDiagonal.block000075.entries) = true := by
  apply RawReplay.checkRootCoverageBalanced_sound (fuel := 27)
  decide +kernel

#time theorem block000076 : RawReplay.checkRootCoverage
    ReplayFullBlock215.snapshot 33554432
    (diagonalRootsFrom 4980741 FullDiagonal.block000076.entries) = true := by
  apply RawReplay.checkRootCoverageBalanced_sound (fuel := 27)
  decide +kernel

#time theorem block000077 : RawReplay.checkRootCoverage
    ReplayFullBlock215.snapshot 33554432
    (diagonalRootsFrom 5046277 FullDiagonal.block000077.entries) = true := by
  apply RawReplay.checkRootCoverageBalanced_sound (fuel := 27)
  decide +kernel

#time theorem block000078 : RawReplay.checkRootCoverage
    ReplayFullBlock215.snapshot 33554432
    (diagonalRootsFrom 5111813 FullDiagonal.block000078.entries) = true := by
  apply RawReplay.checkRootCoverageBalanced_sound (fuel := 27)
  decide +kernel

#time theorem block000079 : RawReplay.checkRootCoverage
    ReplayFullBlock215.snapshot 33554432
    (diagonalRootsFrom 5177349 FullDiagonal.block000079.entries) = true := by
  apply RawReplay.checkRootCoverageBalanced_sound (fuel := 27)
  decide +kernel

theorem group004 : RawReplay.checkRootCoverage
    ReplayFullBlock215.snapshot 33554432
    (diagonalRootsFrom 4194309 FullDiagonal.group004.entries) = true :=
  (CheckedDiagonalBlock.rootCoverage_append
    ReplayFullBlock215.snapshot 33554432 ((((((((((((((FullDiagonal.block000064.append FullDiagonal.block000065).append FullDiagonal.block000066).append FullDiagonal.block000067).append FullDiagonal.block000068).append FullDiagonal.block000069).append FullDiagonal.block000070).append FullDiagonal.block000071).append FullDiagonal.block000072).append FullDiagonal.block000073).append FullDiagonal.block000074).append FullDiagonal.block000075).append FullDiagonal.block000076).append FullDiagonal.block000077).append FullDiagonal.block000078) FullDiagonal.block000079
    (CheckedDiagonalBlock.rootCoverage_append
    ReplayFullBlock215.snapshot 33554432 (((((((((((((FullDiagonal.block000064.append FullDiagonal.block000065).append FullDiagonal.block000066).append FullDiagonal.block000067).append FullDiagonal.block000068).append FullDiagonal.block000069).append FullDiagonal.block000070).append FullDiagonal.block000071).append FullDiagonal.block000072).append FullDiagonal.block000073).append FullDiagonal.block000074).append FullDiagonal.block000075).append FullDiagonal.block000076).append FullDiagonal.block000077) FullDiagonal.block000078
    (CheckedDiagonalBlock.rootCoverage_append
    ReplayFullBlock215.snapshot 33554432 ((((((((((((FullDiagonal.block000064.append FullDiagonal.block000065).append FullDiagonal.block000066).append FullDiagonal.block000067).append FullDiagonal.block000068).append FullDiagonal.block000069).append FullDiagonal.block000070).append FullDiagonal.block000071).append FullDiagonal.block000072).append FullDiagonal.block000073).append FullDiagonal.block000074).append FullDiagonal.block000075).append FullDiagonal.block000076) FullDiagonal.block000077
    (CheckedDiagonalBlock.rootCoverage_append
    ReplayFullBlock215.snapshot 33554432 (((((((((((FullDiagonal.block000064.append FullDiagonal.block000065).append FullDiagonal.block000066).append FullDiagonal.block000067).append FullDiagonal.block000068).append FullDiagonal.block000069).append FullDiagonal.block000070).append FullDiagonal.block000071).append FullDiagonal.block000072).append FullDiagonal.block000073).append FullDiagonal.block000074).append FullDiagonal.block000075) FullDiagonal.block000076
    (CheckedDiagonalBlock.rootCoverage_append
    ReplayFullBlock215.snapshot 33554432 ((((((((((FullDiagonal.block000064.append FullDiagonal.block000065).append FullDiagonal.block000066).append FullDiagonal.block000067).append FullDiagonal.block000068).append FullDiagonal.block000069).append FullDiagonal.block000070).append FullDiagonal.block000071).append FullDiagonal.block000072).append FullDiagonal.block000073).append FullDiagonal.block000074) FullDiagonal.block000075
    (CheckedDiagonalBlock.rootCoverage_append
    ReplayFullBlock215.snapshot 33554432 (((((((((FullDiagonal.block000064.append FullDiagonal.block000065).append FullDiagonal.block000066).append FullDiagonal.block000067).append FullDiagonal.block000068).append FullDiagonal.block000069).append FullDiagonal.block000070).append FullDiagonal.block000071).append FullDiagonal.block000072).append FullDiagonal.block000073) FullDiagonal.block000074
    (CheckedDiagonalBlock.rootCoverage_append
    ReplayFullBlock215.snapshot 33554432 ((((((((FullDiagonal.block000064.append FullDiagonal.block000065).append FullDiagonal.block000066).append FullDiagonal.block000067).append FullDiagonal.block000068).append FullDiagonal.block000069).append FullDiagonal.block000070).append FullDiagonal.block000071).append FullDiagonal.block000072) FullDiagonal.block000073
    (CheckedDiagonalBlock.rootCoverage_append
    ReplayFullBlock215.snapshot 33554432 (((((((FullDiagonal.block000064.append FullDiagonal.block000065).append FullDiagonal.block000066).append FullDiagonal.block000067).append FullDiagonal.block000068).append FullDiagonal.block000069).append FullDiagonal.block000070).append FullDiagonal.block000071) FullDiagonal.block000072
    (CheckedDiagonalBlock.rootCoverage_append
    ReplayFullBlock215.snapshot 33554432 ((((((FullDiagonal.block000064.append FullDiagonal.block000065).append FullDiagonal.block000066).append FullDiagonal.block000067).append FullDiagonal.block000068).append FullDiagonal.block000069).append FullDiagonal.block000070) FullDiagonal.block000071
    (CheckedDiagonalBlock.rootCoverage_append
    ReplayFullBlock215.snapshot 33554432 (((((FullDiagonal.block000064.append FullDiagonal.block000065).append FullDiagonal.block000066).append FullDiagonal.block000067).append FullDiagonal.block000068).append FullDiagonal.block000069) FullDiagonal.block000070
    (CheckedDiagonalBlock.rootCoverage_append
    ReplayFullBlock215.snapshot 33554432 ((((FullDiagonal.block000064.append FullDiagonal.block000065).append FullDiagonal.block000066).append FullDiagonal.block000067).append FullDiagonal.block000068) FullDiagonal.block000069
    (CheckedDiagonalBlock.rootCoverage_append
    ReplayFullBlock215.snapshot 33554432 (((FullDiagonal.block000064.append FullDiagonal.block000065).append FullDiagonal.block000066).append FullDiagonal.block000067) FullDiagonal.block000068
    (CheckedDiagonalBlock.rootCoverage_append
    ReplayFullBlock215.snapshot 33554432 ((FullDiagonal.block000064.append FullDiagonal.block000065).append FullDiagonal.block000066) FullDiagonal.block000067
    (CheckedDiagonalBlock.rootCoverage_append
    ReplayFullBlock215.snapshot 33554432 (FullDiagonal.block000064.append FullDiagonal.block000065) FullDiagonal.block000066
    (CheckedDiagonalBlock.rootCoverage_append
    ReplayFullBlock215.snapshot 33554432 FullDiagonal.block000064 FullDiagonal.block000065
    block000064 block000065) block000066) block000067) block000068) block000069) block000070) block000071) block000072) block000073) block000074) block000075) block000076) block000077) block000078) block000079)

end JSP848.FullCoverage
