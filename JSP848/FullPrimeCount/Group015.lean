import JSP848.PrimeCountInput

set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0

namespace JSP848.FullPrimeCount

open PrimeCountInput

noncomputable def hints000240 : List Nat :=
  primeHintChunk% "../../certificates/prime-count33554432-v1/counts-000240.json" 33554432 330774 661551 2

theorem length000240 : hints000240.length = 5168 := by decide +kernel
theorem checked000240 : checkPrimeHints 661551 2 hints000240 = true := by decide +kernel
theorem counted000240 : hints000240.count 0 <= 758 := by decide +kernel

noncomputable def block000240 : CheckedPrimeCountBlock 661551 2 5168 758 :=
  ⟨hints000240, length000240, checked000240, counted000240⟩

noncomputable def localPrefix000240 : CheckedPrimeCountBlock 661551 2 5168 758 :=
  block000240

noncomputable def hints000241 : List Nat :=
  primeHintChunk% "../../certificates/prime-count33554432-v1/counts-000241.json" 33554432 335942 671887 2

theorem length000241 : hints000241.length = 5249 := by decide +kernel
theorem checked000241 : checkPrimeHints 671887 2 hints000241 = true := by decide +kernel
theorem counted000241 : hints000241.count 0 <= 799 := by decide +kernel

noncomputable def block000241 : CheckedPrimeCountBlock 671887 2 5249 799 :=
  ⟨hints000241, length000241, checked000241, counted000241⟩

noncomputable def localPrefix000241 : CheckedPrimeCountBlock 661551 2 10417 1557 :=
  localPrefix000240.append block000241

noncomputable def hints000242 : List Nat :=
  primeHintChunk% "../../certificates/prime-count33554432-v1/counts-000242.json" 33554432 341191 682385 2

theorem length000242 : hints000242.length = 5331 := by decide +kernel
theorem checked000242 : checkPrimeHints 682385 2 hints000242 = true := by decide +kernel
theorem counted000242 : hints000242.count 0 <= 789 := by decide +kernel

noncomputable def block000242 : CheckedPrimeCountBlock 682385 2 5331 789 :=
  ⟨hints000242, length000242, checked000242, counted000242⟩

noncomputable def localPrefix000242 : CheckedPrimeCountBlock 661551 2 15748 2346 :=
  localPrefix000241.append block000242

noncomputable def hints000243 : List Nat :=
  primeHintChunk% "../../certificates/prime-count33554432-v1/counts-000243.json" 33554432 346522 693047 2

theorem length000243 : hints000243.length = 5414 := by decide +kernel
theorem checked000243 : checkPrimeHints 693047 2 hints000243 = true := by decide +kernel
theorem counted000243 : hints000243.count 0 <= 798 := by decide +kernel

noncomputable def block000243 : CheckedPrimeCountBlock 693047 2 5414 798 :=
  ⟨hints000243, length000243, checked000243, counted000243⟩

noncomputable def localPrefix000243 : CheckedPrimeCountBlock 661551 2 21162 3144 :=
  localPrefix000242.append block000243

noncomputable def hints000244 : List Nat :=
  primeHintChunk% "../../certificates/prime-count33554432-v1/counts-000244.json" 33554432 351936 703875 2

theorem length000244 : hints000244.length = 5499 := by decide +kernel
theorem checked000244 : checkPrimeHints 703875 2 hints000244 = true := by decide +kernel
theorem counted000244 : hints000244.count 0 <= 828 := by decide +kernel

noncomputable def block000244 : CheckedPrimeCountBlock 703875 2 5499 828 :=
  ⟨hints000244, length000244, checked000244, counted000244⟩

noncomputable def localPrefix000244 : CheckedPrimeCountBlock 661551 2 26661 3972 :=
  localPrefix000243.append block000244

noncomputable def hints000245 : List Nat :=
  primeHintChunk% "../../certificates/prime-count33554432-v1/counts-000245.json" 33554432 357435 714873 2

