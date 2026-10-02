import JSP848.PrimeCountInput

set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0

namespace JSP848.FullPrimeCount

open PrimeCountInput

noncomputable def hints000016 : List Nat :=
  primeHintChunk% "../../certificates/prime-count33554432-v1/counts-000016.json" 33554432 10330 20663 2

theorem length000016 : hints000016.length = 161 := by decide +kernel
theorem checked000016 : checkPrimeHints 20663 2 hints000016 = true := by decide +kernel
theorem counted000016 : hints000016.count 0 <= 33 := by decide +kernel

noncomputable def block000016 : CheckedPrimeCountBlock 20663 2 161 33 :=
  ⟨hints000016, length000016, checked000016, counted000016⟩

noncomputable def localPrefix000016 : CheckedPrimeCountBlock 20663 2 161 33 :=
  block000016

noncomputable def hints000017 : List Nat :=
  primeHintChunk% "../../certificates/prime-count33554432-v1/counts-000017.json" 33554432 10491 20985 2

theorem length000017 : hints000017.length = 163 := by decide +kernel
theorem checked000017 : checkPrimeHints 20985 2 hints000017 = true := by decide +kernel
theorem counted000017 : hints000017.count 0 <= 31 := by decide +kernel

noncomputable def block000017 : CheckedPrimeCountBlock 20985 2 163 31 :=
  ⟨hints000017, length000017, checked000017, counted000017⟩

noncomputable def localPrefix000017 : CheckedPrimeCountBlock 20663 2 324 64 :=
  localPrefix000016.append block000017

noncomputable def hints000018 : List Nat :=
  primeHintChunk% "../../certificates/prime-count33554432-v1/counts-000018.json" 33554432 10654 21311 2

theorem length000018 : hints000018.length = 166 := by decide +kernel
theorem checked000018 : checkPrimeHints 21311 2 hints000018 = true := by decide +kernel
theorem counted000018 : hints000018.count 0 <= 38 := by decide +kernel

noncomputable def block000018 : CheckedPrimeCountBlock 21311 2 166 38 :=
  ⟨hints000018, length000018, checked000018, counted000018⟩

noncomputable def localPrefix000018 : CheckedPrimeCountBlock 20663 2 490 102 :=
  localPrefix000017.append block000018

noncomputable def hints000019 : List Nat :=
  primeHintChunk% "../../certificates/prime-count33554432-v1/counts-000019.json" 33554432 10820 21643 2

theorem length000019 : hints000019.length = 169 := by decide +kernel
theorem checked000019 : checkPrimeHints 21643 2 hints000019 = true := by decide +kernel
theorem counted000019 : hints000019.count 0 <= 33 := by decide +kernel

noncomputable def block000019 : CheckedPrimeCountBlock 21643 2 169 33 :=
  ⟨hints000019, length000019, checked000019, counted000019⟩

noncomputable def localPrefix000019 : CheckedPrimeCountBlock 20663 2 659 135 :=
  localPrefix000018.append block000019

noncomputable def hints000020 : List Nat :=
  primeHintChunk% "../../certificates/prime-count33554432-v1/counts-000020.json" 33554432 10989 21981 2

theorem length000020 : hints000020.length = 171 := by decide +kernel
theorem checked000020 : checkPrimeHints 21981 2 hints000020 = true := by decide +kernel
theorem counted000020 : hints000020.count 0 <= 38 := by decide +kernel

noncomputable def block000020 : CheckedPrimeCountBlock 21981 2 171 38 :=
  ⟨hints000020, length000020, checked000020, counted000020⟩

noncomputable def localPrefix000020 : CheckedPrimeCountBlock 20663 2 830 173 :=
  localPrefix000019.append block000020

noncomputable def hints000021 : List Nat :=
  primeHintChunk% "../../certificates/prime-count33554432-v1/counts-000021.json" 33554432 11160 22323 2

