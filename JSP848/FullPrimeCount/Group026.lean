import JSP848.PrimeCountInput

set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0

namespace JSP848.FullPrimeCount

open PrimeCountInput

noncomputable def hints000416 : List Nat :=
  primeHintChunk% "../../certificates/prime-count33554432-v1/counts-000416.json" 33554432 2703359 5406721 2

theorem length000416 : hints000416.length = 16384 := by decide +kernel
theorem checked000416 : checkPrimeHints 5406721 2 hints000416 = true := by decide +kernel
theorem counted000416 : hints000416.count 0 <= 2125 := by decide +kernel

noncomputable def block000416 : CheckedPrimeCountBlock 5406721 2 16384 2125 :=
  ⟨hints000416, length000416, checked000416, counted000416⟩

noncomputable def localPrefix000416 : CheckedPrimeCountBlock 5406721 2 16384 2125 :=
  block000416

noncomputable def hints000417 : List Nat :=
  primeHintChunk% "../../certificates/prime-count33554432-v1/counts-000417.json" 33554432 2719743 5439489 2

theorem length000417 : hints000417.length = 16384 := by decide +kernel
theorem checked000417 : checkPrimeHints 5439489 2 hints000417 = true := by decide +kernel
theorem counted000417 : hints000417.count 0 <= 2111 := by decide +kernel

noncomputable def block000417 : CheckedPrimeCountBlock 5439489 2 16384 2111 :=
  ⟨hints000417, length000417, checked000417, counted000417⟩

noncomputable def localPrefix000417 : CheckedPrimeCountBlock 5406721 2 32768 4236 :=
  localPrefix000416.append block000417

noncomputable def hints000418 : List Nat :=
  primeHintChunk% "../../certificates/prime-count33554432-v1/counts-000418.json" 33554432 2736127 5472257 2

theorem length000418 : hints000418.length = 16384 := by decide +kernel
theorem checked000418 : checkPrimeHints 5472257 2 hints000418 = true := by decide +kernel
theorem counted000418 : hints000418.count 0 <= 2099 := by decide +kernel

noncomputable def block000418 : CheckedPrimeCountBlock 5472257 2 16384 2099 :=
  ⟨hints000418, length000418, checked000418, counted000418⟩

noncomputable def localPrefix000418 : CheckedPrimeCountBlock 5406721 2 49152 6335 :=
  localPrefix000417.append block000418

noncomputable def hints000419 : List Nat :=
  primeHintChunk% "../../certificates/prime-count33554432-v1/counts-000419.json" 33554432 2752511 5505025 2

theorem length000419 : hints000419.length = 16384 := by decide +kernel
theorem checked000419 : checkPrimeHints 5505025 2 hints000419 = true := by decide +kernel
theorem counted000419 : hints000419.count 0 <= 2105 := by decide +kernel

noncomputable def block000419 : CheckedPrimeCountBlock 5505025 2 16384 2105 :=
  ⟨hints000419, length000419, checked000419, counted000419⟩

noncomputable def localPrefix000419 : CheckedPrimeCountBlock 5406721 2 65536 8440 :=
  localPrefix000418.append block000419

noncomputable def hints000420 : List Nat :=
  primeHintChunk% "../../certificates/prime-count33554432-v1/counts-000420.json" 33554432 2768895 5537793 2

theorem length000420 : hints000420.length = 16384 := by decide +kernel
theorem checked000420 : checkPrimeHints 5537793 2 hints000420 = true := by decide +kernel
theorem counted000420 : hints000420.count 0 <= 2093 := by decide +kernel

noncomputable def block000420 : CheckedPrimeCountBlock 5537793 2 16384 2093 :=
  ⟨hints000420, length000420, checked000420, counted000420⟩

noncomputable def localPrefix000420 : CheckedPrimeCountBlock 5406721 2 81920 10533 :=
  localPrefix000419.append block000420

noncomputable def hints000421 : List Nat :=
  primeHintChunk% "../../certificates/prime-count33554432-v1/counts-000421.json" 33554432 2785279 5570561 2

