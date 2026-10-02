import JSP848.PrimeCountInput

set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0

namespace JSP848.FullPrimeCount

open PrimeCountInput

noncomputable def hints000528 : List Nat :=
  primeHintChunk% "../../certificates/prime-count33554432-v1/counts-000528.json" 33554432 4538367 9076737 2

theorem length000528 : hints000528.length = 16384 := by decide +kernel
theorem checked000528 : checkPrimeHints 9076737 2 hints000528 = true := by decide +kernel
theorem counted000528 : hints000528.count 0 <= 2070 := by decide +kernel

noncomputable def block000528 : CheckedPrimeCountBlock 9076737 2 16384 2070 :=
  ⟨hints000528, length000528, checked000528, counted000528⟩

noncomputable def localPrefix000528 : CheckedPrimeCountBlock 9076737 2 16384 2070 :=
  block000528

noncomputable def hints000529 : List Nat :=
  primeHintChunk% "../../certificates/prime-count33554432-v1/counts-000529.json" 33554432 4554751 9109505 2

theorem length000529 : hints000529.length = 16384 := by decide +kernel
theorem checked000529 : checkPrimeHints 9109505 2 hints000529 = true := by decide +kernel
theorem counted000529 : hints000529.count 0 <= 2038 := by decide +kernel

noncomputable def block000529 : CheckedPrimeCountBlock 9109505 2 16384 2038 :=
  ⟨hints000529, length000529, checked000529, counted000529⟩

noncomputable def localPrefix000529 : CheckedPrimeCountBlock 9076737 2 32768 4108 :=
  localPrefix000528.append block000529

noncomputable def hints000530 : List Nat :=
  primeHintChunk% "../../certificates/prime-count33554432-v1/counts-000530.json" 33554432 4571135 9142273 2

theorem length000530 : hints000530.length = 16384 := by decide +kernel
theorem checked000530 : checkPrimeHints 9142273 2 hints000530 = true := by decide +kernel
theorem counted000530 : hints000530.count 0 <= 2028 := by decide +kernel

noncomputable def block000530 : CheckedPrimeCountBlock 9142273 2 16384 2028 :=
  ⟨hints000530, length000530, checked000530, counted000530⟩

noncomputable def localPrefix000530 : CheckedPrimeCountBlock 9076737 2 49152 6136 :=
  localPrefix000529.append block000530

noncomputable def hints000531 : List Nat :=
  primeHintChunk% "../../certificates/prime-count33554432-v1/counts-000531.json" 33554432 4587519 9175041 2

theorem length000531 : hints000531.length = 16384 := by decide +kernel
theorem checked000531 : checkPrimeHints 9175041 2 hints000531 = true := by decide +kernel
theorem counted000531 : hints000531.count 0 <= 2059 := by decide +kernel

noncomputable def block000531 : CheckedPrimeCountBlock 9175041 2 16384 2059 :=
  ⟨hints000531, length000531, checked000531, counted000531⟩

noncomputable def localPrefix000531 : CheckedPrimeCountBlock 9076737 2 65536 8195 :=
  localPrefix000530.append block000531

noncomputable def hints000532 : List Nat :=
  primeHintChunk% "../../certificates/prime-count33554432-v1/counts-000532.json" 33554432 4603903 9207809 2

theorem length000532 : hints000532.length = 16384 := by decide +kernel
theorem checked000532 : checkPrimeHints 9207809 2 hints000532 = true := by decide +kernel
theorem counted000532 : hints000532.count 0 <= 2071 := by decide +kernel

noncomputable def block000532 : CheckedPrimeCountBlock 9207809 2 16384 2071 :=
  ⟨hints000532, length000532, checked000532, counted000532⟩

noncomputable def localPrefix000532 : CheckedPrimeCountBlock 9076737 2 81920 10266 :=
  localPrefix000531.append block000532

noncomputable def hints000533 : List Nat :=
  primeHintChunk% "../../certificates/prime-count33554432-v1/counts-000533.json" 33554432 4620287 9240577 2

