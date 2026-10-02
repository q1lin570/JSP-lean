import JSP848.ReplayFullBlock215.Replay
import JSP848.FullDiagonal.Group014
import JSP848.ProgressionCoverage

set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0

namespace JSP848.FullCoverage

#time theorem block000224 : RawReplay.checkRootCoverage
    ReplayFullBlock215.snapshot 33554432
    (diagonalRootsFrom 14680069 FullDiagonal.block000224.entries) = true := by
  apply RawReplay.checkRootCoverageBalanced_sound (fuel := 27)
  decide +kernel

#time theorem block000225 : RawReplay.checkRootCoverage
    ReplayFullBlock215.snapshot 33554432
    (diagonalRootsFrom 14745605 FullDiagonal.block000225.entries) = true := by
  apply RawReplay.checkRootCoverageBalanced_sound (fuel := 27)
  decide +kernel

#time theorem block000226 : RawReplay.checkRootCoverage
    ReplayFullBlock215.snapshot 33554432
    (diagonalRootsFrom 14811141 FullDiagonal.block000226.entries) = true := by
  apply RawReplay.checkRootCoverageBalanced_sound (fuel := 27)
  decide +kernel

#time theorem block000227 : RawReplay.checkRootCoverage
    ReplayFullBlock215.snapshot 33554432
    (diagonalRootsFrom 14876677 FullDiagonal.block000227.entries) = true := by
  apply RawReplay.checkRootCoverageBalanced_sound (fuel := 27)
  decide +kernel

#time theorem block000228 : RawReplay.checkRootCoverage
    ReplayFullBlock215.snapshot 33554432
    (diagonalRootsFrom 14942213 FullDiagonal.block000228.entries) = true := by
  apply RawReplay.checkRootCoverageBalanced_sound (fuel := 27)
  decide +kernel

#time theorem block000229 : RawReplay.checkRootCoverage
    ReplayFullBlock215.snapshot 33554432
    (diagonalRootsFrom 15007749 FullDiagonal.block000229.entries) = true := by
  apply RawReplay.checkRootCoverageBalanced_sound (fuel := 27)
  decide +kernel

#time theorem block000230 : RawReplay.checkRootCoverage
    ReplayFullBlock215.snapshot 33554432
    (diagonalRootsFrom 15073285 FullDiagonal.block000230.entries) = true := by
  apply RawReplay.checkRootCoverageBalanced_sound (fuel := 27)
  decide +kernel

#time theorem block000231 : RawReplay.checkRootCoverage
    ReplayFullBlock215.snapshot 33554432
    (diagonalRootsFrom 15138821 FullDiagonal.block000231.entries) = true := by
  apply RawReplay.checkRootCoverageBalanced_sound (fuel := 27)
  decide +kernel

#time theorem block000232 : RawReplay.checkRootCoverage
    ReplayFullBlock215.snapshot 33554432
    (diagonalRootsFrom 15204357 FullDiagonal.block000232.entries) = true := by
  apply RawReplay.checkRootCoverageBalanced_sound (fuel := 27)
  decide +kernel

#time theorem block000233 : RawReplay.checkRootCoverage
    ReplayFullBlock215.snapshot 33554432
    (diagonalRootsFrom 15269893 FullDiagonal.block000233.entries) = true := by
  apply RawReplay.checkRootCoverageBalanced_sound (fuel := 27)
  decide +kernel

#time theorem block000234 : RawReplay.checkRootCoverage
    ReplayFullBlock215.snapshot 33554432
    (diagonalRootsFrom 15335429 FullDiagonal.block000234.entries) = true := by
  apply RawReplay.checkRootCoverageBalanced_sound (fuel := 27)
  decide +kernel

#time theorem block000235 : RawReplay.checkRootCoverage
    ReplayFullBlock215.snapshot 33554432
    (diagonalRootsFrom 15400965 FullDiagonal.block000235.entries) = true := by
  apply RawReplay.checkRootCoverageBalanced_sound (fuel := 27)
  decide +kernel

