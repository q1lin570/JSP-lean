import JSP848.PrimeCountInput

set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0

namespace JSP848.FullPrimeCount

open PrimeCountInput

noncomputable def hints000048 : List Nat :=
  primeHintChunk% "../../certificates/prime-count33554432-v1/counts-000048.json" 33554432 16944 33891 2

theorem length000048 : hints000048.length = 264 := by decide +kernel
theorem checked000048 : checkPrimeHints 33891 2 hints000048 = true := by decide +kernel
theorem counted000048 : hints000048.count 0 <= 47 := by decide +kernel

noncomputable def block000048 : CheckedPrimeCountBlock 33891 2 264 47 :=
  ⟨hints000048, length000048, checked000048, counted000048⟩

noncomputable def localPrefix000048 : CheckedPrimeCountBlock 33891 2 264 47 :=
  block000048

noncomputable def hints000049 : List Nat :=
  primeHintChunk% "../../certificates/prime-count33554432-v1/counts-000049.json" 33554432 17208 34419 2

theorem length000049 : hints000049.length = 268 := by decide +kernel
theorem checked000049 : checkPrimeHints 34419 2 hints000049 = true := by decide +kernel
theorem counted000049 : hints000049.count 0 <= 53 := by decide +kernel

noncomputable def block000049 : CheckedPrimeCountBlock 34419 2 268 53 :=
  ⟨hints000049, length000049, checked000049, counted000049⟩

noncomputable def localPrefix000049 : CheckedPrimeCountBlock 33891 2 532 100 :=
  localPrefix000048.append block000049

noncomputable def hints000050 : List Nat :=
  primeHintChunk% "../../certificates/prime-count33554432-v1/counts-000050.json" 33554432 17476 34955 2

theorem length000050 : hints000050.length = 273 := by decide +kernel
theorem checked000050 : checkPrimeHints 34955 2 hints000050 = true := by decide +kernel
theorem counted000050 : hints000050.count 0 <= 49 := by decide +kernel

noncomputable def block000050 : CheckedPrimeCountBlock 34955 2 273 49 :=
  ⟨hints000050, length000050, checked000050, counted000050⟩

noncomputable def localPrefix000050 : CheckedPrimeCountBlock 33891 2 805 149 :=
  localPrefix000049.append block000050

noncomputable def hints000051 : List Nat :=
  primeHintChunk% "../../certificates/prime-count33554432-v1/counts-000051.json" 33554432 17749 35501 2

theorem length000051 : hints000051.length = 277 := by decide +kernel
theorem checked000051 : checkPrimeHints 35501 2 hints000051 = true := by decide +kernel
theorem counted000051 : hints000051.count 0 <= 51 := by decide +kernel

noncomputable def block000051 : CheckedPrimeCountBlock 35501 2 277 51 :=
  ⟨hints000051, length000051, checked000051, counted000051⟩

noncomputable def localPrefix000051 : CheckedPrimeCountBlock 33891 2 1082 200 :=
  localPrefix000050.append block000051

noncomputable def hints000052 : List Nat :=
  primeHintChunk% "../../certificates/prime-count33554432-v1/counts-000052.json" 33554432 18026 36055 2

theorem length000052 : hints000052.length = 281 := by decide +kernel
theorem checked000052 : checkPrimeHints 36055 2 hints000052 = true := by decide +kernel
theorem counted000052 : hints000052.count 0 <= 53 := by decide +kernel

noncomputable def block000052 : CheckedPrimeCountBlock 36055 2 281 53 :=
  ⟨hints000052, length000052, checked000052, counted000052⟩

noncomputable def localPrefix000052 : CheckedPrimeCountBlock 33891 2 1363 253 :=
  localPrefix000051.append block000052

noncomputable def hints000053 : List Nat :=
  primeHintChunk% "../../certificates/prime-count33554432-v1/counts-000053.json" 33554432 18307 36617 2

