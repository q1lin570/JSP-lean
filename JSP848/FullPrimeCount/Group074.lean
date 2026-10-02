import JSP848.PrimeCountInput

set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0

namespace JSP848.FullPrimeCount

open PrimeCountInput

noncomputable def hints001184 : List Nat :=
  primeHintChunk% "../../certificates/prime-count33554432-v1/counts-001184.json" 33554432 15286271 30572545 2

theorem length001184 : hints001184.length = 16384 := by decide +kernel
theorem checked001184 : checkPrimeHints 30572545 2 hints001184 = true := by decide +kernel
theorem counted001184 : hints001184.count 0 <= 1926 := by decide +kernel

noncomputable def block001184 : CheckedPrimeCountBlock 30572545 2 16384 1926 :=
  ⟨hints001184, length001184, checked001184, counted001184⟩

noncomputable def localPrefix001184 : CheckedPrimeCountBlock 30572545 2 16384 1926 :=
  block001184

noncomputable def hints001185 : List Nat :=
  primeHintChunk% "../../certificates/prime-count33554432-v1/counts-001185.json" 33554432 15302655 30605313 2

theorem length001185 : hints001185.length = 16384 := by decide +kernel
theorem checked001185 : checkPrimeHints 30605313 2 hints001185 = true := by decide +kernel
theorem counted001185 : hints001185.count 0 <= 1912 := by decide +kernel

noncomputable def block001185 : CheckedPrimeCountBlock 30605313 2 16384 1912 :=
  ⟨hints001185, length001185, checked001185, counted001185⟩

noncomputable def localPrefix001185 : CheckedPrimeCountBlock 30572545 2 32768 3838 :=
  localPrefix001184.append block001185

noncomputable def hints001186 : List Nat :=
  primeHintChunk% "../../certificates/prime-count33554432-v1/counts-001186.json" 33554432 15319039 30638081 2

theorem length001186 : hints001186.length = 16384 := by decide +kernel
theorem checked001186 : checkPrimeHints 30638081 2 hints001186 = true := by decide +kernel
theorem counted001186 : hints001186.count 0 <= 1970 := by decide +kernel

noncomputable def block001186 : CheckedPrimeCountBlock 30638081 2 16384 1970 :=
  ⟨hints001186, length001186, checked001186, counted001186⟩

noncomputable def localPrefix001186 : CheckedPrimeCountBlock 30572545 2 49152 5808 :=
  localPrefix001185.append block001186

noncomputable def hints001187 : List Nat :=
  primeHintChunk% "../../certificates/prime-count33554432-v1/counts-001187.json" 33554432 15335423 30670849 2

theorem length001187 : hints001187.length = 16384 := by decide +kernel
theorem checked001187 : checkPrimeHints 30670849 2 hints001187 = true := by decide +kernel
theorem counted001187 : hints001187.count 0 <= 1895 := by decide +kernel

noncomputable def block001187 : CheckedPrimeCountBlock 30670849 2 16384 1895 :=
  ⟨hints001187, length001187, checked001187, counted001187⟩

noncomputable def localPrefix001187 : CheckedPrimeCountBlock 30572545 2 65536 7703 :=
  localPrefix001186.append block001187

noncomputable def hints001188 : List Nat :=
  primeHintChunk% "../../certificates/prime-count33554432-v1/counts-001188.json" 33554432 15351807 30703617 2

theorem length001188 : hints001188.length = 16384 := by decide +kernel
theorem checked001188 : checkPrimeHints 30703617 2 hints001188 = true := by decide +kernel
theorem counted001188 : hints001188.count 0 <= 1892 := by decide +kernel

noncomputable def block001188 : CheckedPrimeCountBlock 30703617 2 16384 1892 :=
  ⟨hints001188, length001188, checked001188, counted001188⟩

noncomputable def localPrefix001188 : CheckedPrimeCountBlock 30572545 2 81920 9595 :=
  localPrefix001187.append block001188

noncomputable def hints001189 : List Nat :=
  primeHintChunk% "../../certificates/prime-count33554432-v1/counts-001189.json" 33554432 15368191 30736385 2

