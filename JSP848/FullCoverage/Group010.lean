import JSP848.ReplayFullBlock215.Replay
import JSP848.FullDiagonal.Group010
import JSP848.ProgressionCoverage

set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0

namespace JSP848.FullCoverage

#time theorem block000160 : RawReplay.checkRootCoverage
    ReplayFullBlock215.snapshot 33554432
    (diagonalRootsFrom 10485765 FullDiagonal.block000160.entries) = true := by
  apply RawReplay.checkRootCoverageBalanced_sound (fuel := 27)
  decide +kernel

#time theorem block000161 : RawReplay.checkRootCoverage
    ReplayFullBlock215.snapshot 33554432
    (diagonalRootsFrom 10551301 FullDiagonal.block000161.entries) = true := by
  apply RawReplay.checkRootCoverageBalanced_sound (fuel := 27)
  decide +kernel

#time theorem block000162 : RawReplay.checkRootCoverage
    ReplayFullBlock215.snapshot 33554432
    (diagonalRootsFrom 10616837 FullDiagonal.block000162.entries) = true := by
  apply RawReplay.checkRootCoverageBalanced_sound (fuel := 27)
  decide +kernel

#time theorem block000163 : RawReplay.checkRootCoverage
    ReplayFullBlock215.snapshot 33554432
    (diagonalRootsFrom 10682373 FullDiagonal.block000163.entries) = true := by
  apply RawReplay.checkRootCoverageBalanced_sound (fuel := 27)
  decide +kernel

#time theorem block000164 : RawReplay.checkRootCoverage
    ReplayFullBlock215.snapshot 33554432
    (diagonalRootsFrom 10747909 FullDiagonal.block000164.entries) = true := by
  apply RawReplay.checkRootCoverageBalanced_sound (fuel := 27)
  decide +kernel

#time theorem block000165 : RawReplay.checkRootCoverage
    ReplayFullBlock215.snapshot 33554432
    (diagonalRootsFrom 10813445 FullDiagonal.block000165.entries) = true := by
  apply RawReplay.checkRootCoverageBalanced_sound (fuel := 27)
  decide +kernel

#time theorem block000166 : RawReplay.checkRootCoverage
    ReplayFullBlock215.snapshot 33554432
    (diagonalRootsFrom 10878981 FullDiagonal.block000166.entries) = true := by
  apply RawReplay.checkRootCoverageBalanced_sound (fuel := 27)
  decide +kernel

#time theorem block000167 : RawReplay.checkRootCoverage
    ReplayFullBlock215.snapshot 33554432
    (diagonalRootsFrom 10944517 FullDiagonal.block000167.entries) = true := by
  apply RawReplay.checkRootCoverageBalanced_sound (fuel := 27)
  decide +kernel

#time theorem block000168 : RawReplay.checkRootCoverage
    ReplayFullBlock215.snapshot 33554432
    (diagonalRootsFrom 11010053 FullDiagonal.block000168.entries) = true := by
  apply RawReplay.checkRootCoverageBalanced_sound (fuel := 27)
  decide +kernel

#time theorem block000169 : RawReplay.checkRootCoverage
    ReplayFullBlock215.snapshot 33554432
    (diagonalRootsFrom 11075589 FullDiagonal.block000169.entries) = true := by
  apply RawReplay.checkRootCoverageBalanced_sound (fuel := 27)
  decide +kernel

#time theorem block000170 : RawReplay.checkRootCoverage
    ReplayFullBlock215.snapshot 33554432
    (diagonalRootsFrom 11141125 FullDiagonal.block000170.entries) = true := by
  apply RawReplay.checkRootCoverageBalanced_sound (fuel := 27)
  decide +kernel

#time theorem block000171 : RawReplay.checkRootCoverage
    ReplayFullBlock215.snapshot 33554432
    (diagonalRootsFrom 11206661 FullDiagonal.block000171.entries) = true := by
  apply RawReplay.checkRootCoverageBalanced_sound (fuel := 27)
  decide +kernel