theorem length000053 : hints000053.length = 286 := by decide +kernel
theorem checked000053 : checkPrimeHints 36617 2 hints000053 = true := by decide +kernel
theorem counted000053 : hints000053.count 0 <= 57 := by decide +kernel

noncomputable def block000053 : CheckedPrimeCountBlock 36617 2 286 57 :=
  ⟨hints000053, length000053, checked000053, counted000053⟩

noncomputable def localPrefix000053 : CheckedPrimeCountBlock 33891 2 1649 310 :=
  localPrefix000052.append block000053

noncomputable def hints000054 : List Nat :=
  primeHintChunk% "../../certificates/prime-count33554432-v1/counts-000054.json" 33554432 18593 37189 2

theorem length000054 : hints000054.length = 290 := by decide +kernel
theorem checked000054 : checkPrimeHints 37189 2 hints000054 = true := by decide +kernel
theorem counted000054 : hints000054.count 0 <= 56 := by decide +kernel

noncomputable def block000054 : CheckedPrimeCountBlock 37189 2 290 56 :=
  ⟨hints000054, length000054, checked000054, counted000054⟩

noncomputable def localPrefix000054 : CheckedPrimeCountBlock 33891 2 1939 366 :=
  localPrefix000053.append block000054

noncomputable def hints000055 : List Nat :=
  primeHintChunk% "../../certificates/prime-count33554432-v1/counts-000055.json" 33554432 18883 37769 2

theorem length000055 : hints000055.length = 295 := by decide +kernel
theorem checked000055 : checkPrimeHints 37769 2 hints000055 = true := by decide +kernel
theorem counted000055 : hints000055.count 0 <= 54 := by decide +kernel

noncomputable def block000055 : CheckedPrimeCountBlock 37769 2 295 54 :=
  ⟨hints000055, length000055, checked000055, counted000055⟩

noncomputable def localPrefix000055 : CheckedPrimeCountBlock 33891 2 2234 420 :=
  localPrefix000054.append block000055

noncomputable def hints000056 : List Nat :=
  primeHintChunk% "../../certificates/prime-count33554432-v1/counts-000056.json" 33554432 19178 38359 2

theorem length000056 : hints000056.length = 299 := by decide +kernel
theorem checked000056 : checkPrimeHints 38359 2 hints000056 = true := by decide +kernel
theorem counted000056 : hints000056.count 0 <= 54 := by decide +kernel

noncomputable def block000056 : CheckedPrimeCountBlock 38359 2 299 54 :=
  ⟨hints000056, length000056, checked000056, counted000056⟩

noncomputable def localPrefix000056 : CheckedPrimeCountBlock 33891 2 2533 474 :=
  localPrefix000055.append block000056

noncomputable def hints000057 : List Nat :=
  primeHintChunk% "../../certificates/prime-count33554432-v1/counts-000057.json" 33554432 19477 38957 2

theorem length000057 : hints000057.length = 304 := by decide +kernel
theorem checked000057 : checkPrimeHints 38957 2 hints000057 = true := by decide +kernel
theorem counted000057 : hints000057.count 0 <= 59 := by decide +kernel

noncomputable def block000057 : CheckedPrimeCountBlock 38957 2 304 59 :=
  ⟨hints000057, length000057, checked000057, counted000057⟩

noncomputable def localPrefix000057 : CheckedPrimeCountBlock 33891 2 2837 533 :=
  localPrefix000056.append block000057

noncomputable def hints000058 : List Nat :=
  primeHintChunk% "../../certificates/prime-count33554432-v1/counts-000058.json" 33554432 19781 39565 2

theorem length000058 : hints000058.length = 309 := by decide +kernel
theorem checked000058 : checkPrimeHints 39565 2 hints000058 = true := by decide +kernel
theorem counted000058 : hints000058.count 0 <= 59 := by decide +kernel

