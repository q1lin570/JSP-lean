import JSP848.PrimeCountInput

set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0

namespace JSP848.FullPrimeCount

open PrimeCountInput

noncomputable def hints000752 : List Nat :=
  primeHintChunk% "../../certificates/prime-count33554432-v1/counts-000752.json" 33554432 8208383 16416769 2

theorem length000752 : hints000752.length = 16384 := by decide +kernel
theorem checked000752 : checkPrimeHints 16416769 2 hints000752 = true := by decide +kernel
theorem counted000752 : hints000752.count 0 <= 1997 := by decide +kernel

noncomputable def block000752 : CheckedPrimeCountBlock 16416769 2 16384 1997 :=
  ⟨hints000752, length000752, checked000752, counted000752⟩

noncomputable def localPrefix000752 : CheckedPrimeCountBlock 16416769 2 16384 1997 :=
  block000752

noncomputable def hints000753 : List Nat :=
  primeHintChunk% "../../certificates/prime-count33554432-v1/counts-000753.json" 33554432 8224767 16449537 2

theorem length000753 : hints000753.length = 16384 := by decide +kernel
theorem checked000753 : checkPrimeHints 16449537 2 hints000753 = true := by decide +kernel
theorem counted000753 : hints000753.count 0 <= 1953 := by decide +kernel

noncomputable def block000753 : CheckedPrimeCountBlock 16449537 2 16384 1953 :=
  ⟨hints000753, length000753, checked000753, counted000753⟩

noncomputable def localPrefix000753 : CheckedPrimeCountBlock 16416769 2 32768 3950 :=
  localPrefix000752.append block000753

noncomputable def hints000754 : List Nat :=
  primeHintChunk% "../../certificates/prime-count33554432-v1/counts-000754.json" 33554432 8241151 16482305 2

theorem length000754 : hints000754.length = 16384 := by decide +kernel
theorem checked000754 : checkPrimeHints 16482305 2 hints000754 = true := by decide +kernel
theorem counted000754 : hints000754.count 0 <= 1994 := by decide +kernel

noncomputable def block000754 : CheckedPrimeCountBlock 16482305 2 16384 1994 :=
  ⟨hints000754, length000754, checked000754, counted000754⟩

noncomputable def localPrefix000754 : CheckedPrimeCountBlock 16416769 2 49152 5944 :=
  localPrefix000753.append block000754

noncomputable def hints000755 : List Nat :=
  primeHintChunk% "../../certificates/prime-count33554432-v1/counts-000755.json" 33554432 8257535 16515073 2

theorem length000755 : hints000755.length = 16384 := by decide +kernel
theorem checked000755 : checkPrimeHints 16515073 2 hints000755 = true := by decide +kernel
theorem counted000755 : hints000755.count 0 <= 1935 := by decide +kernel

noncomputable def block000755 : CheckedPrimeCountBlock 16515073 2 16384 1935 :=
  ⟨hints000755, length000755, checked000755, counted000755⟩

noncomputable def localPrefix000755 : CheckedPrimeCountBlock 16416769 2 65536 7879 :=
  localPrefix000754.append block000755

noncomputable def hints000756 : List Nat :=
  primeHintChunk% "../../certificates/prime-count33554432-v1/counts-000756.json" 33554432 8273919 16547841 2

theorem length000756 : hints000756.length = 16384 := by decide +kernel
theorem checked000756 : checkPrimeHints 16547841 2 hints000756 = true := by decide +kernel
theorem counted000756 : hints000756.count 0 <= 1944 := by decide +kernel

noncomputable def block000756 : CheckedPrimeCountBlock 16547841 2 16384 1944 :=
  ⟨hints000756, length000756, checked000756, counted000756⟩

noncomputable def localPrefix000756 : CheckedPrimeCountBlock 16416769 2 81920 9823 :=
  localPrefix000755.append block000756

noncomputable def hints000757 : List Nat :=
  primeHintChunk% "../../certificates/prime-count33554432-v1/counts-000757.json" 33554432 8290303 16580609 2

