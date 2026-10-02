import JSP848.PrimeCountInput

set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0

namespace JSP848.FullPrimeCount

open PrimeCountInput

noncomputable def hints001168 : List Nat :=
  primeHintChunk% "../../certificates/prime-count33554432-v1/counts-001168.json" 33554432 15024127 30048257 2

theorem length001168 : hints001168.length = 16384 := by decide +kernel
theorem checked001168 : checkPrimeHints 30048257 2 hints001168 = true := by decide +kernel
theorem counted001168 : hints001168.count 0 <= 1915 := by decide +kernel

noncomputable def block001168 : CheckedPrimeCountBlock 30048257 2 16384 1915 :=
  ⟨hints001168, length001168, checked001168, counted001168⟩

noncomputable def localPrefix001168 : CheckedPrimeCountBlock 30048257 2 16384 1915 :=
  block001168

noncomputable def hints001169 : List Nat :=
  primeHintChunk% "../../certificates/prime-count33554432-v1/counts-001169.json" 33554432 15040511 30081025 2

theorem length001169 : hints001169.length = 16384 := by decide +kernel
theorem checked001169 : checkPrimeHints 30081025 2 hints001169 = true := by decide +kernel
theorem counted001169 : hints001169.count 0 <= 1893 := by decide +kernel

noncomputable def block001169 : CheckedPrimeCountBlock 30081025 2 16384 1893 :=
  ⟨hints001169, length001169, checked001169, counted001169⟩

noncomputable def localPrefix001169 : CheckedPrimeCountBlock 30048257 2 32768 3808 :=
  localPrefix001168.append block001169

noncomputable def hints001170 : List Nat :=
  primeHintChunk% "../../certificates/prime-count33554432-v1/counts-001170.json" 33554432 15056895 30113793 2

theorem length001170 : hints001170.length = 16384 := by decide +kernel
theorem checked001170 : checkPrimeHints 30113793 2 hints001170 = true := by decide +kernel
theorem counted001170 : hints001170.count 0 <= 1944 := by decide +kernel

noncomputable def block001170 : CheckedPrimeCountBlock 30113793 2 16384 1944 :=
  ⟨hints001170, length001170, checked001170, counted001170⟩

noncomputable def localPrefix001170 : CheckedPrimeCountBlock 30048257 2 49152 5752 :=
  localPrefix001169.append block001170

noncomputable def hints001171 : List Nat :=
  primeHintChunk% "../../certificates/prime-count33554432-v1/counts-001171.json" 33554432 15073279 30146561 2

theorem length001171 : hints001171.length = 16384 := by decide +kernel
theorem checked001171 : checkPrimeHints 30146561 2 hints001171 = true := by decide +kernel
theorem counted001171 : hints001171.count 0 <= 1878 := by decide +kernel

noncomputable def block001171 : CheckedPrimeCountBlock 30146561 2 16384 1878 :=
  ⟨hints001171, length001171, checked001171, counted001171⟩

noncomputable def localPrefix001171 : CheckedPrimeCountBlock 30048257 2 65536 7630 :=
  localPrefix001170.append block001171

noncomputable def hints001172 : List Nat :=
  primeHintChunk% "../../certificates/prime-count33554432-v1/counts-001172.json" 33554432 15089663 30179329 2

theorem length001172 : hints001172.length = 16384 := by decide +kernel
theorem checked001172 : checkPrimeHints 30179329 2 hints001172 = true := by decide +kernel
theorem counted001172 : hints001172.count 0 <= 1921 := by decide +kernel

noncomputable def block001172 : CheckedPrimeCountBlock 30179329 2 16384 1921 :=
  ⟨hints001172, length001172, checked001172, counted001172⟩

noncomputable def localPrefix001172 : CheckedPrimeCountBlock 30048257 2 81920 9551 :=
  localPrefix001171.append block001172

noncomputable def hints001173 : List Nat :=
  primeHintChunk% "../../certificates/prime-count33554432-v1/counts-001173.json" 33554432 15106047 30212097 2

