import JSP848.PrimeCountInput

set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0

namespace JSP848.FullPrimeCount

open PrimeCountInput

noncomputable def hints001200 : List Nat :=
  primeHintChunk% "../../certificates/prime-count33554432-v1/counts-001200.json" 33554432 15548415 31096833 2

theorem length001200 : hints001200.length = 16384 := by decide +kernel
theorem checked001200 : checkPrimeHints 31096833 2 hints001200 = true := by decide +kernel
theorem counted001200 : hints001200.count 0 <= 1922 := by decide +kernel

noncomputable def block001200 : CheckedPrimeCountBlock 31096833 2 16384 1922 :=
  ⟨hints001200, length001200, checked001200, counted001200⟩

noncomputable def localPrefix001200 : CheckedPrimeCountBlock 31096833 2 16384 1922 :=
  block001200

noncomputable def hints001201 : List Nat :=
  primeHintChunk% "../../certificates/prime-count33554432-v1/counts-001201.json" 33554432 15564799 31129601 2

theorem length001201 : hints001201.length = 16384 := by decide +kernel
theorem checked001201 : checkPrimeHints 31129601 2 hints001201 = true := by decide +kernel
theorem counted001201 : hints001201.count 0 <= 1906 := by decide +kernel

noncomputable def block001201 : CheckedPrimeCountBlock 31129601 2 16384 1906 :=
  ⟨hints001201, length001201, checked001201, counted001201⟩

noncomputable def localPrefix001201 : CheckedPrimeCountBlock 31096833 2 32768 3828 :=
  localPrefix001200.append block001201

noncomputable def hints001202 : List Nat :=
  primeHintChunk% "../../certificates/prime-count33554432-v1/counts-001202.json" 33554432 15581183 31162369 2

theorem length001202 : hints001202.length = 16384 := by decide +kernel
theorem checked001202 : checkPrimeHints 31162369 2 hints001202 = true := by decide +kernel
theorem counted001202 : hints001202.count 0 <= 1854 := by decide +kernel

noncomputable def block001202 : CheckedPrimeCountBlock 31162369 2 16384 1854 :=
  ⟨hints001202, length001202, checked001202, counted001202⟩

noncomputable def localPrefix001202 : CheckedPrimeCountBlock 31096833 2 49152 5682 :=
  localPrefix001201.append block001202

noncomputable def hints001203 : List Nat :=
  primeHintChunk% "../../certificates/prime-count33554432-v1/counts-001203.json" 33554432 15597567 31195137 2

theorem length001203 : hints001203.length = 16384 := by decide +kernel
theorem checked001203 : checkPrimeHints 31195137 2 hints001203 = true := by decide +kernel
theorem counted001203 : hints001203.count 0 <= 1908 := by decide +kernel

noncomputable def block001203 : CheckedPrimeCountBlock 31195137 2 16384 1908 :=
  ⟨hints001203, length001203, checked001203, counted001203⟩

noncomputable def localPrefix001203 : CheckedPrimeCountBlock 31096833 2 65536 7590 :=
  localPrefix001202.append block001203

noncomputable def hints001204 : List Nat :=
  primeHintChunk% "../../certificates/prime-count33554432-v1/counts-001204.json" 33554432 15613951 31227905 2

theorem length001204 : hints001204.length = 16384 := by decide +kernel
theorem checked001204 : checkPrimeHints 31227905 2 hints001204 = true := by decide +kernel
theorem counted001204 : hints001204.count 0 <= 1884 := by decide +kernel

noncomputable def block001204 : CheckedPrimeCountBlock 31227905 2 16384 1884 :=
  ⟨hints001204, length001204, checked001204, counted001204⟩

noncomputable def localPrefix001204 : CheckedPrimeCountBlock 31096833 2 81920 9474 :=
  localPrefix001203.append block001204

noncomputable def hints001205 : List Nat :=
  primeHintChunk% "../../certificates/prime-count33554432-v1/counts-001205.json" 33554432 15630335 31260673 2

