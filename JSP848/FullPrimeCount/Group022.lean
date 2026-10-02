import JSP848.PrimeCountInput

set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0

namespace JSP848.FullPrimeCount

open PrimeCountInput

noncomputable def hints000352 : List Nat :=
  primeHintChunk% "../../certificates/prime-count33554432-v1/counts-000352.json" 33554432 1654783 3309569 2

theorem length000352 : hints000352.length = 16384 := by decide +kernel
theorem checked000352 : checkPrimeHints 3309569 2 hints000352 = true := by decide +kernel
theorem counted000352 : hints000352.count 0 <= 2181 := by decide +kernel

noncomputable def block000352 : CheckedPrimeCountBlock 3309569 2 16384 2181 :=
  ⟨hints000352, length000352, checked000352, counted000352⟩

noncomputable def localPrefix000352 : CheckedPrimeCountBlock 3309569 2 16384 2181 :=
  block000352

noncomputable def hints000353 : List Nat :=
  primeHintChunk% "../../certificates/prime-count33554432-v1/counts-000353.json" 33554432 1671167 3342337 2

theorem length000353 : hints000353.length = 16384 := by decide +kernel
theorem checked000353 : checkPrimeHints 3342337 2 hints000353 = true := by decide +kernel
theorem counted000353 : hints000353.count 0 <= 2148 := by decide +kernel

noncomputable def block000353 : CheckedPrimeCountBlock 3342337 2 16384 2148 :=
  ⟨hints000353, length000353, checked000353, counted000353⟩

noncomputable def localPrefix000353 : CheckedPrimeCountBlock 3309569 2 32768 4329 :=
  localPrefix000352.append block000353

noncomputable def hints000354 : List Nat :=
  primeHintChunk% "../../certificates/prime-count33554432-v1/counts-000354.json" 33554432 1687551 3375105 2

theorem length000354 : hints000354.length = 16384 := by decide +kernel
theorem checked000354 : checkPrimeHints 3375105 2 hints000354 = true := by decide +kernel
theorem counted000354 : hints000354.count 0 <= 2196 := by decide +kernel

noncomputable def block000354 : CheckedPrimeCountBlock 3375105 2 16384 2196 :=
  ⟨hints000354, length000354, checked000354, counted000354⟩

noncomputable def localPrefix000354 : CheckedPrimeCountBlock 3309569 2 49152 6525 :=
  localPrefix000353.append block000354

noncomputable def hints000355 : List Nat :=
  primeHintChunk% "../../certificates/prime-count33554432-v1/counts-000355.json" 33554432 1703935 3407873 2

theorem length000355 : hints000355.length = 16384 := by decide +kernel
theorem checked000355 : checkPrimeHints 3407873 2 hints000355 = true := by decide +kernel
theorem counted000355 : hints000355.count 0 <= 2213 := by decide +kernel

noncomputable def block000355 : CheckedPrimeCountBlock 3407873 2 16384 2213 :=
  ⟨hints000355, length000355, checked000355, counted000355⟩

noncomputable def localPrefix000355 : CheckedPrimeCountBlock 3309569 2 65536 8738 :=
  localPrefix000354.append block000355

noncomputable def hints000356 : List Nat :=
  primeHintChunk% "../../certificates/prime-count33554432-v1/counts-000356.json" 33554432 1720319 3440641 2

theorem length000356 : hints000356.length = 16384 := by decide +kernel
theorem checked000356 : checkPrimeHints 3440641 2 hints000356 = true := by decide +kernel
theorem counted000356 : hints000356.count 0 <= 2147 := by decide +kernel

noncomputable def block000356 : CheckedPrimeCountBlock 3440641 2 16384 2147 :=
  ⟨hints000356, length000356, checked000356, counted000356⟩

noncomputable def localPrefix000356 : CheckedPrimeCountBlock 3309569 2 81920 10885 :=
  localPrefix000355.append block000356

noncomputable def hints000357 : List Nat :=
  primeHintChunk% "../../certificates/prime-count33554432-v1/counts-000357.json" 33554432 1736703 3473409 2