noncomputable def block000058 : CheckedPrimeCountBlock 39565 2 309 59 :=
  ⟨hints000058, length000058, checked000058, counted000058⟩

noncomputable def localPrefix000058 : CheckedPrimeCountBlock 33891 2 3146 592 :=
  localPrefix000057.append block000058

noncomputable def hints000059 : List Nat :=
  primeHintChunk% "../../certificates/prime-count33554432-v1/counts-000059.json" 33554432 20090 40183 2

theorem length000059 : hints000059.length = 313 := by decide +kernel
theorem checked000059 : checkPrimeHints 40183 2 hints000059 = true := by decide +kernel
theorem counted000059 : hints000059.count 0 <= 50 := by decide +kernel

noncomputable def block000059 : CheckedPrimeCountBlock 40183 2 313 50 :=
  ⟨hints000059, length000059, checked000059, counted000059⟩

noncomputable def localPrefix000059 : CheckedPrimeCountBlock 33891 2 3459 642 :=
  localPrefix000058.append block000059

noncomputable def hints000060 : List Nat :=
  primeHintChunk% "../../certificates/prime-count33554432-v1/counts-000060.json" 33554432 20403 40809 2

theorem length000060 : hints000060.length = 318 := by decide +kernel
theorem checked000060 : checkPrimeHints 40809 2 hints000060 = true := by decide +kernel
theorem counted000060 : hints000060.count 0 <= 64 := by decide +kernel

noncomputable def block000060 : CheckedPrimeCountBlock 40809 2 318 64 :=
  ⟨hints000060, length000060, checked000060, counted000060⟩

noncomputable def localPrefix000060 : CheckedPrimeCountBlock 33891 2 3777 706 :=
  localPrefix000059.append block000060

noncomputable def hints000061 : List Nat :=
  primeHintChunk% "../../certificates/prime-count33554432-v1/counts-000061.json" 33554432 20721 41445 2

theorem length000061 : hints000061.length = 323 := by decide +kernel
theorem checked000061 : checkPrimeHints 41445 2 hints000061 = true := by decide +kernel
theorem counted000061 : hints000061.count 0 <= 67 := by decide +kernel

noncomputable def block000061 : CheckedPrimeCountBlock 41445 2 323 67 :=
  ⟨hints000061, length000061, checked000061, counted000061⟩

noncomputable def localPrefix000061 : CheckedPrimeCountBlock 33891 2 4100 773 :=
  localPrefix000060.append block000061

noncomputable def hints000062 : List Nat :=
  primeHintChunk% "../../certificates/prime-count33554432-v1/counts-000062.json" 33554432 21044 42091 2

theorem length000062 : hints000062.length = 328 := by decide +kernel
theorem checked000062 : checkPrimeHints 42091 2 hints000062 = true := by decide +kernel
theorem counted000062 : hints000062.count 0 <= 68 := by decide +kernel

noncomputable def block000062 : CheckedPrimeCountBlock 42091 2 328 68 :=
  ⟨hints000062, length000062, checked000062, counted000062⟩

noncomputable def localPrefix000062 : CheckedPrimeCountBlock 33891 2 4428 841 :=
  localPrefix000061.append block000062

noncomputable def hints000063 : List Nat :=
  primeHintChunk% "../../certificates/prime-count33554432-v1/counts-000063.json" 33554432 21372 42747 2

theorem length000063 : hints000063.length = 333 := by decide +kernel
theorem checked000063 : checkPrimeHints 42747 2 hints000063 = true := by decide +kernel
theorem counted000063 : hints000063.count 0 <= 57 := by decide +kernel

noncomputable def block000063 : CheckedPrimeCountBlock 42747 2 333 57 :=
  ⟨hints000063, length000063, checked000063, counted000063⟩

noncomputable def localPrefix000063 : CheckedPrimeCountBlock 33891 2 4761 898 :=
  localPrefix000062.append block000063

end JSP848.FullPrimeCount
