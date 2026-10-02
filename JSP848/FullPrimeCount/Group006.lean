import JSP848.PrimeCountInput

set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0

namespace JSP848.FullPrimeCount

open PrimeCountInput

noncomputable def hints000096 : List Nat :=
  primeHintChunk% "../../certificates/prime-count33554432-v1/counts-000096.json" 33554432 35628 71259 2

theorem length000096 : hints000096.length = 556 := by decide +kernel
theorem checked000096 : checkPrimeHints 71259 2 hints000096 = true := by decide +kernel
theorem counted000096 : hints000096.count 0 <= 108 := by decide +kernel

noncomputable def block000096 : CheckedPrimeCountBlock 71259 2 556 108 :=
  ⟨hints000096, length000096, checked000096, counted000096⟩

noncomputable def localPrefix000096 : CheckedPrimeCountBlock 71259 2 556 108 :=
  block000096

noncomputable def hints000097 : List Nat :=
  primeHintChunk% "../../certificates/prime-count33554432-v1/counts-000097.json" 33554432 36184 72371 2

theorem length000097 : hints000097.length = 565 := by decide +kernel
theorem checked000097 : checkPrimeHints 72371 2 hints000097 = true := by decide +kernel
theorem counted000097 : hints000097.count 0 <= 95 := by decide +kernel

noncomputable def block000097 : CheckedPrimeCountBlock 72371 2 565 95 :=
  ⟨hints000097, length000097, checked000097, counted000097⟩

noncomputable def localPrefix000097 : CheckedPrimeCountBlock 71259 2 1121 203 :=
  localPrefix000096.append block000097

noncomputable def hints000098 : List Nat :=
  primeHintChunk% "../../certificates/prime-count33554432-v1/counts-000098.json" 33554432 36749 73501 2

theorem length000098 : hints000098.length = 574 := by decide +kernel
theorem checked000098 : checkPrimeHints 73501 2 hints000098 = true := by decide +kernel
theorem counted000098 : hints000098.count 0 <= 104 := by decide +kernel

noncomputable def block000098 : CheckedPrimeCountBlock 73501 2 574 104 :=
  ⟨hints000098, length000098, checked000098, counted000098⟩

noncomputable def localPrefix000098 : CheckedPrimeCountBlock 71259 2 1695 307 :=
  localPrefix000097.append block000098

noncomputable def hints000099 : List Nat :=
  primeHintChunk% "../../certificates/prime-count33554432-v1/counts-000099.json" 33554432 37323 74649 2

theorem length000099 : hints000099.length = 583 := by decide +kernel
theorem checked000099 : checkPrimeHints 74649 2 hints000099 = true := by decide +kernel
theorem counted000099 : hints000099.count 0 <= 108 := by decide +kernel

noncomputable def block000099 : CheckedPrimeCountBlock 74649 2 583 108 :=
  ⟨hints000099, length000099, checked000099, counted000099⟩

noncomputable def localPrefix000099 : CheckedPrimeCountBlock 71259 2 2278 415 :=
  localPrefix000098.append block000099

noncomputable def hints000100 : List Nat :=
  primeHintChunk% "../../certificates/prime-count33554432-v1/counts-000100.json" 33554432 37906 75815 2

theorem length000100 : hints000100.length = 592 := by decide +kernel
theorem checked000100 : checkPrimeHints 75815 2 hints000100 = true := by decide +kernel
theorem counted000100 : hints000100.count 0 <= 98 := by decide +kernel

noncomputable def block000100 : CheckedPrimeCountBlock 75815 2 592 98 :=
  ⟨hints000100, length000100, checked000100, counted000100⟩

noncomputable def localPrefix000100 : CheckedPrimeCountBlock 71259 2 2870 513 :=
  localPrefix000099.append block000100

noncomputable def hints000101 : List Nat :=
  primeHintChunk% "../../certificates/prime-count33554432-v1/counts-000101.json" 33554432 38498 76999 2

