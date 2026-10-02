import JSP848.PrimeCountInput

set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0

namespace JSP848.FullPrimeCount

open PrimeCountInput

noncomputable def hints000640 : List Nat :=
  primeHintChunk% "../../certificates/prime-count33554432-v1/counts-000640.json" 33554432 6373375 12746753 2

theorem length000640 : hints000640.length = 16384 := by decide +kernel
theorem checked000640 : checkPrimeHints 12746753 2 hints000640 = true := by decide +kernel
theorem counted000640 : hints000640.count 0 <= 2023 := by decide +kernel

noncomputable def block000640 : CheckedPrimeCountBlock 12746753 2 16384 2023 :=
  ⟨hints000640, length000640, checked000640, counted000640⟩

noncomputable def localPrefix000640 : CheckedPrimeCountBlock 12746753 2 16384 2023 :=
  block000640

noncomputable def hints000641 : List Nat :=
  primeHintChunk% "../../certificates/prime-count33554432-v1/counts-000641.json" 33554432 6389759 12779521 2

theorem length000641 : hints000641.length = 16384 := by decide +kernel
theorem checked000641 : checkPrimeHints 12779521 2 hints000641 = true := by decide +kernel
theorem counted000641 : hints000641.count 0 <= 1987 := by decide +kernel

noncomputable def block000641 : CheckedPrimeCountBlock 12779521 2 16384 1987 :=
  ⟨hints000641, length000641, checked000641, counted000641⟩

noncomputable def localPrefix000641 : CheckedPrimeCountBlock 12746753 2 32768 4010 :=
  localPrefix000640.append block000641

noncomputable def hints000642 : List Nat :=
  primeHintChunk% "../../certificates/prime-count33554432-v1/counts-000642.json" 33554432 6406143 12812289 2

theorem length000642 : hints000642.length = 16384 := by decide +kernel
theorem checked000642 : checkPrimeHints 12812289 2 hints000642 = true := by decide +kernel
theorem counted000642 : hints000642.count 0 <= 2003 := by decide +kernel

noncomputable def block000642 : CheckedPrimeCountBlock 12812289 2 16384 2003 :=
  ⟨hints000642, length000642, checked000642, counted000642⟩

noncomputable def localPrefix000642 : CheckedPrimeCountBlock 12746753 2 49152 6013 :=
  localPrefix000641.append block000642

noncomputable def hints000643 : List Nat :=
  primeHintChunk% "../../certificates/prime-count33554432-v1/counts-000643.json" 33554432 6422527 12845057 2

theorem length000643 : hints000643.length = 16384 := by decide +kernel
theorem checked000643 : checkPrimeHints 12845057 2 hints000643 = true := by decide +kernel
theorem counted000643 : hints000643.count 0 <= 2019 := by decide +kernel

noncomputable def block000643 : CheckedPrimeCountBlock 12845057 2 16384 2019 :=
  ⟨hints000643, length000643, checked000643, counted000643⟩

noncomputable def localPrefix000643 : CheckedPrimeCountBlock 12746753 2 65536 8032 :=
  localPrefix000642.append block000643

noncomputable def hints000644 : List Nat :=
  primeHintChunk% "../../certificates/prime-count33554432-v1/counts-000644.json" 33554432 6438911 12877825 2

theorem length000644 : hints000644.length = 16384 := by decide +kernel
theorem checked000644 : checkPrimeHints 12877825 2 hints000644 = true := by decide +kernel
theorem counted000644 : hints000644.count 0 <= 1964 := by decide +kernel

noncomputable def block000644 : CheckedPrimeCountBlock 12877825 2 16384 1964 :=
  ⟨hints000644, length000644, checked000644, counted000644⟩

noncomputable def localPrefix000644 : CheckedPrimeCountBlock 12746753 2 81920 9996 :=
  localPrefix000643.append block000644

noncomputable def hints000645 : List Nat :=
  primeHintChunk% "../../certificates/prime-count33554432-v1/counts-000645.json" 33554432 6455295 12910593 2

