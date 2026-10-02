import JSP848.PrimeCountInput

set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0

namespace JSP848.FullPrimeCount

open PrimeCountInput

noncomputable def hints000544 : List Nat :=
  primeHintChunk% "../../certificates/prime-count33554432-v1/counts-000544.json" 33554432 4800511 9601025 2

theorem length000544 : hints000544.length = 16384 := by decide +kernel
theorem checked000544 : checkPrimeHints 9601025 2 hints000544 = true := by decide +kernel
theorem counted000544 : hints000544.count 0 <= 2024 := by decide +kernel

noncomputable def block000544 : CheckedPrimeCountBlock 9601025 2 16384 2024 :=
  ⟨hints000544, length000544, checked000544, counted000544⟩

noncomputable def localPrefix000544 : CheckedPrimeCountBlock 9601025 2 16384 2024 :=
  block000544

noncomputable def hints000545 : List Nat :=
  primeHintChunk% "../../certificates/prime-count33554432-v1/counts-000545.json" 33554432 4816895 9633793 2

theorem length000545 : hints000545.length = 16384 := by decide +kernel
theorem checked000545 : checkPrimeHints 9633793 2 hints000545 = true := by decide +kernel
theorem counted000545 : hints000545.count 0 <= 2052 := by decide +kernel

noncomputable def block000545 : CheckedPrimeCountBlock 9633793 2 16384 2052 :=
  ⟨hints000545, length000545, checked000545, counted000545⟩

noncomputable def localPrefix000545 : CheckedPrimeCountBlock 9601025 2 32768 4076 :=
  localPrefix000544.append block000545

noncomputable def hints000546 : List Nat :=
  primeHintChunk% "../../certificates/prime-count33554432-v1/counts-000546.json" 33554432 4833279 9666561 2

theorem length000546 : hints000546.length = 16384 := by decide +kernel
theorem checked000546 : checkPrimeHints 9666561 2 hints000546 = true := by decide +kernel
theorem counted000546 : hints000546.count 0 <= 2014 := by decide +kernel

noncomputable def block000546 : CheckedPrimeCountBlock 9666561 2 16384 2014 :=
  ⟨hints000546, length000546, checked000546, counted000546⟩

noncomputable def localPrefix000546 : CheckedPrimeCountBlock 9601025 2 49152 6090 :=
  localPrefix000545.append block000546

noncomputable def hints000547 : List Nat :=
  primeHintChunk% "../../certificates/prime-count33554432-v1/counts-000547.json" 33554432 4849663 9699329 2

theorem length000547 : hints000547.length = 16384 := by decide +kernel
theorem checked000547 : checkPrimeHints 9699329 2 hints000547 = true := by decide +kernel
theorem counted000547 : hints000547.count 0 <= 2047 := by decide +kernel

noncomputable def block000547 : CheckedPrimeCountBlock 9699329 2 16384 2047 :=
  ⟨hints000547, length000547, checked000547, counted000547⟩

noncomputable def localPrefix000547 : CheckedPrimeCountBlock 9601025 2 65536 8137 :=
  localPrefix000546.append block000547

noncomputable def hints000548 : List Nat :=
  primeHintChunk% "../../certificates/prime-count33554432-v1/counts-000548.json" 33554432 4866047 9732097 2

theorem length000548 : hints000548.length = 16384 := by decide +kernel
theorem checked000548 : checkPrimeHints 9732097 2 hints000548 = true := by decide +kernel
theorem counted000548 : hints000548.count 0 <= 2030 := by decide +kernel

noncomputable def block000548 : CheckedPrimeCountBlock 9732097 2 16384 2030 :=
  ⟨hints000548, length000548, checked000548, counted000548⟩

noncomputable def localPrefix000548 : CheckedPrimeCountBlock 9601025 2 81920 10167 :=
  localPrefix000547.append block000548

noncomputable def hints000549 : List Nat :=
  primeHintChunk% "../../certificates/prime-count33554432-v1/counts-000549.json" 33554432 4882431 9764865 2

