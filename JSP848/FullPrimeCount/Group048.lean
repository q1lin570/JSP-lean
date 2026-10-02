import JSP848.PrimeCountInput

set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0

namespace JSP848.FullPrimeCount

open PrimeCountInput

noncomputable def hints000768 : List Nat :=
  primeHintChunk% "../../certificates/prime-count33554432-v1/counts-000768.json" 33554432 8470527 16941057 2

theorem length000768 : hints000768.length = 16384 := by decide +kernel
theorem checked000768 : checkPrimeHints 16941057 2 hints000768 = true := by decide +kernel
theorem counted000768 : hints000768.count 0 <= 2020 := by decide +kernel

noncomputable def block000768 : CheckedPrimeCountBlock 16941057 2 16384 2020 :=
  ⟨hints000768, length000768, checked000768, counted000768⟩

noncomputable def localPrefix000768 : CheckedPrimeCountBlock 16941057 2 16384 2020 :=
  block000768

noncomputable def hints000769 : List Nat :=
  primeHintChunk% "../../certificates/prime-count33554432-v1/counts-000769.json" 33554432 8486911 16973825 2

theorem length000769 : hints000769.length = 16384 := by decide +kernel
theorem checked000769 : checkPrimeHints 16973825 2 hints000769 = true := by decide +kernel
theorem counted000769 : hints000769.count 0 <= 1975 := by decide +kernel

noncomputable def block000769 : CheckedPrimeCountBlock 16973825 2 16384 1975 :=
  ⟨hints000769, length000769, checked000769, counted000769⟩

noncomputable def localPrefix000769 : CheckedPrimeCountBlock 16941057 2 32768 3995 :=
  localPrefix000768.append block000769

noncomputable def hints000770 : List Nat :=
  primeHintChunk% "../../certificates/prime-count33554432-v1/counts-000770.json" 33554432 8503295 17006593 2

theorem length000770 : hints000770.length = 16384 := by decide +kernel
theorem checked000770 : checkPrimeHints 17006593 2 hints000770 = true := by decide +kernel
theorem counted000770 : hints000770.count 0 <= 1992 := by decide +kernel

noncomputable def block000770 : CheckedPrimeCountBlock 17006593 2 16384 1992 :=
  ⟨hints000770, length000770, checked000770, counted000770⟩

noncomputable def localPrefix000770 : CheckedPrimeCountBlock 16941057 2 49152 5987 :=
  localPrefix000769.append block000770

noncomputable def hints000771 : List Nat :=
  primeHintChunk% "../../certificates/prime-count33554432-v1/counts-000771.json" 33554432 8519679 17039361 2

theorem length000771 : hints000771.length = 16384 := by decide +kernel
theorem checked000771 : checkPrimeHints 17039361 2 hints000771 = true := by decide +kernel
theorem counted000771 : hints000771.count 0 <= 1970 := by decide +kernel

noncomputable def block000771 : CheckedPrimeCountBlock 17039361 2 16384 1970 :=
  ⟨hints000771, length000771, checked000771, counted000771⟩

noncomputable def localPrefix000771 : CheckedPrimeCountBlock 16941057 2 65536 7957 :=
  localPrefix000770.append block000771

noncomputable def hints000772 : List Nat :=
  primeHintChunk% "../../certificates/prime-count33554432-v1/counts-000772.json" 33554432 8536063 17072129 2

theorem length000772 : hints000772.length = 16384 := by decide +kernel
theorem checked000772 : checkPrimeHints 17072129 2 hints000772 = true := by decide +kernel
theorem counted000772 : hints000772.count 0 <= 1963 := by decide +kernel

noncomputable def block000772 : CheckedPrimeCountBlock 17072129 2 16384 1963 :=
  ⟨hints000772, length000772, checked000772, counted000772⟩

noncomputable def localPrefix000772 : CheckedPrimeCountBlock 16941057 2 81920 9920 :=
  localPrefix000771.append block000772

noncomputable def hints000773 : List Nat :=
  primeHintChunk% "../../certificates/prime-count33554432-v1/counts-000773.json" 33554432 8552447 17104897 2

