import JSP848.DenseRootCoverageBlock
import JSP848.ReplayFullBlock215.Replay
import JSP848.FullDiagonal.Group000
import JSP848.ProgressionCoverage

set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0

namespace JSP848.FullCoverage

theorem block000000 : RawReplay.checkRootCoverage
    ReplayFullBlock215.snapshot 33554432
    (diagonalRootsFrom 5 FullDiagonal.block000000.entries) = true :=
  DenseRootCoverage.block000000

#time theorem block000001 : RawReplay.checkRootCoverage
    ReplayFullBlock215.snapshot 33554432
    (diagonalRootsFrom 65541 FullDiagonal.block000001.entries) = true := by
  apply RawReplay.checkRootCoverageBalanced_sound (fuel := 27)
  decide +kernel

#time theorem block000002 : RawReplay.checkRootCoverage
    ReplayFullBlock215.snapshot 33554432
    (diagonalRootsFrom 131077 FullDiagonal.block000002.entries) = true := by
  apply RawReplay.checkRootCoverageBalanced_sound (fuel := 27)
  decide +kernel

#time theorem block000003 : RawReplay.checkRootCoverage
    ReplayFullBlock215.snapshot 33554432
    (diagonalRootsFrom 196613 FullDiagonal.block000003.entries) = true := by
  apply RawReplay.checkRootCoverageBalanced_sound (fuel := 27)
  decide +kernel

#time theorem block000004 : RawReplay.checkRootCoverage
    ReplayFullBlock215.snapshot 33554432
    (diagonalRootsFrom 262149 FullDiagonal.block000004.entries) = true := by
  apply RawReplay.checkRootCoverageBalanced_sound (fuel := 27)
  decide +kernel

#time theorem block000005 : RawReplay.checkRootCoverage
    ReplayFullBlock215.snapshot 33554432
    (diagonalRootsFrom 327685 FullDiagonal.block000005.entries) = true := by
  apply RawReplay.checkRootCoverageBalanced_sound (fuel := 27)
  decide +kernel

#time theorem block000006 : RawReplay.checkRootCoverage
    ReplayFullBlock215.snapshot 33554432
    (diagonalRootsFrom 393221 FullDiagonal.block000006.entries) = true := by
  apply RawReplay.checkRootCoverageBalanced_sound (fuel := 27)
  decide +kernel

#time theorem block000007 : RawReplay.checkRootCoverage
    ReplayFullBlock215.snapshot 33554432
    (diagonalRootsFrom 458757 FullDiagonal.block000007.entries) = true := by
  apply RawReplay.checkRootCoverageBalanced_sound (fuel := 27)
  decide +kernel

#time theorem block000008 : RawReplay.checkRootCoverage
    ReplayFullBlock215.snapshot 33554432
    (diagonalRootsFrom 524293 FullDiagonal.block000008.entries) = true := by
  apply RawReplay.checkRootCoverageBalanced_sound (fuel := 27)
  decide +kernel

#time theorem block000009 : RawReplay.checkRootCoverage
    ReplayFullBlock215.snapshot 33554432
    (diagonalRootsFrom 589829 FullDiagonal.block000009.entries) = true := by
  apply RawReplay.checkRootCoverageBalanced_sound (fuel := 27)
  decide +kernel

#time theorem block000010 : RawReplay.checkRootCoverage
    ReplayFullBlock215.snapshot 33554432
    (diagonalRootsFrom 655365 FullDiagonal.block000010.entries) = true := by
  apply RawReplay.checkRootCoverageBalanced_sound (fuel := 27)
  decide +kernel

#time theorem block000011 : RawReplay.checkRootCoverage
    ReplayFullBlock215.snapshot 33554432
    (diagonalRootsFrom 720901 FullDiagonal.block000011.entries) = true := by
  apply RawReplay.checkRootCoverageBalanced_sound (fuel := 27)
  decide +kernel

