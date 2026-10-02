import JSP848.PrimeCountInput

set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0

namespace JSP848.FullPrimeCount

open PrimeCountInput

noncomputable def hints000800 : List Nat :=
  primeHintChunk% "../../certificates/prime-count33554432-v1/counts-000800.json" 33554432 8994815 17989633 2

theorem length000800 : hints000800.length = 16384 := by decide +kernel
theorem checked000800 : checkPrimeHints 17989633 2 hints000800 = true := by decide +kernel
theorem counted000800 : hints000800.count 0 <= 1938 := by decide +kernel

noncomputable def block000800 : CheckedPrimeCountBlock 17989633 2 16384 1938 :=
  ⟨hints000800, length000800, checked000800, counted000800⟩

noncomputable def localPrefix000800 : CheckedPrimeCountBlock 17989633 2 16384 1938 :=
  block000800

noncomputable def hints000801 : List Nat :=
  primeHintChunk% "../../certificates/prime-count33554432-v1/counts-000801.json" 33554432 9011199 18022401 2

theorem length000801 : hints000801.length = 16384 := by decide +kernel
theorem checked000801 : checkPrimeHints 18022401 2 hints000801 = true := by decide +kernel
theorem counted000801 : hints000801.count 0 <= 1929 := by decide +kernel

noncomputable def block000801 : CheckedPrimeCountBlock 18022401 2 16384 1929 :=
  ⟨hints000801, length000801, checked000801, counted000801⟩

noncomputable def localPrefix000801 : CheckedPrimeCountBlock 17989633 2 32768 3867 :=
  localPrefix000800.append block000801

noncomputable def hints000802 : List Nat :=
  primeHintChunk% "../../certificates/prime-count33554432-v1/counts-000802.json" 33554432 9027583 18055169 2

theorem length000802 : hints000802.length = 16384 := by decide +kernel
theorem checked000802 : checkPrimeHints 18055169 2 hints000802 = true := by decide +kernel
theorem counted000802 : hints000802.count 0 <= 1916 := by decide +kernel

noncomputable def block000802 : CheckedPrimeCountBlock 18055169 2 16384 1916 :=
  ⟨hints000802, length000802, checked000802, counted000802⟩

noncomputable def localPrefix000802 : CheckedPrimeCountBlock 17989633 2 49152 5783 :=
  localPrefix000801.append block000802

noncomputable def hints000803 : List Nat :=
  primeHintChunk% "../../certificates/prime-count33554432-v1/counts-000803.json" 33554432 9043967 18087937 2

theorem length000803 : hints000803.length = 16384 := by decide +kernel
theorem checked000803 : checkPrimeHints 18087937 2 hints000803 = true := by decide +kernel
theorem counted000803 : hints000803.count 0 <= 1984 := by decide +kernel

noncomputable def block000803 : CheckedPrimeCountBlock 18087937 2 16384 1984 :=
  ⟨hints000803, length000803, checked000803, counted000803⟩

noncomputable def localPrefix000803 : CheckedPrimeCountBlock 17989633 2 65536 7767 :=
  localPrefix000802.append block000803

noncomputable def hints000804 : List Nat :=
  primeHintChunk% "../../certificates/prime-count33554432-v1/counts-000804.json" 33554432 9060351 18120705 2

theorem length000804 : hints000804.length = 16384 := by decide +kernel
theorem checked000804 : checkPrimeHints 18120705 2 hints000804 = true := by decide +kernel
theorem counted000804 : hints000804.count 0 <= 1957 := by decide +kernel

noncomputable def block000804 : CheckedPrimeCountBlock 18120705 2 16384 1957 :=
  ⟨hints000804, length000804, checked000804, counted000804⟩

noncomputable def localPrefix000804 : CheckedPrimeCountBlock 17989633 2 81920 9724 :=
  localPrefix000803.append block000804

noncomputable def hints000805 : List Nat :=
  primeHintChunk% "../../certificates/prime-count33554432-v1/counts-000805.json" 33554432 9076735 18153473 2

