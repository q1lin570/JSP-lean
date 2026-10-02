import JSP848.PrimeCountInput

set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0

namespace JSP848.FullPrimeCount

open PrimeCountInput

noncomputable def hints000672 : List Nat :=
  primeHintChunk% "../../certificates/prime-count33554432-v1/counts-000672.json" 33554432 6897663 13795329 2

theorem length000672 : hints000672.length = 16384 := by decide +kernel
theorem checked000672 : checkPrimeHints 13795329 2 hints000672 = true := by decide +kernel
theorem counted000672 : hints000672.count 0 <= 1973 := by decide +kernel

noncomputable def block000672 : CheckedPrimeCountBlock 13795329 2 16384 1973 :=
  ⟨hints000672, length000672, checked000672, counted000672⟩

noncomputable def localPrefix000672 : CheckedPrimeCountBlock 13795329 2 16384 1973 :=
  block000672

noncomputable def hints000673 : List Nat :=
  primeHintChunk% "../../certificates/prime-count33554432-v1/counts-000673.json" 33554432 6914047 13828097 2

theorem length000673 : hints000673.length = 16384 := by decide +kernel
theorem checked000673 : checkPrimeHints 13828097 2 hints000673 = true := by decide +kernel
theorem counted000673 : hints000673.count 0 <= 2014 := by decide +kernel

noncomputable def block000673 : CheckedPrimeCountBlock 13828097 2 16384 2014 :=
  ⟨hints000673, length000673, checked000673, counted000673⟩

noncomputable def localPrefix000673 : CheckedPrimeCountBlock 13795329 2 32768 3987 :=
  localPrefix000672.append block000673

noncomputable def hints000674 : List Nat :=
  primeHintChunk% "../../certificates/prime-count33554432-v1/counts-000674.json" 33554432 6930431 13860865 2

theorem length000674 : hints000674.length = 16384 := by decide +kernel
theorem checked000674 : checkPrimeHints 13860865 2 hints000674 = true := by decide +kernel
theorem counted000674 : hints000674.count 0 <= 1996 := by decide +kernel

noncomputable def block000674 : CheckedPrimeCountBlock 13860865 2 16384 1996 :=
  ⟨hints000674, length000674, checked000674, counted000674⟩

noncomputable def localPrefix000674 : CheckedPrimeCountBlock 13795329 2 49152 5983 :=
  localPrefix000673.append block000674

noncomputable def hints000675 : List Nat :=
  primeHintChunk% "../../certificates/prime-count33554432-v1/counts-000675.json" 33554432 6946815 13893633 2

theorem length000675 : hints000675.length = 16384 := by decide +kernel
theorem checked000675 : checkPrimeHints 13893633 2 hints000675 = true := by decide +kernel
theorem counted000675 : hints000675.count 0 <= 2030 := by decide +kernel

noncomputable def block000675 : CheckedPrimeCountBlock 13893633 2 16384 2030 :=
  ⟨hints000675, length000675, checked000675, counted000675⟩

noncomputable def localPrefix000675 : CheckedPrimeCountBlock 13795329 2 65536 8013 :=
  localPrefix000674.append block000675

noncomputable def hints000676 : List Nat :=
  primeHintChunk% "../../certificates/prime-count33554432-v1/counts-000676.json" 33554432 6963199 13926401 2

theorem length000676 : hints000676.length = 16384 := by decide +kernel
theorem checked000676 : checkPrimeHints 13926401 2 hints000676 = true := by decide +kernel
theorem counted000676 : hints000676.count 0 <= 1956 := by decide +kernel

noncomputable def block000676 : CheckedPrimeCountBlock 13926401 2 16384 1956 :=
  ⟨hints000676, length000676, checked000676, counted000676⟩

noncomputable def localPrefix000676 : CheckedPrimeCountBlock 13795329 2 81920 9969 :=
  localPrefix000675.append block000676

noncomputable def hints000677 : List Nat :=
  primeHintChunk% "../../certificates/prime-count33554432-v1/counts-000677.json" 33554432 6979583 13959169 2

