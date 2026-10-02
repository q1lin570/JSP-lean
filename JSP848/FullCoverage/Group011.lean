import JSP848.ReplayFullBlock215.Replay
import JSP848.FullDiagonal.Group011
import JSP848.ProgressionCoverage

set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0

namespace JSP848.FullCoverage

#time theorem block000176 : RawReplay.checkRootCoverage
    ReplayFullBlock215.snapshot 33554432
    (diagonalRootsFrom 11534341 FullDiagonal.block000176.entries) = true := by
  apply RawReplay.checkRootCoverageBalanced_sound (fuel := 27)
  decide +kernel

#time theorem block000177 : RawReplay.checkRootCoverage
    ReplayFullBlock215.snapshot 33554432
    (diagonalRootsFrom 11599877 FullDiagonal.block000177.entries) = true := by
  apply RawReplay.checkRootCoverageBalanced_sound (fuel := 27)
  decide +kernel

#time theorem block000178 : RawReplay.checkRootCoverage
    ReplayFullBlock215.snapshot 33554432
    (diagonalRootsFrom 11665413 FullDiagonal.block000178.entries) = true := by
  apply RawReplay.checkRootCoverageBalanced_sound (fuel := 27)
  decide +kernel

#time theorem block000179 : RawReplay.checkRootCoverage
    ReplayFullBlock215.snapshot 33554432
    (diagonalRootsFrom 11730949 FullDiagonal.block000179.entries) = true := by
  apply RawReplay.checkRootCoverageBalanced_sound (fuel := 27)
  decide +kernel

#time theorem block000180 : RawReplay.checkRootCoverage
    ReplayFullBlock215.snapshot 33554432
    (diagonalRootsFrom 11796485 FullDiagonal.block000180.entries) = true := by
  apply RawReplay.checkRootCoverageBalanced_sound (fuel := 27)
  decide +kernel

#time theorem block000181 : RawReplay.checkRootCoverage
    ReplayFullBlock215.snapshot 33554432
    (diagonalRootsFrom 11862021 FullDiagonal.block000181.entries) = true := by
  apply RawReplay.checkRootCoverageBalanced_sound (fuel := 27)
  decide +kernel

#time theorem block000182 : RawReplay.checkRootCoverage
    ReplayFullBlock215.snapshot 33554432
    (diagonalRootsFrom 11927557 FullDiagonal.block000182.entries) = true := by
  apply RawReplay.checkRootCoverageBalanced_sound (fuel := 27)
  decide +kernel

#time theorem block000183 : RawReplay.checkRootCoverage
    ReplayFullBlock215.snapshot 33554432
    (diagonalRootsFrom 11993093 FullDiagonal.block000183.entries) = true := by
  apply RawReplay.checkRootCoverageBalanced_sound (fuel := 27)
  decide +kernel

#time theorem block000184 : RawReplay.checkRootCoverage
    ReplayFullBlock215.snapshot 33554432
    (diagonalRootsFrom 12058629 FullDiagonal.block000184.entries) = true := by
  apply RawReplay.checkRootCoverageBalanced_sound (fuel := 27)
  decide +kernel

#time theorem block000185 : RawReplay.checkRootCoverage
    ReplayFullBlock215.snapshot 33554432
    (diagonalRootsFrom 12124165 FullDiagonal.block000185.entries) = true := by
  apply RawReplay.checkRootCoverageBalanced_sound (fuel := 27)
  decide +kernel

#time theorem block000186 : RawReplay.checkRootCoverage
    ReplayFullBlock215.snapshot 33554432
    (diagonalRootsFrom 12189701 FullDiagonal.block000186.entries) = true := by
  apply RawReplay.checkRootCoverageBalanced_sound (fuel := 27)
  decide +kernel

#time theorem block000187 : RawReplay.checkRootCoverage
    ReplayFullBlock215.snapshot 33554432
    (diagonalRootsFrom 12255237 FullDiagonal.block000187.entries) = true := by
  apply RawReplay.checkRootCoverageBalanced_sound (fuel := 27)
  decide +kernel

