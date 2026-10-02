import JSP848.PrimeCountInput

set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0

namespace JSP848.FullPrimeCount

open PrimeCountInput

noncomputable def hints000560 : List Nat :=
  primeHintChunk% "../../certificates/prime-count33554432-v1/counts-000560.json" 33554432 5062655 10125313 2

theorem length000560 : hints000560.length = 16384 := by decide +kernel
theorem checked000560 : checkPrimeHints 10125313 2 hints000560 = true := by decide +kernel
theorem counted000560 : hints000560.count 0 <= 2036 := by decide +kernel

noncomputable def block000560 : CheckedPrimeCountBlock 10125313 2 16384 2036 :=
  ⟨hints000560, length000560, checked000560, counted000560⟩

noncomputable def localPrefix000560 : CheckedPrimeCountBlock 10125313 2 16384 2036 :=
  block000560

noncomputable def hints000561 : List Nat :=
  primeHintChunk% "../../certificates/prime-count33554432-v1/counts-000561.json" 33554432 5079039 10158081 2

theorem length000561 : hints000561.length = 16384 := by decide +kernel
theorem checked000561 : checkPrimeHints 10158081 2 hints000561 = true := by decide +kernel
theorem counted000561 : hints000561.count 0 <= 2002 := by decide +kernel

noncomputable def block000561 : CheckedPrimeCountBlock 10158081 2 16384 2002 :=
  ⟨hints000561, length000561, checked000561, counted000561⟩

noncomputable def localPrefix000561 : CheckedPrimeCountBlock 10125313 2 32768 4038 :=
  localPrefix000560.append block000561

noncomputable def hints000562 : List Nat :=
  primeHintChunk% "../../certificates/prime-count33554432-v1/counts-000562.json" 33554432 5095423 10190849 2

theorem length000562 : hints000562.length = 16384 := by decide +kernel
theorem checked000562 : checkPrimeHints 10190849 2 hints000562 = true := by decide +kernel
theorem counted000562 : hints000562.count 0 <= 1999 := by decide +kernel

noncomputable def block000562 : CheckedPrimeCountBlock 10190849 2 16384 1999 :=
  ⟨hints000562, length000562, checked000562, counted000562⟩

noncomputable def localPrefix000562 : CheckedPrimeCountBlock 10125313 2 49152 6037 :=
  localPrefix000561.append block000562

noncomputable def hints000563 : List Nat :=
  primeHintChunk% "../../certificates/prime-count33554432-v1/counts-000563.json" 33554432 5111807 10223617 2

theorem length000563 : hints000563.length = 16384 := by decide +kernel
theorem checked000563 : checkPrimeHints 10223617 2 hints000563 = true := by decide +kernel
theorem counted000563 : hints000563.count 0 <= 2044 := by decide +kernel

noncomputable def block000563 : CheckedPrimeCountBlock 10223617 2 16384 2044 :=
  ⟨hints000563, length000563, checked000563, counted000563⟩

noncomputable def localPrefix000563 : CheckedPrimeCountBlock 10125313 2 65536 8081 :=
  localPrefix000562.append block000563

noncomputable def hints000564 : List Nat :=
  primeHintChunk% "../../certificates/prime-count33554432-v1/counts-000564.json" 33554432 5128191 10256385 2

theorem length000564 : hints000564.length = 16384 := by decide +kernel
theorem checked000564 : checkPrimeHints 10256385 2 hints000564 = true := by decide +kernel
theorem counted000564 : hints000564.count 0 <= 2043 := by decide +kernel

noncomputable def block000564 : CheckedPrimeCountBlock 10256385 2 16384 2043 :=
  ⟨hints000564, length000564, checked000564, counted000564⟩

noncomputable def localPrefix000564 : CheckedPrimeCountBlock 10125313 2 81920 10124 :=
  localPrefix000563.append block000564

noncomputable def hints000565 : List Nat :=
  primeHintChunk% "../../certificates/prime-count33554432-v1/counts-000565.json" 33554432 5144575 10289153 2

