import JSP848.PrimeCountInput

set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0

namespace JSP848.FullPrimeCount

open PrimeCountInput

noncomputable def hints001248 : List Nat :=
  primeHintChunk% "../../certificates/prime-count33554432-v1/counts-001248.json" 33554432 16334847 32669697 2

theorem length001248 : hints001248.length = 16384 := by decide +kernel
theorem checked001248 : checkPrimeHints 32669697 2 hints001248 = true := by decide +kernel
theorem counted001248 : hints001248.count 0 <= 1897 := by decide +kernel

noncomputable def block001248 : CheckedPrimeCountBlock 32669697 2 16384 1897 :=
  ⟨hints001248, length001248, checked001248, counted001248⟩

noncomputable def localPrefix001248 : CheckedPrimeCountBlock 32669697 2 16384 1897 :=
  block001248

noncomputable def hints001249 : List Nat :=
  primeHintChunk% "../../certificates/prime-count33554432-v1/counts-001249.json" 33554432 16351231 32702465 2

theorem length001249 : hints001249.length = 16384 := by decide +kernel
theorem checked001249 : checkPrimeHints 32702465 2 hints001249 = true := by decide +kernel
theorem counted001249 : hints001249.count 0 <= 1890 := by decide +kernel

noncomputable def block001249 : CheckedPrimeCountBlock 32702465 2 16384 1890 :=
  ⟨hints001249, length001249, checked001249, counted001249⟩

noncomputable def localPrefix001249 : CheckedPrimeCountBlock 32669697 2 32768 3787 :=
  localPrefix001248.append block001249

noncomputable def hints001250 : List Nat :=
  primeHintChunk% "../../certificates/prime-count33554432-v1/counts-001250.json" 33554432 16367615 32735233 2

theorem length001250 : hints001250.length = 16384 := by decide +kernel
theorem checked001250 : checkPrimeHints 32735233 2 hints001250 = true := by decide +kernel
theorem counted001250 : hints001250.count 0 <= 1890 := by decide +kernel

noncomputable def block001250 : CheckedPrimeCountBlock 32735233 2 16384 1890 :=
  ⟨hints001250, length001250, checked001250, counted001250⟩

noncomputable def localPrefix001250 : CheckedPrimeCountBlock 32669697 2 49152 5677 :=
  localPrefix001249.append block001250

noncomputable def hints001251 : List Nat :=
  primeHintChunk% "../../certificates/prime-count33554432-v1/counts-001251.json" 33554432 16383999 32768001 2

theorem length001251 : hints001251.length = 16384 := by decide +kernel
theorem checked001251 : checkPrimeHints 32768001 2 hints001251 = true := by decide +kernel
theorem counted001251 : hints001251.count 0 <= 1891 := by decide +kernel

noncomputable def block001251 : CheckedPrimeCountBlock 32768001 2 16384 1891 :=
  ⟨hints001251, length001251, checked001251, counted001251⟩

noncomputable def localPrefix001251 : CheckedPrimeCountBlock 32669697 2 65536 7568 :=
  localPrefix001250.append block001251

noncomputable def hints001252 : List Nat :=
  primeHintChunk% "../../certificates/prime-count33554432-v1/counts-001252.json" 33554432 16400383 32800769 2

theorem length001252 : hints001252.length = 16384 := by decide +kernel
theorem checked001252 : checkPrimeHints 32800769 2 hints001252 = true := by decide +kernel
theorem counted001252 : hints001252.count 0 <= 1854 := by decide +kernel

noncomputable def block001252 : CheckedPrimeCountBlock 32800769 2 16384 1854 :=
  ⟨hints001252, length001252, checked001252, counted001252⟩

noncomputable def localPrefix001252 : CheckedPrimeCountBlock 32669697 2 81920 9422 :=
  localPrefix001251.append block001252

noncomputable def hints001253 : List Nat :=
  primeHintChunk% "../../certificates/prime-count33554432-v1/counts-001253.json" 33554432 16416767 32833537 2

