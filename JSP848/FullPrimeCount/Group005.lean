import JSP848.PrimeCountInput

set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0

namespace JSP848.FullPrimeCount

open PrimeCountInput

noncomputable def hints000080 : List Nat :=
  primeHintChunk% "../../certificates/prime-count33554432-v1/counts-000080.json" 33554432 27806 55615 2

theorem length000080 : hints000080.length = 434 := by decide +kernel
theorem checked000080 : checkPrimeHints 55615 2 hints000080 = true := by decide +kernel
theorem counted000080 : hints000080.count 0 <= 86 := by decide +kernel

noncomputable def block000080 : CheckedPrimeCountBlock 55615 2 434 86 :=
  ⟨hints000080, length000080, checked000080, counted000080⟩

noncomputable def localPrefix000080 : CheckedPrimeCountBlock 55615 2 434 86 :=
  block000080

noncomputable def hints000081 : List Nat :=
  primeHintChunk% "../../certificates/prime-count33554432-v1/counts-000081.json" 33554432 28240 56483 2

theorem length000081 : hints000081.length = 441 := by decide +kernel
theorem checked000081 : checkPrimeHints 56483 2 hints000081 = true := by decide +kernel
theorem counted000081 : hints000081.count 0 <= 89 := by decide +kernel

noncomputable def block000081 : CheckedPrimeCountBlock 56483 2 441 89 :=
  ⟨hints000081, length000081, checked000081, counted000081⟩

noncomputable def localPrefix000081 : CheckedPrimeCountBlock 55615 2 875 175 :=
  localPrefix000080.append block000081

noncomputable def hints000082 : List Nat :=
  primeHintChunk% "../../certificates/prime-count33554432-v1/counts-000082.json" 33554432 28681 57365 2

theorem length000082 : hints000082.length = 448 := by decide +kernel
theorem checked000082 : checkPrimeHints 57365 2 hints000082 = true := by decide +kernel
theorem counted000082 : hints000082.count 0 <= 85 := by decide +kernel

noncomputable def block000082 : CheckedPrimeCountBlock 57365 2 448 85 :=
  ⟨hints000082, length000082, checked000082, counted000082⟩

noncomputable def localPrefix000082 : CheckedPrimeCountBlock 55615 2 1323 260 :=
  localPrefix000081.append block000082

noncomputable def hints000083 : List Nat :=
  primeHintChunk% "../../certificates/prime-count33554432-v1/counts-000083.json" 33554432 29129 58261 2

theorem length000083 : hints000083.length = 455 := by decide +kernel
theorem checked000083 : checkPrimeHints 58261 2 hints000083 = true := by decide +kernel
theorem counted000083 : hints000083.count 0 <= 82 := by decide +kernel

noncomputable def block000083 : CheckedPrimeCountBlock 58261 2 455 82 :=
  ⟨hints000083, length000083, checked000083, counted000083⟩

noncomputable def localPrefix000083 : CheckedPrimeCountBlock 55615 2 1778 342 :=
  localPrefix000082.append block000083

noncomputable def hints000084 : List Nat :=
  primeHintChunk% "../../certificates/prime-count33554432-v1/counts-000084.json" 33554432 29584 59171 2

theorem length000084 : hints000084.length = 462 := by decide +kernel
theorem checked000084 : checkPrimeHints 59171 2 hints000084 = true := by decide +kernel
theorem counted000084 : hints000084.count 0 <= 83 := by decide +kernel

noncomputable def block000084 : CheckedPrimeCountBlock 59171 2 462 83 :=
  ⟨hints000084, length000084, checked000084, counted000084⟩

noncomputable def localPrefix000084 : CheckedPrimeCountBlock 55615 2 2240 425 :=
  localPrefix000083.append block000084

noncomputable def hints000085 : List Nat :=
  primeHintChunk% "../../certificates/prime-count33554432-v1/counts-000085.json" 33554432 30046 60095 2