theorem length001189 : hints001189.length = 16384 := by decide +kernel
theorem checked001189 : checkPrimeHints 30736385 2 hints001189 = true := by decide +kernel
theorem counted001189 : hints001189.count 0 <= 1881 := by decide +kernel

noncomputable def block001189 : CheckedPrimeCountBlock 30736385 2 16384 1881 :=
  ⟨hints001189, length001189, checked001189, counted001189⟩

noncomputable def localPrefix001189 : CheckedPrimeCountBlock 30572545 2 98304 11476 :=
  localPrefix001188.append block001189

noncomputable def hints001190 : List Nat :=
  primeHintChunk% "../../certificates/prime-count33554432-v1/counts-001190.json" 33554432 15384575 30769153 2

theorem length001190 : hints001190.length = 16384 := by decide +kernel
theorem checked001190 : checkPrimeHints 30769153 2 hints001190 = true := by decide +kernel
theorem counted001190 : hints001190.count 0 <= 1891 := by decide +kernel

noncomputable def block001190 : CheckedPrimeCountBlock 30769153 2 16384 1891 :=
  ⟨hints001190, length001190, checked001190, counted001190⟩

noncomputable def localPrefix001190 : CheckedPrimeCountBlock 30572545 2 114688 13367 :=
  localPrefix001189.append block001190

noncomputable def hints001191 : List Nat :=
  primeHintChunk% "../../certificates/prime-count33554432-v1/counts-001191.json" 33554432 15400959 30801921 2

theorem length001191 : hints001191.length = 16384 := by decide +kernel
theorem checked001191 : checkPrimeHints 30801921 2 hints001191 = true := by decide +kernel
theorem counted001191 : hints001191.count 0 <= 1919 := by decide +kernel

noncomputable def block001191 : CheckedPrimeCountBlock 30801921 2 16384 1919 :=
  ⟨hints001191, length001191, checked001191, counted001191⟩

noncomputable def localPrefix001191 : CheckedPrimeCountBlock 30572545 2 131072 15286 :=
  localPrefix001190.append block001191

noncomputable def hints001192 : List Nat :=
  primeHintChunk% "../../certificates/prime-count33554432-v1/counts-001192.json" 33554432 15417343 30834689 2

theorem length001192 : hints001192.length = 16384 := by decide +kernel
theorem checked001192 : checkPrimeHints 30834689 2 hints001192 = true := by decide +kernel
theorem counted001192 : hints001192.count 0 <= 1905 := by decide +kernel

noncomputable def block001192 : CheckedPrimeCountBlock 30834689 2 16384 1905 :=
  ⟨hints001192, length001192, checked001192, counted001192⟩

noncomputable def localPrefix001192 : CheckedPrimeCountBlock 30572545 2 147456 17191 :=
  localPrefix001191.append block001192

noncomputable def hints001193 : List Nat :=
  primeHintChunk% "../../certificates/prime-count33554432-v1/counts-001193.json" 33554432 15433727 30867457 2

theorem length001193 : hints001193.length = 16384 := by decide +kernel
theorem checked001193 : checkPrimeHints 30867457 2 hints001193 = true := by decide +kernel
theorem counted001193 : hints001193.count 0 <= 1916 := by decide +kernel

noncomputable def block001193 : CheckedPrimeCountBlock 30867457 2 16384 1916 :=
  ⟨hints001193, length001193, checked001193, counted001193⟩

noncomputable def localPrefix001193 : CheckedPrimeCountBlock 30572545 2 163840 19107 :=
  localPrefix001192.append block001193

noncomputable def hints001194 : List Nat :=
  primeHintChunk% "../../certificates/prime-count33554432-v1/counts-001194.json" 33554432 15450111 30900225 2

theorem length001194 : hints001194.length = 16384 := by decide +kernel
theorem checked001194 : checkPrimeHints 30900225 2 hints001194 = true := by decide +kernel
theorem counted001194 : hints001194.count 0 <= 1899 := by decide +kernel

