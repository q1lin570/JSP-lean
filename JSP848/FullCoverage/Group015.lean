import JSP848.ReplayFullBlock215.Replay
import JSP848.FullDiagonal.Group015
import JSP848.ProgressionCoverage

set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0

namespace JSP848.FullCoverage

#time theorem block000240 : RawReplay.checkRootCoverage
    ReplayFullBlock215.snapshot 33554432
    (diagonalRootsFrom 15728645 FullDiagonal.block000240.entries) = true := by
  apply RawReplay.checkRootCoverageBalanced_sound (fuel := 27)
  decide +kernel

#time theorem block000241 : RawReplay.checkRootCoverage
    ReplayFullBlock215.snapshot 33554432
    (diagonalRootsFrom 15794181 FullDiagonal.block000241.entries) = true := by
  apply RawReplay.checkRootCoverageBalanced_sound (fuel := 27)
  decide +kernel

#time theorem block000242 : RawReplay.checkRootCoverage
    ReplayFullBlock215.snapshot 33554432
    (diagonalRootsFrom 15859717 FullDiagonal.block000242.entries) = true := by
  apply RawReplay.checkRootCoverageBalanced_sound (fuel := 27)
  decide +kernel

#time theorem block000243 : RawReplay.checkRootCoverage
    ReplayFullBlock215.snapshot 33554432
    (diagonalRootsFrom 15925253 FullDiagonal.block000243.entries) = true := by
  apply RawReplay.checkRootCoverageBalanced_sound (fuel := 27)
  decide +kernel

#time theorem block000244 : RawReplay.checkRootCoverage
    ReplayFullBlock215.snapshot 33554432
    (diagonalRootsFrom 15990789 FullDiagonal.block000244.entries) = true := by
  apply RawReplay.checkRootCoverageBalanced_sound (fuel := 27)
  decide +kernel

#time theorem block000245 : RawReplay.checkRootCoverage
    ReplayFullBlock215.snapshot 33554432
    (diagonalRootsFrom 16056325 FullDiagonal.block000245.entries) = true := by
  apply RawReplay.checkRootCoverageBalanced_sound (fuel := 27)
  decide +kernel

#time theorem block000246 : RawReplay.checkRootCoverage
    ReplayFullBlock215.snapshot 33554432
    (diagonalRootsFrom 16121861 FullDiagonal.block000246.entries) = true := by
  apply RawReplay.checkRootCoverageBalanced_sound (fuel := 27)
  decide +kernel

#time theorem block000247 : RawReplay.checkRootCoverage
    ReplayFullBlock215.snapshot 33554432
    (diagonalRootsFrom 16187397 FullDiagonal.block000247.entries) = true := by
  apply RawReplay.checkRootCoverageBalanced_sound (fuel := 27)
  decide +kernel

#time theorem block000248 : RawReplay.checkRootCoverage
    ReplayFullBlock215.snapshot 33554432
    (diagonalRootsFrom 16252933 FullDiagonal.block000248.entries) = true := by
  apply RawReplay.checkRootCoverageBalanced_sound (fuel := 27)
  decide +kernel

#time theorem block000249 : RawReplay.checkRootCoverage
    ReplayFullBlock215.snapshot 33554432
    (diagonalRootsFrom 16318469 FullDiagonal.block000249.entries) = true := by
  apply RawReplay.checkRootCoverageBalanced_sound (fuel := 27)
  decide +kernel

#time theorem block000250 : RawReplay.checkRootCoverage
    ReplayFullBlock215.snapshot 33554432
    (diagonalRootsFrom 16384005 FullDiagonal.block000250.entries) = true := by
  apply RawReplay.checkRootCoverageBalanced_sound (fuel := 27)
  decide +kernel

#time theorem block000251 : RawReplay.checkRootCoverage
    ReplayFullBlock215.snapshot 33554432
    (diagonalRootsFrom 16449541 FullDiagonal.block000251.entries) = true := by
  apply RawReplay.checkRootCoverageBalanced_sound (fuel := 27)
  decide +kernel