theorem length001253 : hints001253.length = 16384 := by decide +kernel
theorem checked001253 : checkPrimeHints 32833537 2 hints001253 = true := by decide +kernel
theorem counted001253 : hints001253.count 0 <= 1883 := by decide +kernel

noncomputable def block001253 : CheckedPrimeCountBlock 32833537 2 16384 1883 :=
  ⟨hints001253, length001253, checked001253, counted001253⟩

noncomputable def localPrefix001253 : CheckedPrimeCountBlock 32669697 2 98304 11305 :=
  localPrefix001252.append block001253

noncomputable def hints001254 : List Nat :=
  primeHintChunk% "../../certificates/prime-count33554432-v1/counts-001254.json" 33554432 16433151 32866305 2

theorem length001254 : hints001254.length = 16384 := by decide +kernel
theorem checked001254 : checkPrimeHints 32866305 2 hints001254 = true := by decide +kernel
theorem counted001254 : hints001254.count 0 <= 1922 := by decide +kernel

noncomputable def block001254 : CheckedPrimeCountBlock 32866305 2 16384 1922 :=
  ⟨hints001254, length001254, checked001254, counted001254⟩

noncomputable def localPrefix001254 : CheckedPrimeCountBlock 32669697 2 114688 13227 :=
  localPrefix001253.append block001254

noncomputable def hints001255 : List Nat :=
  primeHintChunk% "../../certificates/prime-count33554432-v1/counts-001255.json" 33554432 16449535 32899073 2

theorem length001255 : hints001255.length = 16384 := by decide +kernel
theorem checked001255 : checkPrimeHints 32899073 2 hints001255 = true := by decide +kernel
theorem counted001255 : hints001255.count 0 <= 1898 := by decide +kernel

noncomputable def block001255 : CheckedPrimeCountBlock 32899073 2 16384 1898 :=
  ⟨hints001255, length001255, checked001255, counted001255⟩

noncomputable def localPrefix001255 : CheckedPrimeCountBlock 32669697 2 131072 15125 :=
  localPrefix001254.append block001255

noncomputable def hints001256 : List Nat :=
  primeHintChunk% "../../certificates/prime-count33554432-v1/counts-001256.json" 33554432 16465919 32931841 2

theorem length001256 : hints001256.length = 16384 := by decide +kernel
theorem checked001256 : checkPrimeHints 32931841 2 hints001256 = true := by decide +kernel
theorem counted001256 : hints001256.count 0 <= 1924 := by decide +kernel

noncomputable def block001256 : CheckedPrimeCountBlock 32931841 2 16384 1924 :=
  ⟨hints001256, length001256, checked001256, counted001256⟩

noncomputable def localPrefix001256 : CheckedPrimeCountBlock 32669697 2 147456 17049 :=
  localPrefix001255.append block001256

noncomputable def hints001257 : List Nat :=
  primeHintChunk% "../../certificates/prime-count33554432-v1/counts-001257.json" 33554432 16482303 32964609 2

theorem length001257 : hints001257.length = 16384 := by decide +kernel
theorem checked001257 : checkPrimeHints 32964609 2 hints001257 = true := by decide +kernel
theorem counted001257 : hints001257.count 0 <= 1897 := by decide +kernel

noncomputable def block001257 : CheckedPrimeCountBlock 32964609 2 16384 1897 :=
  ⟨hints001257, length001257, checked001257, counted001257⟩

noncomputable def localPrefix001257 : CheckedPrimeCountBlock 32669697 2 163840 18946 :=
  localPrefix001256.append block001257

noncomputable def hints001258 : List Nat :=
  primeHintChunk% "../../certificates/prime-count33554432-v1/counts-001258.json" 33554432 16498687 32997377 2

theorem length001258 : hints001258.length = 16384 := by decide +kernel
theorem checked001258 : checkPrimeHints 32997377 2 hints001258 = true := by decide +kernel
theorem counted001258 : hints001258.count 0 <= 1872 := by decide +kernel

