import JSP848.PrimeCountInput

set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0

namespace JSP848.FullPrimeCount

open PrimeCountInput

noncomputable def hints001152 : List Nat :=
  primeHintChunk% "../../certificates/prime-count33554432-v1/counts-001152.json" 33554432 14761983 29523969 2

theorem length001152 : hints001152.length = 16384 := by decide +kernel
theorem checked001152 : checkPrimeHints 29523969 2 hints001152 = true := by decide +kernel
theorem counted001152 : hints001152.count 0 <= 1923 := by decide +kernel

noncomputable def block001152 : CheckedPrimeCountBlock 29523969 2 16384 1923 :=
  ⟨hints001152, length001152, checked001152, counted001152⟩

noncomputable def localPrefix001152 : CheckedPrimeCountBlock 29523969 2 16384 1923 :=
  block001152

noncomputable def hints001153 : List Nat :=
  primeHintChunk% "../../certificates/prime-count33554432-v1/counts-001153.json" 33554432 14778367 29556737 2

theorem length001153 : hints001153.length = 16384 := by decide +kernel
theorem checked001153 : checkPrimeHints 29556737 2 hints001153 = true := by decide +kernel
theorem counted001153 : hints001153.count 0 <= 1878 := by decide +kernel

noncomputable def block001153 : CheckedPrimeCountBlock 29556737 2 16384 1878 :=
  ⟨hints001153, length001153, checked001153, counted001153⟩

noncomputable def localPrefix001153 : CheckedPrimeCountBlock 29523969 2 32768 3801 :=
  localPrefix001152.append block001153

noncomputable def hints001154 : List Nat :=
  primeHintChunk% "../../certificates/prime-count33554432-v1/counts-001154.json" 33554432 14794751 29589505 2

theorem length001154 : hints001154.length = 16384 := by decide +kernel
theorem checked001154 : checkPrimeHints 29589505 2 hints001154 = true := by decide +kernel
theorem counted001154 : hints001154.count 0 <= 1937 := by decide +kernel

noncomputable def block001154 : CheckedPrimeCountBlock 29589505 2 16384 1937 :=
  ⟨hints001154, length001154, checked001154, counted001154⟩

noncomputable def localPrefix001154 : CheckedPrimeCountBlock 29523969 2 49152 5738 :=
  localPrefix001153.append block001154

noncomputable def hints001155 : List Nat :=
  primeHintChunk% "../../certificates/prime-count33554432-v1/counts-001155.json" 33554432 14811135 29622273 2

theorem length001155 : hints001155.length = 16384 := by decide +kernel
theorem checked001155 : checkPrimeHints 29622273 2 hints001155 = true := by decide +kernel
theorem counted001155 : hints001155.count 0 <= 1886 := by decide +kernel

noncomputable def block001155 : CheckedPrimeCountBlock 29622273 2 16384 1886 :=
  ⟨hints001155, length001155, checked001155, counted001155⟩

noncomputable def localPrefix001155 : CheckedPrimeCountBlock 29523969 2 65536 7624 :=
  localPrefix001154.append block001155

noncomputable def hints001156 : List Nat :=
  primeHintChunk% "../../certificates/prime-count33554432-v1/counts-001156.json" 33554432 14827519 29655041 2

theorem length001156 : hints001156.length = 16384 := by decide +kernel
theorem checked001156 : checkPrimeHints 29655041 2 hints001156 = true := by decide +kernel
theorem counted001156 : hints001156.count 0 <= 1905 := by decide +kernel

noncomputable def block001156 : CheckedPrimeCountBlock 29655041 2 16384 1905 :=
  ⟨hints001156, length001156, checked001156, counted001156⟩

noncomputable def localPrefix001156 : CheckedPrimeCountBlock 29523969 2 81920 9529 :=
  localPrefix001155.append block001156

noncomputable def hints001157 : List Nat :=
  primeHintChunk% "../../certificates/prime-count33554432-v1/counts-001157.json" 33554432 14843903 29687809 2