theorem length000565 : hints000565.length = 16384 := by decide +kernel
theorem checked000565 : checkPrimeHints 10289153 2 hints000565 = true := by decide +kernel
theorem counted000565 : hints000565.count 0 <= 2005 := by decide +kernel

noncomputable def block000565 : CheckedPrimeCountBlock 10289153 2 16384 2005 :=
  ⟨hints000565, length000565, checked000565, counted000565⟩

noncomputable def localPrefix000565 : CheckedPrimeCountBlock 10125313 2 98304 12129 :=
  localPrefix000564.append block000565

noncomputable def hints000566 : List Nat :=
  primeHintChunk% "../../certificates/prime-count33554432-v1/counts-000566.json" 33554432 5160959 10321921 2

theorem length000566 : hints000566.length = 16384 := by decide +kernel
theorem checked000566 : checkPrimeHints 10321921 2 hints000566 = true := by decide +kernel
theorem counted000566 : hints000566.count 0 <= 2029 := by decide +kernel

noncomputable def block000566 : CheckedPrimeCountBlock 10321921 2 16384 2029 :=
  ⟨hints000566, length000566, checked000566, counted000566⟩

noncomputable def localPrefix000566 : CheckedPrimeCountBlock 10125313 2 114688 14158 :=
  localPrefix000565.append block000566

noncomputable def hints000567 : List Nat :=
  primeHintChunk% "../../certificates/prime-count33554432-v1/counts-000567.json" 33554432 5177343 10354689 2

theorem length000567 : hints000567.length = 16384 := by decide +kernel
theorem checked000567 : checkPrimeHints 10354689 2 hints000567 = true := by decide +kernel
theorem counted000567 : hints000567.count 0 <= 2041 := by decide +kernel

noncomputable def block000567 : CheckedPrimeCountBlock 10354689 2 16384 2041 :=
  ⟨hints000567, length000567, checked000567, counted000567⟩

noncomputable def localPrefix000567 : CheckedPrimeCountBlock 10125313 2 131072 16199 :=
  localPrefix000566.append block000567

noncomputable def hints000568 : List Nat :=
  primeHintChunk% "../../certificates/prime-count33554432-v1/counts-000568.json" 33554432 5193727 10387457 2

theorem length000568 : hints000568.length = 16384 := by decide +kernel
theorem checked000568 : checkPrimeHints 10387457 2 hints000568 = true := by decide +kernel
theorem counted000568 : hints000568.count 0 <= 2058 := by decide +kernel

noncomputable def block000568 : CheckedPrimeCountBlock 10387457 2 16384 2058 :=
  ⟨hints000568, length000568, checked000568, counted000568⟩

noncomputable def localPrefix000568 : CheckedPrimeCountBlock 10125313 2 147456 18257 :=
  localPrefix000567.append block000568

noncomputable def hints000569 : List Nat :=
  primeHintChunk% "../../certificates/prime-count33554432-v1/counts-000569.json" 33554432 5210111 10420225 2

theorem length000569 : hints000569.length = 16384 := by decide +kernel
theorem checked000569 : checkPrimeHints 10420225 2 hints000569 = true := by decide +kernel
theorem counted000569 : hints000569.count 0 <= 2022 := by decide +kernel

noncomputable def block000569 : CheckedPrimeCountBlock 10420225 2 16384 2022 :=
  ⟨hints000569, length000569, checked000569, counted000569⟩

noncomputable def localPrefix000569 : CheckedPrimeCountBlock 10125313 2 163840 20279 :=
  localPrefix000568.append block000569

noncomputable def hints000570 : List Nat :=
  primeHintChunk% "../../certificates/prime-count33554432-v1/counts-000570.json" 33554432 5226495 10452993 2

theorem length000570 : hints000570.length = 16384 := by decide +kernel
theorem checked000570 : checkPrimeHints 10452993 2 hints000570 = true := by decide +kernel
theorem counted000570 : hints000570.count 0 <= 2048 := by decide +kernel