#time theorem block000012 : RawReplay.checkRootCoverage
    ReplayFullBlock215.snapshot 33554432
    (diagonalRootsFrom 786437 FullDiagonal.block000012.entries) = true := by
  apply RawReplay.checkRootCoverageBalanced_sound (fuel := 27)
  decide +kernel

#time theorem block000013 : RawReplay.checkRootCoverage
    ReplayFullBlock215.snapshot 33554432
    (diagonalRootsFrom 851973 FullDiagonal.block000013.entries) = true := by
  apply RawReplay.checkRootCoverageBalanced_sound (fuel := 27)
  decide +kernel

#time theorem block000014 : RawReplay.checkRootCoverage
    ReplayFullBlock215.snapshot 33554432
    (diagonalRootsFrom 917509 FullDiagonal.block000014.entries) = true := by
  apply RawReplay.checkRootCoverageBalanced_sound (fuel := 27)
  decide +kernel

#time theorem block000015 : RawReplay.checkRootCoverage
    ReplayFullBlock215.snapshot 33554432
    (diagonalRootsFrom 983045 FullDiagonal.block000015.entries) = true := by
  apply RawReplay.checkRootCoverageBalanced_sound (fuel := 27)
  decide +kernel

theorem group000 : RawReplay.checkRootCoverage
    ReplayFullBlock215.snapshot 33554432
    (diagonalRootsFrom 5 FullDiagonal.group000.entries) = true :=
  (CheckedDiagonalBlock.rootCoverage_append
    ReplayFullBlock215.snapshot 33554432 ((((((((((((((FullDiagonal.block000000.append FullDiagonal.block000001).append FullDiagonal.block000002).append FullDiagonal.block000003).append FullDiagonal.block000004).append FullDiagonal.block000005).append FullDiagonal.block000006).append FullDiagonal.block000007).append FullDiagonal.block000008).append FullDiagonal.block000009).append FullDiagonal.block000010).append FullDiagonal.block000011).append FullDiagonal.block000012).append FullDiagonal.block000013).append FullDiagonal.block000014) FullDiagonal.block000015
    (CheckedDiagonalBlock.rootCoverage_append
    ReplayFullBlock215.snapshot 33554432 (((((((((((((FullDiagonal.block000000.append FullDiagonal.block000001).append FullDiagonal.block000002).append FullDiagonal.block000003).append FullDiagonal.block000004).append FullDiagonal.block000005).append FullDiagonal.block000006).append FullDiagonal.block000007).append FullDiagonal.block000008).append FullDiagonal.block000009).append FullDiagonal.block000010).append FullDiagonal.block000011).append FullDiagonal.block000012).append FullDiagonal.block000013) FullDiagonal.block000014
    (CheckedDiagonalBlock.rootCoverage_append
    ReplayFullBlock215.snapshot 33554432 ((((((((((((FullDiagonal.block000000.append FullDiagonal.block000001).append FullDiagonal.block000002).append FullDiagonal.block000003).append FullDiagonal.block000004).append FullDiagonal.block000005).append FullDiagonal.block000006).append FullDiagonal.block000007).append FullDiagonal.block000008).append FullDiagonal.block000009).append FullDiagonal.block000010).append FullDiagonal.block000011).append FullDiagonal.block000012) FullDiagonal.block000013
    (CheckedDiagonalBlock.rootCoverage_append
    ReplayFullBlock215.snapshot 33554432 (((((((((((FullDiagonal.block000000.append FullDiagonal.block000001).append FullDiagonal.block000002).append FullDiagonal.block000003).append FullDiagonal.block000004).append FullDiagonal.block000005).append FullDiagonal.block000006).append FullDiagonal.block000007).append FullDiagonal.block000008).append FullDiagonal.block000009).append FullDiagonal.block000010).append FullDiagonal.block000011) FullDiagonal.block000012
    (CheckedDiagonalBlock.rootCoverage_append
    ReplayFullBlock215.snapshot 33554432 ((((((((((FullDiagonal.block000000.append FullDiagonal.block000001).append FullDiagonal.block000002).append FullDiagonal.block000003).append FullDiagonal.block000004).append FullDiagonal.block000005).append FullDiagonal.block000006).append FullDiagonal.block000007).append FullDiagonal.block000008).append FullDiagonal.block000009).append FullDiagonal.block000010) FullDiagonal.block000011
    (CheckedDiagonalBlock.rootCoverage_append
    ReplayFullBlock215.snapshot 33554432 (((((((((FullDiagonal.block000000.append FullDiagonal.block000001).append FullDiagonal.block000002).append FullDiagonal.block000003).append FullDiagonal.block000004).append FullDiagonal.block000005).append FullDiagonal.block000006).append FullDiagonal.block000007).append FullDiagonal.block000008).append FullDiagonal.block000009) FullDiagonal.block000010
    (CheckedDiagonalBlock.rootCoverage_append
    ReplayFullBlock215.snapshot 33554432 ((((((((FullDiagonal.block000000.append FullDiagonal.block000001).append FullDiagonal.block000002).append FullDiagonal.block000003).append FullDiagonal.block000004).append FullDiagonal.block000005).append FullDiagonal.block000006).append FullDiagonal.block000007).append FullDiagonal.block000008) FullDiagonal.block000009
    (CheckedDiagonalBlock.rootCoverage_append
    ReplayFullBlock215.snapshot 33554432 (((((((FullDiagonal.block000000.append FullDiagonal.block000001).append FullDiagonal.block000002).append FullDiagonal.block000003).append FullDiagonal.block000004).append FullDiagonal.block000005).append FullDiagonal.block000006).append FullDiagonal.block000007) FullDiagonal.block000008
    (CheckedDiagonalBlock.rootCoverage_append
    ReplayFullBlock215.snapshot 33554432 ((((((FullDiagonal.block000000.append FullDiagonal.block000001).append FullDiagonal.block000002).append FullDiagonal.block000003).append FullDiagonal.block000004).append FullDiagonal.block000005).append FullDiagonal.block000006) FullDiagonal.block000007
    (CheckedDiagonalBlock.rootCoverage_append
    ReplayFullBlock215.snapshot 33554432 (((((FullDiagonal.block000000.append FullDiagonal.block000001).append FullDiagonal.block000002).append FullDiagonal.block000003).append FullDiagonal.block000004).append FullDiagonal.block000005) FullDiagonal.block000006
    (CheckedDiagonalBlock.rootCoverage_append
    ReplayFullBlock215.snapshot 33554432 ((((FullDiagonal.block000000.append FullDiagonal.block000001).append FullDiagonal.block000002).append FullDiagonal.block000003).append FullDiagonal.block000004) FullDiagonal.block000005
    (CheckedDiagonalBlock.rootCoverage_append
    ReplayFullBlock215.snapshot 33554432 (((FullDiagonal.block000000.append FullDiagonal.block000001).append FullDiagonal.block000002).append FullDiagonal.block000003) FullDiagonal.block000004
    (CheckedDiagonalBlock.rootCoverage_append
    ReplayFullBlock215.snapshot 33554432 ((FullDiagonal.block000000.append FullDiagonal.block000001).append FullDiagonal.block000002) FullDiagonal.block000003
    (CheckedDiagonalBlock.rootCoverage_append
    ReplayFullBlock215.snapshot 33554432 (FullDiagonal.block000000.append FullDiagonal.block000001) FullDiagonal.block000002
    (CheckedDiagonalBlock.rootCoverage_append
    ReplayFullBlock215.snapshot 33554432 FullDiagonal.block000000 FullDiagonal.block000001
    block000000 block000001) block000002) block000003) block000004) block000005) block000006) block000007) block000008) block000009) block000010) block000011) block000012) block000013) block000014) block000015)

end JSP848.FullCoverage
