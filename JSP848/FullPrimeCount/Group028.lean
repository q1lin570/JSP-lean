import JSP848.PrimeCountInput

set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0

namespace JSP848.FullPrimeCount

open PrimeCountInput

noncomputable def hints000448 : List Nat :=
  primeHintChunk% "../../certificates/prime-count33554432-v1/counts-000448.json" 33554432 3227647 6455297 2

theorem length000448 : hints000448.length = 16384 := by decide +kernel
theorem checked000448 : checkPrimeHints 6455297 2 hints000448 = true := by decide +kernel
theorem counted000448 : hints000448.count 0 <= 2066 := by decide +kernel

noncomputable def block000448 : CheckedPrimeCountBlock 6455297 2 16384 2066 :=
  ⟨hints000448, length000448, checked000448, counted000448⟩

noncomputable def localPrefix000448 : CheckedPrimeCountBlock 6455297 2 16384 2066 :=
  block000448

noncomputable def hints000449 : List Nat :=
  primeHintChunk% "../../certificates/prime-count33554432-v1/counts-000449.json" 33554432 3244031 6488065 2

theorem length000449 : hints000449.length = 16384 := by decide +kernel
theorem checked000449 : checkPrimeHints 6488065 2 hints000449 = true := by decide +kernel
theorem counted000449 : hints000449.count 0 <= 2108 := by decide +kernel

noncomputable def block000449 : CheckedPrimeCountBlock 6488065 2 16384 2108 :=
  ⟨hints000449, length000449, checked000449, counted000449⟩

noncomputable def localPrefix000449 : CheckedPrimeCountBlock 6455297 2 32768 4174 :=
  localPrefix000448.append block000449

noncomputable def hints000450 : List Nat :=
  primeHintChunk% "../../certificates/prime-count33554432-v1/counts-000450.json" 33554432 3260415 6520833 2

theorem length000450 : hints000450.length = 16384 := by decide +kernel
theorem checked000450 : checkPrimeHints 6520833 2 hints000450 = true := by decide +kernel
theorem counted000450 : hints000450.count 0 <= 2087 := by decide +kernel

noncomputable def block000450 : CheckedPrimeCountBlock 6520833 2 16384 2087 :=
  ⟨hints000450, length000450, checked000450, counted000450⟩

noncomputable def localPrefix000450 : CheckedPrimeCountBlock 6455297 2 49152 6261 :=
  localPrefix000449.append block000450

noncomputable def hints000451 : List Nat :=
  primeHintChunk% "../../certificates/prime-count33554432-v1/counts-000451.json" 33554432 3276799 6553601 2

theorem length000451 : hints000451.length = 16384 := by decide +kernel
theorem checked000451 : checkPrimeHints 6553601 2 hints000451 = true := by decide +kernel
theorem counted000451 : hints000451.count 0 <= 2115 := by decide +kernel

noncomputable def block000451 : CheckedPrimeCountBlock 6553601 2 16384 2115 :=
  ⟨hints000451, length000451, checked000451, counted000451⟩

noncomputable def localPrefix000451 : CheckedPrimeCountBlock 6455297 2 65536 8376 :=
  localPrefix000450.append block000451

noncomputable def hints000452 : List Nat :=
  primeHintChunk% "../../certificates/prime-count33554432-v1/counts-000452.json" 33554432 3293183 6586369 2

theorem length000452 : hints000452.length = 16384 := by decide +kernel
theorem checked000452 : checkPrimeHints 6586369 2 hints000452 = true := by decide +kernel
theorem counted000452 : hints000452.count 0 <= 2115 := by decide +kernel

noncomputable def block000452 : CheckedPrimeCountBlock 6586369 2 16384 2115 :=
  ⟨hints000452, length000452, checked000452, counted000452⟩

noncomputable def localPrefix000452 : CheckedPrimeCountBlock 6455297 2 81920 10491 :=
  localPrefix000451.append block000452

noncomputable def hints000453 : List Nat :=
  primeHintChunk% "../../certificates/prime-count33554432-v1/counts-000453.json" 33554432 3309567 6619137 2

