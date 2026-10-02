import JSP848.PrimeCountInput

set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0

namespace JSP848.FullPrimeCount

open PrimeCountInput

noncomputable def hints000336 : List Nat :=
  primeHintChunk% "../../certificates/prime-count33554432-v1/counts-000336.json" 33554432 1392639 2785281 2

theorem length000336 : hints000336.length = 16384 := by decide +kernel
theorem checked000336 : checkPrimeHints 2785281 2 hints000336 = true := by decide +kernel
theorem counted000336 : hints000336.count 0 <= 2237 := by decide +kernel

noncomputable def block000336 : CheckedPrimeCountBlock 2785281 2 16384 2237 :=
  ⟨hints000336, length000336, checked000336, counted000336⟩

noncomputable def localPrefix000336 : CheckedPrimeCountBlock 2785281 2 16384 2237 :=
  block000336

noncomputable def hints000337 : List Nat :=
  primeHintChunk% "../../certificates/prime-count33554432-v1/counts-000337.json" 33554432 1409023 2818049 2

theorem length000337 : hints000337.length = 16384 := by decide +kernel
theorem checked000337 : checkPrimeHints 2818049 2 hints000337 = true := by decide +kernel
theorem counted000337 : hints000337.count 0 <= 2230 := by decide +kernel

noncomputable def block000337 : CheckedPrimeCountBlock 2818049 2 16384 2230 :=
  ⟨hints000337, length000337, checked000337, counted000337⟩

noncomputable def localPrefix000337 : CheckedPrimeCountBlock 2785281 2 32768 4467 :=
  localPrefix000336.append block000337

noncomputable def hints000338 : List Nat :=
  primeHintChunk% "../../certificates/prime-count33554432-v1/counts-000338.json" 33554432 1425407 2850817 2

theorem length000338 : hints000338.length = 16384 := by decide +kernel
theorem checked000338 : checkPrimeHints 2850817 2 hints000338 = true := by decide +kernel
theorem counted000338 : hints000338.count 0 <= 2171 := by decide +kernel

noncomputable def block000338 : CheckedPrimeCountBlock 2850817 2 16384 2171 :=
  ⟨hints000338, length000338, checked000338, counted000338⟩

noncomputable def localPrefix000338 : CheckedPrimeCountBlock 2785281 2 49152 6638 :=
  localPrefix000337.append block000338

noncomputable def hints000339 : List Nat :=
  primeHintChunk% "../../certificates/prime-count33554432-v1/counts-000339.json" 33554432 1441791 2883585 2

theorem length000339 : hints000339.length = 16384 := by decide +kernel
theorem checked000339 : checkPrimeHints 2883585 2 hints000339 = true := by decide +kernel
theorem counted000339 : hints000339.count 0 <= 2191 := by decide +kernel

noncomputable def block000339 : CheckedPrimeCountBlock 2883585 2 16384 2191 :=
  ⟨hints000339, length000339, checked000339, counted000339⟩

noncomputable def localPrefix000339 : CheckedPrimeCountBlock 2785281 2 65536 8829 :=
  localPrefix000338.append block000339

noncomputable def hints000340 : List Nat :=
  primeHintChunk% "../../certificates/prime-count33554432-v1/counts-000340.json" 33554432 1458175 2916353 2

theorem length000340 : hints000340.length = 16384 := by decide +kernel
theorem checked000340 : checkPrimeHints 2916353 2 hints000340 = true := by decide +kernel
theorem counted000340 : hints000340.count 0 <= 2185 := by decide +kernel

noncomputable def block000340 : CheckedPrimeCountBlock 2916353 2 16384 2185 :=
  ⟨hints000340, length000340, checked000340, counted000340⟩

noncomputable def localPrefix000340 : CheckedPrimeCountBlock 2785281 2 81920 11014 :=
  localPrefix000339.append block000340

noncomputable def hints000341 : List Nat :=
  primeHintChunk% "../../certificates/prime-count33554432-v1/counts-000341.json" 33554432 1474559 2949121 2

