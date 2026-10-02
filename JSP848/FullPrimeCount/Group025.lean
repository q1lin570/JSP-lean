import JSP848.PrimeCountInput

set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0

namespace JSP848.FullPrimeCount

open PrimeCountInput

noncomputable def hints000400 : List Nat :=
  primeHintChunk% "../../certificates/prime-count33554432-v1/counts-000400.json" 33554432 2441215 4882433 2

theorem length000400 : hints000400.length = 16384 := by decide +kernel
theorem checked000400 : checkPrimeHints 4882433 2 hints000400 = true := by decide +kernel
theorem counted000400 : hints000400.count 0 <= 2164 := by decide +kernel

noncomputable def block000400 : CheckedPrimeCountBlock 4882433 2 16384 2164 :=
  ⟨hints000400, length000400, checked000400, counted000400⟩

noncomputable def localPrefix000400 : CheckedPrimeCountBlock 4882433 2 16384 2164 :=
  block000400

noncomputable def hints000401 : List Nat :=
  primeHintChunk% "../../certificates/prime-count33554432-v1/counts-000401.json" 33554432 2457599 4915201 2

theorem length000401 : hints000401.length = 16384 := by decide +kernel
theorem checked000401 : checkPrimeHints 4915201 2 hints000401 = true := by decide +kernel
theorem counted000401 : hints000401.count 0 <= 2128 := by decide +kernel

noncomputable def block000401 : CheckedPrimeCountBlock 4915201 2 16384 2128 :=
  ⟨hints000401, length000401, checked000401, counted000401⟩

noncomputable def localPrefix000401 : CheckedPrimeCountBlock 4882433 2 32768 4292 :=
  localPrefix000400.append block000401

noncomputable def hints000402 : List Nat :=
  primeHintChunk% "../../certificates/prime-count33554432-v1/counts-000402.json" 33554432 2473983 4947969 2

theorem length000402 : hints000402.length = 16384 := by decide +kernel
theorem checked000402 : checkPrimeHints 4947969 2 hints000402 = true := by decide +kernel
theorem counted000402 : hints000402.count 0 <= 2153 := by decide +kernel

noncomputable def block000402 : CheckedPrimeCountBlock 4947969 2 16384 2153 :=
  ⟨hints000402, length000402, checked000402, counted000402⟩

noncomputable def localPrefix000402 : CheckedPrimeCountBlock 4882433 2 49152 6445 :=
  localPrefix000401.append block000402

noncomputable def hints000403 : List Nat :=
  primeHintChunk% "../../certificates/prime-count33554432-v1/counts-000403.json" 33554432 2490367 4980737 2

theorem length000403 : hints000403.length = 16384 := by decide +kernel
theorem checked000403 : checkPrimeHints 4980737 2 hints000403 = true := by decide +kernel
theorem counted000403 : hints000403.count 0 <= 2114 := by decide +kernel

noncomputable def block000403 : CheckedPrimeCountBlock 4980737 2 16384 2114 :=
  ⟨hints000403, length000403, checked000403, counted000403⟩

noncomputable def localPrefix000403 : CheckedPrimeCountBlock 4882433 2 65536 8559 :=
  localPrefix000402.append block000403

noncomputable def hints000404 : List Nat :=
  primeHintChunk% "../../certificates/prime-count33554432-v1/counts-000404.json" 33554432 2506751 5013505 2

theorem length000404 : hints000404.length = 16384 := by decide +kernel
theorem checked000404 : checkPrimeHints 5013505 2 hints000404 = true := by decide +kernel
theorem counted000404 : hints000404.count 0 <= 2114 := by decide +kernel

noncomputable def block000404 : CheckedPrimeCountBlock 5013505 2 16384 2114 :=
  ⟨hints000404, length000404, checked000404, counted000404⟩

noncomputable def localPrefix000404 : CheckedPrimeCountBlock 4882433 2 81920 10673 :=
  localPrefix000403.append block000404

noncomputable def hints000405 : List Nat :=
  primeHintChunk% "../../certificates/prime-count33554432-v1/counts-000405.json" 33554432 2523135 5046273 2

