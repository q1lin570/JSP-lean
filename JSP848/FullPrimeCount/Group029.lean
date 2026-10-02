import JSP848.PrimeCountInput

set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0

namespace JSP848.FullPrimeCount

open PrimeCountInput

noncomputable def hints000464 : List Nat :=
  primeHintChunk% "../../certificates/prime-count33554432-v1/counts-000464.json" 33554432 3489791 6979585 2

theorem length000464 : hints000464.length = 16384 := by decide +kernel
theorem checked000464 : checkPrimeHints 6979585 2 hints000464 = true := by decide +kernel
theorem counted000464 : hints000464.count 0 <= 2059 := by decide +kernel

noncomputable def block000464 : CheckedPrimeCountBlock 6979585 2 16384 2059 :=
  ⟨hints000464, length000464, checked000464, counted000464⟩

noncomputable def localPrefix000464 : CheckedPrimeCountBlock 6979585 2 16384 2059 :=
  block000464

noncomputable def hints000465 : List Nat :=
  primeHintChunk% "../../certificates/prime-count33554432-v1/counts-000465.json" 33554432 3506175 7012353 2

theorem length000465 : hints000465.length = 16384 := by decide +kernel
theorem checked000465 : checkPrimeHints 7012353 2 hints000465 = true := by decide +kernel
theorem counted000465 : hints000465.count 0 <= 2128 := by decide +kernel

noncomputable def block000465 : CheckedPrimeCountBlock 7012353 2 16384 2128 :=
  ⟨hints000465, length000465, checked000465, counted000465⟩

noncomputable def localPrefix000465 : CheckedPrimeCountBlock 6979585 2 32768 4187 :=
  localPrefix000464.append block000465

noncomputable def hints000466 : List Nat :=
  primeHintChunk% "../../certificates/prime-count33554432-v1/counts-000466.json" 33554432 3522559 7045121 2

theorem length000466 : hints000466.length = 16384 := by decide +kernel
theorem checked000466 : checkPrimeHints 7045121 2 hints000466 = true := by decide +kernel
theorem counted000466 : hints000466.count 0 <= 2072 := by decide +kernel

noncomputable def block000466 : CheckedPrimeCountBlock 7045121 2 16384 2072 :=
  ⟨hints000466, length000466, checked000466, counted000466⟩

noncomputable def localPrefix000466 : CheckedPrimeCountBlock 6979585 2 49152 6259 :=
  localPrefix000465.append block000466

noncomputable def hints000467 : List Nat :=
  primeHintChunk% "../../certificates/prime-count33554432-v1/counts-000467.json" 33554432 3538943 7077889 2

theorem length000467 : hints000467.length = 16384 := by decide +kernel
theorem checked000467 : checkPrimeHints 7077889 2 hints000467 = true := by decide +kernel
theorem counted000467 : hints000467.count 0 <= 2100 := by decide +kernel

noncomputable def block000467 : CheckedPrimeCountBlock 7077889 2 16384 2100 :=
  ⟨hints000467, length000467, checked000467, counted000467⟩

noncomputable def localPrefix000467 : CheckedPrimeCountBlock 6979585 2 65536 8359 :=
  localPrefix000466.append block000467

noncomputable def hints000468 : List Nat :=
  primeHintChunk% "../../certificates/prime-count33554432-v1/counts-000468.json" 33554432 3555327 7110657 2

theorem length000468 : hints000468.length = 16384 := by decide +kernel
theorem checked000468 : checkPrimeHints 7110657 2 hints000468 = true := by decide +kernel
theorem counted000468 : hints000468.count 0 <= 2040 := by decide +kernel

noncomputable def block000468 : CheckedPrimeCountBlock 7110657 2 16384 2040 :=
  ⟨hints000468, length000468, checked000468, counted000468⟩

noncomputable def localPrefix000468 : CheckedPrimeCountBlock 6979585 2 81920 10399 :=
  localPrefix000467.append block000468

noncomputable def hints000469 : List Nat :=
  primeHintChunk% "../../certificates/prime-count33554432-v1/counts-000469.json" 33554432 3571711 7143425 2

