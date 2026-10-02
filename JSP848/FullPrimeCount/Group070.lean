import JSP848.PrimeCountInput

set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0

namespace JSP848.FullPrimeCount

open PrimeCountInput

noncomputable def hints001120 : List Nat :=
  primeHintChunk% "../../certificates/prime-count33554432-v1/counts-001120.json" 33554432 14237695 28475393 2

theorem length001120 : hints001120.length = 16384 := by decide +kernel
theorem checked001120 : checkPrimeHints 28475393 2 hints001120 = true := by decide +kernel
theorem counted001120 : hints001120.count 0 <= 1964 := by decide +kernel

noncomputable def block001120 : CheckedPrimeCountBlock 28475393 2 16384 1964 :=
  ⟨hints001120, length001120, checked001120, counted001120⟩

noncomputable def localPrefix001120 : CheckedPrimeCountBlock 28475393 2 16384 1964 :=
  block001120

noncomputable def hints001121 : List Nat :=
  primeHintChunk% "../../certificates/prime-count33554432-v1/counts-001121.json" 33554432 14254079 28508161 2

theorem length001121 : hints001121.length = 16384 := by decide +kernel
theorem checked001121 : checkPrimeHints 28508161 2 hints001121 = true := by decide +kernel
theorem counted001121 : hints001121.count 0 <= 1889 := by decide +kernel

noncomputable def block001121 : CheckedPrimeCountBlock 28508161 2 16384 1889 :=
  ⟨hints001121, length001121, checked001121, counted001121⟩

noncomputable def localPrefix001121 : CheckedPrimeCountBlock 28475393 2 32768 3853 :=
  localPrefix001120.append block001121

noncomputable def hints001122 : List Nat :=
  primeHintChunk% "../../certificates/prime-count33554432-v1/counts-001122.json" 33554432 14270463 28540929 2

theorem length001122 : hints001122.length = 16384 := by decide +kernel
theorem checked001122 : checkPrimeHints 28540929 2 hints001122 = true := by decide +kernel
theorem counted001122 : hints001122.count 0 <= 1904 := by decide +kernel

noncomputable def block001122 : CheckedPrimeCountBlock 28540929 2 16384 1904 :=
  ⟨hints001122, length001122, checked001122, counted001122⟩

noncomputable def localPrefix001122 : CheckedPrimeCountBlock 28475393 2 49152 5757 :=
  localPrefix001121.append block001122

noncomputable def hints001123 : List Nat :=
  primeHintChunk% "../../certificates/prime-count33554432-v1/counts-001123.json" 33554432 14286847 28573697 2

theorem length001123 : hints001123.length = 16384 := by decide +kernel
theorem checked001123 : checkPrimeHints 28573697 2 hints001123 = true := by decide +kernel
theorem counted001123 : hints001123.count 0 <= 1906 := by decide +kernel

noncomputable def block001123 : CheckedPrimeCountBlock 28573697 2 16384 1906 :=
  ⟨hints001123, length001123, checked001123, counted001123⟩

noncomputable def localPrefix001123 : CheckedPrimeCountBlock 28475393 2 65536 7663 :=
  localPrefix001122.append block001123

noncomputable def hints001124 : List Nat :=
  primeHintChunk% "../../certificates/prime-count33554432-v1/counts-001124.json" 33554432 14303231 28606465 2

theorem length001124 : hints001124.length = 16384 := by decide +kernel
theorem checked001124 : checkPrimeHints 28606465 2 hints001124 = true := by decide +kernel
theorem counted001124 : hints001124.count 0 <= 1927 := by decide +kernel

noncomputable def block001124 : CheckedPrimeCountBlock 28606465 2 16384 1927 :=
  ⟨hints001124, length001124, checked001124, counted001124⟩

noncomputable def localPrefix001124 : CheckedPrimeCountBlock 28475393 2 81920 9590 :=
  localPrefix001123.append block001124

noncomputable def hints001125 : List Nat :=
  primeHintChunk% "../../certificates/prime-count33554432-v1/counts-001125.json" 33554432 14319615 28639233 2