theorem length000245 : hints000245.length = 5584 := by decide +kernel
theorem checked000245 : checkPrimeHints 714873 2 hints000245 = true := by decide +kernel
theorem counted000245 : hints000245.count 0 <= 830 := by decide +kernel

noncomputable def block000245 : CheckedPrimeCountBlock 714873 2 5584 830 :=
  ⟨hints000245, length000245, checked000245, counted000245⟩

noncomputable def localPrefix000245 : CheckedPrimeCountBlock 661551 2 32245 4802 :=
  localPrefix000244.append block000245

noncomputable def hints000246 : List Nat :=
  primeHintChunk% "../../certificates/prime-count33554432-v1/counts-000246.json" 33554432 363019 726041 2

theorem length000246 : hints000246.length = 5672 := by decide +kernel
theorem checked000246 : checkPrimeHints 726041 2 hints000246 = true := by decide +kernel
theorem counted000246 : hints000246.count 0 <= 842 := by decide +kernel

noncomputable def block000246 : CheckedPrimeCountBlock 726041 2 5672 842 :=
  ⟨hints000246, length000246, checked000246, counted000246⟩

noncomputable def localPrefix000246 : CheckedPrimeCountBlock 661551 2 37917 5644 :=
  localPrefix000245.append block000246

noncomputable def hints000247 : List Nat :=
  primeHintChunk% "../../certificates/prime-count33554432-v1/counts-000247.json" 33554432 368691 737385 2

theorem length000247 : hints000247.length = 5760 := by decide +kernel
theorem checked000247 : checkPrimeHints 737385 2 hints000247 = true := by decide +kernel
theorem counted000247 : hints000247.count 0 <= 828 := by decide +kernel

noncomputable def block000247 : CheckedPrimeCountBlock 737385 2 5760 828 :=
  ⟨hints000247, length000247, checked000247, counted000247⟩

noncomputable def localPrefix000247 : CheckedPrimeCountBlock 661551 2 43677 6472 :=
  localPrefix000246.append block000247

noncomputable def hints000248 : List Nat :=
  primeHintChunk% "../../certificates/prime-count33554432-v1/counts-000248.json" 33554432 374451 748905 2

theorem length000248 : hints000248.length = 5850 := by decide +kernel
theorem checked000248 : checkPrimeHints 748905 2 hints000248 = true := by decide +kernel
theorem counted000248 : hints000248.count 0 <= 866 := by decide +kernel

noncomputable def block000248 : CheckedPrimeCountBlock 748905 2 5850 866 :=
  ⟨hints000248, length000248, checked000248, counted000248⟩

noncomputable def localPrefix000248 : CheckedPrimeCountBlock 661551 2 49527 7338 :=
  localPrefix000247.append block000248

noncomputable def hints000249 : List Nat :=
  primeHintChunk% "../../certificates/prime-count33554432-v1/counts-000249.json" 33554432 380301 760605 2

theorem length000249 : hints000249.length = 5942 := by decide +kernel
theorem checked000249 : checkPrimeHints 760605 2 hints000249 = true := by decide +kernel
theorem counted000249 : hints000249.count 0 <= 894 := by decide +kernel

noncomputable def block000249 : CheckedPrimeCountBlock 760605 2 5942 894 :=
  ⟨hints000249, length000249, checked000249, counted000249⟩

noncomputable def localPrefix000249 : CheckedPrimeCountBlock 661551 2 55469 8232 :=
  localPrefix000248.append block000249

noncomputable def hints000250 : List Nat :=
  primeHintChunk% "../../certificates/prime-count33554432-v1/counts-000250.json" 33554432 386243 772489 2

theorem length000250 : hints000250.length = 6035 := by decide +kernel
theorem checked000250 : checkPrimeHints 772489 2 hints000250 = true := by decide +kernel
theorem counted000250 : hints000250.count 0 <= 890 := by decide +kernel

