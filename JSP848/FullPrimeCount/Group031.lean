import JSP848.PrimeCountInput

set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0

namespace JSP848.FullPrimeCount

open PrimeCountInput

noncomputable def hints000496 : List Nat :=
  primeHintChunk% "../../certificates/prime-count33554432-v1/counts-000496.json" 33554432 4014079 8028161 2

theorem length000496 : hints000496.length = 16384 := by decide +kernel
theorem checked000496 : checkPrimeHints 8028161 2 hints000496 = true := by decide +kernel
theorem counted000496 : hints000496.count 0 <= 2063 := by decide +kernel

noncomputable def block000496 : CheckedPrimeCountBlock 8028161 2 16384 2063 :=
  ⟨hints000496, length000496, checked000496, counted000496⟩

noncomputable def localPrefix000496 : CheckedPrimeCountBlock 8028161 2 16384 2063 :=
  block000496

noncomputable def hints000497 : List Nat :=
  primeHintChunk% "../../certificates/prime-count33554432-v1/counts-000497.json" 33554432 4030463 8060929 2

theorem length000497 : hints000497.length = 16384 := by decide +kernel
theorem checked000497 : checkPrimeHints 8060929 2 hints000497 = true := by decide +kernel
theorem counted000497 : hints000497.count 0 <= 2032 := by decide +kernel

noncomputable def block000497 : CheckedPrimeCountBlock 8060929 2 16384 2032 :=
  ⟨hints000497, length000497, checked000497, counted000497⟩

noncomputable def localPrefix000497 : CheckedPrimeCountBlock 8028161 2 32768 4095 :=
  localPrefix000496.append block000497

noncomputable def hints000498 : List Nat :=
  primeHintChunk% "../../certificates/prime-count33554432-v1/counts-000498.json" 33554432 4046847 8093697 2

theorem length000498 : hints000498.length = 16384 := by decide +kernel
theorem checked000498 : checkPrimeHints 8093697 2 hints000498 = true := by decide +kernel
theorem counted000498 : hints000498.count 0 <= 2075 := by decide +kernel

noncomputable def block000498 : CheckedPrimeCountBlock 8093697 2 16384 2075 :=
  ⟨hints000498, length000498, checked000498, counted000498⟩

noncomputable def localPrefix000498 : CheckedPrimeCountBlock 8028161 2 49152 6170 :=
  localPrefix000497.append block000498

noncomputable def hints000499 : List Nat :=
  primeHintChunk% "../../certificates/prime-count33554432-v1/counts-000499.json" 33554432 4063231 8126465 2

theorem length000499 : hints000499.length = 16384 := by decide +kernel
theorem checked000499 : checkPrimeHints 8126465 2 hints000499 = true := by decide +kernel
theorem counted000499 : hints000499.count 0 <= 2040 := by decide +kernel

noncomputable def block000499 : CheckedPrimeCountBlock 8126465 2 16384 2040 :=
  ⟨hints000499, length000499, checked000499, counted000499⟩

noncomputable def localPrefix000499 : CheckedPrimeCountBlock 8028161 2 65536 8210 :=
  localPrefix000498.append block000499

noncomputable def hints000500 : List Nat :=
  primeHintChunk% "../../certificates/prime-count33554432-v1/counts-000500.json" 33554432 4079615 8159233 2

theorem length000500 : hints000500.length = 16384 := by decide +kernel
theorem checked000500 : checkPrimeHints 8159233 2 hints000500 = true := by decide +kernel
theorem counted000500 : hints000500.count 0 <= 2062 := by decide +kernel

noncomputable def block000500 : CheckedPrimeCountBlock 8159233 2 16384 2062 :=
  ⟨hints000500, length000500, checked000500, counted000500⟩

noncomputable def localPrefix000500 : CheckedPrimeCountBlock 8028161 2 81920 10272 :=
  localPrefix000499.append block000500

noncomputable def hints000501 : List Nat :=
  primeHintChunk% "../../certificates/prime-count33554432-v1/counts-000501.json" 33554432 4095999 8192001 2