theorem length000645 : hints000645.length = 16384 := by decide +kernel
theorem checked000645 : checkPrimeHints 12910593 2 hints000645 = true := by decide +kernel
theorem counted000645 : hints000645.count 0 <= 1972 := by decide +kernel

noncomputable def block000645 : CheckedPrimeCountBlock 12910593 2 16384 1972 :=
  ⟨hints000645, length000645, checked000645, counted000645⟩

noncomputable def localPrefix000645 : CheckedPrimeCountBlock 12746753 2 98304 11968 :=
  localPrefix000644.append block000645

noncomputable def hints000646 : List Nat :=
  primeHintChunk% "../../certificates/prime-count33554432-v1/counts-000646.json" 33554432 6471679 12943361 2

theorem length000646 : hints000646.length = 16384 := by decide +kernel
theorem checked000646 : checkPrimeHints 12943361 2 hints000646 = true := by decide +kernel
theorem counted000646 : hints000646.count 0 <= 1999 := by decide +kernel

noncomputable def block000646 : CheckedPrimeCountBlock 12943361 2 16384 1999 :=
  ⟨hints000646, length000646, checked000646, counted000646⟩

noncomputable def localPrefix000646 : CheckedPrimeCountBlock 12746753 2 114688 13967 :=
  localPrefix000645.append block000646

noncomputable def hints000647 : List Nat :=
  primeHintChunk% "../../certificates/prime-count33554432-v1/counts-000647.json" 33554432 6488063 12976129 2

theorem length000647 : hints000647.length = 16384 := by decide +kernel
theorem checked000647 : checkPrimeHints 12976129 2 hints000647 = true := by decide +kernel
theorem counted000647 : hints000647.count 0 <= 2003 := by decide +kernel

noncomputable def block000647 : CheckedPrimeCountBlock 12976129 2 16384 2003 :=
  ⟨hints000647, length000647, checked000647, counted000647⟩

noncomputable def localPrefix000647 : CheckedPrimeCountBlock 12746753 2 131072 15970 :=
  localPrefix000646.append block000647

noncomputable def hints000648 : List Nat :=
  primeHintChunk% "../../certificates/prime-count33554432-v1/counts-000648.json" 33554432 6504447 13008897 2

theorem length000648 : hints000648.length = 16384 := by decide +kernel
theorem checked000648 : checkPrimeHints 13008897 2 hints000648 = true := by decide +kernel
theorem counted000648 : hints000648.count 0 <= 1986 := by decide +kernel

noncomputable def block000648 : CheckedPrimeCountBlock 13008897 2 16384 1986 :=
  ⟨hints000648, length000648, checked000648, counted000648⟩

noncomputable def localPrefix000648 : CheckedPrimeCountBlock 12746753 2 147456 17956 :=
  localPrefix000647.append block000648

noncomputable def hints000649 : List Nat :=
  primeHintChunk% "../../certificates/prime-count33554432-v1/counts-000649.json" 33554432 6520831 13041665 2

theorem length000649 : hints000649.length = 16384 := by decide +kernel
theorem checked000649 : checkPrimeHints 13041665 2 hints000649 = true := by decide +kernel
theorem counted000649 : hints000649.count 0 <= 1964 := by decide +kernel

noncomputable def block000649 : CheckedPrimeCountBlock 13041665 2 16384 1964 :=
  ⟨hints000649, length000649, checked000649, counted000649⟩

noncomputable def localPrefix000649 : CheckedPrimeCountBlock 12746753 2 163840 19920 :=
  localPrefix000648.append block000649

noncomputable def hints000650 : List Nat :=
  primeHintChunk% "../../certificates/prime-count33554432-v1/counts-000650.json" 33554432 6537215 13074433 2

theorem length000650 : hints000650.length = 16384 := by decide +kernel
theorem checked000650 : checkPrimeHints 13074433 2 hints000650 = true := by decide +kernel
theorem counted000650 : hints000650.count 0 <= 1980 := by decide +kernel