theorem length000757 : hints000757.length = 16384 := by decide +kernel
theorem checked000757 : checkPrimeHints 16580609 2 hints000757 = true := by decide +kernel
theorem counted000757 : hints000757.count 0 <= 2020 := by decide +kernel

noncomputable def block000757 : CheckedPrimeCountBlock 16580609 2 16384 2020 :=
  ⟨hints000757, length000757, checked000757, counted000757⟩

noncomputable def localPrefix000757 : CheckedPrimeCountBlock 16416769 2 98304 11843 :=
  localPrefix000756.append block000757

noncomputable def hints000758 : List Nat :=
  primeHintChunk% "../../certificates/prime-count33554432-v1/counts-000758.json" 33554432 8306687 16613377 2

theorem length000758 : hints000758.length = 16384 := by decide +kernel
theorem checked000758 : checkPrimeHints 16613377 2 hints000758 = true := by decide +kernel
theorem counted000758 : hints000758.count 0 <= 1966 := by decide +kernel

noncomputable def block000758 : CheckedPrimeCountBlock 16613377 2 16384 1966 :=
  ⟨hints000758, length000758, checked000758, counted000758⟩

noncomputable def localPrefix000758 : CheckedPrimeCountBlock 16416769 2 114688 13809 :=
  localPrefix000757.append block000758

noncomputable def hints000759 : List Nat :=
  primeHintChunk% "../../certificates/prime-count33554432-v1/counts-000759.json" 33554432 8323071 16646145 2

theorem length000759 : hints000759.length = 16384 := by decide +kernel
theorem checked000759 : checkPrimeHints 16646145 2 hints000759 = true := by decide +kernel
theorem counted000759 : hints000759.count 0 <= 1981 := by decide +kernel

noncomputable def block000759 : CheckedPrimeCountBlock 16646145 2 16384 1981 :=
  ⟨hints000759, length000759, checked000759, counted000759⟩

noncomputable def localPrefix000759 : CheckedPrimeCountBlock 16416769 2 131072 15790 :=
  localPrefix000758.append block000759

noncomputable def hints000760 : List Nat :=
  primeHintChunk% "../../certificates/prime-count33554432-v1/counts-000760.json" 33554432 8339455 16678913 2

theorem length000760 : hints000760.length = 16384 := by decide +kernel
theorem checked000760 : checkPrimeHints 16678913 2 hints000760 = true := by decide +kernel
theorem counted000760 : hints000760.count 0 <= 1955 := by decide +kernel

noncomputable def block000760 : CheckedPrimeCountBlock 16678913 2 16384 1955 :=
  ⟨hints000760, length000760, checked000760, counted000760⟩

noncomputable def localPrefix000760 : CheckedPrimeCountBlock 16416769 2 147456 17745 :=
  localPrefix000759.append block000760

noncomputable def hints000761 : List Nat :=
  primeHintChunk% "../../certificates/prime-count33554432-v1/counts-000761.json" 33554432 8355839 16711681 2

theorem length000761 : hints000761.length = 16384 := by decide +kernel
theorem checked000761 : checkPrimeHints 16711681 2 hints000761 = true := by decide +kernel
theorem counted000761 : hints000761.count 0 <= 1998 := by decide +kernel

noncomputable def block000761 : CheckedPrimeCountBlock 16711681 2 16384 1998 :=
  ⟨hints000761, length000761, checked000761, counted000761⟩

noncomputable def localPrefix000761 : CheckedPrimeCountBlock 16416769 2 163840 19743 :=
  localPrefix000760.append block000761

noncomputable def hints000762 : List Nat :=
  primeHintChunk% "../../certificates/prime-count33554432-v1/counts-000762.json" 33554432 8372223 16744449 2

theorem length000762 : hints000762.length = 16384 := by decide +kernel
theorem checked000762 : checkPrimeHints 16744449 2 hints000762 = true := by decide +kernel
theorem counted000762 : hints000762.count 0 <= 1971 := by decide +kernel