theorem length000453 : hints000453.length = 16384 := by decide +kernel
theorem checked000453 : checkPrimeHints 6619137 2 hints000453 = true := by decide +kernel
theorem counted000453 : hints000453.count 0 <= 2039 := by decide +kernel

noncomputable def block000453 : CheckedPrimeCountBlock 6619137 2 16384 2039 :=
  ⟨hints000453, length000453, checked000453, counted000453⟩

noncomputable def localPrefix000453 : CheckedPrimeCountBlock 6455297 2 98304 12530 :=
  localPrefix000452.append block000453

noncomputable def hints000454 : List Nat :=
  primeHintChunk% "../../certificates/prime-count33554432-v1/counts-000454.json" 33554432 3325951 6651905 2

theorem length000454 : hints000454.length = 16384 := by decide +kernel
theorem checked000454 : checkPrimeHints 6651905 2 hints000454 = true := by decide +kernel
theorem counted000454 : hints000454.count 0 <= 2066 := by decide +kernel

noncomputable def block000454 : CheckedPrimeCountBlock 6651905 2 16384 2066 :=
  ⟨hints000454, length000454, checked000454, counted000454⟩

noncomputable def localPrefix000454 : CheckedPrimeCountBlock 6455297 2 114688 14596 :=
  localPrefix000453.append block000454

noncomputable def hints000455 : List Nat :=
  primeHintChunk% "../../certificates/prime-count33554432-v1/counts-000455.json" 33554432 3342335 6684673 2

theorem length000455 : hints000455.length = 16384 := by decide +kernel
theorem checked000455 : checkPrimeHints 6684673 2 hints000455 = true := by decide +kernel
theorem counted000455 : hints000455.count 0 <= 2119 := by decide +kernel

noncomputable def block000455 : CheckedPrimeCountBlock 6684673 2 16384 2119 :=
  ⟨hints000455, length000455, checked000455, counted000455⟩

noncomputable def localPrefix000455 : CheckedPrimeCountBlock 6455297 2 131072 16715 :=
  localPrefix000454.append block000455

noncomputable def hints000456 : List Nat :=
  primeHintChunk% "../../certificates/prime-count33554432-v1/counts-000456.json" 33554432 3358719 6717441 2

theorem length000456 : hints000456.length = 16384 := by decide +kernel
theorem checked000456 : checkPrimeHints 6717441 2 hints000456 = true := by decide +kernel
theorem counted000456 : hints000456.count 0 <= 2081 := by decide +kernel

noncomputable def block000456 : CheckedPrimeCountBlock 6717441 2 16384 2081 :=
  ⟨hints000456, length000456, checked000456, counted000456⟩

noncomputable def localPrefix000456 : CheckedPrimeCountBlock 6455297 2 147456 18796 :=
  localPrefix000455.append block000456

noncomputable def hints000457 : List Nat :=
  primeHintChunk% "../../certificates/prime-count33554432-v1/counts-000457.json" 33554432 3375103 6750209 2

theorem length000457 : hints000457.length = 16384 := by decide +kernel
theorem checked000457 : checkPrimeHints 6750209 2 hints000457 = true := by decide +kernel
theorem counted000457 : hints000457.count 0 <= 2088 := by decide +kernel

noncomputable def block000457 : CheckedPrimeCountBlock 6750209 2 16384 2088 :=
  ⟨hints000457, length000457, checked000457, counted000457⟩

noncomputable def localPrefix000457 : CheckedPrimeCountBlock 6455297 2 163840 20884 :=
  localPrefix000456.append block000457

noncomputable def hints000458 : List Nat :=
  primeHintChunk% "../../certificates/prime-count33554432-v1/counts-000458.json" 33554432 3391487 6782977 2

theorem length000458 : hints000458.length = 16384 := by decide +kernel
theorem checked000458 : checkPrimeHints 6782977 2 hints000458 = true := by decide +kernel
theorem counted000458 : hints000458.count 0 <= 2076 := by decide +kernel

