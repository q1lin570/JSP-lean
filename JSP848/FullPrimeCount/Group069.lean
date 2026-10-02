import JSP848.PrimeCountInput

set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0

namespace JSP848.FullPrimeCount

open PrimeCountInput

noncomputable def hints001104 : List Nat :=
  primeHintChunk% "../../certificates/prime-count33554432-v1/counts-001104.json" 33554432 13975551 27951105 2

theorem length001104 : hints001104.length = 16384 := by decide +kernel
theorem checked001104 : checkPrimeHints 27951105 2 hints001104 = true := by decide +kernel
theorem counted001104 : hints001104.count 0 <= 1924 := by decide +kernel

noncomputable def block001104 : CheckedPrimeCountBlock 27951105 2 16384 1924 :=
  ⟨hints001104, length001104, checked001104, counted001104⟩

noncomputable def localPrefix001104 : CheckedPrimeCountBlock 27951105 2 16384 1924 :=
  block001104

noncomputable def hints001105 : List Nat :=
  primeHintChunk% "../../certificates/prime-count33554432-v1/counts-001105.json" 33554432 13991935 27983873 2

theorem length001105 : hints001105.length = 16384 := by decide +kernel
theorem checked001105 : checkPrimeHints 27983873 2 hints001105 = true := by decide +kernel
theorem counted001105 : hints001105.count 0 <= 1911 := by decide +kernel

noncomputable def block001105 : CheckedPrimeCountBlock 27983873 2 16384 1911 :=
  ⟨hints001105, length001105, checked001105, counted001105⟩

noncomputable def localPrefix001105 : CheckedPrimeCountBlock 27951105 2 32768 3835 :=
  localPrefix001104.append block001105

noncomputable def hints001106 : List Nat :=
  primeHintChunk% "../../certificates/prime-count33554432-v1/counts-001106.json" 33554432 14008319 28016641 2

theorem length001106 : hints001106.length = 16384 := by decide +kernel
theorem checked001106 : checkPrimeHints 28016641 2 hints001106 = true := by decide +kernel
theorem counted001106 : hints001106.count 0 <= 1944 := by decide +kernel

noncomputable def block001106 : CheckedPrimeCountBlock 28016641 2 16384 1944 :=
  ⟨hints001106, length001106, checked001106, counted001106⟩

noncomputable def localPrefix001106 : CheckedPrimeCountBlock 27951105 2 49152 5779 :=
  localPrefix001105.append block001106

noncomputable def hints001107 : List Nat :=
  primeHintChunk% "../../certificates/prime-count33554432-v1/counts-001107.json" 33554432 14024703 28049409 2

theorem length001107 : hints001107.length = 16384 := by decide +kernel
theorem checked001107 : checkPrimeHints 28049409 2 hints001107 = true := by decide +kernel
theorem counted001107 : hints001107.count 0 <= 1869 := by decide +kernel

noncomputable def block001107 : CheckedPrimeCountBlock 28049409 2 16384 1869 :=
  ⟨hints001107, length001107, checked001107, counted001107⟩

noncomputable def localPrefix001107 : CheckedPrimeCountBlock 27951105 2 65536 7648 :=
  localPrefix001106.append block001107

noncomputable def hints001108 : List Nat :=
  primeHintChunk% "../../certificates/prime-count33554432-v1/counts-001108.json" 33554432 14041087 28082177 2

theorem length001108 : hints001108.length = 16384 := by decide +kernel
theorem checked001108 : checkPrimeHints 28082177 2 hints001108 = true := by decide +kernel
theorem counted001108 : hints001108.count 0 <= 1904 := by decide +kernel

noncomputable def block001108 : CheckedPrimeCountBlock 28082177 2 16384 1904 :=
  ⟨hints001108, length001108, checked001108, counted001108⟩

noncomputable def localPrefix001108 : CheckedPrimeCountBlock 27951105 2 81920 9552 :=
  localPrefix001107.append block001108

noncomputable def hints001109 : List Nat :=
  primeHintChunk% "../../certificates/prime-count33554432-v1/counts-001109.json" 33554432 14057471 28114945 2