noncomputable def block000762 : CheckedPrimeCountBlock 16744449 2 16384 1971 :=
  ⟨hints000762, length000762, checked000762, counted000762⟩

noncomputable def localPrefix000762 : CheckedPrimeCountBlock 16416769 2 180224 21714 :=
  localPrefix000761.append block000762

noncomputable def hints000763 : List Nat :=
  primeHintChunk% "../../certificates/prime-count33554432-v1/counts-000763.json" 33554432 8388607 16777217 2

theorem length000763 : hints000763.length = 16384 := by decide +kernel
theorem checked000763 : checkPrimeHints 16777217 2 hints000763 = true := by decide +kernel
theorem counted000763 : hints000763.count 0 <= 1982 := by decide +kernel

noncomputable def block000763 : CheckedPrimeCountBlock 16777217 2 16384 1982 :=
  ⟨hints000763, length000763, checked000763, counted000763⟩

noncomputable def localPrefix000763 : CheckedPrimeCountBlock 16416769 2 196608 23696 :=
  localPrefix000762.append block000763

noncomputable def hints000764 : List Nat :=
  primeHintChunk% "../../certificates/prime-count33554432-v1/counts-000764.json" 33554432 8404991 16809985 2

theorem length000764 : hints000764.length = 16384 := by decide +kernel
theorem checked000764 : checkPrimeHints 16809985 2 hints000764 = true := by decide +kernel
theorem counted000764 : hints000764.count 0 <= 1975 := by decide +kernel

noncomputable def block000764 : CheckedPrimeCountBlock 16809985 2 16384 1975 :=
  ⟨hints000764, length000764, checked000764, counted000764⟩

noncomputable def localPrefix000764 : CheckedPrimeCountBlock 16416769 2 212992 25671 :=
  localPrefix000763.append block000764

noncomputable def hints000765 : List Nat :=
  primeHintChunk% "../../certificates/prime-count33554432-v1/counts-000765.json" 33554432 8421375 16842753 2

theorem length000765 : hints000765.length = 16384 := by decide +kernel
theorem checked000765 : checkPrimeHints 16842753 2 hints000765 = true := by decide +kernel
theorem counted000765 : hints000765.count 0 <= 1966 := by decide +kernel

noncomputable def block000765 : CheckedPrimeCountBlock 16842753 2 16384 1966 :=
  ⟨hints000765, length000765, checked000765, counted000765⟩

noncomputable def localPrefix000765 : CheckedPrimeCountBlock 16416769 2 229376 27637 :=
  localPrefix000764.append block000765

noncomputable def hints000766 : List Nat :=
  primeHintChunk% "../../certificates/prime-count33554432-v1/counts-000766.json" 33554432 8437759 16875521 2

theorem length000766 : hints000766.length = 16384 := by decide +kernel
theorem checked000766 : checkPrimeHints 16875521 2 hints000766 = true := by decide +kernel
theorem counted000766 : hints000766.count 0 <= 1962 := by decide +kernel

noncomputable def block000766 : CheckedPrimeCountBlock 16875521 2 16384 1962 :=
  ⟨hints000766, length000766, checked000766, counted000766⟩

noncomputable def localPrefix000766 : CheckedPrimeCountBlock 16416769 2 245760 29599 :=
  localPrefix000765.append block000766

noncomputable def hints000767 : List Nat :=
  primeHintChunk% "../../certificates/prime-count33554432-v1/counts-000767.json" 33554432 8454143 16908289 2

theorem length000767 : hints000767.length = 16384 := by decide +kernel
theorem checked000767 : checkPrimeHints 16908289 2 hints000767 = true := by decide +kernel
theorem counted000767 : hints000767.count 0 <= 1962 := by decide +kernel

noncomputable def block000767 : CheckedPrimeCountBlock 16908289 2 16384 1962 :=
  ⟨hints000767, length000767, checked000767, counted000767⟩

noncomputable def localPrefix000767 : CheckedPrimeCountBlock 16416769 2 262144 31561 :=
  localPrefix000766.append block000767

end JSP848.FullPrimeCount
