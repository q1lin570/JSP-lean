import JSP848.PrimeCountInput

set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0

namespace JSP848.FullPrimeCount

open PrimeCountInput

noncomputable def hints000512 : List Nat :=
  primeHintChunk% "../../certificates/prime-count33554432-v1/counts-000512.json" 33554432 4276223 8552449 2

theorem length000512 : hints000512.length = 16384 := by decide +kernel
theorem checked000512 : checkPrimeHints 8552449 2 hints000512 = true := by decide +kernel
theorem counted000512 : hints000512.count 0 <= 2078 := by decide +kernel

noncomputable def block000512 : CheckedPrimeCountBlock 8552449 2 16384 2078 :=
  ⟨hints000512, length000512, checked000512, counted000512⟩

noncomputable def localPrefix000512 : CheckedPrimeCountBlock 8552449 2 16384 2078 :=
  block000512

noncomputable def hints000513 : List Nat :=
  primeHintChunk% "../../certificates/prime-count33554432-v1/counts-000513.json" 33554432 4292607 8585217 2

theorem length000513 : hints000513.length = 16384 := by decide +kernel
theorem checked000513 : checkPrimeHints 8585217 2 hints000513 = true := by decide +kernel
theorem counted000513 : hints000513.count 0 <= 2060 := by decide +kernel

noncomputable def block000513 : CheckedPrimeCountBlock 8585217 2 16384 2060 :=
  ⟨hints000513, length000513, checked000513, counted000513⟩

noncomputable def localPrefix000513 : CheckedPrimeCountBlock 8552449 2 32768 4138 :=
  localPrefix000512.append block000513

noncomputable def hints000514 : List Nat :=
  primeHintChunk% "../../certificates/prime-count33554432-v1/counts-000514.json" 33554432 4308991 8617985 2

theorem length000514 : hints000514.length = 16384 := by decide +kernel
theorem checked000514 : checkPrimeHints 8617985 2 hints000514 = true := by decide +kernel
theorem counted000514 : hints000514.count 0 <= 2039 := by decide +kernel

noncomputable def block000514 : CheckedPrimeCountBlock 8617985 2 16384 2039 :=
  ⟨hints000514, length000514, checked000514, counted000514⟩

noncomputable def localPrefix000514 : CheckedPrimeCountBlock 8552449 2 49152 6177 :=
  localPrefix000513.append block000514

noncomputable def hints000515 : List Nat :=
  primeHintChunk% "../../certificates/prime-count33554432-v1/counts-000515.json" 33554432 4325375 8650753 2

theorem length000515 : hints000515.length = 16384 := by decide +kernel
theorem checked000515 : checkPrimeHints 8650753 2 hints000515 = true := by decide +kernel
theorem counted000515 : hints000515.count 0 <= 2048 := by decide +kernel

noncomputable def block000515 : CheckedPrimeCountBlock 8650753 2 16384 2048 :=
  ⟨hints000515, length000515, checked000515, counted000515⟩

noncomputable def localPrefix000515 : CheckedPrimeCountBlock 8552449 2 65536 8225 :=
  localPrefix000514.append block000515

noncomputable def hints000516 : List Nat :=
  primeHintChunk% "../../certificates/prime-count33554432-v1/counts-000516.json" 33554432 4341759 8683521 2

theorem length000516 : hints000516.length = 16384 := by decide +kernel
theorem checked000516 : checkPrimeHints 8683521 2 hints000516 = true := by decide +kernel
theorem counted000516 : hints000516.count 0 <= 2084 := by decide +kernel

noncomputable def block000516 : CheckedPrimeCountBlock 8683521 2 16384 2084 :=
  ⟨hints000516, length000516, checked000516, counted000516⟩

noncomputable def localPrefix000516 : CheckedPrimeCountBlock 8552449 2 81920 10309 :=
  localPrefix000515.append block000516

noncomputable def hints000517 : List Nat :=
  primeHintChunk% "../../certificates/prime-count33554432-v1/counts-000517.json" 33554432 4358143 8716289 2