theorem length000805 : hints000805.length = 16384 := by decide +kernel
theorem checked000805 : checkPrimeHints 18153473 2 hints000805 = true := by decide +kernel
theorem counted000805 : hints000805.count 0 <= 1919 := by decide +kernel

noncomputable def block000805 : CheckedPrimeCountBlock 18153473 2 16384 1919 :=
  ⟨hints000805, length000805, checked000805, counted000805⟩

noncomputable def localPrefix000805 : CheckedPrimeCountBlock 17989633 2 98304 11643 :=
  localPrefix000804.append block000805

noncomputable def hints000806 : List Nat :=
  primeHintChunk% "../../certificates/prime-count33554432-v1/counts-000806.json" 33554432 9093119 18186241 2

theorem length000806 : hints000806.length = 16384 := by decide +kernel
theorem checked000806 : checkPrimeHints 18186241 2 hints000806 = true := by decide +kernel
theorem counted000806 : hints000806.count 0 <= 1955 := by decide +kernel

noncomputable def block000806 : CheckedPrimeCountBlock 18186241 2 16384 1955 :=
  ⟨hints000806, length000806, checked000806, counted000806⟩

noncomputable def localPrefix000806 : CheckedPrimeCountBlock 17989633 2 114688 13598 :=
  localPrefix000805.append block000806

noncomputable def hints000807 : List Nat :=
  primeHintChunk% "../../certificates/prime-count33554432-v1/counts-000807.json" 33554432 9109503 18219009 2

theorem length000807 : hints000807.length = 16384 := by decide +kernel
theorem checked000807 : checkPrimeHints 18219009 2 hints000807 = true := by decide +kernel
theorem counted000807 : hints000807.count 0 <= 2001 := by decide +kernel

noncomputable def block000807 : CheckedPrimeCountBlock 18219009 2 16384 2001 :=
  ⟨hints000807, length000807, checked000807, counted000807⟩

noncomputable def localPrefix000807 : CheckedPrimeCountBlock 17989633 2 131072 15599 :=
  localPrefix000806.append block000807

noncomputable def hints000808 : List Nat :=
  primeHintChunk% "../../certificates/prime-count33554432-v1/counts-000808.json" 33554432 9125887 18251777 2

theorem length000808 : hints000808.length = 16384 := by decide +kernel
theorem checked000808 : checkPrimeHints 18251777 2 hints000808 = true := by decide +kernel
theorem counted000808 : hints000808.count 0 <= 1996 := by decide +kernel

noncomputable def block000808 : CheckedPrimeCountBlock 18251777 2 16384 1996 :=
  ⟨hints000808, length000808, checked000808, counted000808⟩

noncomputable def localPrefix000808 : CheckedPrimeCountBlock 17989633 2 147456 17595 :=
  localPrefix000807.append block000808

noncomputable def hints000809 : List Nat :=
  primeHintChunk% "../../certificates/prime-count33554432-v1/counts-000809.json" 33554432 9142271 18284545 2

theorem length000809 : hints000809.length = 16384 := by decide +kernel
theorem checked000809 : checkPrimeHints 18284545 2 hints000809 = true := by decide +kernel
theorem counted000809 : hints000809.count 0 <= 1973 := by decide +kernel

noncomputable def block000809 : CheckedPrimeCountBlock 18284545 2 16384 1973 :=
  ⟨hints000809, length000809, checked000809, counted000809⟩

noncomputable def localPrefix000809 : CheckedPrimeCountBlock 17989633 2 163840 19568 :=
  localPrefix000808.append block000809

noncomputable def hints000810 : List Nat :=
  primeHintChunk% "../../certificates/prime-count33554432-v1/counts-000810.json" 33554432 9158655 18317313 2

theorem length000810 : hints000810.length = 16384 := by decide +kernel
theorem checked000810 : checkPrimeHints 18317313 2 hints000810 = true := by decide +kernel
theorem counted000810 : hints000810.count 0 <= 1950 := by decide +kernel

