import JSP848.PrimeCountInput

set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0

namespace JSP848.FullPrimeCount

open PrimeCountInput

noncomputable def hints001136 : List Nat :=
  primeHintChunk% "../../certificates/prime-count33554432-v1/counts-001136.json" 33554432 14499839 28999681 2

theorem length001136 : hints001136.length = 16384 := by decide +kernel
theorem checked001136 : checkPrimeHints 28999681 2 hints001136 = true := by decide +kernel
theorem counted001136 : hints001136.count 0 <= 1917 := by decide +kernel

noncomputable def block001136 : CheckedPrimeCountBlock 28999681 2 16384 1917 :=
  ⟨hints001136, length001136, checked001136, counted001136⟩

noncomputable def localPrefix001136 : CheckedPrimeCountBlock 28999681 2 16384 1917 :=
  block001136

noncomputable def hints001137 : List Nat :=
  primeHintChunk% "../../certificates/prime-count33554432-v1/counts-001137.json" 33554432 14516223 29032449 2

theorem length001137 : hints001137.length = 16384 := by decide +kernel
theorem checked001137 : checkPrimeHints 29032449 2 hints001137 = true := by decide +kernel
theorem counted001137 : hints001137.count 0 <= 1877 := by decide +kernel

noncomputable def block001137 : CheckedPrimeCountBlock 29032449 2 16384 1877 :=
  ⟨hints001137, length001137, checked001137, counted001137⟩

noncomputable def localPrefix001137 : CheckedPrimeCountBlock 28999681 2 32768 3794 :=
  localPrefix001136.append block001137

noncomputable def hints001138 : List Nat :=
  primeHintChunk% "../../certificates/prime-count33554432-v1/counts-001138.json" 33554432 14532607 29065217 2

theorem length001138 : hints001138.length = 16384 := by decide +kernel
theorem checked001138 : checkPrimeHints 29065217 2 hints001138 = true := by decide +kernel
theorem counted001138 : hints001138.count 0 <= 1905 := by decide +kernel

noncomputable def block001138 : CheckedPrimeCountBlock 29065217 2 16384 1905 :=
  ⟨hints001138, length001138, checked001138, counted001138⟩

noncomputable def localPrefix001138 : CheckedPrimeCountBlock 28999681 2 49152 5699 :=
  localPrefix001137.append block001138

noncomputable def hints001139 : List Nat :=
  primeHintChunk% "../../certificates/prime-count33554432-v1/counts-001139.json" 33554432 14548991 29097985 2

theorem length001139 : hints001139.length = 16384 := by decide +kernel
theorem checked001139 : checkPrimeHints 29097985 2 hints001139 = true := by decide +kernel
theorem counted001139 : hints001139.count 0 <= 1916 := by decide +kernel

noncomputable def block001139 : CheckedPrimeCountBlock 29097985 2 16384 1916 :=
  ⟨hints001139, length001139, checked001139, counted001139⟩

noncomputable def localPrefix001139 : CheckedPrimeCountBlock 28999681 2 65536 7615 :=
  localPrefix001138.append block001139

noncomputable def hints001140 : List Nat :=
  primeHintChunk% "../../certificates/prime-count33554432-v1/counts-001140.json" 33554432 14565375 29130753 2

theorem length001140 : hints001140.length = 16384 := by decide +kernel
theorem checked001140 : checkPrimeHints 29130753 2 hints001140 = true := by decide +kernel
theorem counted001140 : hints001140.count 0 <= 1878 := by decide +kernel

noncomputable def block001140 : CheckedPrimeCountBlock 29130753 2 16384 1878 :=
  ⟨hints001140, length001140, checked001140, counted001140⟩

noncomputable def localPrefix001140 : CheckedPrimeCountBlock 28999681 2 81920 9493 :=
  localPrefix001139.append block001140

noncomputable def hints001141 : List Nat :=
  primeHintChunk% "../../certificates/prime-count33554432-v1/counts-001141.json" 33554432 14581759 29163521 2