theorem length000405 : hints000405.length = 16384 := by decide +kernel
theorem checked000405 : checkPrimeHints 5046273 2 hints000405 = true := by decide +kernel
theorem counted000405 : hints000405.count 0 <= 2123 := by decide +kernel

noncomputable def block000405 : CheckedPrimeCountBlock 5046273 2 16384 2123 :=
  ⟨hints000405, length000405, checked000405, counted000405⟩

noncomputable def localPrefix000405 : CheckedPrimeCountBlock 4882433 2 98304 12796 :=
  localPrefix000404.append block000405

noncomputable def hints000406 : List Nat :=
  primeHintChunk% "../../certificates/prime-count33554432-v1/counts-000406.json" 33554432 2539519 5079041 2

theorem length000406 : hints000406.length = 16384 := by decide +kernel
theorem checked000406 : checkPrimeHints 5079041 2 hints000406 = true := by decide +kernel
theorem counted000406 : hints000406.count 0 <= 2110 := by decide +kernel

noncomputable def block000406 : CheckedPrimeCountBlock 5079041 2 16384 2110 :=
  ⟨hints000406, length000406, checked000406, counted000406⟩

noncomputable def localPrefix000406 : CheckedPrimeCountBlock 4882433 2 114688 14906 :=
  localPrefix000405.append block000406

noncomputable def hints000407 : List Nat :=
  primeHintChunk% "../../certificates/prime-count33554432-v1/counts-000407.json" 33554432 2555903 5111809 2

theorem length000407 : hints000407.length = 16384 := by decide +kernel
theorem checked000407 : checkPrimeHints 5111809 2 hints000407 = true := by decide +kernel
theorem counted000407 : hints000407.count 0 <= 2134 := by decide +kernel

noncomputable def block000407 : CheckedPrimeCountBlock 5111809 2 16384 2134 :=
  ⟨hints000407, length000407, checked000407, counted000407⟩

noncomputable def localPrefix000407 : CheckedPrimeCountBlock 4882433 2 131072 17040 :=
  localPrefix000406.append block000407

noncomputable def hints000408 : List Nat :=
  primeHintChunk% "../../certificates/prime-count33554432-v1/counts-000408.json" 33554432 2572287 5144577 2

theorem length000408 : hints000408.length = 16384 := by decide +kernel
theorem checked000408 : checkPrimeHints 5144577 2 hints000408 = true := by decide +kernel
theorem counted000408 : hints000408.count 0 <= 2098 := by decide +kernel

noncomputable def block000408 : CheckedPrimeCountBlock 5144577 2 16384 2098 :=
  ⟨hints000408, length000408, checked000408, counted000408⟩

noncomputable def localPrefix000408 : CheckedPrimeCountBlock 4882433 2 147456 19138 :=
  localPrefix000407.append block000408

noncomputable def hints000409 : List Nat :=
  primeHintChunk% "../../certificates/prime-count33554432-v1/counts-000409.json" 33554432 2588671 5177345 2

theorem length000409 : hints000409.length = 16384 := by decide +kernel
theorem checked000409 : checkPrimeHints 5177345 2 hints000409 = true := by decide +kernel
theorem counted000409 : hints000409.count 0 <= 2123 := by decide +kernel

noncomputable def block000409 : CheckedPrimeCountBlock 5177345 2 16384 2123 :=
  ⟨hints000409, length000409, checked000409, counted000409⟩

noncomputable def localPrefix000409 : CheckedPrimeCountBlock 4882433 2 163840 21261 :=
  localPrefix000408.append block000409

noncomputable def hints000410 : List Nat :=
  primeHintChunk% "../../certificates/prime-count33554432-v1/counts-000410.json" 33554432 2605055 5210113 2

theorem length000410 : hints000410.length = 16384 := by decide +kernel
theorem checked000410 : checkPrimeHints 5210113 2 hints000410 = true := by decide +kernel
theorem counted000410 : hints000410.count 0 <= 2120 := by decide +kernel