noncomputable def block000458 : CheckedPrimeCountBlock 6782977 2 16384 2076 :=
  ⟨hints000458, length000458, checked000458, counted000458⟩

noncomputable def localPrefix000458 : CheckedPrimeCountBlock 6455297 2 180224 22960 :=
  localPrefix000457.append block000458

noncomputable def hints000459 : List Nat :=
  primeHintChunk% "../../certificates/prime-count33554432-v1/counts-000459.json" 33554432 3407871 6815745 2

theorem length000459 : hints000459.length = 16384 := by decide +kernel
theorem checked000459 : checkPrimeHints 6815745 2 hints000459 = true := by decide +kernel
theorem counted000459 : hints000459.count 0 <= 2088 := by decide +kernel

noncomputable def block000459 : CheckedPrimeCountBlock 6815745 2 16384 2088 :=
  ⟨hints000459, length000459, checked000459, counted000459⟩

noncomputable def localPrefix000459 : CheckedPrimeCountBlock 6455297 2 196608 25048 :=
  localPrefix000458.append block000459

noncomputable def hints000460 : List Nat :=
  primeHintChunk% "../../certificates/prime-count33554432-v1/counts-000460.json" 33554432 3424255 6848513 2

theorem length000460 : hints000460.length = 16384 := by decide +kernel
theorem checked000460 : checkPrimeHints 6848513 2 hints000460 = true := by decide +kernel
theorem counted000460 : hints000460.count 0 <= 2120 := by decide +kernel

noncomputable def block000460 : CheckedPrimeCountBlock 6848513 2 16384 2120 :=
  ⟨hints000460, length000460, checked000460, counted000460⟩

noncomputable def localPrefix000460 : CheckedPrimeCountBlock 6455297 2 212992 27168 :=
  localPrefix000459.append block000460

noncomputable def hints000461 : List Nat :=
  primeHintChunk% "../../certificates/prime-count33554432-v1/counts-000461.json" 33554432 3440639 6881281 2

theorem length000461 : hints000461.length = 16384 := by decide +kernel
theorem checked000461 : checkPrimeHints 6881281 2 hints000461 = true := by decide +kernel
theorem counted000461 : hints000461.count 0 <= 2083 := by decide +kernel

noncomputable def block000461 : CheckedPrimeCountBlock 6881281 2 16384 2083 :=
  ⟨hints000461, length000461, checked000461, counted000461⟩

noncomputable def localPrefix000461 : CheckedPrimeCountBlock 6455297 2 229376 29251 :=
  localPrefix000460.append block000461

noncomputable def hints000462 : List Nat :=
  primeHintChunk% "../../certificates/prime-count33554432-v1/counts-000462.json" 33554432 3457023 6914049 2

theorem length000462 : hints000462.length = 16384 := by decide +kernel
theorem checked000462 : checkPrimeHints 6914049 2 hints000462 = true := by decide +kernel
theorem counted000462 : hints000462.count 0 <= 2075 := by decide +kernel

noncomputable def block000462 : CheckedPrimeCountBlock 6914049 2 16384 2075 :=
  ⟨hints000462, length000462, checked000462, counted000462⟩

noncomputable def localPrefix000462 : CheckedPrimeCountBlock 6455297 2 245760 31326 :=
  localPrefix000461.append block000462

noncomputable def hints000463 : List Nat :=
  primeHintChunk% "../../certificates/prime-count33554432-v1/counts-000463.json" 33554432 3473407 6946817 2

theorem length000463 : hints000463.length = 16384 := by decide +kernel
theorem checked000463 : checkPrimeHints 6946817 2 hints000463 = true := by decide +kernel
theorem counted000463 : hints000463.count 0 <= 2109 := by decide +kernel

noncomputable def block000463 : CheckedPrimeCountBlock 6946817 2 16384 2109 :=
  ⟨hints000463, length000463, checked000463, counted000463⟩

noncomputable def localPrefix000463 : CheckedPrimeCountBlock 6455297 2 262144 33435 :=
  localPrefix000462.append block000463

end JSP848.FullPrimeCount
