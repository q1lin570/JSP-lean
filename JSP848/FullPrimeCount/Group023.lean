import JSP848.PrimeCountInput

set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0

namespace JSP848.FullPrimeCount

open PrimeCountInput

noncomputable def hints000368 : List Nat :=
  primeHintChunk% "../../certificates/prime-count33554432-v1/counts-000368.json" 33554432 1916927 3833857 2

theorem length000368 : hints000368.length = 16384 := by decide +kernel
theorem checked000368 : checkPrimeHints 3833857 2 hints000368 = true := by decide +kernel
theorem counted000368 : hints000368.count 0 <= 2150 := by decide +kernel

noncomputable def block000368 : CheckedPrimeCountBlock 3833857 2 16384 2150 :=
  ⟨hints000368, length000368, checked000368, counted000368⟩

noncomputable def localPrefix000368 : CheckedPrimeCountBlock 3833857 2 16384 2150 :=
  block000368

noncomputable def hints000369 : List Nat :=
  primeHintChunk% "../../certificates/prime-count33554432-v1/counts-000369.json" 33554432 1933311 3866625 2

theorem length000369 : hints000369.length = 16384 := by decide +kernel
theorem checked000369 : checkPrimeHints 3866625 2 hints000369 = true := by decide +kernel
theorem counted000369 : hints000369.count 0 <= 2176 := by decide +kernel

noncomputable def block000369 : CheckedPrimeCountBlock 3866625 2 16384 2176 :=
  ⟨hints000369, length000369, checked000369, counted000369⟩

noncomputable def localPrefix000369 : CheckedPrimeCountBlock 3833857 2 32768 4326 :=
  localPrefix000368.append block000369

noncomputable def hints000370 : List Nat :=
  primeHintChunk% "../../certificates/prime-count33554432-v1/counts-000370.json" 33554432 1949695 3899393 2

theorem length000370 : hints000370.length = 16384 := by decide +kernel
theorem checked000370 : checkPrimeHints 3899393 2 hints000370 = true := by decide +kernel
theorem counted000370 : hints000370.count 0 <= 2167 := by decide +kernel

noncomputable def block000370 : CheckedPrimeCountBlock 3899393 2 16384 2167 :=
  ⟨hints000370, length000370, checked000370, counted000370⟩

noncomputable def localPrefix000370 : CheckedPrimeCountBlock 3833857 2 49152 6493 :=
  localPrefix000369.append block000370

noncomputable def hints000371 : List Nat :=
  primeHintChunk% "../../certificates/prime-count33554432-v1/counts-000371.json" 33554432 1966079 3932161 2

theorem length000371 : hints000371.length = 16384 := by decide +kernel
theorem checked000371 : checkPrimeHints 3932161 2 hints000371 = true := by decide +kernel
theorem counted000371 : hints000371.count 0 <= 2145 := by decide +kernel

noncomputable def block000371 : CheckedPrimeCountBlock 3932161 2 16384 2145 :=
  ⟨hints000371, length000371, checked000371, counted000371⟩

noncomputable def localPrefix000371 : CheckedPrimeCountBlock 3833857 2 65536 8638 :=
  localPrefix000370.append block000371

noncomputable def hints000372 : List Nat :=
  primeHintChunk% "../../certificates/prime-count33554432-v1/counts-000372.json" 33554432 1982463 3964929 2

theorem length000372 : hints000372.length = 16384 := by decide +kernel
theorem checked000372 : checkPrimeHints 3964929 2 hints000372 = true := by decide +kernel
theorem counted000372 : hints000372.count 0 <= 2110 := by decide +kernel

noncomputable def block000372 : CheckedPrimeCountBlock 3964929 2 16384 2110 :=
  ⟨hints000372, length000372, checked000372, counted000372⟩

noncomputable def localPrefix000372 : CheckedPrimeCountBlock 3833857 2 81920 10748 :=
  localPrefix000371.append block000372

noncomputable def hints000373 : List Nat :=
  primeHintChunk% "../../certificates/prime-count33554432-v1/counts-000373.json" 33554432 1998847 3997697 2