#time theorem block000172 : RawReplay.checkRootCoverage
    ReplayFullBlock215.snapshot 33554432
    (diagonalRootsFrom 11272197 FullDiagonal.block000172.entries) = true := by
  apply RawReplay.checkRootCoverageBalanced_sound (fuel := 27)
  decide +kernel

#time theorem block000173 : RawReplay.checkRootCoverage
    ReplayFullBlock215.snapshot 33554432
    (diagonalRootsFrom 11337733 FullDiagonal.block000173.entries) = true := by
  apply RawReplay.checkRootCoverageBalanced_sound (fuel := 27)
  decide +kernel

#time theorem block000174 : RawReplay.checkRootCoverage
    ReplayFullBlock215.snapshot 33554432
    (diagonalRootsFrom 11403269 FullDiagonal.block000174.entries) = true := by
  apply RawReplay.checkRootCoverageBalanced_sound (fuel := 27)
  decide +kernel

#time theorem block000175 : RawReplay.checkRootCoverage
    ReplayFullBlock215.snapshot 33554432
    (diagonalRootsFrom 11468805 FullDiagonal.block000175.entries) = true := by
  apply RawReplay.checkRootCoverageBalanced_sound (fuel := 27)
  decide +kernel

theorem group010 : RawReplay.checkRootCoverage
    ReplayFullBlock215.snapshot 33554432
    (diagonalRootsFrom 10485765 FullDiagonal.group010.entries) = true :=
  (CheckedDiagonalBlock.rootCoverage_append
    ReplayFullBlock215.snapshot 33554432 ((((((((((((((FullDiagonal.block000160.append FullDiagonal.block000161).append FullDiagonal.block000162).append FullDiagonal.block000163).append FullDiagonal.block000164).append FullDiagonal.block000165).append FullDiagonal.block000166).append FullDiagonal.block000167).append FullDiagonal.block000168).append FullDiagonal.block000169).append FullDiagonal.block000170).append FullDiagonal.block000171).append FullDiagonal.block000172).append FullDiagonal.block000173).append FullDiagonal.block000174) FullDiagonal.block000175
    (CheckedDiagonalBlock.rootCoverage_append
    ReplayFullBlock215.snapshot 33554432 (((((((((((((FullDiagonal.block000160.append FullDiagonal.block000161).append FullDiagonal.block000162).append FullDiagonal.block000163).append FullDiagonal.block000164).append FullDiagonal.block000165).append FullDiagonal.block000166).append FullDiagonal.block000167).append FullDiagonal.block000168).append FullDiagonal.block000169).append FullDiagonal.block000170).append FullDiagonal.block000171).append FullDiagonal.block000172).append FullDiagonal.block000173) FullDiagonal.block000174
    (CheckedDiagonalBlock.rootCoverage_append
    ReplayFullBlock215.snapshot 33554432 ((((((((((((FullDiagonal.block000160.append FullDiagonal.block000161).append FullDiagonal.block000162).append FullDiagonal.block000163).append FullDiagonal.block000164).append FullDiagonal.block000165).append FullDiagonal.block000166).append FullDiagonal.block000167).append FullDiagonal.block000168).append FullDiagonal.block000169).append FullDiagonal.block000170).append FullDiagonal.block000171).append FullDiagonal.block000172) FullDiagonal.block000173
    (CheckedDiagonalBlock.rootCoverage_append
    ReplayFullBlock215.snapshot 33554432 (((((((((((FullDiagonal.block000160.append FullDiagonal.block000161).append FullDiagonal.block000162).append FullDiagonal.block000163).append FullDiagonal.block000164).append FullDiagonal.block000165).append FullDiagonal.block000166).append FullDiagonal.block000167).append FullDiagonal.block000168).append FullDiagonal.block000169).append FullDiagonal.block000170).append FullDiagonal.block000171) FullDiagonal.block000172
    (CheckedDiagonalBlock.rootCoverage_append
    ReplayFullBlock215.snapshot 33554432 ((((((((((FullDiagonal.block000160.append FullDiagonal.block000161).append FullDiagonal.block000162).append FullDiagonal.block000163).append FullDiagonal.block000164).append FullDiagonal.block000165).append FullDiagonal.block000166).append FullDiagonal.block000167).append FullDiagonal.block000168).append FullDiagonal.block000169).append FullDiagonal.block000170) FullDiagonal.block000171
    (CheckedDiagonalBlock.rootCoverage_append
    ReplayFullBlock215.snapshot 33554432 (((((((((FullDiagonal.block000160.append FullDiagonal.block000161).append FullDiagonal.block000162).append FullDiagonal.block000163).append FullDiagonal.block000164).append FullDiagonal.block000165).append FullDiagonal.block000166).append FullDiagonal.block000167).append FullDiagonal.block000168).append FullDiagonal.block000169) FullDiagonal.block000170
    (CheckedDiagonalBlock.rootCoverage_append
    ReplayFullBlock215.snapshot 33554432 ((((((((FullDiagonal.block000160.append FullDiagonal.block000161).append FullDiagonal.block000162).append FullDiagonal.block000163).append FullDiagonal.block000164).append FullDiagonal.block000165).append FullDiagonal.block000166).append FullDiagonal.block000167).append FullDiagonal.block000168) FullDiagonal.block000169
    (CheckedDiagonalBlock.rootCoverage_append
    ReplayFullBlock215.snapshot 33554432 (((((((FullDiagonal.block000160.append FullDiagonal.block000161).append FullDiagonal.block000162).append FullDiagonal.block000163).append FullDiagonal.block000164).append FullDiagonal.block000165).append FullDiagonal.block000166).append FullDiagonal.block000167) FullDiagonal.block000168
    (CheckedDiagonalBlock.rootCoverage_append
    ReplayFullBlock215.snapshot 33554432 ((((((FullDiagonal.block000160.append FullDiagonal.block000161).append FullDiagonal.block000162).append FullDiagonal.block000163).append FullDiagonal.block000164).append FullDiagonal.block000165).append FullDiagonal.block000166) FullDiagonal.block000167
    (CheckedDiagonalBlock.rootCoverage_append
    ReplayFullBlock215.snapshot 33554432 (((((FullDiagonal.block000160.append FullDiagonal.block000161).append FullDiagonal.block000162).append FullDiagonal.block000163).append FullDiagonal.block000164).append FullDiagonal.block000165) FullDiagonal.block000166
    (CheckedDiagonalBlock.rootCoverage_append
    ReplayFullBlock215.snapshot 33554432 ((((FullDiagonal.block000160.append FullDiagonal.block000161).append FullDiagonal.block000162).append FullDiagonal.block000163).append FullDiagonal.block000164) FullDiagonal.block000165
    (CheckedDiagonalBlock.rootCoverage_append
    ReplayFullBlock215.snapshot 33554432 (((FullDiagonal.block000160.append FullDiagonal.block000161).append FullDiagonal.block000162).append FullDiagonal.block000163) FullDiagonal.block000164
    (CheckedDiagonalBlock.rootCoverage_append
    ReplayFullBlock215.snapshot 33554432 ((FullDiagonal.block000160.append FullDiagonal.block000161).append FullDiagonal.block000162) FullDiagonal.block000163
    (CheckedDiagonalBlock.rootCoverage_append
    ReplayFullBlock215.snapshot 33554432 (FullDiagonal.block000160.append FullDiagonal.block000161) FullDiagonal.block000162
    (CheckedDiagonalBlock.rootCoverage_append
    ReplayFullBlock215.snapshot 33554432 FullDiagonal.block000160 FullDiagonal.block000161
    block000160 block000161) block000162) block000163) block000164) block000165) block000166) block000167) block000168) block000169) block000170) block000171) block000172) block000173) block000174) block000175)

end JSP848.FullCoverage
