import JSP848.ReplayFullBlock215.Replay
import JSP848.FullDiagonal.Group013
import JSP848.ProgressionCoverage

set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0

namespace JSP848.FullCoverage

#time theorem block000208 : RawReplay.checkRootCoverage
    ReplayFullBlock215.snapshot 33554432
    (diagonalRootsFrom 13631493 FullDiagonal.block000208.entries) = true := by
  apply RawReplay.checkRootCoverageBalanced_sound (fuel := 27)
  decide +kernel

#time theorem block000209 : RawReplay.checkRootCoverage
    ReplayFullBlock215.snapshot 33554432
    (diagonalRootsFrom 13697029 FullDiagonal.block000209.entries) = true := by
  apply RawReplay.checkRootCoverageBalanced_sound (fuel := 27)
  decide +kernel

#time theorem block000210 : RawReplay.checkRootCoverage
    ReplayFullBlock215.snapshot 33554432
    (diagonalRootsFrom 13762565 FullDiagonal.block000210.entries) = true := by
  apply RawReplay.checkRootCoverageBalanced_sound (fuel := 27)
  decide +kernel

#time theorem block000211 : RawReplay.checkRootCoverage
    ReplayFullBlock215.snapshot 33554432
    (diagonalRootsFrom 13828101 FullDiagonal.block000211.entries) = true := by
  apply RawReplay.checkRootCoverageBalanced_sound (fuel := 27)
  decide +kernel

#time theorem block000212 : RawReplay.checkRootCoverage
    ReplayFullBlock215.snapshot 33554432
    (diagonalRootsFrom 13893637 FullDiagonal.block000212.entries) = true := by
  apply RawReplay.checkRootCoverageBalanced_sound (fuel := 27)
  decide +kernel

#time theorem block000213 : RawReplay.checkRootCoverage
    ReplayFullBlock215.snapshot 33554432
    (diagonalRootsFrom 13959173 FullDiagonal.block000213.entries) = true := by
  apply RawReplay.checkRootCoverageBalanced_sound (fuel := 27)
  decide +kernel

#time theorem block000214 : RawReplay.checkRootCoverage
    ReplayFullBlock215.snapshot 33554432
    (diagonalRootsFrom 14024709 FullDiagonal.block000214.entries) = true := by
  apply RawReplay.checkRootCoverageBalanced_sound (fuel := 27)
  decide +kernel

#time theorem block000215 : RawReplay.checkRootCoverage
    ReplayFullBlock215.snapshot 33554432
    (diagonalRootsFrom 14090245 FullDiagonal.block000215.entries) = true := by
  apply RawReplay.checkRootCoverageBalanced_sound (fuel := 27)
  decide +kernel

#time theorem block000216 : RawReplay.checkRootCoverage
    ReplayFullBlock215.snapshot 33554432
    (diagonalRootsFrom 14155781 FullDiagonal.block000216.entries) = true := by
  apply RawReplay.checkRootCoverageBalanced_sound (fuel := 27)
  decide +kernel

#time theorem block000217 : RawReplay.checkRootCoverage
    ReplayFullBlock215.snapshot 33554432
    (diagonalRootsFrom 14221317 FullDiagonal.block000217.entries) = true := by
  apply RawReplay.checkRootCoverageBalanced_sound (fuel := 27)
  decide +kernel

#time theorem block000218 : RawReplay.checkRootCoverage
    ReplayFullBlock215.snapshot 33554432
    (diagonalRootsFrom 14286853 FullDiagonal.block000218.entries) = true := by
  apply RawReplay.checkRootCoverageBalanced_sound (fuel := 27)
  decide +kernel

#time theorem block000219 : RawReplay.checkRootCoverage
    ReplayFullBlock215.snapshot 33554432
    (diagonalRootsFrom 14352389 FullDiagonal.block000219.entries) = true := by
  apply RawReplay.checkRootCoverageBalanced_sound (fuel := 27)
  decide +kernel