theorem length001173 : hints001173.length = 16384 := by decide +kernel
theorem checked001173 : checkPrimeHints 30212097 2 hints001173 = true := by decide +kernel
theorem counted001173 : hints001173.count 0 <= 1917 := by decide +kernel

noncomputable def block001173 : CheckedPrimeCountBlock 30212097 2 16384 1917 :=
  ⟨hints001173, length001173, checked001173, counted001173⟩

noncomputable def localPrefix001173 : CheckedPrimeCountBlock 30048257 2 98304 11468 :=
  localPrefix001172.append block001173

noncomputable def hints001174 : List Nat :=
  primeHintChunk% "../../certificates/prime-count33554432-v1/counts-001174.json" 33554432 15122431 30244865 2

theorem length001174 : hints001174.length = 16384 := by decide +kernel
theorem checked001174 : checkPrimeHints 30244865 2 hints001174 = true := by decide +kernel
theorem counted001174 : hints001174.count 0 <= 1881 := by decide +kernel

noncomputable def block001174 : CheckedPrimeCountBlock 30244865 2 16384 1881 :=
  ⟨hints001174, length001174, checked001174, counted001174⟩

noncomputable def localPrefix001174 : CheckedPrimeCountBlock 30048257 2 114688 13349 :=
  localPrefix001173.append block001174

noncomputable def hints001175 : List Nat :=
  primeHintChunk% "../../certificates/prime-count33554432-v1/counts-001175.json" 33554432 15138815 30277633 2

theorem length001175 : hints001175.length = 16384 := by decide +kernel
theorem checked001175 : checkPrimeHints 30277633 2 hints001175 = true := by decide +kernel
theorem counted001175 : hints001175.count 0 <= 1924 := by decide +kernel

noncomputable def block001175 : CheckedPrimeCountBlock 30277633 2 16384 1924 :=
  ⟨hints001175, length001175, checked001175, counted001175⟩

noncomputable def localPrefix001175 : CheckedPrimeCountBlock 30048257 2 131072 15273 :=
  localPrefix001174.append block001175

noncomputable def hints001176 : List Nat :=
  primeHintChunk% "../../certificates/prime-count33554432-v1/counts-001176.json" 33554432 15155199 30310401 2

theorem length001176 : hints001176.length = 16384 := by decide +kernel
theorem checked001176 : checkPrimeHints 30310401 2 hints001176 = true := by decide +kernel
theorem counted001176 : hints001176.count 0 <= 1937 := by decide +kernel

noncomputable def block001176 : CheckedPrimeCountBlock 30310401 2 16384 1937 :=
  ⟨hints001176, length001176, checked001176, counted001176⟩

noncomputable def localPrefix001176 : CheckedPrimeCountBlock 30048257 2 147456 17210 :=
  localPrefix001175.append block001176

noncomputable def hints001177 : List Nat :=
  primeHintChunk% "../../certificates/prime-count33554432-v1/counts-001177.json" 33554432 15171583 30343169 2

theorem length001177 : hints001177.length = 16384 := by decide +kernel
theorem checked001177 : checkPrimeHints 30343169 2 hints001177 = true := by decide +kernel
theorem counted001177 : hints001177.count 0 <= 1871 := by decide +kernel

noncomputable def block001177 : CheckedPrimeCountBlock 30343169 2 16384 1871 :=
  ⟨hints001177, length001177, checked001177, counted001177⟩

noncomputable def localPrefix001177 : CheckedPrimeCountBlock 30048257 2 163840 19081 :=
  localPrefix001176.append block001177

noncomputable def hints001178 : List Nat :=
  primeHintChunk% "../../certificates/prime-count33554432-v1/counts-001178.json" 33554432 15187967 30375937 2

theorem length001178 : hints001178.length = 16384 := by decide +kernel
theorem checked001178 : checkPrimeHints 30375937 2 hints001178 = true := by decide +kernel
theorem counted001178 : hints001178.count 0 <= 1947 := by decide +kernel