theorem length000469 : hints000469.length = 16384 := by decide +kernel
theorem checked000469 : checkPrimeHints 7143425 2 hints000469 = true := by decide +kernel
theorem counted000469 : hints000469.count 0 <= 2065 := by decide +kernel

noncomputable def block000469 : CheckedPrimeCountBlock 7143425 2 16384 2065 :=
  ⟨hints000469, length000469, checked000469, counted000469⟩

noncomputable def localPrefix000469 : CheckedPrimeCountBlock 6979585 2 98304 12464 :=
  localPrefix000468.append block000469

noncomputable def hints000470 : List Nat :=
  primeHintChunk% "../../certificates/prime-count33554432-v1/counts-000470.json" 33554432 3588095 7176193 2

theorem length000470 : hints000470.length = 16384 := by decide +kernel
theorem checked000470 : checkPrimeHints 7176193 2 hints000470 = true := by decide +kernel
theorem counted000470 : hints000470.count 0 <= 2067 := by decide +kernel

noncomputable def block000470 : CheckedPrimeCountBlock 7176193 2 16384 2067 :=
  ⟨hints000470, length000470, checked000470, counted000470⟩

noncomputable def localPrefix000470 : CheckedPrimeCountBlock 6979585 2 114688 14531 :=
  localPrefix000469.append block000470

noncomputable def hints000471 : List Nat :=
  primeHintChunk% "../../certificates/prime-count33554432-v1/counts-000471.json" 33554432 3604479 7208961 2

theorem length000471 : hints000471.length = 16384 := by decide +kernel
theorem checked000471 : checkPrimeHints 7208961 2 hints000471 = true := by decide +kernel
theorem counted000471 : hints000471.count 0 <= 2073 := by decide +kernel

noncomputable def block000471 : CheckedPrimeCountBlock 7208961 2 16384 2073 :=
  ⟨hints000471, length000471, checked000471, counted000471⟩

noncomputable def localPrefix000471 : CheckedPrimeCountBlock 6979585 2 131072 16604 :=
  localPrefix000470.append block000471

noncomputable def hints000472 : List Nat :=
  primeHintChunk% "../../certificates/prime-count33554432-v1/counts-000472.json" 33554432 3620863 7241729 2

theorem length000472 : hints000472.length = 16384 := by decide +kernel
theorem checked000472 : checkPrimeHints 7241729 2 hints000472 = true := by decide +kernel
theorem counted000472 : hints000472.count 0 <= 2091 := by decide +kernel

noncomputable def block000472 : CheckedPrimeCountBlock 7241729 2 16384 2091 :=
  ⟨hints000472, length000472, checked000472, counted000472⟩

noncomputable def localPrefix000472 : CheckedPrimeCountBlock 6979585 2 147456 18695 :=
  localPrefix000471.append block000472

noncomputable def hints000473 : List Nat :=
  primeHintChunk% "../../certificates/prime-count33554432-v1/counts-000473.json" 33554432 3637247 7274497 2

theorem length000473 : hints000473.length = 16384 := by decide +kernel
theorem checked000473 : checkPrimeHints 7274497 2 hints000473 = true := by decide +kernel
theorem counted000473 : hints000473.count 0 <= 2067 := by decide +kernel

noncomputable def block000473 : CheckedPrimeCountBlock 7274497 2 16384 2067 :=
  ⟨hints000473, length000473, checked000473, counted000473⟩

noncomputable def localPrefix000473 : CheckedPrimeCountBlock 6979585 2 163840 20762 :=
  localPrefix000472.append block000473

noncomputable def hints000474 : List Nat :=
  primeHintChunk% "../../certificates/prime-count33554432-v1/counts-000474.json" 33554432 3653631 7307265 2

theorem length000474 : hints000474.length = 16384 := by decide +kernel
theorem checked000474 : checkPrimeHints 7307265 2 hints000474 = true := by decide +kernel
theorem counted000474 : hints000474.count 0 <= 2059 := by decide +kernel