theorem length000341 : hints000341.length = 16384 := by decide +kernel
theorem checked000341 : checkPrimeHints 2949121 2 hints000341 = true := by decide +kernel
theorem counted000341 : hints000341.count 0 <= 2204 := by decide +kernel

noncomputable def block000341 : CheckedPrimeCountBlock 2949121 2 16384 2204 :=
  ⟨hints000341, length000341, checked000341, counted000341⟩

noncomputable def localPrefix000341 : CheckedPrimeCountBlock 2785281 2 98304 13218 :=
  localPrefix000340.append block000341

noncomputable def hints000342 : List Nat :=
  primeHintChunk% "../../certificates/prime-count33554432-v1/counts-000342.json" 33554432 1490943 2981889 2

theorem length000342 : hints000342.length = 16384 := by decide +kernel
theorem checked000342 : checkPrimeHints 2981889 2 hints000342 = true := by decide +kernel
theorem counted000342 : hints000342.count 0 <= 2213 := by decide +kernel

noncomputable def block000342 : CheckedPrimeCountBlock 2981889 2 16384 2213 :=
  ⟨hints000342, length000342, checked000342, counted000342⟩

noncomputable def localPrefix000342 : CheckedPrimeCountBlock 2785281 2 114688 15431 :=
  localPrefix000341.append block000342

noncomputable def hints000343 : List Nat :=
  primeHintChunk% "../../certificates/prime-count33554432-v1/counts-000343.json" 33554432 1507327 3014657 2

theorem length000343 : hints000343.length = 16384 := by decide +kernel
theorem checked000343 : checkPrimeHints 3014657 2 hints000343 = true := by decide +kernel
theorem counted000343 : hints000343.count 0 <= 2166 := by decide +kernel

noncomputable def block000343 : CheckedPrimeCountBlock 3014657 2 16384 2166 :=
  ⟨hints000343, length000343, checked000343, counted000343⟩

noncomputable def localPrefix000343 : CheckedPrimeCountBlock 2785281 2 131072 17597 :=
  localPrefix000342.append block000343

noncomputable def hints000344 : List Nat :=
  primeHintChunk% "../../certificates/prime-count33554432-v1/counts-000344.json" 33554432 1523711 3047425 2

theorem length000344 : hints000344.length = 16384 := by decide +kernel
theorem checked000344 : checkPrimeHints 3047425 2 hints000344 = true := by decide +kernel
theorem counted000344 : hints000344.count 0 <= 2192 := by decide +kernel

noncomputable def block000344 : CheckedPrimeCountBlock 3047425 2 16384 2192 :=
  ⟨hints000344, length000344, checked000344, counted000344⟩

noncomputable def localPrefix000344 : CheckedPrimeCountBlock 2785281 2 147456 19789 :=
  localPrefix000343.append block000344

noncomputable def hints000345 : List Nat :=
  primeHintChunk% "../../certificates/prime-count33554432-v1/counts-000345.json" 33554432 1540095 3080193 2

theorem length000345 : hints000345.length = 16384 := by decide +kernel
theorem checked000345 : checkPrimeHints 3080193 2 hints000345 = true := by decide +kernel
theorem counted000345 : hints000345.count 0 <= 2193 := by decide +kernel

noncomputable def block000345 : CheckedPrimeCountBlock 3080193 2 16384 2193 :=
  ⟨hints000345, length000345, checked000345, counted000345⟩

noncomputable def localPrefix000345 : CheckedPrimeCountBlock 2785281 2 163840 21982 :=
  localPrefix000344.append block000345

noncomputable def hints000346 : List Nat :=
  primeHintChunk% "../../certificates/prime-count33554432-v1/counts-000346.json" 33554432 1556479 3112961 2

theorem length000346 : hints000346.length = 16384 := by decide +kernel
theorem checked000346 : checkPrimeHints 3112961 2 hints000346 = true := by decide +kernel
theorem counted000346 : hints000346.count 0 <= 2191 := by decide +kernel

