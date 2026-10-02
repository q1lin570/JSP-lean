import JSP848.PrimeCountInput

set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0

namespace JSP848.FullPrimeCount

open PrimeCountInput

noncomputable def hints000480 : List Nat :=
  primeHintChunk% "../../certificates/prime-count33554432-v1/counts-000480.json" 33554432 3751935 7503873 2

theorem length000480 : hints000480.length = 16384 := by decide +kernel
theorem checked000480 : checkPrimeHints 7503873 2 hints000480 = true := by decide +kernel
theorem counted000480 : hints000480.count 0 <= 2057 := by decide +kernel

noncomputable def block000480 : CheckedPrimeCountBlock 7503873 2 16384 2057 :=
  ⟨hints000480, length000480, checked000480, counted000480⟩

noncomputable def localPrefix000480 : CheckedPrimeCountBlock 7503873 2 16384 2057 :=
  block000480

noncomputable def hints000481 : List Nat :=
  primeHintChunk% "../../certificates/prime-count33554432-v1/counts-000481.json" 33554432 3768319 7536641 2

theorem length000481 : hints000481.length = 16384 := by decide +kernel
theorem checked000481 : checkPrimeHints 7536641 2 hints000481 = true := by decide +kernel
theorem counted000481 : hints000481.count 0 <= 2078 := by decide +kernel

noncomputable def block000481 : CheckedPrimeCountBlock 7536641 2 16384 2078 :=
  ⟨hints000481, length000481, checked000481, counted000481⟩

noncomputable def localPrefix000481 : CheckedPrimeCountBlock 7503873 2 32768 4135 :=
  localPrefix000480.append block000481

noncomputable def hints000482 : List Nat :=
  primeHintChunk% "../../certificates/prime-count33554432-v1/counts-000482.json" 33554432 3784703 7569409 2

theorem length000482 : hints000482.length = 16384 := by decide +kernel
theorem checked000482 : checkPrimeHints 7569409 2 hints000482 = true := by decide +kernel
theorem counted000482 : hints000482.count 0 <= 2074 := by decide +kernel

noncomputable def block000482 : CheckedPrimeCountBlock 7569409 2 16384 2074 :=
  ⟨hints000482, length000482, checked000482, counted000482⟩

noncomputable def localPrefix000482 : CheckedPrimeCountBlock 7503873 2 49152 6209 :=
  localPrefix000481.append block000482

noncomputable def hints000483 : List Nat :=
  primeHintChunk% "../../certificates/prime-count33554432-v1/counts-000483.json" 33554432 3801087 7602177 2

theorem length000483 : hints000483.length = 16384 := by decide +kernel
theorem checked000483 : checkPrimeHints 7602177 2 hints000483 = true := by decide +kernel
theorem counted000483 : hints000483.count 0 <= 2082 := by decide +kernel

noncomputable def block000483 : CheckedPrimeCountBlock 7602177 2 16384 2082 :=
  ⟨hints000483, length000483, checked000483, counted000483⟩

noncomputable def localPrefix000483 : CheckedPrimeCountBlock 7503873 2 65536 8291 :=
  localPrefix000482.append block000483

noncomputable def hints000484 : List Nat :=
  primeHintChunk% "../../certificates/prime-count33554432-v1/counts-000484.json" 33554432 3817471 7634945 2

theorem length000484 : hints000484.length = 16384 := by decide +kernel
theorem checked000484 : checkPrimeHints 7634945 2 hints000484 = true := by decide +kernel
theorem counted000484 : hints000484.count 0 <= 2067 := by decide +kernel

noncomputable def block000484 : CheckedPrimeCountBlock 7634945 2 16384 2067 :=
  ⟨hints000484, length000484, checked000484, counted000484⟩

noncomputable def localPrefix000484 : CheckedPrimeCountBlock 7503873 2 81920 10358 :=
  localPrefix000483.append block000484

noncomputable def hints000485 : List Nat :=
  primeHintChunk% "../../certificates/prime-count33554432-v1/counts-000485.json" 33554432 3833855 7667713 2