theorem length000357 : hints000357.length = 16384 := by decide +kernel
theorem checked000357 : checkPrimeHints 3473409 2 hints000357 = true := by decide +kernel
theorem counted000357 : hints000357.count 0 <= 2133 := by decide +kernel

noncomputable def block000357 : CheckedPrimeCountBlock 3473409 2 16384 2133 :=
  ⟨hints000357, length000357, checked000357, counted000357⟩

noncomputable def localPrefix000357 : CheckedPrimeCountBlock 3309569 2 98304 13018 :=
  localPrefix000356.append block000357

noncomputable def hints000358 : List Nat :=
  primeHintChunk% "../../certificates/prime-count33554432-v1/counts-000358.json" 33554432 1753087 3506177 2

theorem length000358 : hints000358.length = 16384 := by decide +kernel
theorem checked000358 : checkPrimeHints 3506177 2 hints000358 = true := by decide +kernel
theorem counted000358 : hints000358.count 0 <= 2125 := by decide +kernel

noncomputable def block000358 : CheckedPrimeCountBlock 3506177 2 16384 2125 :=
  ⟨hints000358, length000358, checked000358, counted000358⟩

noncomputable def localPrefix000358 : CheckedPrimeCountBlock 3309569 2 114688 15143 :=
  localPrefix000357.append block000358

noncomputable def hints000359 : List Nat :=
  primeHintChunk% "../../certificates/prime-count33554432-v1/counts-000359.json" 33554432 1769471 3538945 2

theorem length000359 : hints000359.length = 16384 := by decide +kernel
theorem checked000359 : checkPrimeHints 3538945 2 hints000359 = true := by decide +kernel
theorem counted000359 : hints000359.count 0 <= 2180 := by decide +kernel

noncomputable def block000359 : CheckedPrimeCountBlock 3538945 2 16384 2180 :=
  ⟨hints000359, length000359, checked000359, counted000359⟩

noncomputable def localPrefix000359 : CheckedPrimeCountBlock 3309569 2 131072 17323 :=
  localPrefix000358.append block000359

noncomputable def hints000360 : List Nat :=
  primeHintChunk% "../../certificates/prime-count33554432-v1/counts-000360.json" 33554432 1785855 3571713 2

theorem length000360 : hints000360.length = 16384 := by decide +kernel
theorem checked000360 : checkPrimeHints 3571713 2 hints000360 = true := by decide +kernel
theorem counted000360 : hints000360.count 0 <= 2157 := by decide +kernel

noncomputable def block000360 : CheckedPrimeCountBlock 3571713 2 16384 2157 :=
  ⟨hints000360, length000360, checked000360, counted000360⟩

noncomputable def localPrefix000360 : CheckedPrimeCountBlock 3309569 2 147456 19480 :=
  localPrefix000359.append block000360

noncomputable def hints000361 : List Nat :=
  primeHintChunk% "../../certificates/prime-count33554432-v1/counts-000361.json" 33554432 1802239 3604481 2

theorem length000361 : hints000361.length = 16384 := by decide +kernel
theorem checked000361 : checkPrimeHints 3604481 2 hints000361 = true := by decide +kernel
theorem counted000361 : hints000361.count 0 <= 2220 := by decide +kernel

noncomputable def block000361 : CheckedPrimeCountBlock 3604481 2 16384 2220 :=
  ⟨hints000361, length000361, checked000361, counted000361⟩

noncomputable def localPrefix000361 : CheckedPrimeCountBlock 3309569 2 163840 21700 :=
  localPrefix000360.append block000361

noncomputable def hints000362 : List Nat :=
  primeHintChunk% "../../certificates/prime-count33554432-v1/counts-000362.json" 33554432 1818623 3637249 2

theorem length000362 : hints000362.length = 16384 := by decide +kernel
theorem checked000362 : checkPrimeHints 3637249 2 hints000362 = true := by decide +kernel
theorem counted000362 : hints000362.count 0 <= 2134 := by decide +kernel