theorem length000373 : hints000373.length = 16384 := by decide +kernel
theorem checked000373 : checkPrimeHints 3997697 2 hints000373 = true := by decide +kernel
theorem counted000373 : hints000373.count 0 <= 2170 := by decide +kernel

noncomputable def block000373 : CheckedPrimeCountBlock 3997697 2 16384 2170 :=
  ⟨hints000373, length000373, checked000373, counted000373⟩

noncomputable def localPrefix000373 : CheckedPrimeCountBlock 3833857 2 98304 12918 :=
  localPrefix000372.append block000373

noncomputable def hints000374 : List Nat :=
  primeHintChunk% "../../certificates/prime-count33554432-v1/counts-000374.json" 33554432 2015231 4030465 2

theorem length000374 : hints000374.length = 16384 := by decide +kernel
theorem checked000374 : checkPrimeHints 4030465 2 hints000374 = true := by decide +kernel
theorem counted000374 : hints000374.count 0 <= 2184 := by decide +kernel

noncomputable def block000374 : CheckedPrimeCountBlock 4030465 2 16384 2184 :=
  ⟨hints000374, length000374, checked000374, counted000374⟩

noncomputable def localPrefix000374 : CheckedPrimeCountBlock 3833857 2 114688 15102 :=
  localPrefix000373.append block000374

noncomputable def hints000375 : List Nat :=
  primeHintChunk% "../../certificates/prime-count33554432-v1/counts-000375.json" 33554432 2031615 4063233 2

theorem length000375 : hints000375.length = 16384 := by decide +kernel
theorem checked000375 : checkPrimeHints 4063233 2 hints000375 = true := by decide +kernel
theorem counted000375 : hints000375.count 0 <= 2165 := by decide +kernel

noncomputable def block000375 : CheckedPrimeCountBlock 4063233 2 16384 2165 :=
  ⟨hints000375, length000375, checked000375, counted000375⟩

noncomputable def localPrefix000375 : CheckedPrimeCountBlock 3833857 2 131072 17267 :=
  localPrefix000374.append block000375

noncomputable def hints000376 : List Nat :=
  primeHintChunk% "../../certificates/prime-count33554432-v1/counts-000376.json" 33554432 2047999 4096001 2

theorem length000376 : hints000376.length = 16384 := by decide +kernel
theorem checked000376 : checkPrimeHints 4096001 2 hints000376 = true := by decide +kernel
theorem counted000376 : hints000376.count 0 <= 2129 := by decide +kernel

noncomputable def block000376 : CheckedPrimeCountBlock 4096001 2 16384 2129 :=
  ⟨hints000376, length000376, checked000376, counted000376⟩

noncomputable def localPrefix000376 : CheckedPrimeCountBlock 3833857 2 147456 19396 :=
  localPrefix000375.append block000376

noncomputable def hints000377 : List Nat :=
  primeHintChunk% "../../certificates/prime-count33554432-v1/counts-000377.json" 33554432 2064383 4128769 2

theorem length000377 : hints000377.length = 16384 := by decide +kernel
theorem checked000377 : checkPrimeHints 4128769 2 hints000377 = true := by decide +kernel
theorem counted000377 : hints000377.count 0 <= 2137 := by decide +kernel

noncomputable def block000377 : CheckedPrimeCountBlock 4128769 2 16384 2137 :=
  ⟨hints000377, length000377, checked000377, counted000377⟩

noncomputable def localPrefix000377 : CheckedPrimeCountBlock 3833857 2 163840 21533 :=
  localPrefix000376.append block000377

noncomputable def hints000378 : List Nat :=
  primeHintChunk% "../../certificates/prime-count33554432-v1/counts-000378.json" 33554432 2080767 4161537 2

theorem length000378 : hints000378.length = 16384 := by decide +kernel
theorem checked000378 : checkPrimeHints 4161537 2 hints000378 = true := by decide +kernel
theorem counted000378 : hints000378.count 0 <= 2170 := by decide +kernel

