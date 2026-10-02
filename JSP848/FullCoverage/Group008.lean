import JSP848.ReplayFullBlock215.Replay
import JSP848.FullDiagonal.Group008
import JSP848.ProgressionCoverage

set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0

namespace JSP848.FullCoverage

#time theorem block000128 : RawReplay.checkRootCoverage
    ReplayFullBlock215.snapshot 33554432
    (diagonalRootsFrom 8388613 FullDiagonal.block000128.entries) = true := by
  apply RawReplay.checkRootCoverageBalanced_sound (fuel := 27)
  decide +kernel

#time theorem block000129 : RawReplay.checkRootCoverage
    ReplayFullBlock215.snapshot 33554432
    (diagonalRootsFrom 8454149 FullDiagonal.block000129.entries) = true := by
  apply RawReplay.checkRootCoverageBalanced_sound (fuel := 27)
  decide +kernel

#time theorem block000130 : RawReplay.checkRootCoverage
    ReplayFullBlock215.snapshot 33554432
    (diagonalRootsFrom 8519685 FullDiagonal.block000130.entries) = true := by
  apply RawReplay.checkRootCoverageBalanced_sound (fuel := 27)
  decide +kernel

#time theorem block000131 : RawReplay.checkRootCoverage
    ReplayFullBlock215.snapshot 33554432
    (diagonalRootsFrom 8585221 FullDiagonal.block000131.entries) = true := by
  apply RawReplay.checkRootCoverageBalanced_sound (fuel := 27)
  decide +kernel

#time theorem block000132 : RawReplay.checkRootCoverage
    ReplayFullBlock215.snapshot 33554432
    (diagonalRootsFrom 8650757 FullDiagonal.block000132.entries) = true := by
  apply RawReplay.checkRootCoverageBalanced_sound (fuel := 27)
  decide +kernel

#time theorem block000133 : RawReplay.checkRootCoverage
    ReplayFullBlock215.snapshot 33554432
    (diagonalRootsFrom 8716293 FullDiagonal.block000133.entries) = true := by
  apply RawReplay.checkRootCoverageBalanced_sound (fuel := 27)
  decide +kernel

#time theorem block000134 : RawReplay.checkRootCoverage
    ReplayFullBlock215.snapshot 33554432
    (diagonalRootsFrom 8781829 FullDiagonal.block000134.entries) = true := by
  apply RawReplay.checkRootCoverageBalanced_sound (fuel := 27)
  decide +kernel

#time theorem block000135 : RawReplay.checkRootCoverage
    ReplayFullBlock215.snapshot 33554432
    (diagonalRootsFrom 8847365 FullDiagonal.block000135.entries) = true := by
  apply RawReplay.checkRootCoverageBalanced_sound (fuel := 27)
  decide +kernel

#time theorem block000136 : RawReplay.checkRootCoverage
    ReplayFullBlock215.snapshot 33554432
    (diagonalRootsFrom 8912901 FullDiagonal.block000136.entries) = true := by
  apply RawReplay.checkRootCoverageBalanced_sound (fuel := 27)
  decide +kernel

#time theorem block000137 : RawReplay.checkRootCoverage
    ReplayFullBlock215.snapshot 33554432
    (diagonalRootsFrom 8978437 FullDiagonal.block000137.entries) = true := by
  apply RawReplay.checkRootCoverageBalanced_sound (fuel := 27)
  decide +kernel

#time theorem block000138 : RawReplay.checkRootCoverage
    ReplayFullBlock215.snapshot 33554432
    (diagonalRootsFrom 9043973 FullDiagonal.block000138.entries) = true := by
  apply RawReplay.checkRootCoverageBalanced_sound (fuel := 27)
  decide +kernel

#time theorem block000139 : RawReplay.checkRootCoverage
    ReplayFullBlock215.snapshot 33554432
    (diagonalRootsFrom 9109509 FullDiagonal.block000139.entries) = true := by
  apply RawReplay.checkRootCoverageBalanced_sound (fuel := 27)
  decide +kernel