noncomputable def block000474 : CheckedPrimeCountBlock 7307265 2 16384 2059 :=
  ⟨hints000474, length000474, checked000474, counted000474⟩

noncomputable def localPrefix000474 : CheckedPrimeCountBlock 6979585 2 180224 22821 :=
  localPrefix000473.append block000474

noncomputable def hints000475 : List Nat :=
  primeHintChunk% "../../certificates/prime-count33554432-v1/counts-000475.json" 33554432 3670015 7340033 2

theorem length000475 : hints000475.length = 16384 := by decide +kernel
theorem checked000475 : checkPrimeHints 7340033 2 hints000475 = true := by decide +kernel
theorem counted000475 : hints000475.count 0 <= 2065 := by decide +kernel

noncomputable def block000475 : CheckedPrimeCountBlock 7340033 2 16384 2065 :=
  ⟨hints000475, length000475, checked000475, counted000475⟩

noncomputable def localPrefix000475 : CheckedPrimeCountBlock 6979585 2 196608 24886 :=
  localPrefix000474.append block000475

noncomputable def hints000476 : List Nat :=
  primeHintChunk% "../../certificates/prime-count33554432-v1/counts-000476.json" 33554432 3686399 7372801 2

theorem length000476 : hints000476.length = 16384 := by decide +kernel
theorem checked000476 : checkPrimeHints 7372801 2 hints000476 = true := by decide +kernel
theorem counted000476 : hints000476.count 0 <= 2062 := by decide +kernel

noncomputable def block000476 : CheckedPrimeCountBlock 7372801 2 16384 2062 :=
  ⟨hints000476, length000476, checked000476, counted000476⟩

noncomputable def localPrefix000476 : CheckedPrimeCountBlock 6979585 2 212992 26948 :=
  localPrefix000475.append block000476

noncomputable def hints000477 : List Nat :=
  primeHintChunk% "../../certificates/prime-count33554432-v1/counts-000477.json" 33554432 3702783 7405569 2

theorem length000477 : hints000477.length = 16384 := by decide +kernel
theorem checked000477 : checkPrimeHints 7405569 2 hints000477 = true := by decide +kernel
theorem counted000477 : hints000477.count 0 <= 2074 := by decide +kernel

noncomputable def block000477 : CheckedPrimeCountBlock 7405569 2 16384 2074 :=
  ⟨hints000477, length000477, checked000477, counted000477⟩

noncomputable def localPrefix000477 : CheckedPrimeCountBlock 6979585 2 229376 29022 :=
  localPrefix000476.append block000477

noncomputable def hints000478 : List Nat :=
  primeHintChunk% "../../certificates/prime-count33554432-v1/counts-000478.json" 33554432 3719167 7438337 2

theorem length000478 : hints000478.length = 16384 := by decide +kernel
theorem checked000478 : checkPrimeHints 7438337 2 hints000478 = true := by decide +kernel
theorem counted000478 : hints000478.count 0 <= 2061 := by decide +kernel

noncomputable def block000478 : CheckedPrimeCountBlock 7438337 2 16384 2061 :=
  ⟨hints000478, length000478, checked000478, counted000478⟩

noncomputable def localPrefix000478 : CheckedPrimeCountBlock 6979585 2 245760 31083 :=
  localPrefix000477.append block000478

noncomputable def hints000479 : List Nat :=
  primeHintChunk% "../../certificates/prime-count33554432-v1/counts-000479.json" 33554432 3735551 7471105 2

theorem length000479 : hints000479.length = 16384 := by decide +kernel
theorem checked000479 : checkPrimeHints 7471105 2 hints000479 = true := by decide +kernel
theorem counted000479 : hints000479.count 0 <= 2057 := by decide +kernel

noncomputable def block000479 : CheckedPrimeCountBlock 7471105 2 16384 2057 :=
  ⟨hints000479, length000479, checked000479, counted000479⟩

noncomputable def localPrefix000479 : CheckedPrimeCountBlock 6979585 2 262144 33140 :=
  localPrefix000478.append block000479

end JSP848.FullPrimeCount