noncomputable def block001194 : CheckedPrimeCountBlock 30900225 2 16384 1899 :=
  ⟨hints001194, length001194, checked001194, counted001194⟩

noncomputable def localPrefix001194 : CheckedPrimeCountBlock 30572545 2 180224 21006 :=
  localPrefix001193.append block001194

noncomputable def hints001195 : List Nat :=
  primeHintChunk% "../../certificates/prime-count33554432-v1/counts-001195.json" 33554432 15466495 30932993 2

theorem length001195 : hints001195.length = 16384 := by decide +kernel
theorem checked001195 : checkPrimeHints 30932993 2 hints001195 = true := by decide +kernel
theorem counted001195 : hints001195.count 0 <= 1886 := by decide +kernel

noncomputable def block001195 : CheckedPrimeCountBlock 30932993 2 16384 1886 :=
  ⟨hints001195, length001195, checked001195, counted001195⟩

noncomputable def localPrefix001195 : CheckedPrimeCountBlock 30572545 2 196608 22892 :=
  localPrefix001194.append block001195

noncomputable def hints001196 : List Nat :=
  primeHintChunk% "../../certificates/prime-count33554432-v1/counts-001196.json" 33554432 15482879 30965761 2

theorem length001196 : hints001196.length = 16384 := by decide +kernel
theorem checked001196 : checkPrimeHints 30965761 2 hints001196 = true := by decide +kernel
theorem counted001196 : hints001196.count 0 <= 1859 := by decide +kernel

noncomputable def block001196 : CheckedPrimeCountBlock 30965761 2 16384 1859 :=
  ⟨hints001196, length001196, checked001196, counted001196⟩

noncomputable def localPrefix001196 : CheckedPrimeCountBlock 30572545 2 212992 24751 :=
  localPrefix001195.append block001196

noncomputable def hints001197 : List Nat :=
  primeHintChunk% "../../certificates/prime-count33554432-v1/counts-001197.json" 33554432 15499263 30998529 2

theorem length001197 : hints001197.length = 16384 := by decide +kernel
theorem checked001197 : checkPrimeHints 30998529 2 hints001197 = true := by decide +kernel
theorem counted001197 : hints001197.count 0 <= 1896 := by decide +kernel

noncomputable def block001197 : CheckedPrimeCountBlock 30998529 2 16384 1896 :=
  ⟨hints001197, length001197, checked001197, counted001197⟩

noncomputable def localPrefix001197 : CheckedPrimeCountBlock 30572545 2 229376 26647 :=
  localPrefix001196.append block001197

noncomputable def hints001198 : List Nat :=
  primeHintChunk% "../../certificates/prime-count33554432-v1/counts-001198.json" 33554432 15515647 31031297 2

theorem length001198 : hints001198.length = 16384 := by decide +kernel
theorem checked001198 : checkPrimeHints 31031297 2 hints001198 = true := by decide +kernel
theorem counted001198 : hints001198.count 0 <= 1871 := by decide +kernel

noncomputable def block001198 : CheckedPrimeCountBlock 31031297 2 16384 1871 :=
  ⟨hints001198, length001198, checked001198, counted001198⟩

noncomputable def localPrefix001198 : CheckedPrimeCountBlock 30572545 2 245760 28518 :=
  localPrefix001197.append block001198

noncomputable def hints001199 : List Nat :=
  primeHintChunk% "../../certificates/prime-count33554432-v1/counts-001199.json" 33554432 15532031 31064065 2

theorem length001199 : hints001199.length = 16384 := by decide +kernel
theorem checked001199 : checkPrimeHints 31064065 2 hints001199 = true := by decide +kernel
theorem counted001199 : hints001199.count 0 <= 1856 := by decide +kernel

noncomputable def block001199 : CheckedPrimeCountBlock 31064065 2 16384 1856 :=
  ⟨hints001199, length001199, checked001199, counted001199⟩

noncomputable def localPrefix001199 : CheckedPrimeCountBlock 30572545 2 262144 30374 :=
  localPrefix001198.append block001199

end JSP848.FullPrimeCount