theorem length001141 : hints001141.length = 16384 := by decide +kernel
theorem checked001141 : checkPrimeHints 29163521 2 hints001141 = true := by decide +kernel
theorem counted001141 : hints001141.count 0 <= 1912 := by decide +kernel

noncomputable def block001141 : CheckedPrimeCountBlock 29163521 2 16384 1912 :=
  ⟨hints001141, length001141, checked001141, counted001141⟩

noncomputable def localPrefix001141 : CheckedPrimeCountBlock 28999681 2 98304 11405 :=
  localPrefix001140.append block001141

noncomputable def hints001142 : List Nat :=
  primeHintChunk% "../../certificates/prime-count33554432-v1/counts-001142.json" 33554432 14598143 29196289 2

theorem length001142 : hints001142.length = 16384 := by decide +kernel
theorem checked001142 : checkPrimeHints 29196289 2 hints001142 = true := by decide +kernel
theorem counted001142 : hints001142.count 0 <= 1893 := by decide +kernel

noncomputable def block001142 : CheckedPrimeCountBlock 29196289 2 16384 1893 :=
  ⟨hints001142, length001142, checked001142, counted001142⟩

noncomputable def localPrefix001142 : CheckedPrimeCountBlock 28999681 2 114688 13298 :=
  localPrefix001141.append block001142

noncomputable def hints001143 : List Nat :=
  primeHintChunk% "../../certificates/prime-count33554432-v1/counts-001143.json" 33554432 14614527 29229057 2

theorem length001143 : hints001143.length = 16384 := by decide +kernel
theorem checked001143 : checkPrimeHints 29229057 2 hints001143 = true := by decide +kernel
theorem counted001143 : hints001143.count 0 <= 1872 := by decide +kernel

noncomputable def block001143 : CheckedPrimeCountBlock 29229057 2 16384 1872 :=
  ⟨hints001143, length001143, checked001143, counted001143⟩

noncomputable def localPrefix001143 : CheckedPrimeCountBlock 28999681 2 131072 15170 :=
  localPrefix001142.append block001143

noncomputable def hints001144 : List Nat :=
  primeHintChunk% "../../certificates/prime-count33554432-v1/counts-001144.json" 33554432 14630911 29261825 2

theorem length001144 : hints001144.length = 16384 := by decide +kernel
theorem checked001144 : checkPrimeHints 29261825 2 hints001144 = true := by decide +kernel
theorem counted001144 : hints001144.count 0 <= 1943 := by decide +kernel

noncomputable def block001144 : CheckedPrimeCountBlock 29261825 2 16384 1943 :=
  ⟨hints001144, length001144, checked001144, counted001144⟩

noncomputable def localPrefix001144 : CheckedPrimeCountBlock 28999681 2 147456 17113 :=
  localPrefix001143.append block001144

noncomputable def hints001145 : List Nat :=
  primeHintChunk% "../../certificates/prime-count33554432-v1/counts-001145.json" 33554432 14647295 29294593 2

theorem length001145 : hints001145.length = 16384 := by decide +kernel
theorem checked001145 : checkPrimeHints 29294593 2 hints001145 = true := by decide +kernel
theorem counted001145 : hints001145.count 0 <= 1927 := by decide +kernel

noncomputable def block001145 : CheckedPrimeCountBlock 29294593 2 16384 1927 :=
  ⟨hints001145, length001145, checked001145, counted001145⟩

noncomputable def localPrefix001145 : CheckedPrimeCountBlock 28999681 2 163840 19040 :=
  localPrefix001144.append block001145

noncomputable def hints001146 : List Nat :=
  primeHintChunk% "../../certificates/prime-count33554432-v1/counts-001146.json" 33554432 14663679 29327361 2

theorem length001146 : hints001146.length = 16384 := by decide +kernel
theorem checked001146 : checkPrimeHints 29327361 2 hints001146 = true := by decide +kernel
theorem counted001146 : hints001146.count 0 <= 1952 := by decide +kernel