theorem length001125 : hints001125.length = 16384 := by decide +kernel
theorem checked001125 : checkPrimeHints 28639233 2 hints001125 = true := by decide +kernel
theorem counted001125 : hints001125.count 0 <= 1911 := by decide +kernel

noncomputable def block001125 : CheckedPrimeCountBlock 28639233 2 16384 1911 :=
  ⟨hints001125, length001125, checked001125, counted001125⟩

noncomputable def localPrefix001125 : CheckedPrimeCountBlock 28475393 2 98304 11501 :=
  localPrefix001124.append block001125

noncomputable def hints001126 : List Nat :=
  primeHintChunk% "../../certificates/prime-count33554432-v1/counts-001126.json" 33554432 14335999 28672001 2

theorem length001126 : hints001126.length = 16384 := by decide +kernel
theorem checked001126 : checkPrimeHints 28672001 2 hints001126 = true := by decide +kernel
theorem counted001126 : hints001126.count 0 <= 1876 := by decide +kernel

noncomputable def block001126 : CheckedPrimeCountBlock 28672001 2 16384 1876 :=
  ⟨hints001126, length001126, checked001126, counted001126⟩

noncomputable def localPrefix001126 : CheckedPrimeCountBlock 28475393 2 114688 13377 :=
  localPrefix001125.append block001126

noncomputable def hints001127 : List Nat :=
  primeHintChunk% "../../certificates/prime-count33554432-v1/counts-001127.json" 33554432 14352383 28704769 2

theorem length001127 : hints001127.length = 16384 := by decide +kernel
theorem checked001127 : checkPrimeHints 28704769 2 hints001127 = true := by decide +kernel
theorem counted001127 : hints001127.count 0 <= 1919 := by decide +kernel

noncomputable def block001127 : CheckedPrimeCountBlock 28704769 2 16384 1919 :=
  ⟨hints001127, length001127, checked001127, counted001127⟩

noncomputable def localPrefix001127 : CheckedPrimeCountBlock 28475393 2 131072 15296 :=
  localPrefix001126.append block001127

noncomputable def hints001128 : List Nat :=
  primeHintChunk% "../../certificates/prime-count33554432-v1/counts-001128.json" 33554432 14368767 28737537 2

theorem length001128 : hints001128.length = 16384 := by decide +kernel
theorem checked001128 : checkPrimeHints 28737537 2 hints001128 = true := by decide +kernel
theorem counted001128 : hints001128.count 0 <= 1892 := by decide +kernel

noncomputable def block001128 : CheckedPrimeCountBlock 28737537 2 16384 1892 :=
  ⟨hints001128, length001128, checked001128, counted001128⟩

noncomputable def localPrefix001128 : CheckedPrimeCountBlock 28475393 2 147456 17188 :=
  localPrefix001127.append block001128

noncomputable def hints001129 : List Nat :=
  primeHintChunk% "../../certificates/prime-count33554432-v1/counts-001129.json" 33554432 14385151 28770305 2

theorem length001129 : hints001129.length = 16384 := by decide +kernel
theorem checked001129 : checkPrimeHints 28770305 2 hints001129 = true := by decide +kernel
theorem counted001129 : hints001129.count 0 <= 1912 := by decide +kernel

noncomputable def block001129 : CheckedPrimeCountBlock 28770305 2 16384 1912 :=
  ⟨hints001129, length001129, checked001129, counted001129⟩

noncomputable def localPrefix001129 : CheckedPrimeCountBlock 28475393 2 163840 19100 :=
  localPrefix001128.append block001129

noncomputable def hints001130 : List Nat :=
  primeHintChunk% "../../certificates/prime-count33554432-v1/counts-001130.json" 33554432 14401535 28803073 2

theorem length001130 : hints001130.length = 16384 := by decide +kernel
theorem checked001130 : checkPrimeHints 28803073 2 hints001130 = true := by decide +kernel
theorem counted001130 : hints001130.count 0 <= 1868 := by decide +kernel