noncomputable def block000570 : CheckedPrimeCountBlock 10452993 2 16384 2048 :=
  ⟨hints000570, length000570, checked000570, counted000570⟩

noncomputable def localPrefix000570 : CheckedPrimeCountBlock 10125313 2 180224 22327 :=
  localPrefix000569.append block000570

noncomputable def hints000571 : List Nat :=
  primeHintChunk% "../../certificates/prime-count33554432-v1/counts-000571.json" 33554432 5242879 10485761 2

theorem length000571 : hints000571.length = 16384 := by decide +kernel
theorem checked000571 : checkPrimeHints 10485761 2 hints000571 = true := by decide +kernel
theorem counted000571 : hints000571.count 0 <= 2040 := by decide +kernel

noncomputable def block000571 : CheckedPrimeCountBlock 10485761 2 16384 2040 :=
  ⟨hints000571, length000571, checked000571, counted000571⟩

noncomputable def localPrefix000571 : CheckedPrimeCountBlock 10125313 2 196608 24367 :=
  localPrefix000570.append block000571

noncomputable def hints000572 : List Nat :=
  primeHintChunk% "../../certificates/prime-count33554432-v1/counts-000572.json" 33554432 5259263 10518529 2

theorem length000572 : hints000572.length = 16384 := by decide +kernel
theorem checked000572 : checkPrimeHints 10518529 2 hints000572 = true := by decide +kernel
theorem counted000572 : hints000572.count 0 <= 2026 := by decide +kernel

noncomputable def block000572 : CheckedPrimeCountBlock 10518529 2 16384 2026 :=
  ⟨hints000572, length000572, checked000572, counted000572⟩

noncomputable def localPrefix000572 : CheckedPrimeCountBlock 10125313 2 212992 26393 :=
  localPrefix000571.append block000572

noncomputable def hints000573 : List Nat :=
  primeHintChunk% "../../certificates/prime-count33554432-v1/counts-000573.json" 33554432 5275647 10551297 2

theorem length000573 : hints000573.length = 16384 := by decide +kernel
theorem checked000573 : checkPrimeHints 10551297 2 hints000573 = true := by decide +kernel
theorem counted000573 : hints000573.count 0 <= 2020 := by decide +kernel

noncomputable def block000573 : CheckedPrimeCountBlock 10551297 2 16384 2020 :=
  ⟨hints000573, length000573, checked000573, counted000573⟩

noncomputable def localPrefix000573 : CheckedPrimeCountBlock 10125313 2 229376 28413 :=
  localPrefix000572.append block000573

noncomputable def hints000574 : List Nat :=
  primeHintChunk% "../../certificates/prime-count33554432-v1/counts-000574.json" 33554432 5292031 10584065 2

theorem length000574 : hints000574.length = 16384 := by decide +kernel
theorem checked000574 : checkPrimeHints 10584065 2 hints000574 = true := by decide +kernel
theorem counted000574 : hints000574.count 0 <= 2024 := by decide +kernel

noncomputable def block000574 : CheckedPrimeCountBlock 10584065 2 16384 2024 :=
  ⟨hints000574, length000574, checked000574, counted000574⟩

noncomputable def localPrefix000574 : CheckedPrimeCountBlock 10125313 2 245760 30437 :=
  localPrefix000573.append block000574

noncomputable def hints000575 : List Nat :=
  primeHintChunk% "../../certificates/prime-count33554432-v1/counts-000575.json" 33554432 5308415 10616833 2

theorem length000575 : hints000575.length = 16384 := by decide +kernel
theorem checked000575 : checkPrimeHints 10616833 2 hints000575 = true := by decide +kernel
theorem counted000575 : hints000575.count 0 <= 2043 := by decide +kernel

noncomputable def block000575 : CheckedPrimeCountBlock 10616833 2 16384 2043 :=
  ⟨hints000575, length000575, checked000575, counted000575⟩

noncomputable def localPrefix000575 : CheckedPrimeCountBlock 10125313 2 262144 32480 :=
  localPrefix000574.append block000575

end JSP848.FullPrimeCount