noncomputable def block000650 : CheckedPrimeCountBlock 13074433 2 16384 1980 :=
  ⟨hints000650, length000650, checked000650, counted000650⟩

noncomputable def localPrefix000650 : CheckedPrimeCountBlock 12746753 2 180224 21900 :=
  localPrefix000649.append block000650

noncomputable def hints000651 : List Nat :=
  primeHintChunk% "../../certificates/prime-count33554432-v1/counts-000651.json" 33554432 6553599 13107201 2

theorem length000651 : hints000651.length = 16384 := by decide +kernel
theorem checked000651 : checkPrimeHints 13107201 2 hints000651 = true := by decide +kernel
theorem counted000651 : hints000651.count 0 <= 1998 := by decide +kernel

noncomputable def block000651 : CheckedPrimeCountBlock 13107201 2 16384 1998 :=
  ⟨hints000651, length000651, checked000651, counted000651⟩

noncomputable def localPrefix000651 : CheckedPrimeCountBlock 12746753 2 196608 23898 :=
  localPrefix000650.append block000651

noncomputable def hints000652 : List Nat :=
  primeHintChunk% "../../certificates/prime-count33554432-v1/counts-000652.json" 33554432 6569983 13139969 2

theorem length000652 : hints000652.length = 16384 := by decide +kernel
theorem checked000652 : checkPrimeHints 13139969 2 hints000652 = true := by decide +kernel
theorem counted000652 : hints000652.count 0 <= 1979 := by decide +kernel

noncomputable def block000652 : CheckedPrimeCountBlock 13139969 2 16384 1979 :=
  ⟨hints000652, length000652, checked000652, counted000652⟩

noncomputable def localPrefix000652 : CheckedPrimeCountBlock 12746753 2 212992 25877 :=
  localPrefix000651.append block000652

noncomputable def hints000653 : List Nat :=
  primeHintChunk% "../../certificates/prime-count33554432-v1/counts-000653.json" 33554432 6586367 13172737 2

theorem length000653 : hints000653.length = 16384 := by decide +kernel
theorem checked000653 : checkPrimeHints 13172737 2 hints000653 = true := by decide +kernel
theorem counted000653 : hints000653.count 0 <= 2031 := by decide +kernel

noncomputable def block000653 : CheckedPrimeCountBlock 13172737 2 16384 2031 :=
  ⟨hints000653, length000653, checked000653, counted000653⟩

noncomputable def localPrefix000653 : CheckedPrimeCountBlock 12746753 2 229376 27908 :=
  localPrefix000652.append block000653

noncomputable def hints000654 : List Nat :=
  primeHintChunk% "../../certificates/prime-count33554432-v1/counts-000654.json" 33554432 6602751 13205505 2

theorem length000654 : hints000654.length = 16384 := by decide +kernel
theorem checked000654 : checkPrimeHints 13205505 2 hints000654 = true := by decide +kernel
theorem counted000654 : hints000654.count 0 <= 1995 := by decide +kernel

noncomputable def block000654 : CheckedPrimeCountBlock 13205505 2 16384 1995 :=
  ⟨hints000654, length000654, checked000654, counted000654⟩

noncomputable def localPrefix000654 : CheckedPrimeCountBlock 12746753 2 245760 29903 :=
  localPrefix000653.append block000654

noncomputable def hints000655 : List Nat :=
  primeHintChunk% "../../certificates/prime-count33554432-v1/counts-000655.json" 33554432 6619135 13238273 2

theorem length000655 : hints000655.length = 16384 := by decide +kernel
theorem checked000655 : checkPrimeHints 13238273 2 hints000655 = true := by decide +kernel
theorem counted000655 : hints000655.count 0 <= 1977 := by decide +kernel

noncomputable def block000655 : CheckedPrimeCountBlock 13238273 2 16384 1977 :=
  ⟨hints000655, length000655, checked000655, counted000655⟩

noncomputable def localPrefix000655 : CheckedPrimeCountBlock 12746753 2 262144 31880 :=
  localPrefix000654.append block000655

end JSP848.FullPrimeCount