noncomputable def block000410 : CheckedPrimeCountBlock 5210113 2 16384 2120 :=
  ⟨hints000410, length000410, checked000410, counted000410⟩

noncomputable def localPrefix000410 : CheckedPrimeCountBlock 4882433 2 180224 23381 :=
  localPrefix000409.append block000410

noncomputable def hints000411 : List Nat :=
  primeHintChunk% "../../certificates/prime-count33554432-v1/counts-000411.json" 33554432 2621439 5242881 2

theorem length000411 : hints000411.length = 16384 := by decide +kernel
theorem checked000411 : checkPrimeHints 5242881 2 hints000411 = true := by decide +kernel
theorem counted000411 : hints000411.count 0 <= 2143 := by decide +kernel

noncomputable def block000411 : CheckedPrimeCountBlock 5242881 2 16384 2143 :=
  ⟨hints000411, length000411, checked000411, counted000411⟩

noncomputable def localPrefix000411 : CheckedPrimeCountBlock 4882433 2 196608 25524 :=
  localPrefix000410.append block000411

noncomputable def hints000412 : List Nat :=
  primeHintChunk% "../../certificates/prime-count33554432-v1/counts-000412.json" 33554432 2637823 5275649 2

theorem length000412 : hints000412.length = 16384 := by decide +kernel
theorem checked000412 : checkPrimeHints 5275649 2 hints000412 = true := by decide +kernel
theorem counted000412 : hints000412.count 0 <= 2118 := by decide +kernel

noncomputable def block000412 : CheckedPrimeCountBlock 5275649 2 16384 2118 :=
  ⟨hints000412, length000412, checked000412, counted000412⟩

noncomputable def localPrefix000412 : CheckedPrimeCountBlock 4882433 2 212992 27642 :=
  localPrefix000411.append block000412

noncomputable def hints000413 : List Nat :=
  primeHintChunk% "../../certificates/prime-count33554432-v1/counts-000413.json" 33554432 2654207 5308417 2

theorem length000413 : hints000413.length = 16384 := by decide +kernel
theorem checked000413 : checkPrimeHints 5308417 2 hints000413 = true := by decide +kernel
theorem counted000413 : hints000413.count 0 <= 2108 := by decide +kernel

noncomputable def block000413 : CheckedPrimeCountBlock 5308417 2 16384 2108 :=
  ⟨hints000413, length000413, checked000413, counted000413⟩

noncomputable def localPrefix000413 : CheckedPrimeCountBlock 4882433 2 229376 29750 :=
  localPrefix000412.append block000413

noncomputable def hints000414 : List Nat :=
  primeHintChunk% "../../certificates/prime-count33554432-v1/counts-000414.json" 33554432 2670591 5341185 2

theorem length000414 : hints000414.length = 16384 := by decide +kernel
theorem checked000414 : checkPrimeHints 5341185 2 hints000414 = true := by decide +kernel
theorem counted000414 : hints000414.count 0 <= 2099 := by decide +kernel

noncomputable def block000414 : CheckedPrimeCountBlock 5341185 2 16384 2099 :=
  ⟨hints000414, length000414, checked000414, counted000414⟩

noncomputable def localPrefix000414 : CheckedPrimeCountBlock 4882433 2 245760 31849 :=
  localPrefix000413.append block000414

noncomputable def hints000415 : List Nat :=
  primeHintChunk% "../../certificates/prime-count33554432-v1/counts-000415.json" 33554432 2686975 5373953 2

theorem length000415 : hints000415.length = 16384 := by decide +kernel
theorem checked000415 : checkPrimeHints 5373953 2 hints000415 = true := by decide +kernel
theorem counted000415 : hints000415.count 0 <= 2115 := by decide +kernel

noncomputable def block000415 : CheckedPrimeCountBlock 5373953 2 16384 2115 :=
  ⟨hints000415, length000415, checked000415, counted000415⟩

noncomputable def localPrefix000415 : CheckedPrimeCountBlock 4882433 2 262144 33964 :=
  localPrefix000414.append block000415

end JSP848.FullPrimeCount