theorem length001109 : hints001109.length = 16384 := by decide +kernel
theorem checked001109 : checkPrimeHints 28114945 2 hints001109 = true := by decide +kernel
theorem counted001109 : hints001109.count 0 <= 1928 := by decide +kernel

noncomputable def block001109 : CheckedPrimeCountBlock 28114945 2 16384 1928 :=
  ⟨hints001109, length001109, checked001109, counted001109⟩

noncomputable def localPrefix001109 : CheckedPrimeCountBlock 27951105 2 98304 11480 :=
  localPrefix001108.append block001109

noncomputable def hints001110 : List Nat :=
  primeHintChunk% "../../certificates/prime-count33554432-v1/counts-001110.json" 33554432 14073855 28147713 2

theorem length001110 : hints001110.length = 16384 := by decide +kernel
theorem checked001110 : checkPrimeHints 28147713 2 hints001110 = true := by decide +kernel
theorem counted001110 : hints001110.count 0 <= 1890 := by decide +kernel

noncomputable def block001110 : CheckedPrimeCountBlock 28147713 2 16384 1890 :=
  ⟨hints001110, length001110, checked001110, counted001110⟩

noncomputable def localPrefix001110 : CheckedPrimeCountBlock 27951105 2 114688 13370 :=
  localPrefix001109.append block001110

noncomputable def hints001111 : List Nat :=
  primeHintChunk% "../../certificates/prime-count33554432-v1/counts-001111.json" 33554432 14090239 28180481 2

theorem length001111 : hints001111.length = 16384 := by decide +kernel
theorem checked001111 : checkPrimeHints 28180481 2 hints001111 = true := by decide +kernel
theorem counted001111 : hints001111.count 0 <= 1896 := by decide +kernel

noncomputable def block001111 : CheckedPrimeCountBlock 28180481 2 16384 1896 :=
  ⟨hints001111, length001111, checked001111, counted001111⟩

noncomputable def localPrefix001111 : CheckedPrimeCountBlock 27951105 2 131072 15266 :=
  localPrefix001110.append block001111

noncomputable def hints001112 : List Nat :=
  primeHintChunk% "../../certificates/prime-count33554432-v1/counts-001112.json" 33554432 14106623 28213249 2

theorem length001112 : hints001112.length = 16384 := by decide +kernel
theorem checked001112 : checkPrimeHints 28213249 2 hints001112 = true := by decide +kernel
theorem counted001112 : hints001112.count 0 <= 1947 := by decide +kernel

noncomputable def block001112 : CheckedPrimeCountBlock 28213249 2 16384 1947 :=
  ⟨hints001112, length001112, checked001112, counted001112⟩

noncomputable def localPrefix001112 : CheckedPrimeCountBlock 27951105 2 147456 17213 :=
  localPrefix001111.append block001112

noncomputable def hints001113 : List Nat :=
  primeHintChunk% "../../certificates/prime-count33554432-v1/counts-001113.json" 33554432 14123007 28246017 2

theorem length001113 : hints001113.length = 16384 := by decide +kernel
theorem checked001113 : checkPrimeHints 28246017 2 hints001113 = true := by decide +kernel
theorem counted001113 : hints001113.count 0 <= 1932 := by decide +kernel

noncomputable def block001113 : CheckedPrimeCountBlock 28246017 2 16384 1932 :=
  ⟨hints001113, length001113, checked001113, counted001113⟩

noncomputable def localPrefix001113 : CheckedPrimeCountBlock 27951105 2 163840 19145 :=
  localPrefix001112.append block001113

noncomputable def hints001114 : List Nat :=
  primeHintChunk% "../../certificates/prime-count33554432-v1/counts-001114.json" 33554432 14139391 28278785 2

theorem length001114 : hints001114.length = 16384 := by decide +kernel
theorem checked001114 : checkPrimeHints 28278785 2 hints001114 = true := by decide +kernel
theorem counted001114 : hints001114.count 0 <= 1920 := by decide +kernel