theorem length000101 : hints000101.length = 601 := by decide +kernel
theorem checked000101 : checkPrimeHints 76999 2 hints000101 = true := by decide +kernel
theorem counted000101 : hints000101.count 0 <= 113 := by decide +kernel

noncomputable def block000101 : CheckedPrimeCountBlock 76999 2 601 113 :=
  ⟨hints000101, length000101, checked000101, counted000101⟩

noncomputable def localPrefix000101 : CheckedPrimeCountBlock 71259 2 3471 626 :=
  localPrefix000100.append block000101

noncomputable def hints000102 : List Nat :=
  primeHintChunk% "../../certificates/prime-count33554432-v1/counts-000102.json" 33554432 39099 78201 2

theorem length000102 : hints000102.length = 610 := by decide +kernel
theorem checked000102 : checkPrimeHints 78201 2 hints000102 = true := by decide +kernel
theorem counted000102 : hints000102.count 0 <= 103 := by decide +kernel

noncomputable def block000102 : CheckedPrimeCountBlock 78201 2 610 103 :=
  ⟨hints000102, length000102, checked000102, counted000102⟩

noncomputable def localPrefix000102 : CheckedPrimeCountBlock 71259 2 4081 729 :=
  localPrefix000101.append block000102

noncomputable def hints000103 : List Nat :=
  primeHintChunk% "../../certificates/prime-count33554432-v1/counts-000103.json" 33554432 39709 79421 2

theorem length000103 : hints000103.length = 620 := by decide +kernel
theorem checked000103 : checkPrimeHints 79421 2 hints000103 = true := by decide +kernel
theorem counted000103 : hints000103.count 0 <= 109 := by decide +kernel

noncomputable def block000103 : CheckedPrimeCountBlock 79421 2 620 109 :=
  ⟨hints000103, length000103, checked000103, counted000103⟩

noncomputable def localPrefix000103 : CheckedPrimeCountBlock 71259 2 4701 838 :=
  localPrefix000102.append block000103

noncomputable def hints000104 : List Nat :=
  primeHintChunk% "../../certificates/prime-count33554432-v1/counts-000104.json" 33554432 40329 80661 2

theorem length000104 : hints000104.length = 630 := by decide +kernel
theorem checked000104 : checkPrimeHints 80661 2 hints000104 = true := by decide +kernel
theorem counted000104 : hints000104.count 0 <= 117 := by decide +kernel

noncomputable def block000104 : CheckedPrimeCountBlock 80661 2 630 117 :=
  ⟨hints000104, length000104, checked000104, counted000104⟩

noncomputable def localPrefix000104 : CheckedPrimeCountBlock 71259 2 5331 955 :=
  localPrefix000103.append block000104

noncomputable def hints000105 : List Nat :=
  primeHintChunk% "../../certificates/prime-count33554432-v1/counts-000105.json" 33554432 40959 81921 2

theorem length000105 : hints000105.length = 640 := by decide +kernel
theorem checked000105 : checkPrimeHints 81921 2 hints000105 = true := by decide +kernel
theorem counted000105 : hints000105.count 0 <= 111 := by decide +kernel

noncomputable def block000105 : CheckedPrimeCountBlock 81921 2 640 111 :=
  ⟨hints000105, length000105, checked000105, counted000105⟩

noncomputable def localPrefix000105 : CheckedPrimeCountBlock 71259 2 5971 1066 :=
  localPrefix000104.append block000105

noncomputable def hints000106 : List Nat :=
  primeHintChunk% "../../certificates/prime-count33554432-v1/counts-000106.json" 33554432 41599 83201 2

theorem length000106 : hints000106.length = 650 := by decide +kernel
theorem checked000106 : checkPrimeHints 83201 2 hints000106 = true := by decide +kernel
theorem counted000106 : hints000106.count 0 <= 117 := by decide +kernel

