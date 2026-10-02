import JSP848.FullDiagonal.Group000
import JSP848.FullDiagonal.Group001
import JSP848.FullDiagonal.Group002
import JSP848.FullDiagonal.Group003
import JSP848.FullDiagonal.Group004
import JSP848.FullDiagonal.Group005
import JSP848.FullDiagonal.Group006
import JSP848.FullDiagonal.Group007
import JSP848.FullDiagonal.Group008
import JSP848.FullDiagonal.Group009
import JSP848.FullDiagonal.Group010
import JSP848.FullDiagonal.Group011
import JSP848.FullDiagonal.Group012
import JSP848.FullDiagonal.Group013
import JSP848.FullDiagonal.Group014
import JSP848.FullDiagonal.Group015
import JSP848.FullDiagonal.Group016
import JSP848.FullDiagonal.Group017
import JSP848.FullDiagonal.Group018
import JSP848.FullDiagonal.Group019
import JSP848.FullDiagonal.Group020
import JSP848.FullDiagonal.Group021
import JSP848.FullDiagonal.Group022
import JSP848.FullDiagonal.Group023
import JSP848.FullDiagonal.Group024
import JSP848.FullDiagonal.Group025
import JSP848.FullDiagonal.Group026
import JSP848.FullDiagonal.Group027
import JSP848.FullDiagonal.Group028
import JSP848.FullDiagonal.Group029
import JSP848.FullDiagonal.Group030
import JSP848.FullDiagonal.Group031

namespace JSP848.FullDiagonal

noncomputable def full : CheckedDiagonalBlock 5 8388607 :=
  (((((((((((((((((((((((((((((((group000.append group001).append group002).append group003).append group004).append group005).append group006).append group007).append group008).append group009).append group010).append group011).append group012).append group013).append group014).append group015).append group016).append group017).append group018).append group019).append group020).append group021).append group022).append group023).append group024).append group025).append group026).append group027).append group028).append group029).append group030).append group031)

theorem full_length : full.entries.length = 8388607 := full.length_eq

theorem certificate_checked : checkDiagonalCertificate 33554432 full.entries = true :=
  full.certificate_checked (by decide)

theorem roots_valid : ∀ e ∈ diagonalRootsFrom 5 full.entries, e.Valid :=
  checkedDiagonalEntries_valid full.checked

theorem prime_coverage : CoversDiagonalPrimes 33554432 (diagonalRootsFrom 5 full.entries) :=
  checkedDiagonalCertificate_cover certificate_checked

theorem sieve_membership (a : ℕ) :
    a ∈ diagonalSieve 33554432 (diagonalRootsFrom 5 full.entries) ↔
      a ∈ diagonalCandidates 33554432 :=
  mem_checkedDiagonalSieve_iff certificate_checked

end JSP848.FullDiagonal