theorem length000501 : hints000501.length = 16384 := by decide +kernel
theorem checked000501 : checkPrimeHints 8192001 2 hints000501 = true := by decide +kernel
theorem counted000501 : hints000501.count 0 <= 2069 := by decide +kernel

noncomputable def block000501 : CheckedPrimeCountBlock 8192001 2 16384 2069 :=
  ⟨hints000501, length000501, checked000501, counted000501⟩

noncomputable def localPrefix000501 : CheckedPrimeCountBlock 8028161 2 98304 12341 :=
  localPrefix000500.append block000501

noncomputable def hints000502 : List Nat :=
  primeHintChunk% "../../certificates/prime-count33554432-v1/counts-000502.json" 33554432 4112383 8224769 2

theorem length000502 : hints000502.length = 16384 := by decide +kernel
theorem checked000502 : checkPrimeHints 8224769 2 hints000502 = true := by decide +kernel
theorem counted000502 : hints000502.count 0 <= 2058 := by decide +kernel

noncomputable def block000502 : CheckedPrimeCountBlock 8224769 2 16384 2058 :=
  ⟨hints000502, length000502, checked000502, counted000502⟩

noncomputable def localPrefix000502 : CheckedPrimeCountBlock 8028161 2 114688 14399 :=
  localPrefix000501.append block000502

noncomputable def hints000503 : List Nat :=
  primeHintChunk% "../../certificates/prime-count33554432-v1/counts-000503.json" 33554432 4128767 8257537 2

theorem length000503 : hints000503.length = 16384 := by decide +kernel
theorem checked000503 : checkPrimeHints 8257537 2 hints000503 = true := by decide +kernel
theorem counted000503 : hints000503.count 0 <= 2050 := by decide +kernel

noncomputable def block000503 : CheckedPrimeCountBlock 8257537 2 16384 2050 :=
  ⟨hints000503, length000503, checked000503, counted000503⟩

noncomputable def localPrefix000503 : CheckedPrimeCountBlock 8028161 2 131072 16449 :=
  localPrefix000502.append block000503

noncomputable def hints000504 : List Nat :=
  primeHintChunk% "../../certificates/prime-count33554432-v1/counts-000504.json" 33554432 4145151 8290305 2

theorem length000504 : hints000504.length = 16384 := by decide +kernel
theorem checked000504 : checkPrimeHints 8290305 2 hints000504 = true := by decide +kernel
theorem counted000504 : hints000504.count 0 <= 2068 := by decide +kernel

noncomputable def block000504 : CheckedPrimeCountBlock 8290305 2 16384 2068 :=
  ⟨hints000504, length000504, checked000504, counted000504⟩

noncomputable def localPrefix000504 : CheckedPrimeCountBlock 8028161 2 147456 18517 :=
  localPrefix000503.append block000504

noncomputable def hints000505 : List Nat :=
  primeHintChunk% "../../certificates/prime-count33554432-v1/counts-000505.json" 33554432 4161535 8323073 2

theorem length000505 : hints000505.length = 16384 := by decide +kernel
theorem checked000505 : checkPrimeHints 8323073 2 hints000505 = true := by decide +kernel
theorem counted000505 : hints000505.count 0 <= 2070 := by decide +kernel

noncomputable def block000505 : CheckedPrimeCountBlock 8323073 2 16384 2070 :=
  ⟨hints000505, length000505, checked000505, counted000505⟩

noncomputable def localPrefix000505 : CheckedPrimeCountBlock 8028161 2 163840 20587 :=
  localPrefix000504.append block000505

noncomputable def hints000506 : List Nat :=
  primeHintChunk% "../../certificates/prime-count33554432-v1/counts-000506.json" 33554432 4177919 8355841 2

theorem length000506 : hints000506.length = 16384 := by decide +kernel
theorem checked000506 : checkPrimeHints 8355841 2 hints000506 = true := by decide +kernel
theorem counted000506 : hints000506.count 0 <= 2034 := by decide +kernel