theorem length000549 : hints000549.length = 16384 := by decide +kernel
theorem checked000549 : checkPrimeHints 9764865 2 hints000549 = true := by decide +kernel
theorem counted000549 : hints000549.count 0 <= 2032 := by decide +kernel

noncomputable def block000549 : CheckedPrimeCountBlock 9764865 2 16384 2032 :=
  ⟨hints000549, length000549, checked000549, counted000549⟩

noncomputable def localPrefix000549 : CheckedPrimeCountBlock 9601025 2 98304 12199 :=
  localPrefix000548.append block000549

noncomputable def hints000550 : List Nat :=
  primeHintChunk% "../../certificates/prime-count33554432-v1/counts-000550.json" 33554432 4898815 9797633 2

theorem length000550 : hints000550.length = 16384 := by decide +kernel
theorem checked000550 : checkPrimeHints 9797633 2 hints000550 = true := by decide +kernel
theorem counted000550 : hints000550.count 0 <= 2056 := by decide +kernel

noncomputable def block000550 : CheckedPrimeCountBlock 9797633 2 16384 2056 :=
  ⟨hints000550, length000550, checked000550, counted000550⟩

noncomputable def localPrefix000550 : CheckedPrimeCountBlock 9601025 2 114688 14255 :=
  localPrefix000549.append block000550

noncomputable def hints000551 : List Nat :=
  primeHintChunk% "../../certificates/prime-count33554432-v1/counts-000551.json" 33554432 4915199 9830401 2

theorem length000551 : hints000551.length = 16384 := by decide +kernel
theorem checked000551 : checkPrimeHints 9830401 2 hints000551 = true := by decide +kernel
theorem counted000551 : hints000551.count 0 <= 2010 := by decide +kernel

noncomputable def block000551 : CheckedPrimeCountBlock 9830401 2 16384 2010 :=
  ⟨hints000551, length000551, checked000551, counted000551⟩

noncomputable def localPrefix000551 : CheckedPrimeCountBlock 9601025 2 131072 16265 :=
  localPrefix000550.append block000551

noncomputable def hints000552 : List Nat :=
  primeHintChunk% "../../certificates/prime-count33554432-v1/counts-000552.json" 33554432 4931583 9863169 2

theorem length000552 : hints000552.length = 16384 := by decide +kernel
theorem checked000552 : checkPrimeHints 9863169 2 hints000552 = true := by decide +kernel
theorem counted000552 : hints000552.count 0 <= 2017 := by decide +kernel

noncomputable def block000552 : CheckedPrimeCountBlock 9863169 2 16384 2017 :=
  ⟨hints000552, length000552, checked000552, counted000552⟩

noncomputable def localPrefix000552 : CheckedPrimeCountBlock 9601025 2 147456 18282 :=
  localPrefix000551.append block000552

noncomputable def hints000553 : List Nat :=
  primeHintChunk% "../../certificates/prime-count33554432-v1/counts-000553.json" 33554432 4947967 9895937 2

theorem length000553 : hints000553.length = 16384 := by decide +kernel
theorem checked000553 : checkPrimeHints 9895937 2 hints000553 = true := by decide +kernel
theorem counted000553 : hints000553.count 0 <= 1999 := by decide +kernel

noncomputable def block000553 : CheckedPrimeCountBlock 9895937 2 16384 1999 :=
  ⟨hints000553, length000553, checked000553, counted000553⟩

noncomputable def localPrefix000553 : CheckedPrimeCountBlock 9601025 2 163840 20281 :=
  localPrefix000552.append block000553

noncomputable def hints000554 : List Nat :=
  primeHintChunk% "../../certificates/prime-count33554432-v1/counts-000554.json" 33554432 4964351 9928705 2

theorem length000554 : hints000554.length = 16384 := by decide +kernel
theorem checked000554 : checkPrimeHints 9928705 2 hints000554 = true := by decide +kernel
theorem counted000554 : hints000554.count 0 <= 2030 := by decide +kernel