theorem length001157 : hints001157.length = 16384 := by decide +kernel
theorem checked001157 : checkPrimeHints 29687809 2 hints001157 = true := by decide +kernel
theorem counted001157 : hints001157.count 0 <= 1962 := by decide +kernel

noncomputable def block001157 : CheckedPrimeCountBlock 29687809 2 16384 1962 :=
  ⟨hints001157, length001157, checked001157, counted001157⟩

noncomputable def localPrefix001157 : CheckedPrimeCountBlock 29523969 2 98304 11491 :=
  localPrefix001156.append block001157

noncomputable def hints001158 : List Nat :=
  primeHintChunk% "../../certificates/prime-count33554432-v1/counts-001158.json" 33554432 14860287 29720577 2

theorem length001158 : hints001158.length = 16384 := by decide +kernel
theorem checked001158 : checkPrimeHints 29720577 2 hints001158 = true := by decide +kernel
theorem counted001158 : hints001158.count 0 <= 1875 := by decide +kernel

noncomputable def block001158 : CheckedPrimeCountBlock 29720577 2 16384 1875 :=
  ⟨hints001158, length001158, checked001158, counted001158⟩

noncomputable def localPrefix001158 : CheckedPrimeCountBlock 29523969 2 114688 13366 :=
  localPrefix001157.append block001158

noncomputable def hints001159 : List Nat :=
  primeHintChunk% "../../certificates/prime-count33554432-v1/counts-001159.json" 33554432 14876671 29753345 2

theorem length001159 : hints001159.length = 16384 := by decide +kernel
theorem checked001159 : checkPrimeHints 29753345 2 hints001159 = true := by decide +kernel
theorem counted001159 : hints001159.count 0 <= 1881 := by decide +kernel

noncomputable def block001159 : CheckedPrimeCountBlock 29753345 2 16384 1881 :=
  ⟨hints001159, length001159, checked001159, counted001159⟩

noncomputable def localPrefix001159 : CheckedPrimeCountBlock 29523969 2 131072 15247 :=
  localPrefix001158.append block001159

noncomputable def hints001160 : List Nat :=
  primeHintChunk% "../../certificates/prime-count33554432-v1/counts-001160.json" 33554432 14893055 29786113 2

theorem length001160 : hints001160.length = 16384 := by decide +kernel
theorem checked001160 : checkPrimeHints 29786113 2 hints001160 = true := by decide +kernel
theorem counted001160 : hints001160.count 0 <= 1863 := by decide +kernel

noncomputable def block001160 : CheckedPrimeCountBlock 29786113 2 16384 1863 :=
  ⟨hints001160, length001160, checked001160, counted001160⟩

noncomputable def localPrefix001160 : CheckedPrimeCountBlock 29523969 2 147456 17110 :=
  localPrefix001159.append block001160

noncomputable def hints001161 : List Nat :=
  primeHintChunk% "../../certificates/prime-count33554432-v1/counts-001161.json" 33554432 14909439 29818881 2

theorem length001161 : hints001161.length = 16384 := by decide +kernel
theorem checked001161 : checkPrimeHints 29818881 2 hints001161 = true := by decide +kernel
theorem counted001161 : hints001161.count 0 <= 1931 := by decide +kernel

noncomputable def block001161 : CheckedPrimeCountBlock 29818881 2 16384 1931 :=
  ⟨hints001161, length001161, checked001161, counted001161⟩

noncomputable def localPrefix001161 : CheckedPrimeCountBlock 29523969 2 163840 19041 :=
  localPrefix001160.append block001161

noncomputable def hints001162 : List Nat :=
  primeHintChunk% "../../certificates/prime-count33554432-v1/counts-001162.json" 33554432 14925823 29851649 2

theorem length001162 : hints001162.length = 16384 := by decide +kernel
theorem checked001162 : checkPrimeHints 29851649 2 hints001162 = true := by decide +kernel
theorem counted001162 : hints001162.count 0 <= 1949 := by decide +kernel