noncomputable def block001258 : CheckedPrimeCountBlock 32997377 2 16384 1872 :=
  ⟨hints001258, length001258, checked001258, counted001258⟩

noncomputable def localPrefix001258 : CheckedPrimeCountBlock 32669697 2 180224 20818 :=
  localPrefix001257.append block001258

noncomputable def hints001259 : List Nat :=
  primeHintChunk% "../../certificates/prime-count33554432-v1/counts-001259.json" 33554432 16515071 33030145 2

theorem length001259 : hints001259.length = 16384 := by decide +kernel
theorem checked001259 : checkPrimeHints 33030145 2 hints001259 = true := by decide +kernel
theorem counted001259 : hints001259.count 0 <= 1862 := by decide +kernel

noncomputable def block001259 : CheckedPrimeCountBlock 33030145 2 16384 1862 :=
  ⟨hints001259, length001259, checked001259, counted001259⟩

noncomputable def localPrefix001259 : CheckedPrimeCountBlock 32669697 2 196608 22680 :=
  localPrefix001258.append block001259

noncomputable def hints001260 : List Nat :=
  primeHintChunk% "../../certificates/prime-count33554432-v1/counts-001260.json" 33554432 16531455 33062913 2

theorem length001260 : hints001260.length = 16384 := by decide +kernel
theorem checked001260 : checkPrimeHints 33062913 2 hints001260 = true := by decide +kernel
theorem counted001260 : hints001260.count 0 <= 1873 := by decide +kernel

noncomputable def block001260 : CheckedPrimeCountBlock 33062913 2 16384 1873 :=
  ⟨hints001260, length001260, checked001260, counted001260⟩

noncomputable def localPrefix001260 : CheckedPrimeCountBlock 32669697 2 212992 24553 :=
  localPrefix001259.append block001260

noncomputable def hints001261 : List Nat :=
  primeHintChunk% "../../certificates/prime-count33554432-v1/counts-001261.json" 33554432 16547839 33095681 2

theorem length001261 : hints001261.length = 16384 := by decide +kernel
theorem checked001261 : checkPrimeHints 33095681 2 hints001261 = true := by decide +kernel
theorem counted001261 : hints001261.count 0 <= 1910 := by decide +kernel

noncomputable def block001261 : CheckedPrimeCountBlock 33095681 2 16384 1910 :=
  ⟨hints001261, length001261, checked001261, counted001261⟩

noncomputable def localPrefix001261 : CheckedPrimeCountBlock 32669697 2 229376 26463 :=
  localPrefix001260.append block001261

noncomputable def hints001262 : List Nat :=
  primeHintChunk% "../../certificates/prime-count33554432-v1/counts-001262.json" 33554432 16564223 33128449 2

theorem length001262 : hints001262.length = 16384 := by decide +kernel
theorem checked001262 : checkPrimeHints 33128449 2 hints001262 = true := by decide +kernel
theorem counted001262 : hints001262.count 0 <= 1897 := by decide +kernel

noncomputable def block001262 : CheckedPrimeCountBlock 33128449 2 16384 1897 :=
  ⟨hints001262, length001262, checked001262, counted001262⟩

noncomputable def localPrefix001262 : CheckedPrimeCountBlock 32669697 2 245760 28360 :=
  localPrefix001261.append block001262

noncomputable def hints001263 : List Nat :=
  primeHintChunk% "../../certificates/prime-count33554432-v1/counts-001263.json" 33554432 16580607 33161217 2

theorem length001263 : hints001263.length = 16384 := by decide +kernel
theorem checked001263 : checkPrimeHints 33161217 2 hints001263 = true := by decide +kernel
theorem counted001263 : hints001263.count 0 <= 1915 := by decide +kernel

noncomputable def block001263 : CheckedPrimeCountBlock 33161217 2 16384 1915 :=
  ⟨hints001263, length001263, checked001263, counted001263⟩

noncomputable def localPrefix001263 : CheckedPrimeCountBlock 32669697 2 262144 30275 :=
  localPrefix001262.append block001263

end JSP848.FullPrimeCount