noncomputable def block000810 : CheckedPrimeCountBlock 18317313 2 16384 1950 :=
  ⟨hints000810, length000810, checked000810, counted000810⟩

noncomputable def localPrefix000810 : CheckedPrimeCountBlock 17989633 2 180224 21518 :=
  localPrefix000809.append block000810

noncomputable def hints000811 : List Nat :=
  primeHintChunk% "../../certificates/prime-count33554432-v1/counts-000811.json" 33554432 9175039 18350081 2

theorem length000811 : hints000811.length = 16384 := by decide +kernel
theorem checked000811 : checkPrimeHints 18350081 2 hints000811 = true := by decide +kernel
theorem counted000811 : hints000811.count 0 <= 1932 := by decide +kernel

noncomputable def block000811 : CheckedPrimeCountBlock 18350081 2 16384 1932 :=
  ⟨hints000811, length000811, checked000811, counted000811⟩

noncomputable def localPrefix000811 : CheckedPrimeCountBlock 17989633 2 196608 23450 :=
  localPrefix000810.append block000811

noncomputable def hints000812 : List Nat :=
  primeHintChunk% "../../certificates/prime-count33554432-v1/counts-000812.json" 33554432 9191423 18382849 2

theorem length000812 : hints000812.length = 16384 := by decide +kernel
theorem checked000812 : checkPrimeHints 18382849 2 hints000812 = true := by decide +kernel
theorem counted000812 : hints000812.count 0 <= 1977 := by decide +kernel

noncomputable def block000812 : CheckedPrimeCountBlock 18382849 2 16384 1977 :=
  ⟨hints000812, length000812, checked000812, counted000812⟩

noncomputable def localPrefix000812 : CheckedPrimeCountBlock 17989633 2 212992 25427 :=
  localPrefix000811.append block000812

noncomputable def hints000813 : List Nat :=
  primeHintChunk% "../../certificates/prime-count33554432-v1/counts-000813.json" 33554432 9207807 18415617 2

theorem length000813 : hints000813.length = 16384 := by decide +kernel
theorem checked000813 : checkPrimeHints 18415617 2 hints000813 = true := by decide +kernel
theorem counted000813 : hints000813.count 0 <= 1949 := by decide +kernel

noncomputable def block000813 : CheckedPrimeCountBlock 18415617 2 16384 1949 :=
  ⟨hints000813, length000813, checked000813, counted000813⟩

noncomputable def localPrefix000813 : CheckedPrimeCountBlock 17989633 2 229376 27376 :=
  localPrefix000812.append block000813

noncomputable def hints000814 : List Nat :=
  primeHintChunk% "../../certificates/prime-count33554432-v1/counts-000814.json" 33554432 9224191 18448385 2

theorem length000814 : hints000814.length = 16384 := by decide +kernel
theorem checked000814 : checkPrimeHints 18448385 2 hints000814 = true := by decide +kernel
theorem counted000814 : hints000814.count 0 <= 1923 := by decide +kernel

noncomputable def block000814 : CheckedPrimeCountBlock 18448385 2 16384 1923 :=
  ⟨hints000814, length000814, checked000814, counted000814⟩

noncomputable def localPrefix000814 : CheckedPrimeCountBlock 17989633 2 245760 29299 :=
  localPrefix000813.append block000814

noncomputable def hints000815 : List Nat :=
  primeHintChunk% "../../certificates/prime-count33554432-v1/counts-000815.json" 33554432 9240575 18481153 2

theorem length000815 : hints000815.length = 16384 := by decide +kernel
theorem checked000815 : checkPrimeHints 18481153 2 hints000815 = true := by decide +kernel
theorem counted000815 : hints000815.count 0 <= 1919 := by decide +kernel

noncomputable def block000815 : CheckedPrimeCountBlock 18481153 2 16384 1919 :=
  ⟨hints000815, length000815, checked000815, counted000815⟩

noncomputable def localPrefix000815 : CheckedPrimeCountBlock 17989633 2 262144 31218 :=
  localPrefix000814.append block000815

end JSP848.FullPrimeCount
