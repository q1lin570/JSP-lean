import JSP848.ReplayFullBlock215.Replay
import JSP848.FullDiagonal.Group009
import JSP848.ProgressionCoverage

set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0

namespace JSP848.FullCoverage

#time theorem block000144 : RawReplay.checkRootCoverage
    ReplayFullBlock215.snapshot 33554432
    (diagonalRootsFrom 9437189 FullDiagonal.block000144.entries) = true := by
  apply RawReplay.checkRootCoverageBalanced_sound (fuel := 27)
  decide +kernel

#time theorem block000145 : RawReplay.checkRootCoverage
    ReplayFullBlock215.snapshot 33554432
    (diagonalRootsFrom 9502725 FullDiagonal.block000145.entries) = true := by
  apply RawReplay.checkRootCoverageBalanced_sound (fuel := 27)
  decide +kernel

#time theorem block000146 : RawReplay.checkRootCoverage
    ReplayFullBlock215.snapshot 33554432
    (diagonalRootsFrom 9568261 FullDiagonal.block000146.entries) = true := by
  apply RawReplay.checkRootCoverageBalanced_sound (fuel := 27)
  decide +kernel

#time theorem block000147 : RawReplay.checkRootCoverage
    ReplayFullBlock215.snapshot 33554432
    (diagonalRootsFrom 9633797 FullDiagonal.block000147.entries) = true := by
  apply RawReplay.checkRootCoverageBalanced_sound (fuel := 27)
  decide +kernel

#time theorem block000148 : RawReplay.checkRootCoverage
    ReplayFullBlock215.snapshot 33554432
    (diagonalRootsFrom 9699333 FullDiagonal.block000148.entries) = true := by
  apply RawReplay.checkRootCoverageBalanced_sound (fuel := 27)
  decide +kernel

#time theorem block000149 : RawReplay.checkRootCoverage
    ReplayFullBlock215.snapshot 33554432
    (diagonalRootsFrom 9764869 FullDiagonal.block000149.entries) = true := by
  apply RawReplay.checkRootCoverageBalanced_sound (fuel := 27)
  decide +kernel

#time theorem block000150 : RawReplay.checkRootCoverage
    ReplayFullBlock215.snapshot 33554432
    (diagonalRootsFrom 9830405 FullDiagonal.block000150.entries) = true := by
  apply RawReplay.checkRootCoverageBalanced_sound (fuel := 27)
  decide +kernel

#time theorem block000151 : RawReplay.checkRootCoverage
    ReplayFullBlock215.snapshot 33554432
    (diagonalRootsFrom 9895941 FullDiagonal.block000151.entries) = true := by
  apply RawReplay.checkRootCoverageBalanced_sound (fuel := 27)
  decide +kernel

#time theorem block000152 : RawReplay.checkRootCoverage
    ReplayFullBlock215.snapshot 33554432
    (diagonalRootsFrom 9961477 FullDiagonal.block000152.entries) = true := by
  apply RawReplay.checkRootCoverageBalanced_sound (fuel := 27)
  decide +kernel

#time theorem block000153 : RawReplay.checkRootCoverage
    ReplayFullBlock215.snapshot 33554432
    (diagonalRootsFrom 10027013 FullDiagonal.block000153.entries) = true := by
  apply RawReplay.checkRootCoverageBalanced_sound (fuel := 27)
  decide +kernel

#time theorem block000154 : RawReplay.checkRootCoverage
    ReplayFullBlock215.snapshot 33554432
    (diagonalRootsFrom 10092549 FullDiagonal.block000154.entries) = true := by
  apply RawReplay.checkRootCoverageBalanced_sound (fuel := 27)
  decide +kernel

#time theorem block000155 : RawReplay.checkRootCoverage
    ReplayFullBlock215.snapshot 33554432
    (diagonalRootsFrom 10158085 FullDiagonal.block000155.entries) = true := by
  apply RawReplay.checkRootCoverageBalanced_sound (fuel := 27)
  decide +kernel