theorem length000021 : hints000021.length = 174 := by decide +kernel
theorem checked000021 : checkPrimeHints 22323 2 hints000021 = true := by decide +kernel
theorem counted000021 : hints000021.count 0 <= 32 := by decide +kernel

noncomputable def block000021 : CheckedPrimeCountBlock 22323 2 174 32 :=
  ⟨hints000021, length000021, checked000021, counted000021⟩

noncomputable def localPrefix000021 : CheckedPrimeCountBlock 20663 2 1004 205 :=
  localPrefix000020.append block000021

noncomputable def hints000022 : List Nat :=
  primeHintChunk% "../../certificates/prime-count33554432-v1/counts-000022.json" 33554432 11334 22671 2

theorem length000022 : hints000022.length = 177 := by decide +kernel
theorem checked000022 : checkPrimeHints 22671 2 hints000022 = true := by decide +kernel
theorem counted000022 : hints000022.count 0 <= 36 := by decide +kernel

noncomputable def block000022 : CheckedPrimeCountBlock 22671 2 177 36 :=
  ⟨hints000022, length000022, checked000022, counted000022⟩

noncomputable def localPrefix000022 : CheckedPrimeCountBlock 20663 2 1181 241 :=
  localPrefix000021.append block000022

noncomputable def hints000023 : List Nat :=
  primeHintChunk% "../../certificates/prime-count33554432-v1/counts-000023.json" 33554432 11511 23025 2

theorem length000023 : hints000023.length = 179 := by decide +kernel
theorem checked000023 : checkPrimeHints 23025 2 hints000023 = true := by decide +kernel
theorem counted000023 : hints000023.count 0 <= 38 := by decide +kernel

noncomputable def block000023 : CheckedPrimeCountBlock 23025 2 179 38 :=
  ⟨hints000023, length000023, checked000023, counted000023⟩

noncomputable def localPrefix000023 : CheckedPrimeCountBlock 20663 2 1360 279 :=
  localPrefix000022.append block000023

noncomputable def hints000024 : List Nat :=
  primeHintChunk% "../../certificates/prime-count33554432-v1/counts-000024.json" 33554432 11690 23383 2

theorem length000024 : hints000024.length = 182 := by decide +kernel
theorem checked000024 : checkPrimeHints 23383 2 hints000024 = true := by decide +kernel
theorem counted000024 : hints000024.count 0 <= 34 := by decide +kernel

noncomputable def block000024 : CheckedPrimeCountBlock 23383 2 182 34 :=
  ⟨hints000024, length000024, checked000024, counted000024⟩

noncomputable def localPrefix000024 : CheckedPrimeCountBlock 20663 2 1542 313 :=
  localPrefix000023.append block000024

noncomputable def hints000025 : List Nat :=
  primeHintChunk% "../../certificates/prime-count33554432-v1/counts-000025.json" 33554432 11872 23747 2

theorem length000025 : hints000025.length = 185 := by decide +kernel
theorem checked000025 : checkPrimeHints 23747 2 hints000025 = true := by decide +kernel
theorem counted000025 : hints000025.count 0 <= 45 := by decide +kernel

noncomputable def block000025 : CheckedPrimeCountBlock 23747 2 185 45 :=
  ⟨hints000025, length000025, checked000025, counted000025⟩

noncomputable def localPrefix000025 : CheckedPrimeCountBlock 20663 2 1727 358 :=
  localPrefix000024.append block000025

noncomputable def hints000026 : List Nat :=
  primeHintChunk% "../../certificates/prime-count33554432-v1/counts-000026.json" 33554432 12057 24117 2

theorem length000026 : hints000026.length = 188 := by decide +kernel
theorem checked000026 : checkPrimeHints 24117 2 hints000026 = true := by decide +kernel
theorem counted000026 : hints000026.count 0 <= 32 := by decide +kernel

