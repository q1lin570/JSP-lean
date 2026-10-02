import JSP848.PrimeCountInput

set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0

namespace JSP848.FullPrimeCount

open PrimeCountInput

noncomputable def hints001088 : List Nat :=
  primeHintChunk% "../../certificates/prime-count33554432-v1/counts-001088.json" 33554432 13713407 27426817 2

theorem length001088 : hints001088.length = 16384 := by decide +kernel
theorem checked001088 : checkPrimeHints 27426817 2 hints001088 = true := by decide +kernel
theorem counted001088 : hints001088.count 0 <= 1923 := by decide +kernel

noncomputable def block001088 : CheckedPrimeCountBlock 27426817 2 16384 1923 :=
  ⟨hints001088, length001088, checked001088, counted001088⟩

noncomputable def localPrefix001088 : CheckedPrimeCountBlock 27426817 2 16384 1923 :=
  block001088

noncomputable def hints001089 : List Nat :=
  primeHintChunk% "../../certificates/prime-count33554432-v1/counts-001089.json" 33554432 13729791 27459585 2

theorem length001089 : hints001089.length = 16384 := by decide +kernel
theorem checked001089 : checkPrimeHints 27459585 2 hints001089 = true := by decide +kernel
theorem counted001089 : hints001089.count 0 <= 1910 := by decide +kernel

noncomputable def block001089 : CheckedPrimeCountBlock 27459585 2 16384 1910 :=
  ⟨hints001089, length001089, checked001089, counted001089⟩

noncomputable def localPrefix001089 : CheckedPrimeCountBlock 27426817 2 32768 3833 :=
  localPrefix001088.append block001089

noncomputable def hints001090 : List Nat :=
  primeHintChunk% "../../certificates/prime-count33554432-v1/counts-001090.json" 33554432 13746175 27492353 2

theorem length001090 : hints001090.length = 16384 := by decide +kernel
theorem checked001090 : checkPrimeHints 27492353 2 hints001090 = true := by decide +kernel
theorem counted001090 : hints001090.count 0 <= 1911 := by decide +kernel

noncomputable def block001090 : CheckedPrimeCountBlock 27492353 2 16384 1911 :=
  ⟨hints001090, length001090, checked001090, counted001090⟩

noncomputable def localPrefix001090 : CheckedPrimeCountBlock 27426817 2 49152 5744 :=
  localPrefix001089.append block001090

noncomputable def hints001091 : List Nat :=
  primeHintChunk% "../../certificates/prime-count33554432-v1/counts-001091.json" 33554432 13762559 27525121 2

theorem length001091 : hints001091.length = 16384 := by decide +kernel
theorem checked001091 : checkPrimeHints 27525121 2 hints001091 = true := by decide +kernel
theorem counted001091 : hints001091.count 0 <= 1914 := by decide +kernel

noncomputable def block001091 : CheckedPrimeCountBlock 27525121 2 16384 1914 :=
  ⟨hints001091, length001091, checked001091, counted001091⟩

noncomputable def localPrefix001091 : CheckedPrimeCountBlock 27426817 2 65536 7658 :=
  localPrefix001090.append block001091

noncomputable def hints001092 : List Nat :=
  primeHintChunk% "../../certificates/prime-count33554432-v1/counts-001092.json" 33554432 13778943 27557889 2

theorem length001092 : hints001092.length = 16384 := by decide +kernel
theorem checked001092 : checkPrimeHints 27557889 2 hints001092 = true := by decide +kernel
theorem counted001092 : hints001092.count 0 <= 1947 := by decide +kernel

noncomputable def block001092 : CheckedPrimeCountBlock 27557889 2 16384 1947 :=
  ⟨hints001092, length001092, checked001092, counted001092⟩

noncomputable def localPrefix001092 : CheckedPrimeCountBlock 27426817 2 81920 9605 :=
  localPrefix001091.append block001092

noncomputable def hints001093 : List Nat :=
  primeHintChunk% "../../certificates/prime-count33554432-v1/counts-001093.json" 33554432 13795327 27590657 2