theorem length000085 : hints000085.length = 469 := by decide +kernel
theorem checked000085 : checkPrimeHints 60095 2 hints000085 = true := by decide +kernel
theorem counted000085 : hints000085.count 0 <= 83 := by decide +kernel

noncomputable def block000085 : CheckedPrimeCountBlock 60095 2 469 83 :=
  ⟨hints000085, length000085, checked000085, counted000085⟩

noncomputable def localPrefix000085 : CheckedPrimeCountBlock 55615 2 2709 508 :=
  localPrefix000084.append block000085

noncomputable def hints000086 : List Nat :=
  primeHintChunk% "../../certificates/prime-count33554432-v1/counts-000086.json" 33554432 30515 61033 2

theorem length000086 : hints000086.length = 476 := by decide +kernel
theorem checked000086 : checkPrimeHints 61033 2 hints000086 = true := by decide +kernel
theorem counted000086 : hints000086.count 0 <= 81 := by decide +kernel

noncomputable def block000086 : CheckedPrimeCountBlock 61033 2 476 81 :=
  ⟨hints000086, length000086, checked000086, counted000086⟩

noncomputable def localPrefix000086 : CheckedPrimeCountBlock 55615 2 3185 589 :=
  localPrefix000085.append block000086

noncomputable def hints000087 : List Nat :=
  primeHintChunk% "../../certificates/prime-count33554432-v1/counts-000087.json" 33554432 30991 61985 2

theorem length000087 : hints000087.length = 484 := by decide +kernel
theorem checked000087 : checkPrimeHints 61985 2 hints000087 = true := by decide +kernel
theorem counted000087 : hints000087.count 0 <= 84 := by decide +kernel

noncomputable def block000087 : CheckedPrimeCountBlock 61985 2 484 84 :=
  ⟨hints000087, length000087, checked000087, counted000087⟩

noncomputable def localPrefix000087 : CheckedPrimeCountBlock 55615 2 3669 673 :=
  localPrefix000086.append block000087

noncomputable def hints000088 : List Nat :=
  primeHintChunk% "../../certificates/prime-count33554432-v1/counts-000088.json" 33554432 31475 62953 2

theorem length000088 : hints000088.length = 491 := by decide +kernel
theorem checked000088 : checkPrimeHints 62953 2 hints000088 = true := by decide +kernel
theorem counted000088 : hints000088.count 0 <= 96 := by decide +kernel

noncomputable def block000088 : CheckedPrimeCountBlock 62953 2 491 96 :=
  ⟨hints000088, length000088, checked000088, counted000088⟩

noncomputable def localPrefix000088 : CheckedPrimeCountBlock 55615 2 4160 769 :=
  localPrefix000087.append block000088

noncomputable def hints000089 : List Nat :=
  primeHintChunk% "../../certificates/prime-count33554432-v1/counts-000089.json" 33554432 31966 63935 2

theorem length000089 : hints000089.length = 499 := by decide +kernel
theorem checked000089 : checkPrimeHints 63935 2 hints000089 = true := by decide +kernel
theorem counted000089 : hints000089.count 0 <= 79 := by decide +kernel

noncomputable def block000089 : CheckedPrimeCountBlock 63935 2 499 79 :=
  ⟨hints000089, length000089, checked000089, counted000089⟩

noncomputable def localPrefix000089 : CheckedPrimeCountBlock 55615 2 4659 848 :=
  localPrefix000088.append block000089

noncomputable def hints000090 : List Nat :=
  primeHintChunk% "../../certificates/prime-count33554432-v1/counts-000090.json" 33554432 32465 64933 2

theorem length000090 : hints000090.length = 507 := by decide +kernel
theorem checked000090 : checkPrimeHints 64933 2 hints000090 = true := by decide +kernel
theorem counted000090 : hints000090.count 0 <= 96 := by decide +kernel