theorem length000677 : hints000677.length = 16384 := by decide +kernel
theorem checked000677 : checkPrimeHints 13959169 2 hints000677 = true := by decide +kernel
theorem counted000677 : hints000677.count 0 <= 1948 := by decide +kernel

noncomputable def block000677 : CheckedPrimeCountBlock 13959169 2 16384 1948 :=
  ⟨hints000677, length000677, checked000677, counted000677⟩

noncomputable def localPrefix000677 : CheckedPrimeCountBlock 13795329 2 98304 11917 :=
  localPrefix000676.append block000677

noncomputable def hints000678 : List Nat :=
  primeHintChunk% "../../certificates/prime-count33554432-v1/counts-000678.json" 33554432 6995967 13991937 2

theorem length000678 : hints000678.length = 16384 := by decide +kernel
theorem checked000678 : checkPrimeHints 13991937 2 hints000678 = true := by decide +kernel
theorem counted000678 : hints000678.count 0 <= 1990 := by decide +kernel

noncomputable def block000678 : CheckedPrimeCountBlock 13991937 2 16384 1990 :=
  ⟨hints000678, length000678, checked000678, counted000678⟩

noncomputable def localPrefix000678 : CheckedPrimeCountBlock 13795329 2 114688 13907 :=
  localPrefix000677.append block000678

noncomputable def hints000679 : List Nat :=
  primeHintChunk% "../../certificates/prime-count33554432-v1/counts-000679.json" 33554432 7012351 14024705 2

theorem length000679 : hints000679.length = 16384 := by decide +kernel
theorem checked000679 : checkPrimeHints 14024705 2 hints000679 = true := by decide +kernel
theorem counted000679 : hints000679.count 0 <= 1966 := by decide +kernel

noncomputable def block000679 : CheckedPrimeCountBlock 14024705 2 16384 1966 :=
  ⟨hints000679, length000679, checked000679, counted000679⟩

noncomputable def localPrefix000679 : CheckedPrimeCountBlock 13795329 2 131072 15873 :=
  localPrefix000678.append block000679

noncomputable def hints000680 : List Nat :=
  primeHintChunk% "../../certificates/prime-count33554432-v1/counts-000680.json" 33554432 7028735 14057473 2

theorem length000680 : hints000680.length = 16384 := by decide +kernel
theorem checked000680 : checkPrimeHints 14057473 2 hints000680 = true := by decide +kernel
theorem counted000680 : hints000680.count 0 <= 2018 := by decide +kernel

noncomputable def block000680 : CheckedPrimeCountBlock 14057473 2 16384 2018 :=
  ⟨hints000680, length000680, checked000680, counted000680⟩

noncomputable def localPrefix000680 : CheckedPrimeCountBlock 13795329 2 147456 17891 :=
  localPrefix000679.append block000680

noncomputable def hints000681 : List Nat :=
  primeHintChunk% "../../certificates/prime-count33554432-v1/counts-000681.json" 33554432 7045119 14090241 2

theorem length000681 : hints000681.length = 16384 := by decide +kernel
theorem checked000681 : checkPrimeHints 14090241 2 hints000681 = true := by decide +kernel
theorem counted000681 : hints000681.count 0 <= 2007 := by decide +kernel

noncomputable def block000681 : CheckedPrimeCountBlock 14090241 2 16384 2007 :=
  ⟨hints000681, length000681, checked000681, counted000681⟩

noncomputable def localPrefix000681 : CheckedPrimeCountBlock 13795329 2 163840 19898 :=
  localPrefix000680.append block000681

noncomputable def hints000682 : List Nat :=
  primeHintChunk% "../../certificates/prime-count33554432-v1/counts-000682.json" 33554432 7061503 14123009 2

theorem length000682 : hints000682.length = 16384 := by decide +kernel
theorem checked000682 : checkPrimeHints 14123009 2 hints000682 = true := by decide +kernel
theorem counted000682 : hints000682.count 0 <= 1989 := by decide +kernel