theorem length001205 : hints001205.length = 16384 := by decide +kernel
theorem checked001205 : checkPrimeHints 31260673 2 hints001205 = true := by decide +kernel
theorem counted001205 : hints001205.count 0 <= 1931 := by decide +kernel

noncomputable def block001205 : CheckedPrimeCountBlock 31260673 2 16384 1931 :=
  ⟨hints001205, length001205, checked001205, counted001205⟩

noncomputable def localPrefix001205 : CheckedPrimeCountBlock 31096833 2 98304 11405 :=
  localPrefix001204.append block001205

noncomputable def hints001206 : List Nat :=
  primeHintChunk% "../../certificates/prime-count33554432-v1/counts-001206.json" 33554432 15646719 31293441 2

theorem length001206 : hints001206.length = 16384 := by decide +kernel
theorem checked001206 : checkPrimeHints 31293441 2 hints001206 = true := by decide +kernel
theorem counted001206 : hints001206.count 0 <= 1885 := by decide +kernel

noncomputable def block001206 : CheckedPrimeCountBlock 31293441 2 16384 1885 :=
  ⟨hints001206, length001206, checked001206, counted001206⟩

noncomputable def localPrefix001206 : CheckedPrimeCountBlock 31096833 2 114688 13290 :=
  localPrefix001205.append block001206

noncomputable def hints001207 : List Nat :=
  primeHintChunk% "../../certificates/prime-count33554432-v1/counts-001207.json" 33554432 15663103 31326209 2

theorem length001207 : hints001207.length = 16384 := by decide +kernel
theorem checked001207 : checkPrimeHints 31326209 2 hints001207 = true := by decide +kernel
theorem counted001207 : hints001207.count 0 <= 1929 := by decide +kernel

noncomputable def block001207 : CheckedPrimeCountBlock 31326209 2 16384 1929 :=
  ⟨hints001207, length001207, checked001207, counted001207⟩

noncomputable def localPrefix001207 : CheckedPrimeCountBlock 31096833 2 131072 15219 :=
  localPrefix001206.append block001207

noncomputable def hints001208 : List Nat :=
  primeHintChunk% "../../certificates/prime-count33554432-v1/counts-001208.json" 33554432 15679487 31358977 2

theorem length001208 : hints001208.length = 16384 := by decide +kernel
theorem checked001208 : checkPrimeHints 31358977 2 hints001208 = true := by decide +kernel
theorem counted001208 : hints001208.count 0 <= 1892 := by decide +kernel

noncomputable def block001208 : CheckedPrimeCountBlock 31358977 2 16384 1892 :=
  ⟨hints001208, length001208, checked001208, counted001208⟩

noncomputable def localPrefix001208 : CheckedPrimeCountBlock 31096833 2 147456 17111 :=
  localPrefix001207.append block001208

noncomputable def hints001209 : List Nat :=
  primeHintChunk% "../../certificates/prime-count33554432-v1/counts-001209.json" 33554432 15695871 31391745 2

theorem length001209 : hints001209.length = 16384 := by decide +kernel
theorem checked001209 : checkPrimeHints 31391745 2 hints001209 = true := by decide +kernel
theorem counted001209 : hints001209.count 0 <= 1886 := by decide +kernel

noncomputable def block001209 : CheckedPrimeCountBlock 31391745 2 16384 1886 :=
  ⟨hints001209, length001209, checked001209, counted001209⟩

noncomputable def localPrefix001209 : CheckedPrimeCountBlock 31096833 2 163840 18997 :=
  localPrefix001208.append block001209

noncomputable def hints001210 : List Nat :=
  primeHintChunk% "../../certificates/prime-count33554432-v1/counts-001210.json" 33554432 15712255 31424513 2

theorem length001210 : hints001210.length = 16384 := by decide +kernel
theorem checked001210 : checkPrimeHints 31424513 2 hints001210 = true := by decide +kernel
theorem counted001210 : hints001210.count 0 <= 1865 := by decide +kernel