theorem length000773 : hints000773.length = 16384 := by decide +kernel
theorem checked000773 : checkPrimeHints 17104897 2 hints000773 = true := by decide +kernel
theorem counted000773 : hints000773.count 0 <= 1963 := by decide +kernel

noncomputable def block000773 : CheckedPrimeCountBlock 17104897 2 16384 1963 :=
  ⟨hints000773, length000773, checked000773, counted000773⟩

noncomputable def localPrefix000773 : CheckedPrimeCountBlock 16941057 2 98304 11883 :=
  localPrefix000772.append block000773

noncomputable def hints000774 : List Nat :=
  primeHintChunk% "../../certificates/prime-count33554432-v1/counts-000774.json" 33554432 8568831 17137665 2

theorem length000774 : hints000774.length = 16384 := by decide +kernel
theorem checked000774 : checkPrimeHints 17137665 2 hints000774 = true := by decide +kernel
theorem counted000774 : hints000774.count 0 <= 1924 := by decide +kernel

noncomputable def block000774 : CheckedPrimeCountBlock 17137665 2 16384 1924 :=
  ⟨hints000774, length000774, checked000774, counted000774⟩

noncomputable def localPrefix000774 : CheckedPrimeCountBlock 16941057 2 114688 13807 :=
  localPrefix000773.append block000774

noncomputable def hints000775 : List Nat :=
  primeHintChunk% "../../certificates/prime-count33554432-v1/counts-000775.json" 33554432 8585215 17170433 2

theorem length000775 : hints000775.length = 16384 := by decide +kernel
theorem checked000775 : checkPrimeHints 17170433 2 hints000775 = true := by decide +kernel
theorem counted000775 : hints000775.count 0 <= 1929 := by decide +kernel

noncomputable def block000775 : CheckedPrimeCountBlock 17170433 2 16384 1929 :=
  ⟨hints000775, length000775, checked000775, counted000775⟩

noncomputable def localPrefix000775 : CheckedPrimeCountBlock 16941057 2 131072 15736 :=
  localPrefix000774.append block000775

noncomputable def hints000776 : List Nat :=
  primeHintChunk% "../../certificates/prime-count33554432-v1/counts-000776.json" 33554432 8601599 17203201 2

theorem length000776 : hints000776.length = 16384 := by decide +kernel
theorem checked000776 : checkPrimeHints 17203201 2 hints000776 = true := by decide +kernel
theorem counted000776 : hints000776.count 0 <= 1982 := by decide +kernel

noncomputable def block000776 : CheckedPrimeCountBlock 17203201 2 16384 1982 :=
  ⟨hints000776, length000776, checked000776, counted000776⟩

noncomputable def localPrefix000776 : CheckedPrimeCountBlock 16941057 2 147456 17718 :=
  localPrefix000775.append block000776

noncomputable def hints000777 : List Nat :=
  primeHintChunk% "../../certificates/prime-count33554432-v1/counts-000777.json" 33554432 8617983 17235969 2

theorem length000777 : hints000777.length = 16384 := by decide +kernel
theorem checked000777 : checkPrimeHints 17235969 2 hints000777 = true := by decide +kernel
theorem counted000777 : hints000777.count 0 <= 1941 := by decide +kernel

noncomputable def block000777 : CheckedPrimeCountBlock 17235969 2 16384 1941 :=
  ⟨hints000777, length000777, checked000777, counted000777⟩

noncomputable def localPrefix000777 : CheckedPrimeCountBlock 16941057 2 163840 19659 :=
  localPrefix000776.append block000777

noncomputable def hints000778 : List Nat :=
  primeHintChunk% "../../certificates/prime-count33554432-v1/counts-000778.json" 33554432 8634367 17268737 2

theorem length000778 : hints000778.length = 16384 := by decide +kernel
theorem checked000778 : checkPrimeHints 17268737 2 hints000778 = true := by decide +kernel
theorem counted000778 : hints000778.count 0 <= 1999 := by decide +kernel