theorem length000421 : hints000421.length = 16384 := by decide +kernel
theorem checked000421 : checkPrimeHints 5570561 2 hints000421 = true := by decide +kernel
theorem counted000421 : hints000421.count 0 <= 2097 := by decide +kernel

noncomputable def block000421 : CheckedPrimeCountBlock 5570561 2 16384 2097 :=
  ⟨hints000421, length000421, checked000421, counted000421⟩

noncomputable def localPrefix000421 : CheckedPrimeCountBlock 5406721 2 98304 12630 :=
  localPrefix000420.append block000421

noncomputable def hints000422 : List Nat :=
  primeHintChunk% "../../certificates/prime-count33554432-v1/counts-000422.json" 33554432 2801663 5603329 2

theorem length000422 : hints000422.length = 16384 := by decide +kernel
theorem checked000422 : checkPrimeHints 5603329 2 hints000422 = true := by decide +kernel
theorem counted000422 : hints000422.count 0 <= 2105 := by decide +kernel

noncomputable def block000422 : CheckedPrimeCountBlock 5603329 2 16384 2105 :=
  ⟨hints000422, length000422, checked000422, counted000422⟩

noncomputable def localPrefix000422 : CheckedPrimeCountBlock 5406721 2 114688 14735 :=
  localPrefix000421.append block000422

noncomputable def hints000423 : List Nat :=
  primeHintChunk% "../../certificates/prime-count33554432-v1/counts-000423.json" 33554432 2818047 5636097 2

theorem length000423 : hints000423.length = 16384 := by decide +kernel
theorem checked000423 : checkPrimeHints 5636097 2 hints000423 = true := by decide +kernel
theorem counted000423 : hints000423.count 0 <= 2068 := by decide +kernel

noncomputable def block000423 : CheckedPrimeCountBlock 5636097 2 16384 2068 :=
  ⟨hints000423, length000423, checked000423, counted000423⟩

noncomputable def localPrefix000423 : CheckedPrimeCountBlock 5406721 2 131072 16803 :=
  localPrefix000422.append block000423

noncomputable def hints000424 : List Nat :=
  primeHintChunk% "../../certificates/prime-count33554432-v1/counts-000424.json" 33554432 2834431 5668865 2

theorem length000424 : hints000424.length = 16384 := by decide +kernel
theorem checked000424 : checkPrimeHints 5668865 2 hints000424 = true := by decide +kernel
theorem counted000424 : hints000424.count 0 <= 2129 := by decide +kernel

noncomputable def block000424 : CheckedPrimeCountBlock 5668865 2 16384 2129 :=
  ⟨hints000424, length000424, checked000424, counted000424⟩

noncomputable def localPrefix000424 : CheckedPrimeCountBlock 5406721 2 147456 18932 :=
  localPrefix000423.append block000424

noncomputable def hints000425 : List Nat :=
  primeHintChunk% "../../certificates/prime-count33554432-v1/counts-000425.json" 33554432 2850815 5701633 2

theorem length000425 : hints000425.length = 16384 := by decide +kernel
theorem checked000425 : checkPrimeHints 5701633 2 hints000425 = true := by decide +kernel
theorem counted000425 : hints000425.count 0 <= 2107 := by decide +kernel

noncomputable def block000425 : CheckedPrimeCountBlock 5701633 2 16384 2107 :=
  ⟨hints000425, length000425, checked000425, counted000425⟩

noncomputable def localPrefix000425 : CheckedPrimeCountBlock 5406721 2 163840 21039 :=
  localPrefix000424.append block000425

noncomputable def hints000426 : List Nat :=
  primeHintChunk% "../../certificates/prime-count33554432-v1/counts-000426.json" 33554432 2867199 5734401 2

theorem length000426 : hints000426.length = 16384 := by decide +kernel
theorem checked000426 : checkPrimeHints 5734401 2 hints000426 = true := by decide +kernel
theorem counted000426 : hints000426.count 0 <= 2089 := by decide +kernel