theorem length000517 : hints000517.length = 16384 := by decide +kernel
theorem checked000517 : checkPrimeHints 8716289 2 hints000517 = true := by decide +kernel
theorem counted000517 : hints000517.count 0 <= 2048 := by decide +kernel

noncomputable def block000517 : CheckedPrimeCountBlock 8716289 2 16384 2048 :=
  ⟨hints000517, length000517, checked000517, counted000517⟩

noncomputable def localPrefix000517 : CheckedPrimeCountBlock 8552449 2 98304 12357 :=
  localPrefix000516.append block000517

noncomputable def hints000518 : List Nat :=
  primeHintChunk% "../../certificates/prime-count33554432-v1/counts-000518.json" 33554432 4374527 8749057 2

theorem length000518 : hints000518.length = 16384 := by decide +kernel
theorem checked000518 : checkPrimeHints 8749057 2 hints000518 = true := by decide +kernel
theorem counted000518 : hints000518.count 0 <= 2068 := by decide +kernel

noncomputable def block000518 : CheckedPrimeCountBlock 8749057 2 16384 2068 :=
  ⟨hints000518, length000518, checked000518, counted000518⟩

noncomputable def localPrefix000518 : CheckedPrimeCountBlock 8552449 2 114688 14425 :=
  localPrefix000517.append block000518

noncomputable def hints000519 : List Nat :=
  primeHintChunk% "../../certificates/prime-count33554432-v1/counts-000519.json" 33554432 4390911 8781825 2

theorem length000519 : hints000519.length = 16384 := by decide +kernel
theorem checked000519 : checkPrimeHints 8781825 2 hints000519 = true := by decide +kernel
theorem counted000519 : hints000519.count 0 <= 2042 := by decide +kernel

noncomputable def block000519 : CheckedPrimeCountBlock 8781825 2 16384 2042 :=
  ⟨hints000519, length000519, checked000519, counted000519⟩

noncomputable def localPrefix000519 : CheckedPrimeCountBlock 8552449 2 131072 16467 :=
  localPrefix000518.append block000519

noncomputable def hints000520 : List Nat :=
  primeHintChunk% "../../certificates/prime-count33554432-v1/counts-000520.json" 33554432 4407295 8814593 2

theorem length000520 : hints000520.length = 16384 := by decide +kernel
theorem checked000520 : checkPrimeHints 8814593 2 hints000520 = true := by decide +kernel
theorem counted000520 : hints000520.count 0 <= 2028 := by decide +kernel

noncomputable def block000520 : CheckedPrimeCountBlock 8814593 2 16384 2028 :=
  ⟨hints000520, length000520, checked000520, counted000520⟩

noncomputable def localPrefix000520 : CheckedPrimeCountBlock 8552449 2 147456 18495 :=
  localPrefix000519.append block000520

noncomputable def hints000521 : List Nat :=
  primeHintChunk% "../../certificates/prime-count33554432-v1/counts-000521.json" 33554432 4423679 8847361 2

theorem length000521 : hints000521.length = 16384 := by decide +kernel
theorem checked000521 : checkPrimeHints 8847361 2 hints000521 = true := by decide +kernel
theorem counted000521 : hints000521.count 0 <= 2043 := by decide +kernel

noncomputable def block000521 : CheckedPrimeCountBlock 8847361 2 16384 2043 :=
  ⟨hints000521, length000521, checked000521, counted000521⟩

noncomputable def localPrefix000521 : CheckedPrimeCountBlock 8552449 2 163840 20538 :=
  localPrefix000520.append block000521

noncomputable def hints000522 : List Nat :=
  primeHintChunk% "../../certificates/prime-count33554432-v1/counts-000522.json" 33554432 4440063 8880129 2

theorem length000522 : hints000522.length = 16384 := by decide +kernel
theorem checked000522 : checkPrimeHints 8880129 2 hints000522 = true := by decide +kernel
theorem counted000522 : hints000522.count 0 <= 2036 := by decide +kernel