noncomputable def block001146 : CheckedPrimeCountBlock 29327361 2 16384 1952 :=
  ⟨hints001146, length001146, checked001146, counted001146⟩

noncomputable def localPrefix001146 : CheckedPrimeCountBlock 28999681 2 180224 20992 :=
  localPrefix001145.append block001146

noncomputable def hints001147 : List Nat :=
  primeHintChunk% "../../certificates/prime-count33554432-v1/counts-001147.json" 33554432 14680063 29360129 2

theorem length001147 : hints001147.length = 16384 := by decide +kernel
theorem checked001147 : checkPrimeHints 29360129 2 hints001147 = true := by decide +kernel
theorem counted001147 : hints001147.count 0 <= 1885 := by decide +kernel

noncomputable def block001147 : CheckedPrimeCountBlock 29360129 2 16384 1885 :=
  ⟨hints001147, length001147, checked001147, counted001147⟩

noncomputable def localPrefix001147 : CheckedPrimeCountBlock 28999681 2 196608 22877 :=
  localPrefix001146.append block001147

noncomputable def hints001148 : List Nat :=
  primeHintChunk% "../../certificates/prime-count33554432-v1/counts-001148.json" 33554432 14696447 29392897 2

theorem length001148 : hints001148.length = 16384 := by decide +kernel
theorem checked001148 : checkPrimeHints 29392897 2 hints001148 = true := by decide +kernel
theorem counted001148 : hints001148.count 0 <= 1870 := by decide +kernel

noncomputable def block001148 : CheckedPrimeCountBlock 29392897 2 16384 1870 :=
  ⟨hints001148, length001148, checked001148, counted001148⟩

noncomputable def localPrefix001148 : CheckedPrimeCountBlock 28999681 2 212992 24747 :=
  localPrefix001147.append block001148

noncomputable def hints001149 : List Nat :=
  primeHintChunk% "../../certificates/prime-count33554432-v1/counts-001149.json" 33554432 14712831 29425665 2

theorem length001149 : hints001149.length = 16384 := by decide +kernel
theorem checked001149 : checkPrimeHints 29425665 2 hints001149 = true := by decide +kernel
theorem counted001149 : hints001149.count 0 <= 1880 := by decide +kernel

noncomputable def block001149 : CheckedPrimeCountBlock 29425665 2 16384 1880 :=
  ⟨hints001149, length001149, checked001149, counted001149⟩

noncomputable def localPrefix001149 : CheckedPrimeCountBlock 28999681 2 229376 26627 :=
  localPrefix001148.append block001149

noncomputable def hints001150 : List Nat :=
  primeHintChunk% "../../certificates/prime-count33554432-v1/counts-001150.json" 33554432 14729215 29458433 2

theorem length001150 : hints001150.length = 16384 := by decide +kernel
theorem checked001150 : checkPrimeHints 29458433 2 hints001150 = true := by decide +kernel
theorem counted001150 : hints001150.count 0 <= 1912 := by decide +kernel

noncomputable def block001150 : CheckedPrimeCountBlock 29458433 2 16384 1912 :=
  ⟨hints001150, length001150, checked001150, counted001150⟩

noncomputable def localPrefix001150 : CheckedPrimeCountBlock 28999681 2 245760 28539 :=
  localPrefix001149.append block001150

noncomputable def hints001151 : List Nat :=
  primeHintChunk% "../../certificates/prime-count33554432-v1/counts-001151.json" 33554432 14745599 29491201 2

theorem length001151 : hints001151.length = 16384 := by decide +kernel
theorem checked001151 : checkPrimeHints 29491201 2 hints001151 = true := by decide +kernel
theorem counted001151 : hints001151.count 0 <= 1898 := by decide +kernel

noncomputable def block001151 : CheckedPrimeCountBlock 29491201 2 16384 1898 :=
  ⟨hints001151, length001151, checked001151, counted001151⟩

noncomputable def localPrefix001151 : CheckedPrimeCountBlock 28999681 2 262144 30437 :=
  localPrefix001150.append block001151

end JSP848.FullPrimeCount