noncomputable def block000682 : CheckedPrimeCountBlock 14123009 2 16384 1989 :=
  ⟨hints000682, length000682, checked000682, counted000682⟩

noncomputable def localPrefix000682 : CheckedPrimeCountBlock 13795329 2 180224 21887 :=
  localPrefix000681.append block000682

noncomputable def hints000683 : List Nat :=
  primeHintChunk% "../../certificates/prime-count33554432-v1/counts-000683.json" 33554432 7077887 14155777 2

theorem length000683 : hints000683.length = 16384 := by decide +kernel
theorem checked000683 : checkPrimeHints 14155777 2 hints000683 = true := by decide +kernel
theorem counted000683 : hints000683.count 0 <= 1968 := by decide +kernel

noncomputable def block000683 : CheckedPrimeCountBlock 14155777 2 16384 1968 :=
  ⟨hints000683, length000683, checked000683, counted000683⟩

noncomputable def localPrefix000683 : CheckedPrimeCountBlock 13795329 2 196608 23855 :=
  localPrefix000682.append block000683

noncomputable def hints000684 : List Nat :=
  primeHintChunk% "../../certificates/prime-count33554432-v1/counts-000684.json" 33554432 7094271 14188545 2

theorem length000684 : hints000684.length = 16384 := by decide +kernel
theorem checked000684 : checkPrimeHints 14188545 2 hints000684 = true := by decide +kernel
theorem counted000684 : hints000684.count 0 <= 1966 := by decide +kernel

noncomputable def block000684 : CheckedPrimeCountBlock 14188545 2 16384 1966 :=
  ⟨hints000684, length000684, checked000684, counted000684⟩

noncomputable def localPrefix000684 : CheckedPrimeCountBlock 13795329 2 212992 25821 :=
  localPrefix000683.append block000684

noncomputable def hints000685 : List Nat :=
  primeHintChunk% "../../certificates/prime-count33554432-v1/counts-000685.json" 33554432 7110655 14221313 2

theorem length000685 : hints000685.length = 16384 := by decide +kernel
theorem checked000685 : checkPrimeHints 14221313 2 hints000685 = true := by decide +kernel
theorem counted000685 : hints000685.count 0 <= 1991 := by decide +kernel

noncomputable def block000685 : CheckedPrimeCountBlock 14221313 2 16384 1991 :=
  ⟨hints000685, length000685, checked000685, counted000685⟩

noncomputable def localPrefix000685 : CheckedPrimeCountBlock 13795329 2 229376 27812 :=
  localPrefix000684.append block000685

noncomputable def hints000686 : List Nat :=
  primeHintChunk% "../../certificates/prime-count33554432-v1/counts-000686.json" 33554432 7127039 14254081 2

theorem length000686 : hints000686.length = 16384 := by decide +kernel
theorem checked000686 : checkPrimeHints 14254081 2 hints000686 = true := by decide +kernel
theorem counted000686 : hints000686.count 0 <= 2019 := by decide +kernel

noncomputable def block000686 : CheckedPrimeCountBlock 14254081 2 16384 2019 :=
  ⟨hints000686, length000686, checked000686, counted000686⟩

noncomputable def localPrefix000686 : CheckedPrimeCountBlock 13795329 2 245760 29831 :=
  localPrefix000685.append block000686

noncomputable def hints000687 : List Nat :=
  primeHintChunk% "../../certificates/prime-count33554432-v1/counts-000687.json" 33554432 7143423 14286849 2

theorem length000687 : hints000687.length = 16384 := by decide +kernel
theorem checked000687 : checkPrimeHints 14286849 2 hints000687 = true := by decide +kernel
theorem counted000687 : hints000687.count 0 <= 2004 := by decide +kernel

noncomputable def block000687 : CheckedPrimeCountBlock 14286849 2 16384 2004 :=
  ⟨hints000687, length000687, checked000687, counted000687⟩

noncomputable def localPrefix000687 : CheckedPrimeCountBlock 13795329 2 262144 31835 :=
  localPrefix000686.append block000687

end JSP848.FullPrimeCount