noncomputable def block000090 : CheckedPrimeCountBlock 64933 2 507 96 :=
  ⟨hints000090, length000090, checked000090, counted000090⟩

noncomputable def localPrefix000090 : CheckedPrimeCountBlock 55615 2 5166 944 :=
  localPrefix000089.append block000090

noncomputable def hints000091 : List Nat :=
  primeHintChunk% "../../certificates/prime-count33554432-v1/counts-000091.json" 33554432 32972 65947 2

theorem length000091 : hints000091.length = 515 := by decide +kernel
theorem checked000091 : checkPrimeHints 65947 2 hints000091 = true := by decide +kernel
theorem counted000091 : hints000091.count 0 <= 89 := by decide +kernel

noncomputable def block000091 : CheckedPrimeCountBlock 65947 2 515 89 :=
  ⟨hints000091, length000091, checked000091, counted000091⟩

noncomputable def localPrefix000091 : CheckedPrimeCountBlock 55615 2 5681 1033 :=
  localPrefix000090.append block000091

noncomputable def hints000092 : List Nat :=
  primeHintChunk% "../../certificates/prime-count33554432-v1/counts-000092.json" 33554432 33487 66977 2

theorem length000092 : hints000092.length = 523 := by decide +kernel
theorem checked000092 : checkPrimeHints 66977 2 hints000092 = true := by decide +kernel
theorem counted000092 : hints000092.count 0 <= 100 := by decide +kernel

noncomputable def block000092 : CheckedPrimeCountBlock 66977 2 523 100 :=
  ⟨hints000092, length000092, checked000092, counted000092⟩

noncomputable def localPrefix000092 : CheckedPrimeCountBlock 55615 2 6204 1133 :=
  localPrefix000091.append block000092

noncomputable def hints000093 : List Nat :=
  primeHintChunk% "../../certificates/prime-count33554432-v1/counts-000093.json" 33554432 34010 68023 2

theorem length000093 : hints000093.length = 531 := by decide +kernel
theorem checked000093 : checkPrimeHints 68023 2 hints000093 = true := by decide +kernel
theorem counted000093 : hints000093.count 0 <= 88 := by decide +kernel

noncomputable def block000093 : CheckedPrimeCountBlock 68023 2 531 88 :=
  ⟨hints000093, length000093, checked000093, counted000093⟩

noncomputable def localPrefix000093 : CheckedPrimeCountBlock 55615 2 6735 1221 :=
  localPrefix000092.append block000093

noncomputable def hints000094 : List Nat :=
  primeHintChunk% "../../certificates/prime-count33554432-v1/counts-000094.json" 33554432 34541 69085 2

theorem length000094 : hints000094.length = 539 := by decide +kernel
theorem checked000094 : checkPrimeHints 69085 2 hints000094 = true := by decide +kernel
theorem counted000094 : hints000094.count 0 <= 90 := by decide +kernel

noncomputable def block000094 : CheckedPrimeCountBlock 69085 2 539 90 :=
  ⟨hints000094, length000094, checked000094, counted000094⟩

noncomputable def localPrefix000094 : CheckedPrimeCountBlock 55615 2 7274 1311 :=
  localPrefix000093.append block000094

noncomputable def hints000095 : List Nat :=
  primeHintChunk% "../../certificates/prime-count33554432-v1/counts-000095.json" 33554432 35080 70163 2

theorem length000095 : hints000095.length = 548 := by decide +kernel
theorem checked000095 : checkPrimeHints 70163 2 hints000095 = true := by decide +kernel
theorem counted000095 : hints000095.count 0 <= 102 := by decide +kernel

noncomputable def block000095 : CheckedPrimeCountBlock 70163 2 548 102 :=
  ⟨hints000095, length000095, checked000095, counted000095⟩

noncomputable def localPrefix000095 : CheckedPrimeCountBlock 55615 2 7822 1413 :=
  localPrefix000094.append block000095

end JSP848.FullPrimeCount