noncomputable def block000522 : CheckedPrimeCountBlock 8880129 2 16384 2036 :=
  ⟨hints000522, length000522, checked000522, counted000522⟩

noncomputable def localPrefix000522 : CheckedPrimeCountBlock 8552449 2 180224 22574 :=
  localPrefix000521.append block000522

noncomputable def hints000523 : List Nat :=
  primeHintChunk% "../../certificates/prime-count33554432-v1/counts-000523.json" 33554432 4456447 8912897 2

theorem length000523 : hints000523.length = 16384 := by decide +kernel
theorem checked000523 : checkPrimeHints 8912897 2 hints000523 = true := by decide +kernel
theorem counted000523 : hints000523.count 0 <= 2070 := by decide +kernel

noncomputable def block000523 : CheckedPrimeCountBlock 8912897 2 16384 2070 :=
  ⟨hints000523, length000523, checked000523, counted000523⟩

noncomputable def localPrefix000523 : CheckedPrimeCountBlock 8552449 2 196608 24644 :=
  localPrefix000522.append block000523

noncomputable def hints000524 : List Nat :=
  primeHintChunk% "../../certificates/prime-count33554432-v1/counts-000524.json" 33554432 4472831 8945665 2

theorem length000524 : hints000524.length = 16384 := by decide +kernel
theorem checked000524 : checkPrimeHints 8945665 2 hints000524 = true := by decide +kernel
theorem counted000524 : hints000524.count 0 <= 2022 := by decide +kernel

noncomputable def block000524 : CheckedPrimeCountBlock 8945665 2 16384 2022 :=
  ⟨hints000524, length000524, checked000524, counted000524⟩

noncomputable def localPrefix000524 : CheckedPrimeCountBlock 8552449 2 212992 26666 :=
  localPrefix000523.append block000524

noncomputable def hints000525 : List Nat :=
  primeHintChunk% "../../certificates/prime-count33554432-v1/counts-000525.json" 33554432 4489215 8978433 2

theorem length000525 : hints000525.length = 16384 := by decide +kernel
theorem checked000525 : checkPrimeHints 8978433 2 hints000525 = true := by decide +kernel
theorem counted000525 : hints000525.count 0 <= 2034 := by decide +kernel

noncomputable def block000525 : CheckedPrimeCountBlock 8978433 2 16384 2034 :=
  ⟨hints000525, length000525, checked000525, counted000525⟩

noncomputable def localPrefix000525 : CheckedPrimeCountBlock 8552449 2 229376 28700 :=
  localPrefix000524.append block000525

noncomputable def hints000526 : List Nat :=
  primeHintChunk% "../../certificates/prime-count33554432-v1/counts-000526.json" 33554432 4505599 9011201 2

theorem length000526 : hints000526.length = 16384 := by decide +kernel
theorem checked000526 : checkPrimeHints 9011201 2 hints000526 = true := by decide +kernel
theorem counted000526 : hints000526.count 0 <= 2028 := by decide +kernel

noncomputable def block000526 : CheckedPrimeCountBlock 9011201 2 16384 2028 :=
  ⟨hints000526, length000526, checked000526, counted000526⟩

noncomputable def localPrefix000526 : CheckedPrimeCountBlock 8552449 2 245760 30728 :=
  localPrefix000525.append block000526

noncomputable def hints000527 : List Nat :=
  primeHintChunk% "../../certificates/prime-count33554432-v1/counts-000527.json" 33554432 4521983 9043969 2

theorem length000527 : hints000527.length = 16384 := by decide +kernel
theorem checked000527 : checkPrimeHints 9043969 2 hints000527 = true := by decide +kernel
theorem counted000527 : hints000527.count 0 <= 2028 := by decide +kernel

noncomputable def block000527 : CheckedPrimeCountBlock 9043969 2 16384 2028 :=
  ⟨hints000527, length000527, checked000527, counted000527⟩

noncomputable def localPrefix000527 : CheckedPrimeCountBlock 8552449 2 262144 32756 :=
  localPrefix000526.append block000527

end JSP848.FullPrimeCount