noncomputable def block000026 : CheckedPrimeCountBlock 24117 2 188 32 :=
  ⟨hints000026, length000026, checked000026, counted000026⟩

noncomputable def localPrefix000026 : CheckedPrimeCountBlock 20663 2 1915 390 :=
  localPrefix000025.append block000026

noncomputable def hints000027 : List Nat :=
  primeHintChunk% "../../certificates/prime-count33554432-v1/counts-000027.json" 33554432 12245 24493 2

theorem length000027 : hints000027.length = 191 := by decide +kernel
theorem checked000027 : checkPrimeHints 24493 2 hints000027 = true := by decide +kernel
theorem counted000027 : hints000027.count 0 <= 32 := by decide +kernel

noncomputable def block000027 : CheckedPrimeCountBlock 24493 2 191 32 :=
  ⟨hints000027, length000027, checked000027, counted000027⟩

noncomputable def localPrefix000027 : CheckedPrimeCountBlock 20663 2 2106 422 :=
  localPrefix000026.append block000027

noncomputable def hints000028 : List Nat :=
  primeHintChunk% "../../certificates/prime-count33554432-v1/counts-000028.json" 33554432 12436 24875 2

theorem length000028 : hints000028.length = 194 := by decide +kernel
theorem checked000028 : checkPrimeHints 24875 2 hints000028 = true := by decide +kernel
theorem counted000028 : hints000028.count 0 <= 39 := by decide +kernel

noncomputable def block000028 : CheckedPrimeCountBlock 24875 2 194 39 :=
  ⟨hints000028, length000028, checked000028, counted000028⟩

noncomputable def localPrefix000028 : CheckedPrimeCountBlock 20663 2 2300 461 :=
  localPrefix000027.append block000028

noncomputable def hints000029 : List Nat :=
  primeHintChunk% "../../certificates/prime-count33554432-v1/counts-000029.json" 33554432 12630 25263 2

theorem length000029 : hints000029.length = 197 := by decide +kernel
theorem checked000029 : checkPrimeHints 25263 2 hints000029 = true := by decide +kernel
theorem counted000029 : hints000029.count 0 <= 37 := by decide +kernel

noncomputable def block000029 : CheckedPrimeCountBlock 25263 2 197 37 :=
  ⟨hints000029, length000029, checked000029, counted000029⟩

noncomputable def localPrefix000029 : CheckedPrimeCountBlock 20663 2 2497 498 :=
  localPrefix000028.append block000029

noncomputable def hints000030 : List Nat :=
  primeHintChunk% "../../certificates/prime-count33554432-v1/counts-000030.json" 33554432 12827 25657 2

theorem length000030 : hints000030.length = 200 := by decide +kernel
theorem checked000030 : checkPrimeHints 25657 2 hints000030 = true := by decide +kernel
theorem counted000030 : hints000030.count 0 <= 41 := by decide +kernel

noncomputable def block000030 : CheckedPrimeCountBlock 25657 2 200 41 :=
  ⟨hints000030, length000030, checked000030, counted000030⟩

noncomputable def localPrefix000030 : CheckedPrimeCountBlock 20663 2 2697 539 :=
  localPrefix000029.append block000030

noncomputable def hints000031 : List Nat :=
  primeHintChunk% "../../certificates/prime-count33554432-v1/counts-000031.json" 33554432 13027 26057 2

theorem length000031 : hints000031.length = 203 := by decide +kernel
theorem checked000031 : checkPrimeHints 26057 2 hints000031 = true := by decide +kernel
theorem counted000031 : hints000031.count 0 <= 41 := by decide +kernel

noncomputable def block000031 : CheckedPrimeCountBlock 26057 2 203 41 :=
  ⟨hints000031, length000031, checked000031, counted000031⟩

noncomputable def localPrefix000031 : CheckedPrimeCountBlock 20663 2 2900 580 :=
  localPrefix000030.append block000031

end JSP848.FullPrimeCount