noncomputable def block000778 : CheckedPrimeCountBlock 17268737 2 16384 1999 :=
  ⟨hints000778, length000778, checked000778, counted000778⟩

noncomputable def localPrefix000778 : CheckedPrimeCountBlock 16941057 2 180224 21658 :=
  localPrefix000777.append block000778

noncomputable def hints000779 : List Nat :=
  primeHintChunk% "../../certificates/prime-count33554432-v1/counts-000779.json" 33554432 8650751 17301505 2

theorem length000779 : hints000779.length = 16384 := by decide +kernel
theorem checked000779 : checkPrimeHints 17301505 2 hints000779 = true := by decide +kernel
theorem counted000779 : hints000779.count 0 <= 2029 := by decide +kernel

noncomputable def block000779 : CheckedPrimeCountBlock 17301505 2 16384 2029 :=
  ⟨hints000779, length000779, checked000779, counted000779⟩

noncomputable def localPrefix000779 : CheckedPrimeCountBlock 16941057 2 196608 23687 :=
  localPrefix000778.append block000779

noncomputable def hints000780 : List Nat :=
  primeHintChunk% "../../certificates/prime-count33554432-v1/counts-000780.json" 33554432 8667135 17334273 2

theorem length000780 : hints000780.length = 16384 := by decide +kernel
theorem checked000780 : checkPrimeHints 17334273 2 hints000780 = true := by decide +kernel
theorem counted000780 : hints000780.count 0 <= 1929 := by decide +kernel

noncomputable def block000780 : CheckedPrimeCountBlock 17334273 2 16384 1929 :=
  ⟨hints000780, length000780, checked000780, counted000780⟩

noncomputable def localPrefix000780 : CheckedPrimeCountBlock 16941057 2 212992 25616 :=
  localPrefix000779.append block000780

noncomputable def hints000781 : List Nat :=
  primeHintChunk% "../../certificates/prime-count33554432-v1/counts-000781.json" 33554432 8683519 17367041 2

theorem length000781 : hints000781.length = 16384 := by decide +kernel
theorem checked000781 : checkPrimeHints 17367041 2 hints000781 = true := by decide +kernel
theorem counted000781 : hints000781.count 0 <= 1976 := by decide +kernel

noncomputable def block000781 : CheckedPrimeCountBlock 17367041 2 16384 1976 :=
  ⟨hints000781, length000781, checked000781, counted000781⟩

noncomputable def localPrefix000781 : CheckedPrimeCountBlock 16941057 2 229376 27592 :=
  localPrefix000780.append block000781

noncomputable def hints000782 : List Nat :=
  primeHintChunk% "../../certificates/prime-count33554432-v1/counts-000782.json" 33554432 8699903 17399809 2

theorem length000782 : hints000782.length = 16384 := by decide +kernel
theorem checked000782 : checkPrimeHints 17399809 2 hints000782 = true := by decide +kernel
theorem counted000782 : hints000782.count 0 <= 1994 := by decide +kernel

noncomputable def block000782 : CheckedPrimeCountBlock 17399809 2 16384 1994 :=
  ⟨hints000782, length000782, checked000782, counted000782⟩

noncomputable def localPrefix000782 : CheckedPrimeCountBlock 16941057 2 245760 29586 :=
  localPrefix000781.append block000782

noncomputable def hints000783 : List Nat :=
  primeHintChunk% "../../certificates/prime-count33554432-v1/counts-000783.json" 33554432 8716287 17432577 2

theorem length000783 : hints000783.length = 16384 := by decide +kernel
theorem checked000783 : checkPrimeHints 17432577 2 hints000783 = true := by decide +kernel
theorem counted000783 : hints000783.count 0 <= 1949 := by decide +kernel

noncomputable def block000783 : CheckedPrimeCountBlock 17432577 2 16384 1949 :=
  ⟨hints000783, length000783, checked000783, counted000783⟩

noncomputable def localPrefix000783 : CheckedPrimeCountBlock 16941057 2 262144 31535 :=
  localPrefix000782.append block000783

end JSP848.FullPrimeCount