theorem length000485 : hints000485.length = 16384 := by decide +kernel
theorem checked000485 : checkPrimeHints 7667713 2 hints000485 = true := by decide +kernel
theorem counted000485 : hints000485.count 0 <= 2085 := by decide +kernel

noncomputable def block000485 : CheckedPrimeCountBlock 7667713 2 16384 2085 :=
  ⟨hints000485, length000485, checked000485, counted000485⟩

noncomputable def localPrefix000485 : CheckedPrimeCountBlock 7503873 2 98304 12443 :=
  localPrefix000484.append block000485

noncomputable def hints000486 : List Nat :=
  primeHintChunk% "../../certificates/prime-count33554432-v1/counts-000486.json" 33554432 3850239 7700481 2

theorem length000486 : hints000486.length = 16384 := by decide +kernel
theorem checked000486 : checkPrimeHints 7700481 2 hints000486 = true := by decide +kernel
theorem counted000486 : hints000486.count 0 <= 2049 := by decide +kernel

noncomputable def block000486 : CheckedPrimeCountBlock 7700481 2 16384 2049 :=
  ⟨hints000486, length000486, checked000486, counted000486⟩

noncomputable def localPrefix000486 : CheckedPrimeCountBlock 7503873 2 114688 14492 :=
  localPrefix000485.append block000486

noncomputable def hints000487 : List Nat :=
  primeHintChunk% "../../certificates/prime-count33554432-v1/counts-000487.json" 33554432 3866623 7733249 2

theorem length000487 : hints000487.length = 16384 := by decide +kernel
theorem checked000487 : checkPrimeHints 7733249 2 hints000487 = true := by decide +kernel
theorem counted000487 : hints000487.count 0 <= 2046 := by decide +kernel

noncomputable def block000487 : CheckedPrimeCountBlock 7733249 2 16384 2046 :=
  ⟨hints000487, length000487, checked000487, counted000487⟩

noncomputable def localPrefix000487 : CheckedPrimeCountBlock 7503873 2 131072 16538 :=
  localPrefix000486.append block000487

noncomputable def hints000488 : List Nat :=
  primeHintChunk% "../../certificates/prime-count33554432-v1/counts-000488.json" 33554432 3883007 7766017 2

theorem length000488 : hints000488.length = 16384 := by decide +kernel
theorem checked000488 : checkPrimeHints 7766017 2 hints000488 = true := by decide +kernel
theorem counted000488 : hints000488.count 0 <= 2038 := by decide +kernel

noncomputable def block000488 : CheckedPrimeCountBlock 7766017 2 16384 2038 :=
  ⟨hints000488, length000488, checked000488, counted000488⟩

noncomputable def localPrefix000488 : CheckedPrimeCountBlock 7503873 2 147456 18576 :=
  localPrefix000487.append block000488

noncomputable def hints000489 : List Nat :=
  primeHintChunk% "../../certificates/prime-count33554432-v1/counts-000489.json" 33554432 3899391 7798785 2

theorem length000489 : hints000489.length = 16384 := by decide +kernel
theorem checked000489 : checkPrimeHints 7798785 2 hints000489 = true := by decide +kernel
theorem counted000489 : hints000489.count 0 <= 2076 := by decide +kernel

noncomputable def block000489 : CheckedPrimeCountBlock 7798785 2 16384 2076 :=
  ⟨hints000489, length000489, checked000489, counted000489⟩

noncomputable def localPrefix000489 : CheckedPrimeCountBlock 7503873 2 163840 20652 :=
  localPrefix000488.append block000489

noncomputable def hints000490 : List Nat :=
  primeHintChunk% "../../certificates/prime-count33554432-v1/counts-000490.json" 33554432 3915775 7831553 2

theorem length000490 : hints000490.length = 16384 := by decide +kernel
theorem checked000490 : checkPrimeHints 7831553 2 hints000490 = true := by decide +kernel
theorem counted000490 : hints000490.count 0 <= 2104 := by decide +kernel