#time theorem block000140 : RawReplay.checkRootCoverage
    ReplayFullBlock215.snapshot 33554432
    (diagonalRootsFrom 9175045 FullDiagonal.block000140.entries) = true := by
  apply RawReplay.checkRootCoverageBalanced_sound (fuel := 27)
  decide +kernel

#time theorem block000141 : RawReplay.checkRootCoverage
    ReplayFullBlock215.snapshot 33554432
    (diagonalRootsFrom 9240581 FullDiagonal.block000141.entries) = true := by
  apply RawReplay.checkRootCoverageBalanced_sound (fuel := 27)
  decide +kernel

#time theorem block000142 : RawReplay.checkRootCoverage
    ReplayFullBlock215.snapshot 33554432
    (diagonalRootsFrom 9306117 FullDiagonal.block000142.entries) = true := by
  apply RawReplay.checkRootCoverageBalanced_sound (fuel := 27)
  decide +kernel

#time theorem block000143 : RawReplay.checkRootCoverage
    ReplayFullBlock215.snapshot 33554432
    (diagonalRootsFrom 9371653 FullDiagonal.block000143.entries) = true := by
  apply RawReplay.checkRootCoverageBalanced_sound (fuel := 27)
  decide +kernel

theorem group008 : RawReplay.checkRootCoverage
    ReplayFullBlock215.snapshot 33554432
    (diagonalRootsFrom 8388613 FullDiagonal.group008.entries) = true :=
  (CheckedDiagonalBlock.rootCoverage_append
    ReplayFullBlock215.snapshot 33554432 ((((((((((((((FullDiagonal.block000128.append FullDiagonal.block000129).append FullDiagonal.block000130).append FullDiagonal.block000131).append FullDiagonal.block000132).append FullDiagonal.block000133).append FullDiagonal.block000134).append FullDiagonal.block000135).append FullDiagonal.block000136).append FullDiagonal.block000137).append FullDiagonal.block000138).append FullDiagonal.block000139).append FullDiagonal.block000140).append FullDiagonal.block000141).append FullDiagonal.block000142) FullDiagonal.block000143
    (CheckedDiagonalBlock.rootCoverage_append
    ReplayFullBlock215.snapshot 33554432 (((((((((((((FullDiagonal.block000128.append FullDiagonal.block000129).append FullDiagonal.block000130).append FullDiagonal.block000131).append FullDiagonal.block000132).append FullDiagonal.block000133).append FullDiagonal.block000134).append FullDiagonal.block000135).append FullDiagonal.block000136).append FullDiagonal.block000137).append FullDiagonal.block000138).append FullDiagonal.block000139).append FullDiagonal.block000140).append FullDiagonal.block000141) FullDiagonal.block000142
    (CheckedDiagonalBlock.rootCoverage_append
    ReplayFullBlock215.snapshot 33554432 ((((((((((((FullDiagonal.block000128.append FullDiagonal.block000129).append FullDiagonal.block000130).append FullDiagonal.block000131).append FullDiagonal.block000132).append FullDiagonal.block000133).append FullDiagonal.block000134).append FullDiagonal.block000135).append FullDiagonal.block000136).append FullDiagonal.block000137).append FullDiagonal.block000138).append FullDiagonal.block000139).append FullDiagonal.block000140) FullDiagonal.block000141
    (CheckedDiagonalBlock.rootCoverage_append
    ReplayFullBlock215.snapshot 33554432 (((((((((((FullDiagonal.block000128.append FullDiagonal.block000129).append FullDiagonal.block000130).append FullDiagonal.block000131).append FullDiagonal.block000132).append FullDiagonal.block000133).append FullDiagonal.block000134).append FullDiagonal.block000135).append FullDiagonal.block000136).append FullDiagonal.block000137).append FullDiagonal.block000138).append FullDiagonal.block000139) FullDiagonal.block000140
    (CheckedDiagonalBlock.rootCoverage_append
    ReplayFullBlock215.snapshot 33554432 ((((((((((FullDiagonal.block000128.append FullDiagonal.block000129).append FullDiagonal.block000130).append FullDiagonal.block000131).append FullDiagonal.block000132).append FullDiagonal.block000133).append FullDiagonal.block000134).append FullDiagonal.block000135).append FullDiagonal.block000136).append FullDiagonal.block000137).append FullDiagonal.block000138) FullDiagonal.block000139
    (CheckedDiagonalBlock.rootCoverage_append
    ReplayFullBlock215.snapshot 33554432 (((((((((FullDiagonal.block000128.append FullDiagonal.block000129).append FullDiagonal.block000130).append FullDiagonal.block000131).append FullDiagonal.block000132).append FullDiagonal.block000133).append FullDiagonal.block000134).append FullDiagonal.block000135).append FullDiagonal.block000136).append FullDiagonal.block000137) FullDiagonal.block000138
    (CheckedDiagonalBlock.rootCoverage_append
    ReplayFullBlock215.snapshot 33554432 ((((((((FullDiagonal.block000128.append FullDiagonal.block000129).append FullDiagonal.block000130).append FullDiagonal.block000131).append FullDiagonal.block000132).append FullDiagonal.block000133).append FullDiagonal.block000134).append FullDiagonal.block000135).append FullDiagonal.block000136) FullDiagonal.block000137
    (CheckedDiagonalBlock.rootCoverage_append
    ReplayFullBlock215.snapshot 33554432 (((((((FullDiagonal.block000128.append FullDiagonal.block000129).append FullDiagonal.block000130).append FullDiagonal.block000131).append FullDiagonal.block000132).append FullDiagonal.block000133).append FullDiagonal.block000134).append FullDiagonal.block000135) FullDiagonal.block000136
    (CheckedDiagonalBlock.rootCoverage_append
    ReplayFullBlock215.snapshot 33554432 ((((((FullDiagonal.block000128.append FullDiagonal.block000129).append FullDiagonal.block000130).append FullDiagonal.block000131).append FullDiagonal.block000132).append FullDiagonal.block000133).append FullDiagonal.block000134) FullDiagonal.block000135
    (CheckedDiagonalBlock.rootCoverage_append
    ReplayFullBlock215.snapshot 33554432 (((((FullDiagonal.block000128.append FullDiagonal.block000129).append FullDiagonal.block000130).append FullDiagonal.block000131).append FullDiagonal.block000132).append FullDiagonal.block000133) FullDiagonal.block000134
    (CheckedDiagonalBlock.rootCoverage_append
    ReplayFullBlock215.snapshot 33554432 ((((FullDiagonal.block000128.append FullDiagonal.block000129).append FullDiagonal.block000130).append FullDiagonal.block000131).append FullDiagonal.block000132) FullDiagonal.block000133
    (CheckedDiagonalBlock.rootCoverage_append
    ReplayFullBlock215.snapshot 33554432 (((FullDiagonal.block000128.append FullDiagonal.block000129).append FullDiagonal.block000130).append FullDiagonal.block000131) FullDiagonal.block000132
    (CheckedDiagonalBlock.rootCoverage_append
    ReplayFullBlock215.snapshot 33554432 ((FullDiagonal.block000128.append FullDiagonal.block000129).append FullDiagonal.block000130) FullDiagonal.block000131
    (CheckedDiagonalBlock.rootCoverage_append
    ReplayFullBlock215.snapshot 33554432 (FullDiagonal.block000128.append FullDiagonal.block000129) FullDiagonal.block000130
    (CheckedDiagonalBlock.rootCoverage_append
    ReplayFullBlock215.snapshot 33554432 FullDiagonal.block000128 FullDiagonal.block000129
    block000128 block000129) block000130) block000131) block000132) block000133) block000134) block000135) block000136) block000137) block000138) block000139) block000140) block000141) block000142) block000143)

end JSP848.FullCoverage