noncomputable def block000346 : CheckedPrimeCountBlock 3112961 2 16384 2191 :=
  ⟨hints000346, length000346, checked000346, counted000346⟩

noncomputable def localPrefix000346 : CheckedPrimeCountBlock 2785281 2 180224 24173 :=
  localPrefix000345.append block000346

noncomputable def hints000347 : List Nat :=
  primeHintChunk% "../../certificates/prime-count33554432-v1/counts-000347.json" 33554432 1572863 3145729 2

theorem length000347 : hints000347.length = 16384 := by decide +kernel
theorem checked000347 : checkPrimeHints 3145729 2 hints000347 = true := by decide +kernel
theorem counted000347 : hints000347.count 0 <= 2205 := by decide +kernel

noncomputable def block000347 : CheckedPrimeCountBlock 3145729 2 16384 2205 :=
  ⟨hints000347, length000347, checked000347, counted000347⟩

noncomputable def localPrefix000347 : CheckedPrimeCountBlock 2785281 2 196608 26378 :=
  localPrefix000346.append block000347

noncomputable def hints000348 : List Nat :=
  primeHintChunk% "../../certificates/prime-count33554432-v1/counts-000348.json" 33554432 1589247 3178497 2

theorem length000348 : hints000348.length = 16384 := by decide +kernel
theorem checked000348 : checkPrimeHints 3178497 2 hints000348 = true := by decide +kernel
theorem counted000348 : hints000348.count 0 <= 2230 := by decide +kernel

noncomputable def block000348 : CheckedPrimeCountBlock 3178497 2 16384 2230 :=
  ⟨hints000348, length000348, checked000348, counted000348⟩

noncomputable def localPrefix000348 : CheckedPrimeCountBlock 2785281 2 212992 28608 :=
  localPrefix000347.append block000348

noncomputable def hints000349 : List Nat :=
  primeHintChunk% "../../certificates/prime-count33554432-v1/counts-000349.json" 33554432 1605631 3211265 2

theorem length000349 : hints000349.length = 16384 := by decide +kernel
theorem checked000349 : checkPrimeHints 3211265 2 hints000349 = true := by decide +kernel
theorem counted000349 : hints000349.count 0 <= 2198 := by decide +kernel

noncomputable def block000349 : CheckedPrimeCountBlock 3211265 2 16384 2198 :=
  ⟨hints000349, length000349, checked000349, counted000349⟩

noncomputable def localPrefix000349 : CheckedPrimeCountBlock 2785281 2 229376 30806 :=
  localPrefix000348.append block000349

noncomputable def hints000350 : List Nat :=
  primeHintChunk% "../../certificates/prime-count33554432-v1/counts-000350.json" 33554432 1622015 3244033 2

theorem length000350 : hints000350.length = 16384 := by decide +kernel
theorem checked000350 : checkPrimeHints 3244033 2 hints000350 = true := by decide +kernel
theorem counted000350 : hints000350.count 0 <= 2188 := by decide +kernel

noncomputable def block000350 : CheckedPrimeCountBlock 3244033 2 16384 2188 :=
  ⟨hints000350, length000350, checked000350, counted000350⟩

noncomputable def localPrefix000350 : CheckedPrimeCountBlock 2785281 2 245760 32994 :=
  localPrefix000349.append block000350

noncomputable def hints000351 : List Nat :=
  primeHintChunk% "../../certificates/prime-count33554432-v1/counts-000351.json" 33554432 1638399 3276801 2

theorem length000351 : hints000351.length = 16384 := by decide +kernel
theorem checked000351 : checkPrimeHints 3276801 2 hints000351 = true := by decide +kernel
theorem counted000351 : hints000351.count 0 <= 2174 := by decide +kernel

noncomputable def block000351 : CheckedPrimeCountBlock 3276801 2 16384 2174 :=
  ⟨hints000351, length000351, checked000351, counted000351⟩

noncomputable def localPrefix000351 : CheckedPrimeCountBlock 2785281 2 262144 35168 :=
  localPrefix000350.append block000351

end JSP848.FullPrimeCount