noncomputable def block000106 : CheckedPrimeCountBlock 83201 2 650 117 :=
  ⟨hints000106, length000106, checked000106, counted000106⟩

noncomputable def localPrefix000106 : CheckedPrimeCountBlock 71259 2 6621 1183 :=
  localPrefix000105.append block000106

noncomputable def hints000107 : List Nat :=
  primeHintChunk% "../../certificates/prime-count33554432-v1/counts-000107.json" 33554432 42249 84501 2

theorem length000107 : hints000107.length = 660 := by decide +kernel
theorem checked000107 : checkPrimeHints 84501 2 hints000107 = true := by decide +kernel
theorem counted000107 : hints000107.count 0 <= 112 := by decide +kernel

noncomputable def block000107 : CheckedPrimeCountBlock 84501 2 660 112 :=
  ⟨hints000107, length000107, checked000107, counted000107⟩

noncomputable def localPrefix000107 : CheckedPrimeCountBlock 71259 2 7281 1295 :=
  localPrefix000106.append block000107

noncomputable def hints000108 : List Nat :=
  primeHintChunk% "../../certificates/prime-count33554432-v1/counts-000108.json" 33554432 42909 85821 2

theorem length000108 : hints000108.length = 670 := by decide +kernel
theorem checked000108 : checkPrimeHints 85821 2 hints000108 = true := by decide +kernel
theorem counted000108 : hints000108.count 0 <= 115 := by decide +kernel

noncomputable def block000108 : CheckedPrimeCountBlock 85821 2 670 115 :=
  ⟨hints000108, length000108, checked000108, counted000108⟩

noncomputable def localPrefix000108 : CheckedPrimeCountBlock 71259 2 7951 1410 :=
  localPrefix000107.append block000108

noncomputable def hints000109 : List Nat :=
  primeHintChunk% "../../certificates/prime-count33554432-v1/counts-000109.json" 33554432 43579 87161 2

theorem length000109 : hints000109.length = 680 := by decide +kernel
theorem checked000109 : checkPrimeHints 87161 2 hints000109 = true := by decide +kernel
theorem counted000109 : hints000109.count 0 <= 114 := by decide +kernel

noncomputable def block000109 : CheckedPrimeCountBlock 87161 2 680 114 :=
  ⟨hints000109, length000109, checked000109, counted000109⟩

noncomputable def localPrefix000109 : CheckedPrimeCountBlock 71259 2 8631 1524 :=
  localPrefix000108.append block000109

noncomputable def hints000110 : List Nat :=
  primeHintChunk% "../../certificates/prime-count33554432-v1/counts-000110.json" 33554432 44259 88521 2

theorem length000110 : hints000110.length = 691 := by decide +kernel
theorem checked000110 : checkPrimeHints 88521 2 hints000110 = true := by decide +kernel
theorem counted000110 : hints000110.count 0 <= 126 := by decide +kernel

noncomputable def block000110 : CheckedPrimeCountBlock 88521 2 691 126 :=
  ⟨hints000110, length000110, checked000110, counted000110⟩

noncomputable def localPrefix000110 : CheckedPrimeCountBlock 71259 2 9322 1650 :=
  localPrefix000109.append block000110

noncomputable def hints000111 : List Nat :=
  primeHintChunk% "../../certificates/prime-count33554432-v1/counts-000111.json" 33554432 44950 89903 2

theorem length000111 : hints000111.length = 702 := by decide +kernel
theorem checked000111 : checkPrimeHints 89903 2 hints000111 = true := by decide +kernel
theorem counted000111 : hints000111.count 0 <= 126 := by decide +kernel

noncomputable def block000111 : CheckedPrimeCountBlock 89903 2 702 126 :=
  ⟨hints000111, length000111, checked000111, counted000111⟩

noncomputable def localPrefix000111 : CheckedPrimeCountBlock 71259 2 10024 1776 :=
  localPrefix000110.append block000111

end JSP848.FullPrimeCount