noncomputable def block000378 : CheckedPrimeCountBlock 4161537 2 16384 2170 :=
  ⟨hints000378, length000378, checked000378, counted000378⟩

noncomputable def localPrefix000378 : CheckedPrimeCountBlock 3833857 2 180224 23703 :=
  localPrefix000377.append block000378

noncomputable def hints000379 : List Nat :=
  primeHintChunk% "../../certificates/prime-count33554432-v1/counts-000379.json" 33554432 2097151 4194305 2

theorem length000379 : hints000379.length = 16384 := by decide +kernel
theorem checked000379 : checkPrimeHints 4194305 2 hints000379 = true := by decide +kernel
theorem counted000379 : hints000379.count 0 <= 2154 := by decide +kernel

noncomputable def block000379 : CheckedPrimeCountBlock 4194305 2 16384 2154 :=
  ⟨hints000379, length000379, checked000379, counted000379⟩

noncomputable def localPrefix000379 : CheckedPrimeCountBlock 3833857 2 196608 25857 :=
  localPrefix000378.append block000379

noncomputable def hints000380 : List Nat :=
  primeHintChunk% "../../certificates/prime-count33554432-v1/counts-000380.json" 33554432 2113535 4227073 2

theorem length000380 : hints000380.length = 16384 := by decide +kernel
theorem checked000380 : checkPrimeHints 4227073 2 hints000380 = true := by decide +kernel
theorem counted000380 : hints000380.count 0 <= 2135 := by decide +kernel

noncomputable def block000380 : CheckedPrimeCountBlock 4227073 2 16384 2135 :=
  ⟨hints000380, length000380, checked000380, counted000380⟩

noncomputable def localPrefix000380 : CheckedPrimeCountBlock 3833857 2 212992 27992 :=
  localPrefix000379.append block000380

noncomputable def hints000381 : List Nat :=
  primeHintChunk% "../../certificates/prime-count33554432-v1/counts-000381.json" 33554432 2129919 4259841 2

theorem length000381 : hints000381.length = 16384 := by decide +kernel
theorem checked000381 : checkPrimeHints 4259841 2 hints000381 = true := by decide +kernel
theorem counted000381 : hints000381.count 0 <= 2115 := by decide +kernel

noncomputable def block000381 : CheckedPrimeCountBlock 4259841 2 16384 2115 :=
  ⟨hints000381, length000381, checked000381, counted000381⟩

noncomputable def localPrefix000381 : CheckedPrimeCountBlock 3833857 2 229376 30107 :=
  localPrefix000380.append block000381

noncomputable def hints000382 : List Nat :=
  primeHintChunk% "../../certificates/prime-count33554432-v1/counts-000382.json" 33554432 2146303 4292609 2

theorem length000382 : hints000382.length = 16384 := by decide +kernel
theorem checked000382 : checkPrimeHints 4292609 2 hints000382 = true := by decide +kernel
theorem counted000382 : hints000382.count 0 <= 2122 := by decide +kernel

noncomputable def block000382 : CheckedPrimeCountBlock 4292609 2 16384 2122 :=
  ⟨hints000382, length000382, checked000382, counted000382⟩

noncomputable def localPrefix000382 : CheckedPrimeCountBlock 3833857 2 245760 32229 :=
  localPrefix000381.append block000382

noncomputable def hints000383 : List Nat :=
  primeHintChunk% "../../certificates/prime-count33554432-v1/counts-000383.json" 33554432 2162687 4325377 2

theorem length000383 : hints000383.length = 16384 := by decide +kernel
theorem checked000383 : checkPrimeHints 4325377 2 hints000383 = true := by decide +kernel
theorem counted000383 : hints000383.count 0 <= 2134 := by decide +kernel

noncomputable def block000383 : CheckedPrimeCountBlock 4325377 2 16384 2134 :=
  ⟨hints000383, length000383, checked000383, counted000383⟩

noncomputable def localPrefix000383 : CheckedPrimeCountBlock 3833857 2 262144 34363 :=
  localPrefix000382.append block000383

end JSP848.FullPrimeCount