noncomputable def block001162 : CheckedPrimeCountBlock 29851649 2 16384 1949 :=
  ⟨hints001162, length001162, checked001162, counted001162⟩

noncomputable def localPrefix001162 : CheckedPrimeCountBlock 29523969 2 180224 20990 :=
  localPrefix001161.append block001162

noncomputable def hints001163 : List Nat :=
  primeHintChunk% "../../certificates/prime-count33554432-v1/counts-001163.json" 33554432 14942207 29884417 2

theorem length001163 : hints001163.length = 16384 := by decide +kernel
theorem checked001163 : checkPrimeHints 29884417 2 hints001163 = true := by decide +kernel
theorem counted001163 : hints001163.count 0 <= 1898 := by decide +kernel

noncomputable def block001163 : CheckedPrimeCountBlock 29884417 2 16384 1898 :=
  ⟨hints001163, length001163, checked001163, counted001163⟩

noncomputable def localPrefix001163 : CheckedPrimeCountBlock 29523969 2 196608 22888 :=
  localPrefix001162.append block001163

noncomputable def hints001164 : List Nat :=
  primeHintChunk% "../../certificates/prime-count33554432-v1/counts-001164.json" 33554432 14958591 29917185 2

theorem length001164 : hints001164.length = 16384 := by decide +kernel
theorem checked001164 : checkPrimeHints 29917185 2 hints001164 = true := by decide +kernel
theorem counted001164 : hints001164.count 0 <= 1961 := by decide +kernel

noncomputable def block001164 : CheckedPrimeCountBlock 29917185 2 16384 1961 :=
  ⟨hints001164, length001164, checked001164, counted001164⟩

noncomputable def localPrefix001164 : CheckedPrimeCountBlock 29523969 2 212992 24849 :=
  localPrefix001163.append block001164

noncomputable def hints001165 : List Nat :=
  primeHintChunk% "../../certificates/prime-count33554432-v1/counts-001165.json" 33554432 14974975 29949953 2

theorem length001165 : hints001165.length = 16384 := by decide +kernel
theorem checked001165 : checkPrimeHints 29949953 2 hints001165 = true := by decide +kernel
theorem counted001165 : hints001165.count 0 <= 1891 := by decide +kernel

noncomputable def block001165 : CheckedPrimeCountBlock 29949953 2 16384 1891 :=
  ⟨hints001165, length001165, checked001165, counted001165⟩

noncomputable def localPrefix001165 : CheckedPrimeCountBlock 29523969 2 229376 26740 :=
  localPrefix001164.append block001165

noncomputable def hints001166 : List Nat :=
  primeHintChunk% "../../certificates/prime-count33554432-v1/counts-001166.json" 33554432 14991359 29982721 2

theorem length001166 : hints001166.length = 16384 := by decide +kernel
theorem checked001166 : checkPrimeHints 29982721 2 hints001166 = true := by decide +kernel
theorem counted001166 : hints001166.count 0 <= 1948 := by decide +kernel

noncomputable def block001166 : CheckedPrimeCountBlock 29982721 2 16384 1948 :=
  ⟨hints001166, length001166, checked001166, counted001166⟩

noncomputable def localPrefix001166 : CheckedPrimeCountBlock 29523969 2 245760 28688 :=
  localPrefix001165.append block001166

noncomputable def hints001167 : List Nat :=
  primeHintChunk% "../../certificates/prime-count33554432-v1/counts-001167.json" 33554432 15007743 30015489 2

theorem length001167 : hints001167.length = 16384 := by decide +kernel
theorem checked001167 : checkPrimeHints 30015489 2 hints001167 = true := by decide +kernel
theorem counted001167 : hints001167.count 0 <= 1914 := by decide +kernel

noncomputable def block001167 : CheckedPrimeCountBlock 30015489 2 16384 1914 :=
  ⟨hints001167, length001167, checked001167, counted001167⟩

noncomputable def localPrefix001167 : CheckedPrimeCountBlock 29523969 2 262144 30602 :=
  localPrefix001166.append block001167

end JSP848.FullPrimeCount