#time theorem block000188 : RawReplay.checkRootCoverage
    ReplayFullBlock215.snapshot 33554432
    (diagonalRootsFrom 12320773 FullDiagonal.block000188.entries) = true := by
  apply RawReplay.checkRootCoverageBalanced_sound (fuel := 27)
  decide +kernel

#time theorem block000189 : RawReplay.checkRootCoverage
    ReplayFullBlock215.snapshot 33554432
    (diagonalRootsFrom 12386309 FullDiagonal.block000189.entries) = true := by
  apply RawReplay.checkRootCoverageBalanced_sound (fuel := 27)
  decide +kernel

#time theorem block000190 : RawReplay.checkRootCoverage
    ReplayFullBlock215.snapshot 33554432
    (diagonalRootsFrom 12451845 FullDiagonal.block000190.entries) = true := by
  apply RawReplay.checkRootCoverageBalanced_sound (fuel := 27)
  decide +kernel

#time theorem block000191 : RawReplay.checkRootCoverage
    ReplayFullBlock215.snapshot 33554432
    (diagonalRootsFrom 12517381 FullDiagonal.block000191.entries) = true := by
  apply RawReplay.checkRootCoverageBalanced_sound (fuel := 27)
  decide +kernel

theorem group011 : RawReplay.checkRootCoverage
    ReplayFullBlock215.snapshot 33554432
    (diagonalRootsFrom 11534341 FullDiagonal.group011.entries) = true :=
  (CheckedDiagonalBlock.rootCoverage_append
    ReplayFullBlock215.snapshot 33554432 ((((((((((((((FullDiagonal.block000176.append FullDiagonal.block000177).append FullDiagonal.block000178).append FullDiagonal.block000179).append FullDiagonal.block000180).append FullDiagonal.block000181).append FullDiagonal.block000182).append FullDiagonal.block000183).append FullDiagonal.block000184).append FullDiagonal.block000185).append FullDiagonal.block000186).append FullDiagonal.block000187).append FullDiagonal.block000188).append FullDiagonal.block000189).append FullDiagonal.block000190) FullDiagonal.block000191
    (CheckedDiagonalBlock.rootCoverage_append
    ReplayFullBlock215.snapshot 33554432 (((((((((((((FullDiagonal.block000176.append FullDiagonal.block000177).append FullDiagonal.block000178).append FullDiagonal.block000179).append FullDiagonal.block000180).append FullDiagonal.block000181).append FullDiagonal.block000182).append FullDiagonal.block000183).append FullDiagonal.block000184).append FullDiagonal.block000185).append FullDiagonal.block000186).append FullDiagonal.block000187).append FullDiagonal.block000188).append FullDiagonal.block000189) FullDiagonal.block000190
    (CheckedDiagonalBlock.rootCoverage_append
    ReplayFullBlock215.snapshot 33554432 ((((((((((((FullDiagonal.block000176.append FullDiagonal.block000177).append FullDiagonal.block000178).append FullDiagonal.block000179).append FullDiagonal.block000180).append FullDiagonal.block000181).append FullDiagonal.block000182).append FullDiagonal.block000183).append FullDiagonal.block000184).append FullDiagonal.block000185).append FullDiagonal.block000186).append FullDiagonal.block000187).append FullDiagonal.block000188) FullDiagonal.block000189
    (CheckedDiagonalBlock.rootCoverage_append
    ReplayFullBlock215.snapshot 33554432 (((((((((((FullDiagonal.block000176.append FullDiagonal.block000177).append FullDiagonal.block000178).append FullDiagonal.block000179).append FullDiagonal.block000180).append FullDiagonal.block000181).append FullDiagonal.block000182).append FullDiagonal.block000183).append FullDiagonal.block000184).append FullDiagonal.block000185).append FullDiagonal.block000186).append FullDiagonal.block000187) FullDiagonal.block000188
    (CheckedDiagonalBlock.rootCoverage_append
    ReplayFullBlock215.snapshot 33554432 ((((((((((FullDiagonal.block000176.append FullDiagonal.block000177).append FullDiagonal.block000178).append FullDiagonal.block000179).append FullDiagonal.block000180).append FullDiagonal.block000181).append FullDiagonal.block000182).append FullDiagonal.block000183).append FullDiagonal.block000184).append FullDiagonal.block000185).append FullDiagonal.block000186) FullDiagonal.block000187
    (CheckedDiagonalBlock.rootCoverage_append
    ReplayFullBlock215.snapshot 33554432 (((((((((FullDiagonal.block000176.append FullDiagonal.block000177).append FullDiagonal.block000178).append FullDiagonal.block000179).append FullDiagonal.block000180).append FullDiagonal.block000181).append FullDiagonal.block000182).append FullDiagonal.block000183).append FullDiagonal.block000184).append FullDiagonal.block000185) FullDiagonal.block000186
    (CheckedDiagonalBlock.rootCoverage_append
    ReplayFullBlock215.snapshot 33554432 ((((((((FullDiagonal.block000176.append FullDiagonal.block000177).append FullDiagonal.block000178).append FullDiagonal.block000179).append FullDiagonal.block000180).append FullDiagonal.block000181).append FullDiagonal.block000182).append FullDiagonal.block000183).append FullDiagonal.block000184) FullDiagonal.block000185
    (CheckedDiagonalBlock.rootCoverage_append
    ReplayFullBlock215.snapshot 33554432 (((((((FullDiagonal.block000176.append FullDiagonal.block000177).append FullDiagonal.block000178).append FullDiagonal.block000179).append FullDiagonal.block000180).append FullDiagonal.block000181).append FullDiagonal.block000182).append FullDiagonal.block000183) FullDiagonal.block000184
    (CheckedDiagonalBlock.rootCoverage_append
    ReplayFullBlock215.snapshot 33554432 ((((((FullDiagonal.block000176.append FullDiagonal.block000177).append FullDiagonal.block000178).append FullDiagonal.block000179).append FullDiagonal.block000180).append FullDiagonal.block000181).append FullDiagonal.block000182) FullDiagonal.block000183
    (CheckedDiagonalBlock.rootCoverage_append
    ReplayFullBlock215.snapshot 33554432 (((((FullDiagonal.block000176.append FullDiagonal.block000177).append FullDiagonal.block000178).append FullDiagonal.block000179).append FullDiagonal.block000180).append FullDiagonal.block000181) FullDiagonal.block000182
    (CheckedDiagonalBlock.rootCoverage_append
    ReplayFullBlock215.snapshot 33554432 ((((FullDiagonal.block000176.append FullDiagonal.block000177).append FullDiagonal.block000178).append FullDiagonal.block000179).append FullDiagonal.block000180) FullDiagonal.block000181
    (CheckedDiagonalBlock.rootCoverage_append
    ReplayFullBlock215.snapshot 33554432 (((FullDiagonal.block000176.append FullDiagonal.block000177).append FullDiagonal.block000178).append FullDiagonal.block000179) FullDiagonal.block000180
    (CheckedDiagonalBlock.rootCoverage_append
    ReplayFullBlock215.snapshot 33554432 ((FullDiagonal.block000176.append FullDiagonal.block000177).append FullDiagonal.block000178) FullDiagonal.block000179
    (CheckedDiagonalBlock.rootCoverage_append
    ReplayFullBlock215.snapshot 33554432 (FullDiagonal.block000176.append FullDiagonal.block000177) FullDiagonal.block000178
    (CheckedDiagonalBlock.rootCoverage_append
    ReplayFullBlock215.snapshot 33554432 FullDiagonal.block000176 FullDiagonal.block000177
    block000176 block000177) block000178) block000179) block000180) block000181) block000182) block000183) block000184) block000185) block000186) block000187) block000188) block000189) block000190) block000191)

end JSP848.FullCoverage