noncomputable def block001114 : CheckedPrimeCountBlock 28278785 2 16384 1920 :=
  ⟨hints001114, length001114, checked001114, counted001114⟩

noncomputable def localPrefix001114 : CheckedPrimeCountBlock 27951105 2 180224 21065 :=
  localPrefix001113.append block001114

noncomputable def hints001115 : List Nat :=
  primeHintChunk% "../../certificates/prime-count33554432-v1/counts-001115.json" 33554432 14155775 28311553 2

theorem length001115 : hints001115.length = 16384 := by decide +kernel
theorem checked001115 : checkPrimeHints 28311553 2 hints001115 = true := by decide +kernel
theorem counted001115 : hints001115.count 0 <= 1915 := by decide +kernel

noncomputable def block001115 : CheckedPrimeCountBlock 28311553 2 16384 1915 :=
  ⟨hints001115, length001115, checked001115, counted001115⟩

noncomputable def localPrefix001115 : CheckedPrimeCountBlock 27951105 2 196608 22980 :=
  localPrefix001114.append block001115

noncomputable def hints001116 : List Nat :=
  primeHintChunk% "../../certificates/prime-count33554432-v1/counts-001116.json" 33554432 14172159 28344321 2

theorem length001116 : hints001116.length = 16384 := by decide +kernel
theorem checked001116 : checkPrimeHints 28344321 2 hints001116 = true := by decide +kernel
theorem counted001116 : hints001116.count 0 <= 1870 := by decide +kernel

noncomputable def block001116 : CheckedPrimeCountBlock 28344321 2 16384 1870 :=
  ⟨hints001116, length001116, checked001116, counted001116⟩

noncomputable def localPrefix001116 : CheckedPrimeCountBlock 27951105 2 212992 24850 :=
  localPrefix001115.append block001116

noncomputable def hints001117 : List Nat :=
  primeHintChunk% "../../certificates/prime-count33554432-v1/counts-001117.json" 33554432 14188543 28377089 2

theorem length001117 : hints001117.length = 16384 := by decide +kernel
theorem checked001117 : checkPrimeHints 28377089 2 hints001117 = true := by decide +kernel
theorem counted001117 : hints001117.count 0 <= 1898 := by decide +kernel

noncomputable def block001117 : CheckedPrimeCountBlock 28377089 2 16384 1898 :=
  ⟨hints001117, length001117, checked001117, counted001117⟩

noncomputable def localPrefix001117 : CheckedPrimeCountBlock 27951105 2 229376 26748 :=
  localPrefix001116.append block001117

noncomputable def hints001118 : List Nat :=
  primeHintChunk% "../../certificates/prime-count33554432-v1/counts-001118.json" 33554432 14204927 28409857 2

theorem length001118 : hints001118.length = 16384 := by decide +kernel
theorem checked001118 : checkPrimeHints 28409857 2 hints001118 = true := by decide +kernel
theorem counted001118 : hints001118.count 0 <= 1913 := by decide +kernel

noncomputable def block001118 : CheckedPrimeCountBlock 28409857 2 16384 1913 :=
  ⟨hints001118, length001118, checked001118, counted001118⟩

noncomputable def localPrefix001118 : CheckedPrimeCountBlock 27951105 2 245760 28661 :=
  localPrefix001117.append block001118

noncomputable def hints001119 : List Nat :=
  primeHintChunk% "../../certificates/prime-count33554432-v1/counts-001119.json" 33554432 14221311 28442625 2

theorem length001119 : hints001119.length = 16384 := by decide +kernel
theorem checked001119 : checkPrimeHints 28442625 2 hints001119 = true := by decide +kernel
theorem counted001119 : hints001119.count 0 <= 1893 := by decide +kernel

noncomputable def block001119 : CheckedPrimeCountBlock 28442625 2 16384 1893 :=
  ⟨hints001119, length001119, checked001119, counted001119⟩

noncomputable def localPrefix001119 : CheckedPrimeCountBlock 27951105 2 262144 30554 :=
  localPrefix001118.append block001119

end JSP848.FullPrimeCount