#time theorem block000156 : RawReplay.checkRootCoverage
    ReplayFullBlock215.snapshot 33554432
    (diagonalRootsFrom 10223621 FullDiagonal.block000156.entries) = true := by
  apply RawReplay.checkRootCoverageBalanced_sound (fuel := 27)
  decide +kernel

#time theorem block000157 : RawReplay.checkRootCoverage
    ReplayFullBlock215.snapshot 33554432
    (diagonalRootsFrom 10289157 FullDiagonal.block000157.entries) = true := by
  apply RawReplay.checkRootCoverageBalanced_sound (fuel := 27)
  decide +kernel

#time theorem block000158 : RawReplay.checkRootCoverage
    ReplayFullBlock215.snapshot 33554432
    (diagonalRootsFrom 10354693 FullDiagonal.block000158.entries) = true := by
  apply RawReplay.checkRootCoverageBalanced_sound (fuel := 27)
  decide +kernel

#time theorem block000159 : RawReplay.checkRootCoverage
    ReplayFullBlock215.snapshot 33554432
    (diagonalRootsFrom 10420229 FullDiagonal.block000159.entries) = true := by
  apply RawReplay.checkRootCoverageBalanced_sound (fuel := 27)
  decide +kernel

theorem group009 : RawReplay.checkRootCoverage
    ReplayFullBlock215.snapshot 33554432
    (diagonalRootsFrom 9437189 FullDiagonal.group009.entries) = true :=
  (CheckedDiagonalBlock.rootCoverage_append
    ReplayFullBlock215.snapshot 33554432 ((((((((((((((FullDiagonal.block000144.append FullDiagonal.block000145).append FullDiagonal.block000146).append FullDiagonal.block000147).append FullDiagonal.block000148).append FullDiagonal.block000149).append FullDiagonal.block000150).append FullDiagonal.block000151).append FullDiagonal.block000152).append FullDiagonal.block000153).append FullDiagonal.block000154).append FullDiagonal.block000155).append FullDiagonal.block000156).append FullDiagonal.block000157).append FullDiagonal.block000158) FullDiagonal.block000159
    (CheckedDiagonalBlock.rootCoverage_append
    ReplayFullBlock215.snapshot 33554432 (((((((((((((FullDiagonal.block000144.append FullDiagonal.block000145).append FullDiagonal.block000146).append FullDiagonal.block000147).append FullDiagonal.block000148).append FullDiagonal.block000149).append FullDiagonal.block000150).append FullDiagonal.block000151).append FullDiagonal.block000152).append FullDiagonal.block000153).append FullDiagonal.block000154).append FullDiagonal.block000155).append FullDiagonal.block000156).append FullDiagonal.block000157) FullDiagonal.block000158
    (CheckedDiagonalBlock.rootCoverage_append
    ReplayFullBlock215.snapshot 33554432 ((((((((((((FullDiagonal.block000144.append FullDiagonal.block000145).append FullDiagonal.block000146).append FullDiagonal.block000147).append FullDiagonal.block000148).append FullDiagonal.block000149).append FullDiagonal.block000150).append FullDiagonal.block000151).append FullDiagonal.block000152).append FullDiagonal.block000153).append FullDiagonal.block000154).append FullDiagonal.block000155).append FullDiagonal.block000156) FullDiagonal.block000157
    (CheckedDiagonalBlock.rootCoverage_append
    ReplayFullBlock215.snapshot 33554432 (((((((((((FullDiagonal.block000144.append FullDiagonal.block000145).append FullDiagonal.block000146).append FullDiagonal.block000147).append FullDiagonal.block000148).append FullDiagonal.block000149).append FullDiagonal.block000150).append FullDiagonal.block000151).append FullDiagonal.block000152).append FullDiagonal.block000153).append FullDiagonal.block000154).append FullDiagonal.block000155) FullDiagonal.block000156
    (CheckedDiagonalBlock.rootCoverage_append
    ReplayFullBlock215.snapshot 33554432 ((((((((((FullDiagonal.block000144.append FullDiagonal.block000145).append FullDiagonal.block000146).append FullDiagonal.block000147).append FullDiagonal.block000148).append FullDiagonal.block000149).append FullDiagonal.block000150).append FullDiagonal.block000151).append FullDiagonal.block000152).append FullDiagonal.block000153).append FullDiagonal.block000154) FullDiagonal.block000155
    (CheckedDiagonalBlock.rootCoverage_append
    ReplayFullBlock215.snapshot 33554432 (((((((((FullDiagonal.block000144.append FullDiagonal.block000145).append FullDiagonal.block000146).append FullDiagonal.block000147).append FullDiagonal.block000148).append FullDiagonal.block000149).append FullDiagonal.block000150).append FullDiagonal.block000151).append FullDiagonal.block000152).append FullDiagonal.block000153) FullDiagonal.block000154
    (CheckedDiagonalBlock.rootCoverage_append
    ReplayFullBlock215.snapshot 33554432 ((((((((FullDiagonal.block000144.append FullDiagonal.block000145).append FullDiagonal.block000146).append FullDiagonal.block000147).append FullDiagonal.block000148).append FullDiagonal.block000149).append FullDiagonal.block000150).append FullDiagonal.block000151).append FullDiagonal.block000152) FullDiagonal.block000153
    (CheckedDiagonalBlock.rootCoverage_append
    ReplayFullBlock215.snapshot 33554432 (((((((FullDiagonal.block000144.append FullDiagonal.block000145).append FullDiagonal.block000146).append FullDiagonal.block000147).append FullDiagonal.block000148).append FullDiagonal.block000149).append FullDiagonal.block000150).append FullDiagonal.block000151) FullDiagonal.block000152
    (CheckedDiagonalBlock.rootCoverage_append
    ReplayFullBlock215.snapshot 33554432 ((((((FullDiagonal.block000144.append FullDiagonal.block000145).append FullDiagonal.block000146).append FullDiagonal.block000147).append FullDiagonal.block000148).append FullDiagonal.block000149).append FullDiagonal.block000150) FullDiagonal.block000151
    (CheckedDiagonalBlock.rootCoverage_append
    ReplayFullBlock215.snapshot 33554432 (((((FullDiagonal.block000144.append FullDiagonal.block000145).append FullDiagonal.block000146).append FullDiagonal.block000147).append FullDiagonal.block000148).append FullDiagonal.block000149) FullDiagonal.block000150
    (CheckedDiagonalBlock.rootCoverage_append
    ReplayFullBlock215.snapshot 33554432 ((((FullDiagonal.block000144.append FullDiagonal.block000145).append FullDiagonal.block000146).append FullDiagonal.block000147).append FullDiagonal.block000148) FullDiagonal.block000149
    (CheckedDiagonalBlock.rootCoverage_append
    ReplayFullBlock215.snapshot 33554432 (((FullDiagonal.block000144.append FullDiagonal.block000145).append FullDiagonal.block000146).append FullDiagonal.block000147) FullDiagonal.block000148
    (CheckedDiagonalBlock.rootCoverage_append
    ReplayFullBlock215.snapshot 33554432 ((FullDiagonal.block000144.append FullDiagonal.block000145).append FullDiagonal.block000146) FullDiagonal.block000147
    (CheckedDiagonalBlock.rootCoverage_append
    ReplayFullBlock215.snapshot 33554432 (FullDiagonal.block000144.append FullDiagonal.block000145) FullDiagonal.block000146
    (CheckedDiagonalBlock.rootCoverage_append
    ReplayFullBlock215.snapshot 33554432 FullDiagonal.block000144 FullDiagonal.block000145
    block000144 block000145) block000146) block000147) block000148) block000149) block000150) block000151) block000152) block000153) block000154) block000155) block000156) block000157) block000158) block000159)

end JSP848.FullCoverage