noncomputable def block000554 : CheckedPrimeCountBlock 9928705 2 16384 2030 :=
  ⟨hints000554, length000554, checked000554, counted000554⟩

noncomputable def localPrefix000554 : CheckedPrimeCountBlock 9601025 2 180224 22311 :=
  localPrefix000553.append block000554

noncomputable def hints000555 : List Nat :=
  primeHintChunk% "../../certificates/prime-count33554432-v1/counts-000555.json" 33554432 4980735 9961473 2

theorem length000555 : hints000555.length = 16384 := by decide +kernel
theorem checked000555 : checkPrimeHints 9961473 2 hints000555 = true := by decide +kernel
theorem counted000555 : hints000555.count 0 <= 2002 := by decide +kernel

noncomputable def block000555 : CheckedPrimeCountBlock 9961473 2 16384 2002 :=
  ⟨hints000555, length000555, checked000555, counted000555⟩

noncomputable def localPrefix000555 : CheckedPrimeCountBlock 9601025 2 196608 24313 :=
  localPrefix000554.append block000555

noncomputable def hints000556 : List Nat :=
  primeHintChunk% "../../certificates/prime-count33554432-v1/counts-000556.json" 33554432 4997119 9994241 2

theorem length000556 : hints000556.length = 16384 := by decide +kernel
theorem checked000556 : checkPrimeHints 9994241 2 hints000556 = true := by decide +kernel
theorem counted000556 : hints000556.count 0 <= 2041 := by decide +kernel

noncomputable def block000556 : CheckedPrimeCountBlock 9994241 2 16384 2041 :=
  ⟨hints000556, length000556, checked000556, counted000556⟩

noncomputable def localPrefix000556 : CheckedPrimeCountBlock 9601025 2 212992 26354 :=
  localPrefix000555.append block000556

noncomputable def hints000557 : List Nat :=
  primeHintChunk% "../../certificates/prime-count33554432-v1/counts-000557.json" 33554432 5013503 10027009 2

theorem length000557 : hints000557.length = 16384 := by decide +kernel
theorem checked000557 : checkPrimeHints 10027009 2 hints000557 = true := by decide +kernel
theorem counted000557 : hints000557.count 0 <= 2054 := by decide +kernel

noncomputable def block000557 : CheckedPrimeCountBlock 10027009 2 16384 2054 :=
  ⟨hints000557, length000557, checked000557, counted000557⟩

noncomputable def localPrefix000557 : CheckedPrimeCountBlock 9601025 2 229376 28408 :=
  localPrefix000556.append block000557

noncomputable def hints000558 : List Nat :=
  primeHintChunk% "../../certificates/prime-count33554432-v1/counts-000558.json" 33554432 5029887 10059777 2

theorem length000558 : hints000558.length = 16384 := by decide +kernel
theorem checked000558 : checkPrimeHints 10059777 2 hints000558 = true := by decide +kernel
theorem counted000558 : hints000558.count 0 <= 2029 := by decide +kernel

noncomputable def block000558 : CheckedPrimeCountBlock 10059777 2 16384 2029 :=
  ⟨hints000558, length000558, checked000558, counted000558⟩

noncomputable def localPrefix000558 : CheckedPrimeCountBlock 9601025 2 245760 30437 :=
  localPrefix000557.append block000558

noncomputable def hints000559 : List Nat :=
  primeHintChunk% "../../certificates/prime-count33554432-v1/counts-000559.json" 33554432 5046271 10092545 2

theorem length000559 : hints000559.length = 16384 := by decide +kernel
theorem checked000559 : checkPrimeHints 10092545 2 hints000559 = true := by decide +kernel
theorem counted000559 : hints000559.count 0 <= 2037 := by decide +kernel

noncomputable def block000559 : CheckedPrimeCountBlock 10092545 2 16384 2037 :=
  ⟨hints000559, length000559, checked000559, counted000559⟩

noncomputable def localPrefix000559 : CheckedPrimeCountBlock 9601025 2 262144 32474 :=
  localPrefix000558.append block000559

end JSP848.FullPrimeCount