noncomputable def block000362 : CheckedPrimeCountBlock 3637249 2 16384 2134 :=
  ⟨hints000362, length000362, checked000362, counted000362⟩

noncomputable def localPrefix000362 : CheckedPrimeCountBlock 3309569 2 180224 23834 :=
  localPrefix000361.append block000362

noncomputable def hints000363 : List Nat :=
  primeHintChunk% "../../certificates/prime-count33554432-v1/counts-000363.json" 33554432 1835007 3670017 2

theorem length000363 : hints000363.length = 16384 := by decide +kernel
theorem checked000363 : checkPrimeHints 3670017 2 hints000363 = true := by decide +kernel
theorem counted000363 : hints000363.count 0 <= 2204 := by decide +kernel

noncomputable def block000363 : CheckedPrimeCountBlock 3670017 2 16384 2204 :=
  ⟨hints000363, length000363, checked000363, counted000363⟩

noncomputable def localPrefix000363 : CheckedPrimeCountBlock 3309569 2 196608 26038 :=
  localPrefix000362.append block000363

noncomputable def hints000364 : List Nat :=
  primeHintChunk% "../../certificates/prime-count33554432-v1/counts-000364.json" 33554432 1851391 3702785 2

theorem length000364 : hints000364.length = 16384 := by decide +kernel
theorem checked000364 : checkPrimeHints 3702785 2 hints000364 = true := by decide +kernel
theorem counted000364 : hints000364.count 0 <= 2190 := by decide +kernel

noncomputable def block000364 : CheckedPrimeCountBlock 3702785 2 16384 2190 :=
  ⟨hints000364, length000364, checked000364, counted000364⟩

noncomputable def localPrefix000364 : CheckedPrimeCountBlock 3309569 2 212992 28228 :=
  localPrefix000363.append block000364

noncomputable def hints000365 : List Nat :=
  primeHintChunk% "../../certificates/prime-count33554432-v1/counts-000365.json" 33554432 1867775 3735553 2

theorem length000365 : hints000365.length = 16384 := by decide +kernel
theorem checked000365 : checkPrimeHints 3735553 2 hints000365 = true := by decide +kernel
theorem counted000365 : hints000365.count 0 <= 2136 := by decide +kernel

noncomputable def block000365 : CheckedPrimeCountBlock 3735553 2 16384 2136 :=
  ⟨hints000365, length000365, checked000365, counted000365⟩

noncomputable def localPrefix000365 : CheckedPrimeCountBlock 3309569 2 229376 30364 :=
  localPrefix000364.append block000365

noncomputable def hints000366 : List Nat :=
  primeHintChunk% "../../certificates/prime-count33554432-v1/counts-000366.json" 33554432 1884159 3768321 2

theorem length000366 : hints000366.length = 16384 := by decide +kernel
theorem checked000366 : checkPrimeHints 3768321 2 hints000366 = true := by decide +kernel
theorem counted000366 : hints000366.count 0 <= 2147 := by decide +kernel

noncomputable def block000366 : CheckedPrimeCountBlock 3768321 2 16384 2147 :=
  ⟨hints000366, length000366, checked000366, counted000366⟩

noncomputable def localPrefix000366 : CheckedPrimeCountBlock 3309569 2 245760 32511 :=
  localPrefix000365.append block000366

noncomputable def hints000367 : List Nat :=
  primeHintChunk% "../../certificates/prime-count33554432-v1/counts-000367.json" 33554432 1900543 3801089 2

theorem length000367 : hints000367.length = 16384 := by decide +kernel
theorem checked000367 : checkPrimeHints 3801089 2 hints000367 = true := by decide +kernel
theorem counted000367 : hints000367.count 0 <= 2189 := by decide +kernel

noncomputable def block000367 : CheckedPrimeCountBlock 3801089 2 16384 2189 :=
  ⟨hints000367, length000367, checked000367, counted000367⟩

noncomputable def localPrefix000367 : CheckedPrimeCountBlock 3309569 2 262144 34700 :=
  localPrefix000366.append block000367

end JSP848.FullPrimeCount