#time theorem block000220 : RawReplay.checkRootCoverage
    ReplayFullBlock215.snapshot 33554432
    (diagonalRootsFrom 14417925 FullDiagonal.block000220.entries) = true := by
  apply RawReplay.checkRootCoverageBalanced_sound (fuel := 27)
  decide +kernel

#time theorem block000221 : RawReplay.checkRootCoverage
    ReplayFullBlock215.snapshot 33554432
    (diagonalRootsFrom 14483461 FullDiagonal.block000221.entries) = true := by
  apply RawReplay.checkRootCoverageBalanced_sound (fuel := 27)
  decide +kernel

#time theorem block000222 : RawReplay.checkRootCoverage
    ReplayFullBlock215.snapshot 33554432
    (diagonalRootsFrom 14548997 FullDiagonal.block000222.entries) = true := by
  apply RawReplay.checkRootCoverageBalanced_sound (fuel := 27)
  decide +kernel

#time theorem block000223 : RawReplay.checkRootCoverage
    ReplayFullBlock215.snapshot 33554432
    (diagonalRootsFrom 14614533 FullDiagonal.block000223.entries) = true := by
  apply RawReplay.checkRootCoverageBalanced_sound (fuel := 27)
  decide +kernel

theorem group013 : RawReplay.checkRootCoverage
    ReplayFullBlock215.snapshot 33554432
    (diagonalRootsFrom 13631493 FullDiagonal.group013.entries) = true :=
  (CheckedDiagonalBlock.rootCoverage_append
    ReplayFullBlock215.snapshot 33554432 ((((((((((((((FullDiagonal.block000208.append FullDiagonal.block000209).append FullDiagonal.block000210).append FullDiagonal.block000211).append FullDiagonal.block000212).append FullDiagonal.block000213).append FullDiagonal.block000214).append FullDiagonal.block000215).append FullDiagonal.block000216).append FullDiagonal.block000217).append FullDiagonal.block000218).append FullDiagonal.block000219).append FullDiagonal.block000220).append FullDiagonal.block000221).append FullDiagonal.block000222) FullDiagonal.block000223
    (CheckedDiagonalBlock.rootCoverage_append
    ReplayFullBlock215.snapshot 33554432 (((((((((((((FullDiagonal.block000208.append FullDiagonal.block000209).append FullDiagonal.block000210).append FullDiagonal.block000211).append FullDiagonal.block000212).append FullDiagonal.block000213).append FullDiagonal.block000214).append FullDiagonal.block000215).append FullDiagonal.block000216).append FullDiagonal.block000217).append FullDiagonal.block000218).append FullDiagonal.block000219).append FullDiagonal.block000220).append FullDiagonal.block000221) FullDiagonal.block000222
    (CheckedDiagonalBlock.rootCoverage_append
    ReplayFullBlock215.snapshot 33554432 ((((((((((((FullDiagonal.block000208.append FullDiagonal.block000209).append FullDiagonal.block000210).append FullDiagonal.block000211).append FullDiagonal.block000212).append FullDiagonal.block000213).append FullDiagonal.block000214).append FullDiagonal.block000215).append FullDiagonal.block000216).append FullDiagonal.block000217).append FullDiagonal.block000218).append FullDiagonal.block000219).append FullDiagonal.block000220) FullDiagonal.block000221
    (CheckedDiagonalBlock.rootCoverage_append
    ReplayFullBlock215.snapshot 33554432 (((((((((((FullDiagonal.block000208.append FullDiagonal.block000209).append FullDiagonal.block000210).append FullDiagonal.block000211).append FullDiagonal.block000212).append FullDiagonal.block000213).append FullDiagonal.block000214).append FullDiagonal.block000215).append FullDiagonal.block000216).append FullDiagonal.block000217).append FullDiagonal.block000218).append FullDiagonal.block000219) FullDiagonal.block000220
    (CheckedDiagonalBlock.rootCoverage_append
    ReplayFullBlock215.snapshot 33554432 ((((((((((FullDiagonal.block000208.append FullDiagonal.block000209).append FullDiagonal.block000210).append FullDiagonal.block000211).append FullDiagonal.block000212).append FullDiagonal.block000213).append FullDiagonal.block000214).append FullDiagonal.block000215).append FullDiagonal.block000216).append FullDiagonal.block000217).append FullDiagonal.block000218) FullDiagonal.block000219
    (CheckedDiagonalBlock.rootCoverage_append
    ReplayFullBlock215.snapshot 33554432 (((((((((FullDiagonal.block000208.append FullDiagonal.block000209).append FullDiagonal.block000210).append FullDiagonal.block000211).append FullDiagonal.block000212).append FullDiagonal.block000213).append FullDiagonal.block000214).append FullDiagonal.block000215).append FullDiagonal.block000216).append FullDiagonal.block000217) FullDiagonal.block000218
    (CheckedDiagonalBlock.rootCoverage_append
    ReplayFullBlock215.snapshot 33554432 ((((((((FullDiagonal.block000208.append FullDiagonal.block000209).append FullDiagonal.block000210).append FullDiagonal.block000211).append FullDiagonal.block000212).append FullDiagonal.block000213).append FullDiagonal.block000214).append FullDiagonal.block000215).append FullDiagonal.block000216) FullDiagonal.block000217
    (CheckedDiagonalBlock.rootCoverage_append
    ReplayFullBlock215.snapshot 33554432 (((((((FullDiagonal.block000208.append FullDiagonal.block000209).append FullDiagonal.block000210).append FullDiagonal.block000211).append FullDiagonal.block000212).append FullDiagonal.block000213).append FullDiagonal.block000214).append FullDiagonal.block000215) FullDiagonal.block000216
    (CheckedDiagonalBlock.rootCoverage_append
    ReplayFullBlock215.snapshot 33554432 ((((((FullDiagonal.block000208.append FullDiagonal.block000209).append FullDiagonal.block000210).append FullDiagonal.block000211).append FullDiagonal.block000212).append FullDiagonal.block000213).append FullDiagonal.block000214) FullDiagonal.block000215
    (CheckedDiagonalBlock.rootCoverage_append
    ReplayFullBlock215.snapshot 33554432 (((((FullDiagonal.block000208.append FullDiagonal.block000209).append FullDiagonal.block000210).append FullDiagonal.block000211).append FullDiagonal.block000212).append FullDiagonal.block000213) FullDiagonal.block000214
    (CheckedDiagonalBlock.rootCoverage_append
    ReplayFullBlock215.snapshot 33554432 ((((FullDiagonal.block000208.append FullDiagonal.block000209).append FullDiagonal.block000210).append FullDiagonal.block000211).append FullDiagonal.block000212) FullDiagonal.block000213
    (CheckedDiagonalBlock.rootCoverage_append
    ReplayFullBlock215.snapshot 33554432 (((FullDiagonal.block000208.append FullDiagonal.block000209).append FullDiagonal.block000210).append FullDiagonal.block000211) FullDiagonal.block000212
    (CheckedDiagonalBlock.rootCoverage_append
    ReplayFullBlock215.snapshot 33554432 ((FullDiagonal.block000208.append FullDiagonal.block000209).append FullDiagonal.block000210) FullDiagonal.block000211
    (CheckedDiagonalBlock.rootCoverage_append
    ReplayFullBlock215.snapshot 33554432 (FullDiagonal.block000208.append FullDiagonal.block000209) FullDiagonal.block000210
    (CheckedDiagonalBlock.rootCoverage_append
    ReplayFullBlock215.snapshot 33554432 FullDiagonal.block000208 FullDiagonal.block000209
    block000208 block000209) block000210) block000211) block000212) block000213) block000214) block000215) block000216) block000217) block000218) block000219) block000220) block000221) block000222) block000223)

end JSP848.FullCoverage