noncomputable def block001130 : CheckedPrimeCountBlock 28803073 2 16384 1868 :=
  ⟨hints001130, length001130, checked001130, counted001130⟩

noncomputable def localPrefix001130 : CheckedPrimeCountBlock 28475393 2 180224 20968 :=
  localPrefix001129.append block001130

noncomputable def hints001131 : List Nat :=
  primeHintChunk% "../../certificates/prime-count33554432-v1/counts-001131.json" 33554432 14417919 28835841 2

theorem length001131 : hints001131.length = 16384 := by decide +kernel
theorem checked001131 : checkPrimeHints 28835841 2 hints001131 = true := by decide +kernel
theorem counted001131 : hints001131.count 0 <= 1921 := by decide +kernel

noncomputable def block001131 : CheckedPrimeCountBlock 28835841 2 16384 1921 :=
  ⟨hints001131, length001131, checked001131, counted001131⟩

noncomputable def localPrefix001131 : CheckedPrimeCountBlock 28475393 2 196608 22889 :=
  localPrefix001130.append block001131

noncomputable def hints001132 : List Nat :=
  primeHintChunk% "../../certificates/prime-count33554432-v1/counts-001132.json" 33554432 14434303 28868609 2

theorem length001132 : hints001132.length = 16384 := by decide +kernel
theorem checked001132 : checkPrimeHints 28868609 2 hints001132 = true := by decide +kernel
theorem counted001132 : hints001132.count 0 <= 1914 := by decide +kernel

noncomputable def block001132 : CheckedPrimeCountBlock 28868609 2 16384 1914 :=
  ⟨hints001132, length001132, checked001132, counted001132⟩

noncomputable def localPrefix001132 : CheckedPrimeCountBlock 28475393 2 212992 24803 :=
  localPrefix001131.append block001132

noncomputable def hints001133 : List Nat :=
  primeHintChunk% "../../certificates/prime-count33554432-v1/counts-001133.json" 33554432 14450687 28901377 2

theorem length001133 : hints001133.length = 16384 := by decide +kernel
theorem checked001133 : checkPrimeHints 28901377 2 hints001133 = true := by decide +kernel
theorem counted001133 : hints001133.count 0 <= 1921 := by decide +kernel

noncomputable def block001133 : CheckedPrimeCountBlock 28901377 2 16384 1921 :=
  ⟨hints001133, length001133, checked001133, counted001133⟩

noncomputable def localPrefix001133 : CheckedPrimeCountBlock 28475393 2 229376 26724 :=
  localPrefix001132.append block001133

noncomputable def hints001134 : List Nat :=
  primeHintChunk% "../../certificates/prime-count33554432-v1/counts-001134.json" 33554432 14467071 28934145 2

theorem length001134 : hints001134.length = 16384 := by decide +kernel
theorem checked001134 : checkPrimeHints 28934145 2 hints001134 = true := by decide +kernel
theorem counted001134 : hints001134.count 0 <= 1861 := by decide +kernel

noncomputable def block001134 : CheckedPrimeCountBlock 28934145 2 16384 1861 :=
  ⟨hints001134, length001134, checked001134, counted001134⟩

noncomputable def localPrefix001134 : CheckedPrimeCountBlock 28475393 2 245760 28585 :=
  localPrefix001133.append block001134

noncomputable def hints001135 : List Nat :=
  primeHintChunk% "../../certificates/prime-count33554432-v1/counts-001135.json" 33554432 14483455 28966913 2

theorem length001135 : hints001135.length = 16384 := by decide +kernel
theorem checked001135 : checkPrimeHints 28966913 2 hints001135 = true := by decide +kernel
theorem counted001135 : hints001135.count 0 <= 1928 := by decide +kernel

noncomputable def block001135 : CheckedPrimeCountBlock 28966913 2 16384 1928 :=
  ⟨hints001135, length001135, checked001135, counted001135⟩

noncomputable def localPrefix001135 : CheckedPrimeCountBlock 28475393 2 262144 30513 :=
  localPrefix001134.append block001135

end JSP848.FullPrimeCount