theorem length001093 : hints001093.length = 16384 := by decide +kernel
theorem checked001093 : checkPrimeHints 27590657 2 hints001093 = true := by decide +kernel
theorem counted001093 : hints001093.count 0 <= 1919 := by decide +kernel

noncomputable def block001093 : CheckedPrimeCountBlock 27590657 2 16384 1919 :=
  ⟨hints001093, length001093, checked001093, counted001093⟩

noncomputable def localPrefix001093 : CheckedPrimeCountBlock 27426817 2 98304 11524 :=
  localPrefix001092.append block001093

noncomputable def hints001094 : List Nat :=
  primeHintChunk% "../../certificates/prime-count33554432-v1/counts-001094.json" 33554432 13811711 27623425 2

theorem length001094 : hints001094.length = 16384 := by decide +kernel
theorem checked001094 : checkPrimeHints 27623425 2 hints001094 = true := by decide +kernel
theorem counted001094 : hints001094.count 0 <= 1904 := by decide +kernel

noncomputable def block001094 : CheckedPrimeCountBlock 27623425 2 16384 1904 :=
  ⟨hints001094, length001094, checked001094, counted001094⟩

noncomputable def localPrefix001094 : CheckedPrimeCountBlock 27426817 2 114688 13428 :=
  localPrefix001093.append block001094

noncomputable def hints001095 : List Nat :=
  primeHintChunk% "../../certificates/prime-count33554432-v1/counts-001095.json" 33554432 13828095 27656193 2

theorem length001095 : hints001095.length = 16384 := by decide +kernel
theorem checked001095 : checkPrimeHints 27656193 2 hints001095 = true := by decide +kernel
theorem counted001095 : hints001095.count 0 <= 1889 := by decide +kernel

noncomputable def block001095 : CheckedPrimeCountBlock 27656193 2 16384 1889 :=
  ⟨hints001095, length001095, checked001095, counted001095⟩

noncomputable def localPrefix001095 : CheckedPrimeCountBlock 27426817 2 131072 15317 :=
  localPrefix001094.append block001095

noncomputable def hints001096 : List Nat :=
  primeHintChunk% "../../certificates/prime-count33554432-v1/counts-001096.json" 33554432 13844479 27688961 2

theorem length001096 : hints001096.length = 16384 := by decide +kernel
theorem checked001096 : checkPrimeHints 27688961 2 hints001096 = true := by decide +kernel
theorem counted001096 : hints001096.count 0 <= 1895 := by decide +kernel

noncomputable def block001096 : CheckedPrimeCountBlock 27688961 2 16384 1895 :=
  ⟨hints001096, length001096, checked001096, counted001096⟩

noncomputable def localPrefix001096 : CheckedPrimeCountBlock 27426817 2 147456 17212 :=
  localPrefix001095.append block001096

noncomputable def hints001097 : List Nat :=
  primeHintChunk% "../../certificates/prime-count33554432-v1/counts-001097.json" 33554432 13860863 27721729 2

theorem length001097 : hints001097.length = 16384 := by decide +kernel
theorem checked001097 : checkPrimeHints 27721729 2 hints001097 = true := by decide +kernel
theorem counted001097 : hints001097.count 0 <= 2003 := by decide +kernel

noncomputable def block001097 : CheckedPrimeCountBlock 27721729 2 16384 2003 :=
  ⟨hints001097, length001097, checked001097, counted001097⟩

noncomputable def localPrefix001097 : CheckedPrimeCountBlock 27426817 2 163840 19215 :=
  localPrefix001096.append block001097

noncomputable def hints001098 : List Nat :=
  primeHintChunk% "../../certificates/prime-count33554432-v1/counts-001098.json" 33554432 13877247 27754497 2

theorem length001098 : hints001098.length = 16384 := by decide +kernel
theorem checked001098 : checkPrimeHints 27754497 2 hints001098 = true := by decide +kernel
theorem counted001098 : hints001098.count 0 <= 1868 := by decide +kernel