noncomputable def block000490 : CheckedPrimeCountBlock 7831553 2 16384 2104 :=
  ⟨hints000490, length000490, checked000490, counted000490⟩

noncomputable def localPrefix000490 : CheckedPrimeCountBlock 7503873 2 180224 22756 :=
  localPrefix000489.append block000490

noncomputable def hints000491 : List Nat :=
  primeHintChunk% "../../certificates/prime-count33554432-v1/counts-000491.json" 33554432 3932159 7864321 2

theorem length000491 : hints000491.length = 16384 := by decide +kernel
theorem checked000491 : checkPrimeHints 7864321 2 hints000491 = true := by decide +kernel
theorem counted000491 : hints000491.count 0 <= 2076 := by decide +kernel

noncomputable def block000491 : CheckedPrimeCountBlock 7864321 2 16384 2076 :=
  ⟨hints000491, length000491, checked000491, counted000491⟩

noncomputable def localPrefix000491 : CheckedPrimeCountBlock 7503873 2 196608 24832 :=
  localPrefix000490.append block000491

noncomputable def hints000492 : List Nat :=
  primeHintChunk% "../../certificates/prime-count33554432-v1/counts-000492.json" 33554432 3948543 7897089 2

theorem length000492 : hints000492.length = 16384 := by decide +kernel
theorem checked000492 : checkPrimeHints 7897089 2 hints000492 = true := by decide +kernel
theorem counted000492 : hints000492.count 0 <= 2047 := by decide +kernel

noncomputable def block000492 : CheckedPrimeCountBlock 7897089 2 16384 2047 :=
  ⟨hints000492, length000492, checked000492, counted000492⟩

noncomputable def localPrefix000492 : CheckedPrimeCountBlock 7503873 2 212992 26879 :=
  localPrefix000491.append block000492

noncomputable def hints000493 : List Nat :=
  primeHintChunk% "../../certificates/prime-count33554432-v1/counts-000493.json" 33554432 3964927 7929857 2

theorem length000493 : hints000493.length = 16384 := by decide +kernel
theorem checked000493 : checkPrimeHints 7929857 2 hints000493 = true := by decide +kernel
theorem counted000493 : hints000493.count 0 <= 2056 := by decide +kernel

noncomputable def block000493 : CheckedPrimeCountBlock 7929857 2 16384 2056 :=
  ⟨hints000493, length000493, checked000493, counted000493⟩

noncomputable def localPrefix000493 : CheckedPrimeCountBlock 7503873 2 229376 28935 :=
  localPrefix000492.append block000493

noncomputable def hints000494 : List Nat :=
  primeHintChunk% "../../certificates/prime-count33554432-v1/counts-000494.json" 33554432 3981311 7962625 2

theorem length000494 : hints000494.length = 16384 := by decide +kernel
theorem checked000494 : checkPrimeHints 7962625 2 hints000494 = true := by decide +kernel
theorem counted000494 : hints000494.count 0 <= 2062 := by decide +kernel

noncomputable def block000494 : CheckedPrimeCountBlock 7962625 2 16384 2062 :=
  ⟨hints000494, length000494, checked000494, counted000494⟩

noncomputable def localPrefix000494 : CheckedPrimeCountBlock 7503873 2 245760 30997 :=
  localPrefix000493.append block000494

noncomputable def hints000495 : List Nat :=
  primeHintChunk% "../../certificates/prime-count33554432-v1/counts-000495.json" 33554432 3997695 7995393 2

theorem length000495 : hints000495.length = 16384 := by decide +kernel
theorem checked000495 : checkPrimeHints 7995393 2 hints000495 = true := by decide +kernel
theorem counted000495 : hints000495.count 0 <= 2049 := by decide +kernel

noncomputable def block000495 : CheckedPrimeCountBlock 7995393 2 16384 2049 :=
  ⟨hints000495, length000495, checked000495, counted000495⟩

noncomputable def localPrefix000495 : CheckedPrimeCountBlock 7503873 2 262144 33046 :=
  localPrefix000494.append block000495

end JSP848.FullPrimeCount