noncomputable def block000506 : CheckedPrimeCountBlock 8355841 2 16384 2034 :=
  ⟨hints000506, length000506, checked000506, counted000506⟩

noncomputable def localPrefix000506 : CheckedPrimeCountBlock 8028161 2 180224 22621 :=
  localPrefix000505.append block000506

noncomputable def hints000507 : List Nat :=
  primeHintChunk% "../../certificates/prime-count33554432-v1/counts-000507.json" 33554432 4194303 8388609 2

theorem length000507 : hints000507.length = 16384 := by decide +kernel
theorem checked000507 : checkPrimeHints 8388609 2 hints000507 = true := by decide +kernel
theorem counted000507 : hints000507.count 0 <= 2051 := by decide +kernel

noncomputable def block000507 : CheckedPrimeCountBlock 8388609 2 16384 2051 :=
  ⟨hints000507, length000507, checked000507, counted000507⟩

noncomputable def localPrefix000507 : CheckedPrimeCountBlock 8028161 2 196608 24672 :=
  localPrefix000506.append block000507

noncomputable def hints000508 : List Nat :=
  primeHintChunk% "../../certificates/prime-count33554432-v1/counts-000508.json" 33554432 4210687 8421377 2

theorem length000508 : hints000508.length = 16384 := by decide +kernel
theorem checked000508 : checkPrimeHints 8421377 2 hints000508 = true := by decide +kernel
theorem counted000508 : hints000508.count 0 <= 2020 := by decide +kernel

noncomputable def block000508 : CheckedPrimeCountBlock 8421377 2 16384 2020 :=
  ⟨hints000508, length000508, checked000508, counted000508⟩

noncomputable def localPrefix000508 : CheckedPrimeCountBlock 8028161 2 212992 26692 :=
  localPrefix000507.append block000508

noncomputable def hints000509 : List Nat :=
  primeHintChunk% "../../certificates/prime-count33554432-v1/counts-000509.json" 33554432 4227071 8454145 2

theorem length000509 : hints000509.length = 16384 := by decide +kernel
theorem checked000509 : checkPrimeHints 8454145 2 hints000509 = true := by decide +kernel
theorem counted000509 : hints000509.count 0 <= 2070 := by decide +kernel

noncomputable def block000509 : CheckedPrimeCountBlock 8454145 2 16384 2070 :=
  ⟨hints000509, length000509, checked000509, counted000509⟩

noncomputable def localPrefix000509 : CheckedPrimeCountBlock 8028161 2 229376 28762 :=
  localPrefix000508.append block000509

noncomputable def hints000510 : List Nat :=
  primeHintChunk% "../../certificates/prime-count33554432-v1/counts-000510.json" 33554432 4243455 8486913 2

theorem length000510 : hints000510.length = 16384 := by decide +kernel
theorem checked000510 : checkPrimeHints 8486913 2 hints000510 = true := by decide +kernel
theorem counted000510 : hints000510.count 0 <= 2061 := by decide +kernel

noncomputable def block000510 : CheckedPrimeCountBlock 8486913 2 16384 2061 :=
  ⟨hints000510, length000510, checked000510, counted000510⟩

noncomputable def localPrefix000510 : CheckedPrimeCountBlock 8028161 2 245760 30823 :=
  localPrefix000509.append block000510

noncomputable def hints000511 : List Nat :=
  primeHintChunk% "../../certificates/prime-count33554432-v1/counts-000511.json" 33554432 4259839 8519681 2

theorem length000511 : hints000511.length = 16384 := by decide +kernel
theorem checked000511 : checkPrimeHints 8519681 2 hints000511 = true := by decide +kernel
theorem counted000511 : hints000511.count 0 <= 2077 := by decide +kernel

noncomputable def block000511 : CheckedPrimeCountBlock 8519681 2 16384 2077 :=
  ⟨hints000511, length000511, checked000511, counted000511⟩

noncomputable def localPrefix000511 : CheckedPrimeCountBlock 8028161 2 262144 32900 :=
  localPrefix000510.append block000511

end JSP848.FullPrimeCount