noncomputable def block001098 : CheckedPrimeCountBlock 27754497 2 16384 1868 :=
  ⟨hints001098, length001098, checked001098, counted001098⟩

noncomputable def localPrefix001098 : CheckedPrimeCountBlock 27426817 2 180224 21083 :=
  localPrefix001097.append block001098

noncomputable def hints001099 : List Nat :=
  primeHintChunk% "../../certificates/prime-count33554432-v1/counts-001099.json" 33554432 13893631 27787265 2

theorem length001099 : hints001099.length = 16384 := by decide +kernel
theorem checked001099 : checkPrimeHints 27787265 2 hints001099 = true := by decide +kernel
theorem counted001099 : hints001099.count 0 <= 1908 := by decide +kernel

noncomputable def block001099 : CheckedPrimeCountBlock 27787265 2 16384 1908 :=
  ⟨hints001099, length001099, checked001099, counted001099⟩

noncomputable def localPrefix001099 : CheckedPrimeCountBlock 27426817 2 196608 22991 :=
  localPrefix001098.append block001099

noncomputable def hints001100 : List Nat :=
  primeHintChunk% "../../certificates/prime-count33554432-v1/counts-001100.json" 33554432 13910015 27820033 2

theorem length001100 : hints001100.length = 16384 := by decide +kernel
theorem checked001100 : checkPrimeHints 27820033 2 hints001100 = true := by decide +kernel
theorem counted001100 : hints001100.count 0 <= 1862 := by decide +kernel

noncomputable def block001100 : CheckedPrimeCountBlock 27820033 2 16384 1862 :=
  ⟨hints001100, length001100, checked001100, counted001100⟩

noncomputable def localPrefix001100 : CheckedPrimeCountBlock 27426817 2 212992 24853 :=
  localPrefix001099.append block001100

noncomputable def hints001101 : List Nat :=
  primeHintChunk% "../../certificates/prime-count33554432-v1/counts-001101.json" 33554432 13926399 27852801 2

theorem length001101 : hints001101.length = 16384 := by decide +kernel
theorem checked001101 : checkPrimeHints 27852801 2 hints001101 = true := by decide +kernel
theorem counted001101 : hints001101.count 0 <= 1933 := by decide +kernel

noncomputable def block001101 : CheckedPrimeCountBlock 27852801 2 16384 1933 :=
  ⟨hints001101, length001101, checked001101, counted001101⟩

noncomputable def localPrefix001101 : CheckedPrimeCountBlock 27426817 2 229376 26786 :=
  localPrefix001100.append block001101

noncomputable def hints001102 : List Nat :=
  primeHintChunk% "../../certificates/prime-count33554432-v1/counts-001102.json" 33554432 13942783 27885569 2

theorem length001102 : hints001102.length = 16384 := by decide +kernel
theorem checked001102 : checkPrimeHints 27885569 2 hints001102 = true := by decide +kernel
theorem counted001102 : hints001102.count 0 <= 1932 := by decide +kernel

noncomputable def block001102 : CheckedPrimeCountBlock 27885569 2 16384 1932 :=
  ⟨hints001102, length001102, checked001102, counted001102⟩

noncomputable def localPrefix001102 : CheckedPrimeCountBlock 27426817 2 245760 28718 :=
  localPrefix001101.append block001102

noncomputable def hints001103 : List Nat :=
  primeHintChunk% "../../certificates/prime-count33554432-v1/counts-001103.json" 33554432 13959167 27918337 2

theorem length001103 : hints001103.length = 16384 := by decide +kernel
theorem checked001103 : checkPrimeHints 27918337 2 hints001103 = true := by decide +kernel
theorem counted001103 : hints001103.count 0 <= 1911 := by decide +kernel

noncomputable def block001103 : CheckedPrimeCountBlock 27918337 2 16384 1911 :=
  ⟨hints001103, length001103, checked001103, counted001103⟩

noncomputable def localPrefix001103 : CheckedPrimeCountBlock 27426817 2 262144 30629 :=
  localPrefix001102.append block001103

end JSP848.FullPrimeCount