#time theorem block000252 : RawReplay.checkRootCoverage
    ReplayFullBlock215.snapshot 33554432
    (diagonalRootsFrom 16515077 FullDiagonal.block000252.entries) = true := by
  apply RawReplay.checkRootCoverageBalanced_sound (fuel := 27)
  decide +kernel

#time theorem block000253 : RawReplay.checkRootCoverage
    ReplayFullBlock215.snapshot 33554432
    (diagonalRootsFrom 16580613 FullDiagonal.block000253.entries) = true := by
  apply RawReplay.checkRootCoverageBalanced_sound (fuel := 27)
  decide +kernel

#time theorem block000254 : RawReplay.checkRootCoverage
    ReplayFullBlock215.snapshot 33554432
    (diagonalRootsFrom 16646149 FullDiagonal.block000254.entries) = true := by
  apply RawReplay.checkRootCoverageBalanced_sound (fuel := 27)
  decide +kernel

#time theorem block000255 : RawReplay.checkRootCoverage
    ReplayFullBlock215.snapshot 33554432
    (diagonalRootsFrom 16711685 FullDiagonal.block000255.entries) = true := by
  apply RawReplay.checkRootCoverageBalanced_sound (fuel := 27)
  decide +kernel

theorem group015 : RawReplay.checkRootCoverage
    ReplayFullBlock215.snapshot 33554432
    (diagonalRootsFrom 15728645 FullDiagonal.group015.entries) = true :=
  (CheckedDiagonalBlock.rootCoverage_append
    ReplayFullBlock215.snapshot 33554432 ((((((((((((((FullDiagonal.block000240.append FullDiagonal.block000241).append FullDiagonal.block000242).append FullDiagonal.block000243).append FullDiagonal.block000244).append FullDiagonal.block000245).append FullDiagonal.block000246).append FullDiagonal.block000247).append FullDiagonal.block000248).append FullDiagonal.block000249).append FullDiagonal.block000250).append FullDiagonal.block000251).append FullDiagonal.block000252).append FullDiagonal.block000253).append FullDiagonal.block000254) FullDiagonal.block000255
    (CheckedDiagonalBlock.rootCoverage_append
    ReplayFullBlock215.snapshot 33554432 (((((((((((((FullDiagonal.block000240.append FullDiagonal.block000241).append FullDiagonal.block000242).append FullDiagonal.block000243).append FullDiagonal.block000244).append FullDiagonal.block000245).append FullDiagonal.block000246).append FullDiagonal.block000247).append FullDiagonal.block000248).append FullDiagonal.block000249).append FullDiagonal.block000250).append FullDiagonal.block000251).append FullDiagonal.block000252).append FullDiagonal.block000253) FullDiagonal.block000254
    (CheckedDiagonalBlock.rootCoverage_append
    ReplayFullBlock215.snapshot 33554432 ((((((((((((FullDiagonal.block000240.append FullDiagonal.block000241).append FullDiagonal.block000242).append FullDiagonal.block000243).append FullDiagonal.block000244).append FullDiagonal.block000245).append FullDiagonal.block000246).append FullDiagonal.block000247).append FullDiagonal.block000248).append FullDiagonal.block000249).append FullDiagonal.block000250).append FullDiagonal.block000251).append FullDiagonal.block000252) FullDiagonal.block000253
    (CheckedDiagonalBlock.rootCoverage_append
    ReplayFullBlock215.snapshot 33554432 (((((((((((FullDiagonal.block000240.append FullDiagonal.block000241).append FullDiagonal.block000242).append FullDiagonal.block000243).append FullDiagonal.block000244).append FullDiagonal.block000245).append FullDiagonal.block000246).append FullDiagonal.block000247).append FullDiagonal.block000248).append FullDiagonal.block000249).append FullDiagonal.block000250).append FullDiagonal.block000251) FullDiagonal.block000252
    (CheckedDiagonalBlock.rootCoverage_append
    ReplayFullBlock215.snapshot 33554432 ((((((((((FullDiagonal.block000240.append FullDiagonal.block000241).append FullDiagonal.block000242).append FullDiagonal.block000243).append FullDiagonal.block000244).append FullDiagonal.block000245).append FullDiagonal.block000246).append FullDiagonal.block000247).append FullDiagonal.block000248).append FullDiagonal.block000249).append FullDiagonal.block000250) FullDiagonal.block000251
    (CheckedDiagonalBlock.rootCoverage_append
    ReplayFullBlock215.snapshot 33554432 (((((((((FullDiagonal.block000240.append FullDiagonal.block000241).append FullDiagonal.block000242).append FullDiagonal.block000243).append FullDiagonal.block000244).append FullDiagonal.block000245).append FullDiagonal.block000246).append FullDiagonal.block000247).append FullDiagonal.block000248).append FullDiagonal.block000249) FullDiagonal.block000250
    (CheckedDiagonalBlock.rootCoverage_append
    ReplayFullBlock215.snapshot 33554432 ((((((((FullDiagonal.block000240.append FullDiagonal.block000241).append FullDiagonal.block000242).append FullDiagonal.block000243).append FullDiagonal.block000244).append FullDiagonal.block000245).append FullDiagonal.block000246).append FullDiagonal.block000247).append FullDiagonal.block000248) FullDiagonal.block000249
    (CheckedDiagonalBlock.rootCoverage_append
    ReplayFullBlock215.snapshot 33554432 (((((((FullDiagonal.block000240.append FullDiagonal.block000241).append FullDiagonal.block000242).append FullDiagonal.block000243).append FullDiagonal.block000244).append FullDiagonal.block000245).append FullDiagonal.block000246).append FullDiagonal.block000247) FullDiagonal.block000248
    (CheckedDiagonalBlock.rootCoverage_append
    ReplayFullBlock215.snapshot 33554432 ((((((FullDiagonal.block000240.append FullDiagonal.block000241).append FullDiagonal.block000242).append FullDiagonal.block000243).append FullDiagonal.block000244).append FullDiagonal.block000245).append FullDiagonal.block000246) FullDiagonal.block000247
    (CheckedDiagonalBlock.rootCoverage_append
    ReplayFullBlock215.snapshot 33554432 (((((FullDiagonal.block000240.append FullDiagonal.block000241).append FullDiagonal.block000242).append FullDiagonal.block000243).append FullDiagonal.block000244).append FullDiagonal.block000245) FullDiagonal.block000246
    (CheckedDiagonalBlock.rootCoverage_append
    ReplayFullBlock215.snapshot 33554432 ((((FullDiagonal.block000240.append FullDiagonal.block000241).append FullDiagonal.block000242).append FullDiagonal.block000243).append FullDiagonal.block000244) FullDiagonal.block000245
    (CheckedDiagonalBlock.rootCoverage_append
    ReplayFullBlock215.snapshot 33554432 (((FullDiagonal.block000240.append FullDiagonal.block000241).append FullDiagonal.block000242).append FullDiagonal.block000243) FullDiagonal.block000244
    (CheckedDiagonalBlock.rootCoverage_append
    ReplayFullBlock215.snapshot 33554432 ((FullDiagonal.block000240.append FullDiagonal.block000241).append FullDiagonal.block000242) FullDiagonal.block000243
    (CheckedDiagonalBlock.rootCoverage_append
    ReplayFullBlock215.snapshot 33554432 (FullDiagonal.block000240.append FullDiagonal.block000241) FullDiagonal.block000242
    (CheckedDiagonalBlock.rootCoverage_append
    ReplayFullBlock215.snapshot 33554432 FullDiagonal.block000240 FullDiagonal.block000241
    block000240 block000241) block000242) block000243) block000244) block000245) block000246) block000247) block000248) block000249) block000250) block000251) block000252) block000253) block000254) block000255)

end JSP848.FullCoverage