theorem length000533 : hints000533.length = 16384 := by decide +kernel
theorem checked000533 : checkPrimeHints 9240577 2 hints000533 = true := by decide +kernel
theorem counted000533 : hints000533.count 0 <= 2047 := by decide +kernel

noncomputable def block000533 : CheckedPrimeCountBlock 9240577 2 16384 2047 :=
  ⟨hints000533, length000533, checked000533, counted000533⟩

noncomputable def localPrefix000533 : CheckedPrimeCountBlock 9076737 2 98304 12313 :=
  localPrefix000532.append block000533

noncomputable def hints000534 : List Nat :=
  primeHintChunk% "../../certificates/prime-count33554432-v1/counts-000534.json" 33554432 4636671 9273345 2

theorem length000534 : hints000534.length = 16384 := by decide +kernel
theorem checked000534 : checkPrimeHints 9273345 2 hints000534 = true := by decide +kernel
theorem counted000534 : hints000534.count 0 <= 2048 := by decide +kernel

noncomputable def block000534 : CheckedPrimeCountBlock 9273345 2 16384 2048 :=
  ⟨hints000534, length000534, checked000534, counted000534⟩

noncomputable def localPrefix000534 : CheckedPrimeCountBlock 9076737 2 114688 14361 :=
  localPrefix000533.append block000534

noncomputable def hints000535 : List Nat :=
  primeHintChunk% "../../certificates/prime-count33554432-v1/counts-000535.json" 33554432 4653055 9306113 2

theorem length000535 : hints000535.length = 16384 := by decide +kernel
theorem checked000535 : checkPrimeHints 9306113 2 hints000535 = true := by decide +kernel
theorem counted000535 : hints000535.count 0 <= 2041 := by decide +kernel

noncomputable def block000535 : CheckedPrimeCountBlock 9306113 2 16384 2041 :=
  ⟨hints000535, length000535, checked000535, counted000535⟩

noncomputable def localPrefix000535 : CheckedPrimeCountBlock 9076737 2 131072 16402 :=
  localPrefix000534.append block000535

noncomputable def hints000536 : List Nat :=
  primeHintChunk% "../../certificates/prime-count33554432-v1/counts-000536.json" 33554432 4669439 9338881 2

theorem length000536 : hints000536.length = 16384 := by decide +kernel
theorem checked000536 : checkPrimeHints 9338881 2 hints000536 = true := by decide +kernel
theorem counted000536 : hints000536.count 0 <= 2056 := by decide +kernel

noncomputable def block000536 : CheckedPrimeCountBlock 9338881 2 16384 2056 :=
  ⟨hints000536, length000536, checked000536, counted000536⟩

noncomputable def localPrefix000536 : CheckedPrimeCountBlock 9076737 2 147456 18458 :=
  localPrefix000535.append block000536

noncomputable def hints000537 : List Nat :=
  primeHintChunk% "../../certificates/prime-count33554432-v1/counts-000537.json" 33554432 4685823 9371649 2

theorem length000537 : hints000537.length = 16384 := by decide +kernel
theorem checked000537 : checkPrimeHints 9371649 2 hints000537 = true := by decide +kernel
theorem counted000537 : hints000537.count 0 <= 2014 := by decide +kernel

noncomputable def block000537 : CheckedPrimeCountBlock 9371649 2 16384 2014 :=
  ⟨hints000537, length000537, checked000537, counted000537⟩

noncomputable def localPrefix000537 : CheckedPrimeCountBlock 9076737 2 163840 20472 :=
  localPrefix000536.append block000537

noncomputable def hints000538 : List Nat :=
  primeHintChunk% "../../certificates/prime-count33554432-v1/counts-000538.json" 33554432 4702207 9404417 2

theorem length000538 : hints000538.length = 16384 := by decide +kernel
theorem checked000538 : checkPrimeHints 9404417 2 hints000538 = true := by decide +kernel
theorem counted000538 : hints000538.count 0 <= 2016 := by decide +kernel