noncomputable def block000250 : CheckedPrimeCountBlock 772489 2 6035 890 :=
  ⟨hints000250, length000250, checked000250, counted000250⟩

noncomputable def localPrefix000250 : CheckedPrimeCountBlock 661551 2 61504 9122 :=
  localPrefix000249.append block000250

noncomputable def hints000251 : List Nat :=
  primeHintChunk% "../../certificates/prime-count33554432-v1/counts-000251.json" 33554432 392278 784559 2

theorem length000251 : hints000251.length = 6129 := by decide +kernel
theorem checked000251 : checkPrimeHints 784559 2 hints000251 = true := by decide +kernel
theorem counted000251 : hints000251.count 0 <= 911 := by decide +kernel

noncomputable def block000251 : CheckedPrimeCountBlock 784559 2 6129 911 :=
  ⟨hints000251, length000251, checked000251, counted000251⟩

noncomputable def localPrefix000251 : CheckedPrimeCountBlock 661551 2 67633 10033 :=
  localPrefix000250.append block000251

noncomputable def hints000252 : List Nat :=
  primeHintChunk% "../../certificates/prime-count33554432-v1/counts-000252.json" 33554432 398407 796817 2

theorem length000252 : hints000252.length = 6225 := by decide +kernel
theorem checked000252 : checkPrimeHints 796817 2 hints000252 = true := by decide +kernel
theorem counted000252 : hints000252.count 0 <= 904 := by decide +kernel

noncomputable def block000252 : CheckedPrimeCountBlock 796817 2 6225 904 :=
  ⟨hints000252, length000252, checked000252, counted000252⟩

noncomputable def localPrefix000252 : CheckedPrimeCountBlock 661551 2 73858 10937 :=
  localPrefix000251.append block000252

noncomputable def hints000253 : List Nat :=
  primeHintChunk% "../../certificates/prime-count33554432-v1/counts-000253.json" 33554432 404632 809267 2

theorem length000253 : hints000253.length = 6322 := by decide +kernel
theorem checked000253 : checkPrimeHints 809267 2 hints000253 = true := by decide +kernel
theorem counted000253 : hints000253.count 0 <= 932 := by decide +kernel

noncomputable def block000253 : CheckedPrimeCountBlock 809267 2 6322 932 :=
  ⟨hints000253, length000253, checked000253, counted000253⟩

noncomputable def localPrefix000253 : CheckedPrimeCountBlock 661551 2 80180 11869 :=
  localPrefix000252.append block000253

noncomputable def hints000254 : List Nat :=
  primeHintChunk% "../../certificates/prime-count33554432-v1/counts-000254.json" 33554432 410954 821911 2

theorem length000254 : hints000254.length = 6421 := by decide +kernel
theorem checked000254 : checkPrimeHints 821911 2 hints000254 = true := by decide +kernel
theorem counted000254 : hints000254.count 0 <= 957 := by decide +kernel

noncomputable def block000254 : CheckedPrimeCountBlock 821911 2 6421 957 :=
  ⟨hints000254, length000254, checked000254, counted000254⟩

noncomputable def localPrefix000254 : CheckedPrimeCountBlock 661551 2 86601 12826 :=
  localPrefix000253.append block000254

noncomputable def hints000255 : List Nat :=
  primeHintChunk% "../../certificates/prime-count33554432-v1/counts-000255.json" 33554432 417375 834753 2

theorem length000255 : hints000255.length = 6521 := by decide +kernel
theorem checked000255 : checkPrimeHints 834753 2 hints000255 = true := by decide +kernel
theorem counted000255 : hints000255.count 0 <= 945 := by decide +kernel

noncomputable def block000255 : CheckedPrimeCountBlock 834753 2 6521 945 :=
  ⟨hints000255, length000255, checked000255, counted000255⟩

noncomputable def localPrefix000255 : CheckedPrimeCountBlock 661551 2 93122 13771 :=
  localPrefix000254.append block000255

end JSP848.FullPrimeCount