noncomputable def block000426 : CheckedPrimeCountBlock 5734401 2 16384 2089 :=
  ⟨hints000426, length000426, checked000426, counted000426⟩

noncomputable def localPrefix000426 : CheckedPrimeCountBlock 5406721 2 180224 23128 :=
  localPrefix000425.append block000426

noncomputable def hints000427 : List Nat :=
  primeHintChunk% "../../certificates/prime-count33554432-v1/counts-000427.json" 33554432 2883583 5767169 2

theorem length000427 : hints000427.length = 16384 := by decide +kernel
theorem checked000427 : checkPrimeHints 5767169 2 hints000427 = true := by decide +kernel
theorem counted000427 : hints000427.count 0 <= 2082 := by decide +kernel

noncomputable def block000427 : CheckedPrimeCountBlock 5767169 2 16384 2082 :=
  ⟨hints000427, length000427, checked000427, counted000427⟩

noncomputable def localPrefix000427 : CheckedPrimeCountBlock 5406721 2 196608 25210 :=
  localPrefix000426.append block000427

noncomputable def hints000428 : List Nat :=
  primeHintChunk% "../../certificates/prime-count33554432-v1/counts-000428.json" 33554432 2899967 5799937 2

theorem length000428 : hints000428.length = 16384 := by decide +kernel
theorem checked000428 : checkPrimeHints 5799937 2 hints000428 = true := by decide +kernel
theorem counted000428 : hints000428.count 0 <= 2106 := by decide +kernel

noncomputable def block000428 : CheckedPrimeCountBlock 5799937 2 16384 2106 :=
  ⟨hints000428, length000428, checked000428, counted000428⟩

noncomputable def localPrefix000428 : CheckedPrimeCountBlock 5406721 2 212992 27316 :=
  localPrefix000427.append block000428

noncomputable def hints000429 : List Nat :=
  primeHintChunk% "../../certificates/prime-count33554432-v1/counts-000429.json" 33554432 2916351 5832705 2

theorem length000429 : hints000429.length = 16384 := by decide +kernel
theorem checked000429 : checkPrimeHints 5832705 2 hints000429 = true := by decide +kernel
theorem counted000429 : hints000429.count 0 <= 2084 := by decide +kernel

noncomputable def block000429 : CheckedPrimeCountBlock 5832705 2 16384 2084 :=
  ⟨hints000429, length000429, checked000429, counted000429⟩

noncomputable def localPrefix000429 : CheckedPrimeCountBlock 5406721 2 229376 29400 :=
  localPrefix000428.append block000429

noncomputable def hints000430 : List Nat :=
  primeHintChunk% "../../certificates/prime-count33554432-v1/counts-000430.json" 33554432 2932735 5865473 2

theorem length000430 : hints000430.length = 16384 := by decide +kernel
theorem checked000430 : checkPrimeHints 5865473 2 hints000430 = true := by decide +kernel
theorem counted000430 : hints000430.count 0 <= 2137 := by decide +kernel

noncomputable def block000430 : CheckedPrimeCountBlock 5865473 2 16384 2137 :=
  ⟨hints000430, length000430, checked000430, counted000430⟩

noncomputable def localPrefix000430 : CheckedPrimeCountBlock 5406721 2 245760 31537 :=
  localPrefix000429.append block000430

noncomputable def hints000431 : List Nat :=
  primeHintChunk% "../../certificates/prime-count33554432-v1/counts-000431.json" 33554432 2949119 5898241 2

theorem length000431 : hints000431.length = 16384 := by decide +kernel
theorem checked000431 : checkPrimeHints 5898241 2 hints000431 = true := by decide +kernel
theorem counted000431 : hints000431.count 0 <= 2144 := by decide +kernel

noncomputable def block000431 : CheckedPrimeCountBlock 5898241 2 16384 2144 :=
  ⟨hints000431, length000431, checked000431, counted000431⟩

noncomputable def localPrefix000431 : CheckedPrimeCountBlock 5406721 2 262144 33681 :=
  localPrefix000430.append block000431

end JSP848.FullPrimeCount