noncomputable def block000538 : CheckedPrimeCountBlock 9404417 2 16384 2016 :=
  ⟨hints000538, length000538, checked000538, counted000538⟩

noncomputable def localPrefix000538 : CheckedPrimeCountBlock 9076737 2 180224 22488 :=
  localPrefix000537.append block000538

noncomputable def hints000539 : List Nat :=
  primeHintChunk% "../../certificates/prime-count33554432-v1/counts-000539.json" 33554432 4718591 9437185 2

theorem length000539 : hints000539.length = 16384 := by decide +kernel
theorem checked000539 : checkPrimeHints 9437185 2 hints000539 = true := by decide +kernel
theorem counted000539 : hints000539.count 0 <= 2034 := by decide +kernel

noncomputable def block000539 : CheckedPrimeCountBlock 9437185 2 16384 2034 :=
  ⟨hints000539, length000539, checked000539, counted000539⟩

noncomputable def localPrefix000539 : CheckedPrimeCountBlock 9076737 2 196608 24522 :=
  localPrefix000538.append block000539

noncomputable def hints000540 : List Nat :=
  primeHintChunk% "../../certificates/prime-count33554432-v1/counts-000540.json" 33554432 4734975 9469953 2

theorem length000540 : hints000540.length = 16384 := by decide +kernel
theorem checked000540 : checkPrimeHints 9469953 2 hints000540 = true := by decide +kernel
theorem counted000540 : hints000540.count 0 <= 2034 := by decide +kernel

noncomputable def block000540 : CheckedPrimeCountBlock 9469953 2 16384 2034 :=
  ⟨hints000540, length000540, checked000540, counted000540⟩

noncomputable def localPrefix000540 : CheckedPrimeCountBlock 9076737 2 212992 26556 :=
  localPrefix000539.append block000540

noncomputable def hints000541 : List Nat :=
  primeHintChunk% "../../certificates/prime-count33554432-v1/counts-000541.json" 33554432 4751359 9502721 2

theorem length000541 : hints000541.length = 16384 := by decide +kernel
theorem checked000541 : checkPrimeHints 9502721 2 hints000541 = true := by decide +kernel
theorem counted000541 : hints000541.count 0 <= 2050 := by decide +kernel

noncomputable def block000541 : CheckedPrimeCountBlock 9502721 2 16384 2050 :=
  ⟨hints000541, length000541, checked000541, counted000541⟩

noncomputable def localPrefix000541 : CheckedPrimeCountBlock 9076737 2 229376 28606 :=
  localPrefix000540.append block000541

noncomputable def hints000542 : List Nat :=
  primeHintChunk% "../../certificates/prime-count33554432-v1/counts-000542.json" 33554432 4767743 9535489 2

theorem length000542 : hints000542.length = 16384 := by decide +kernel
theorem checked000542 : checkPrimeHints 9535489 2 hints000542 = true := by decide +kernel
theorem counted000542 : hints000542.count 0 <= 2016 := by decide +kernel

noncomputable def block000542 : CheckedPrimeCountBlock 9535489 2 16384 2016 :=
  ⟨hints000542, length000542, checked000542, counted000542⟩

noncomputable def localPrefix000542 : CheckedPrimeCountBlock 9076737 2 245760 30622 :=
  localPrefix000541.append block000542

noncomputable def hints000543 : List Nat :=
  primeHintChunk% "../../certificates/prime-count33554432-v1/counts-000543.json" 33554432 4784127 9568257 2

theorem length000543 : hints000543.length = 16384 := by decide +kernel
theorem checked000543 : checkPrimeHints 9568257 2 hints000543 = true := by decide +kernel
theorem counted000543 : hints000543.count 0 <= 2095 := by decide +kernel

noncomputable def block000543 : CheckedPrimeCountBlock 9568257 2 16384 2095 :=
  ⟨hints000543, length000543, checked000543, counted000543⟩

noncomputable def localPrefix000543 : CheckedPrimeCountBlock 9076737 2 262144 32717 :=
  localPrefix000542.append block000543

end JSP848.FullPrimeCount