noncomputable def block001178 : CheckedPrimeCountBlock 30375937 2 16384 1947 :=
  ⟨hints001178, length001178, checked001178, counted001178⟩

noncomputable def localPrefix001178 : CheckedPrimeCountBlock 30048257 2 180224 21028 :=
  localPrefix001177.append block001178

noncomputable def hints001179 : List Nat :=
  primeHintChunk% "../../certificates/prime-count33554432-v1/counts-001179.json" 33554432 15204351 30408705 2

theorem length001179 : hints001179.length = 16384 := by decide +kernel
theorem checked001179 : checkPrimeHints 30408705 2 hints001179 = true := by decide +kernel
theorem counted001179 : hints001179.count 0 <= 1823 := by decide +kernel

noncomputable def block001179 : CheckedPrimeCountBlock 30408705 2 16384 1823 :=
  ⟨hints001179, length001179, checked001179, counted001179⟩

noncomputable def localPrefix001179 : CheckedPrimeCountBlock 30048257 2 196608 22851 :=
  localPrefix001178.append block001179

noncomputable def hints001180 : List Nat :=
  primeHintChunk% "../../certificates/prime-count33554432-v1/counts-001180.json" 33554432 15220735 30441473 2

theorem length001180 : hints001180.length = 16384 := by decide +kernel
theorem checked001180 : checkPrimeHints 30441473 2 hints001180 = true := by decide +kernel
theorem counted001180 : hints001180.count 0 <= 1896 := by decide +kernel

noncomputable def block001180 : CheckedPrimeCountBlock 30441473 2 16384 1896 :=
  ⟨hints001180, length001180, checked001180, counted001180⟩

noncomputable def localPrefix001180 : CheckedPrimeCountBlock 30048257 2 212992 24747 :=
  localPrefix001179.append block001180

noncomputable def hints001181 : List Nat :=
  primeHintChunk% "../../certificates/prime-count33554432-v1/counts-001181.json" 33554432 15237119 30474241 2

theorem length001181 : hints001181.length = 16384 := by decide +kernel
theorem checked001181 : checkPrimeHints 30474241 2 hints001181 = true := by decide +kernel
theorem counted001181 : hints001181.count 0 <= 1871 := by decide +kernel

noncomputable def block001181 : CheckedPrimeCountBlock 30474241 2 16384 1871 :=
  ⟨hints001181, length001181, checked001181, counted001181⟩

noncomputable def localPrefix001181 : CheckedPrimeCountBlock 30048257 2 229376 26618 :=
  localPrefix001180.append block001181

noncomputable def hints001182 : List Nat :=
  primeHintChunk% "../../certificates/prime-count33554432-v1/counts-001182.json" 33554432 15253503 30507009 2

theorem length001182 : hints001182.length = 16384 := by decide +kernel
theorem checked001182 : checkPrimeHints 30507009 2 hints001182 = true := by decide +kernel
theorem counted001182 : hints001182.count 0 <= 1953 := by decide +kernel

noncomputable def block001182 : CheckedPrimeCountBlock 30507009 2 16384 1953 :=
  ⟨hints001182, length001182, checked001182, counted001182⟩

noncomputable def localPrefix001182 : CheckedPrimeCountBlock 30048257 2 245760 28571 :=
  localPrefix001181.append block001182

noncomputable def hints001183 : List Nat :=
  primeHintChunk% "../../certificates/prime-count33554432-v1/counts-001183.json" 33554432 15269887 30539777 2

theorem length001183 : hints001183.length = 16384 := by decide +kernel
theorem checked001183 : checkPrimeHints 30539777 2 hints001183 = true := by decide +kernel
theorem counted001183 : hints001183.count 0 <= 1885 := by decide +kernel

noncomputable def block001183 : CheckedPrimeCountBlock 30539777 2 16384 1885 :=
  ⟨hints001183, length001183, checked001183, counted001183⟩

noncomputable def localPrefix001183 : CheckedPrimeCountBlock 30048257 2 262144 30456 :=
  localPrefix001182.append block001183

end JSP848.FullPrimeCount