#time theorem block000236 : RawReplay.checkRootCoverage
    ReplayFullBlock215.snapshot 33554432
    (diagonalRootsFrom 15466501 FullDiagonal.block000236.entries) = true := by
  apply RawReplay.checkRootCoverageBalanced_sound (fuel := 27)
  decide +kernel

#time theorem block000237 : RawReplay.checkRootCoverage
    ReplayFullBlock215.snapshot 33554432
    (diagonalRootsFrom 15532037 FullDiagonal.block000237.entries) = true := by
  apply RawReplay.checkRootCoverageBalanced_sound (fuel := 27)
  decide +kernel

#time theorem block000238 : RawReplay.checkRootCoverage
    ReplayFullBlock215.snapshot 33554432
    (diagonalRootsFrom 15597573 FullDiagonal.block000238.entries) = true := by
  apply RawReplay.checkRootCoverageBalanced_sound (fuel := 27)
  decide +kernel

#time theorem block000239 : RawReplay.checkRootCoverage
    ReplayFullBlock215.snapshot 33554432
    (diagonalRootsFrom 15663109 FullDiagonal.block000239.entries) = true := by
  apply RawReplay.checkRootCoverageBalanced_sound (fuel := 27)
  decide +kernel

theorem group014 : RawReplay.checkRootCoverage
    ReplayFullBlock215.snapshot 33554432
    (diagonalRootsFrom 14680069 FullDiagonal.group014.entries) = true :=
  (CheckedDiagonalBlock.rootCoverage_append
    ReplayFullBlock215.snapshot 33554432 ((((((((((((((FullDiagonal.block000224.append FullDiagonal.block000225).append FullDiagonal.block000226).append FullDiagonal.block000227).append FullDiagonal.block000228).append FullDiagonal.block000229).append FullDiagonal.block000230).append FullDiagonal.block000231).append FullDiagonal.block000232).append FullDiagonal.block000233).append FullDiagonal.block000234).append FullDiagonal.block000235).append FullDiagonal.block000236).append FullDiagonal.block000237).append FullDiagonal.block000238) FullDiagonal.block000239
    (CheckedDiagonalBlock.rootCoverage_append
    ReplayFullBlock215.snapshot 33554432 (((((((((((((FullDiagonal.block000224.append FullDiagonal.block000225).append FullDiagonal.block000226).append FullDiagonal.block000227).append FullDiagonal.block000228).append FullDiagonal.block000229).append FullDiagonal.block000230).append FullDiagonal.block000231).append FullDiagonal.block000232).append FullDiagonal.block000233).append FullDiagonal.block000234).append FullDiagonal.block000235).append FullDiagonal.block000236).append FullDiagonal.block000237) FullDiagonal.block000238
    (CheckedDiagonalBlock.rootCoverage_append
    ReplayFullBlock215.snapshot 33554432 ((((((((((((FullDiagonal.block000224.append FullDiagonal.block000225).append FullDiagonal.block000226).append FullDiagonal.block000227).append FullDiagonal.block000228).append FullDiagonal.block000229).append FullDiagonal.block000230).append FullDiagonal.block000231).append FullDiagonal.block000232).append FullDiagonal.block000233).append FullDiagonal.block000234).append FullDiagonal.block000235).append FullDiagonal.block000236) FullDiagonal.block000237
    (CheckedDiagonalBlock.rootCoverage_append
    ReplayFullBlock215.snapshot 33554432 (((((((((((FullDiagonal.block000224.append FullDiagonal.block000225).append FullDiagonal.block000226).append FullDiagonal.block000227).append FullDiagonal.block000228).append FullDiagonal.block000229).append FullDiagonal.block000230).append FullDiagonal.block000231).append FullDiagonal.block000232).append FullDiagonal.block000233).append FullDiagonal.block000234).append FullDiagonal.block000235) FullDiagonal.block000236
    (CheckedDiagonalBlock.rootCoverage_append
    ReplayFullBlock215.snapshot 33554432 ((((((((((FullDiagonal.block000224.append FullDiagonal.block000225).append FullDiagonal.block000226).append FullDiagonal.block000227).append FullDiagonal.block000228).append FullDiagonal.block000229).append FullDiagonal.block000230).append FullDiagonal.block000231).append FullDiagonal.block000232).append FullDiagonal.block000233).append FullDiagonal.block000234) FullDiagonal.block000235
    (CheckedDiagonalBlock.rootCoverage_append
    ReplayFullBlock215.snapshot 33554432 (((((((((FullDiagonal.block000224.append FullDiagonal.block000225).append FullDiagonal.block000226).append FullDiagonal.block000227).append FullDiagonal.block000228).append FullDiagonal.block000229).append FullDiagonal.block000230).append FullDiagonal.block000231).append FullDiagonal.block000232).append FullDiagonal.block000233) FullDiagonal.block000234
    (CheckedDiagonalBlock.rootCoverage_append
    ReplayFullBlock215.snapshot 33554432 ((((((((FullDiagonal.block000224.append FullDiagonal.block000225).append FullDiagonal.block000226).append FullDiagonal.block000227).append FullDiagonal.block000228).append FullDiagonal.block000229).append FullDiagonal.block000230).append FullDiagonal.block000231).append FullDiagonal.block000232) FullDiagonal.block000233
    (CheckedDiagonalBlock.rootCoverage_append
    ReplayFullBlock215.snapshot 33554432 (((((((FullDiagonal.block000224.append FullDiagonal.block000225).append FullDiagonal.block000226).append FullDiagonal.block000227).append FullDiagonal.block000228).append FullDiagonal.block000229).append FullDiagonal.block000230).append FullDiagonal.block000231) FullDiagonal.block000232
    (CheckedDiagonalBlock.rootCoverage_append
    ReplayFullBlock215.snapshot 33554432 ((((((FullDiagonal.block000224.append FullDiagonal.block000225).append FullDiagonal.block000226).append FullDiagonal.block000227).append FullDiagonal.block000228).append FullDiagonal.block000229).append FullDiagonal.block000230) FullDiagonal.block000231
    (CheckedDiagonalBlock.rootCoverage_append
    ReplayFullBlock215.snapshot 33554432 (((((FullDiagonal.block000224.append FullDiagonal.block000225).append FullDiagonal.block000226).append FullDiagonal.block000227).append FullDiagonal.block000228).append FullDiagonal.block000229) FullDiagonal.block000230
    (CheckedDiagonalBlock.rootCoverage_append
    ReplayFullBlock215.snapshot 33554432 ((((FullDiagonal.block000224.append FullDiagonal.block000225).append FullDiagonal.block000226).append FullDiagonal.block000227).append FullDiagonal.block000228) FullDiagonal.block000229
    (CheckedDiagonalBlock.rootCoverage_append
    ReplayFullBlock215.snapshot 33554432 (((FullDiagonal.block000224.append FullDiagonal.block000225).append FullDiagonal.block000226).append FullDiagonal.block000227) FullDiagonal.block000228
    (CheckedDiagonalBlock.rootCoverage_append
    ReplayFullBlock215.snapshot 33554432 ((FullDiagonal.block000224.append FullDiagonal.block000225).append FullDiagonal.block000226) FullDiagonal.block000227
    (CheckedDiagonalBlock.rootCoverage_append
    ReplayFullBlock215.snapshot 33554432 (FullDiagonal.block000224.append FullDiagonal.block000225) FullDiagonal.block000226
    (CheckedDiagonalBlock.rootCoverage_append
    ReplayFullBlock215.snapshot 33554432 FullDiagonal.block000224 FullDiagonal.block000225
    block000224 block000225) block000226) block000227) block000228) block000229) block000230) block000231) block000232) block000233) block000234) block000235) block000236) block000237) block000238) block000239)

end JSP848.FullCoverage