noncomputable def block001210 : CheckedPrimeCountBlock 31424513 2 16384 1865 :=
  ⟨hints001210, length001210, checked001210, counted001210⟩

noncomputable def localPrefix001210 : CheckedPrimeCountBlock 31096833 2 180224 20862 :=
  localPrefix001209.append block001210

noncomputable def hints001211 : List Nat :=
  primeHintChunk% "../../certificates/prime-count33554432-v1/counts-001211.json" 33554432 15728639 31457281 2

theorem length001211 : hints001211.length = 16384 := by decide +kernel
theorem checked001211 : checkPrimeHints 31457281 2 hints001211 = true := by decide +kernel
theorem counted001211 : hints001211.count 0 <= 1859 := by decide +kernel

noncomputable def block001211 : CheckedPrimeCountBlock 31457281 2 16384 1859 :=
  ⟨hints001211, length001211, checked001211, counted001211⟩

noncomputable def localPrefix001211 : CheckedPrimeCountBlock 31096833 2 196608 22721 :=
  localPrefix001210.append block001211

noncomputable def hints001212 : List Nat :=
  primeHintChunk% "../../certificates/prime-count33554432-v1/counts-001212.json" 33554432 15745023 31490049 2

theorem length001212 : hints001212.length = 16384 := by decide +kernel
theorem checked001212 : checkPrimeHints 31490049 2 hints001212 = true := by decide +kernel
theorem counted001212 : hints001212.count 0 <= 1891 := by decide +kernel

noncomputable def block001212 : CheckedPrimeCountBlock 31490049 2 16384 1891 :=
  ⟨hints001212, length001212, checked001212, counted001212⟩

noncomputable def localPrefix001212 : CheckedPrimeCountBlock 31096833 2 212992 24612 :=
  localPrefix001211.append block001212

noncomputable def hints001213 : List Nat :=
  primeHintChunk% "../../certificates/prime-count33554432-v1/counts-001213.json" 33554432 15761407 31522817 2

theorem length001213 : hints001213.length = 16384 := by decide +kernel
theorem checked001213 : checkPrimeHints 31522817 2 hints001213 = true := by decide +kernel
theorem counted001213 : hints001213.count 0 <= 1873 := by decide +kernel

noncomputable def block001213 : CheckedPrimeCountBlock 31522817 2 16384 1873 :=
  ⟨hints001213, length001213, checked001213, counted001213⟩

noncomputable def localPrefix001213 : CheckedPrimeCountBlock 31096833 2 229376 26485 :=
  localPrefix001212.append block001213

noncomputable def hints001214 : List Nat :=
  primeHintChunk% "../../certificates/prime-count33554432-v1/counts-001214.json" 33554432 15777791 31555585 2

theorem length001214 : hints001214.length = 16384 := by decide +kernel
theorem checked001214 : checkPrimeHints 31555585 2 hints001214 = true := by decide +kernel
theorem counted001214 : hints001214.count 0 <= 1957 := by decide +kernel

noncomputable def block001214 : CheckedPrimeCountBlock 31555585 2 16384 1957 :=
  ⟨hints001214, length001214, checked001214, counted001214⟩

noncomputable def localPrefix001214 : CheckedPrimeCountBlock 31096833 2 245760 28442 :=
  localPrefix001213.append block001214

noncomputable def hints001215 : List Nat :=
  primeHintChunk% "../../certificates/prime-count33554432-v1/counts-001215.json" 33554432 15794175 31588353 2

theorem length001215 : hints001215.length = 16384 := by decide +kernel
theorem checked001215 : checkPrimeHints 31588353 2 hints001215 = true := by decide +kernel
theorem counted001215 : hints001215.count 0 <= 1897 := by decide +kernel

noncomputable def block001215 : CheckedPrimeCountBlock 31588353 2 16384 1897 :=
  ⟨hints001215, length001215, checked001215, counted001215⟩

noncomputable def localPrefix001215 : CheckedPrimeCountBlock 31096833 2 262144 30339 :=
  localPrefix001214.append block001215

end JSP848.FullPrimeCount
