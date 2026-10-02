import JSP848.PrimeCountInput

set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0

namespace JSP848.FullPrimeCount

open PrimeCountInput

noncomputable def hints000816 : List Nat :=
  primeHintChunk% "../../certificates/prime-count33554432-v1/counts-000816.json" 33554432 9256959 18513921 2

theorem length000816 : hints000816.length = 16384 := by decide +kernel
theorem checked000816 : checkPrimeHints 18513921 2 hints000816 = true := by decide +kernel
theorem counted000816 : hints000816.count 0 <= 1970 := by decide +kernel

noncomputable def block000816 : CheckedPrimeCountBlock 18513921 2 16384 1970 :=
  ⟨hints000816, length000816, checked000816, counted000816⟩

noncomputable def localPrefix000816 : CheckedPrimeCountBlock 18513921 2 16384 1970 :=
  block000816

noncomputable def hints000817 : List Nat :=
  primeHintChunk% "../../certificates/prime-count33554432-v1/counts-000817.json" 33554432 9273343 18546689 2

theorem length000817 : hints000817.length = 16384 := by decide +kernel
theorem checked000817 : checkPrimeHints 18546689 2 hints000817 = true := by decide +kernel
theorem counted000817 : hints000817.count 0 <= 1952 := by decide +kernel

noncomputable def block000817 : CheckedPrimeCountBlock 18546689 2 16384 1952 :=
  ⟨hints000817, length000817, checked000817, counted000817⟩

noncomputable def localPrefix000817 : CheckedPrimeCountBlock 18513921 2 32768 3922 :=
  localPrefix000816.append block000817

noncomputable def hints000818 : List Nat :=
  primeHintChunk% "../../certificates/prime-count33554432-v1/counts-000818.json" 33554432 9289727 18579457 2

theorem length000818 : hints000818.length = 16384 := by decide +kernel
theorem checked000818 : checkPrimeHints 18579457 2 hints000818 = true := by decide +kernel
theorem counted000818 : hints000818.count 0 <= 1995 := by decide +kernel

noncomputable def block000818 : CheckedPrimeCountBlock 18579457 2 16384 1995 :=
  ⟨hints000818, length000818, checked000818, counted000818⟩

noncomputable def localPrefix000818 : CheckedPrimeCountBlock 18513921 2 49152 5917 :=
  localPrefix000817.append block000818

noncomputable def hints000819 : List Nat :=
  primeHintChunk% "../../certificates/prime-count33554432-v1/counts-000819.json" 33554432 9306111 18612225 2

theorem length000819 : hints000819.length = 16384 := by decide +kernel
theorem checked000819 : checkPrimeHints 18612225 2 hints000819 = true := by decide +kernel
theorem counted000819 : hints000819.count 0 <= 1963 := by decide +kernel

noncomputable def block000819 : CheckedPrimeCountBlock 18612225 2 16384 1963 :=
  ⟨hints000819, length000819, checked000819, counted000819⟩

noncomputable def localPrefix000819 : CheckedPrimeCountBlock 18513921 2 65536 7880 :=
  localPrefix000818.append block000819

noncomputable def hints000820 : List Nat :=
  primeHintChunk% "../../certificates/prime-count33554432-v1/counts-000820.json" 33554432 9322495 18644993 2

theorem length000820 : hints000820.length = 16384 := by decide +kernel
theorem checked000820 : checkPrimeHints 18644993 2 hints000820 = true := by decide +kernel
theorem counted000820 : hints000820.count 0 <= 1983 := by decide +kernel

noncomputable def block000820 : CheckedPrimeCountBlock 18644993 2 16384 1983 :=
  ⟨hints000820, length000820, checked000820, counted000820⟩

noncomputable def localPrefix000820 : CheckedPrimeCountBlock 18513921 2 81920 9863 :=
  localPrefix000819.append block000820

noncomputable def hints000821 : List Nat :=
  primeHintChunk% "../../certificates/prime-count33554432-v1/counts-000821.json" 33554432 9338879 18677761 2

theorem length000821 : hints000821.length = 16384 := by decide +kernel
theorem checked000821 : checkPrimeHints 18677761 2 hints000821 = true := by decide +kernel
theorem counted000821 : hints000821.count 0 <= 1923 := by decide +kernel

noncomputable def block000821 : CheckedPrimeCountBlock 18677761 2 16384 1923 :=
  ⟨hints000821, length000821, checked000821, counted000821⟩

noncomputable def localPrefix000821 : CheckedPrimeCountBlock 18513921 2 98304 11786 :=
  localPrefix000820.append block000821

noncomputable def hints000822 : List Nat :=
  primeHintChunk% "../../certificates/prime-count33554432-v1/counts-000822.json" 33554432 9355263 18710529 2

theorem length000822 : hints000822.length = 16384 := by decide +kernel
theorem checked000822 : checkPrimeHints 18710529 2 hints000822 = true := by decide +kernel
theorem counted000822 : hints000822.count 0 <= 1988 := by decide +kernel

noncomputable def block000822 : CheckedPrimeCountBlock 18710529 2 16384 1988 :=
  ⟨hints000822, length000822, checked000822, counted000822⟩

noncomputable def localPrefix000822 : CheckedPrimeCountBlock 18513921 2 114688 13774 :=
  localPrefix000821.append block000822

noncomputable def hints000823 : List Nat :=
  primeHintChunk% "../../certificates/prime-count33554432-v1/counts-000823.json" 33554432 9371647 18743297 2

theorem length000823 : hints000823.length = 16384 := by decide +kernel
theorem checked000823 : checkPrimeHints 18743297 2 hints000823 = true := by decide +kernel
theorem counted000823 : hints000823.count 0 <= 1963 := by decide +kernel

noncomputable def block000823 : CheckedPrimeCountBlock 18743297 2 16384 1963 :=
  ⟨hints000823, length000823, checked000823, counted000823⟩

noncomputable def localPrefix000823 : CheckedPrimeCountBlock 18513921 2 131072 15737 :=
  localPrefix000822.append block000823

noncomputable def hints000824 : List Nat :=
  primeHintChunk% "../../certificates/prime-count33554432-v1/counts-000824.json" 33554432 9388031 18776065 2

theorem length000824 : hints000824.length = 16384 := by decide +kernel
theorem checked000824 : checkPrimeHints 18776065 2 hints000824 = true := by decide +kernel
theorem counted000824 : hints000824.count 0 <= 1922 := by decide +kernel

noncomputable def block000824 : CheckedPrimeCountBlock 18776065 2 16384 1922 :=
  ⟨hints000824, length000824, checked000824, counted000824⟩

noncomputable def localPrefix000824 : CheckedPrimeCountBlock 18513921 2 147456 17659 :=
  localPrefix000823.append block000824

noncomputable def hints000825 : List Nat :=
  primeHintChunk% "../../certificates/prime-count33554432-v1/counts-000825.json" 33554432 9404415 18808833 2

theorem length000825 : hints000825.length = 16384 := by decide +kernel
theorem checked000825 : checkPrimeHints 18808833 2 hints000825 = true := by decide +kernel
theorem counted000825 : hints000825.count 0 <= 1964 := by decide +kernel

noncomputable def block000825 : CheckedPrimeCountBlock 18808833 2 16384 1964 :=
  ⟨hints000825, length000825, checked000825, counted000825⟩

noncomputable def localPrefix000825 : CheckedPrimeCountBlock 18513921 2 163840 19623 :=
  localPrefix000824.append block000825

noncomputable def hints000826 : List Nat :=
  primeHintChunk% "../../certificates/prime-count33554432-v1/counts-000826.json" 33554432 9420799 18841601 2

theorem length000826 : hints000826.length = 16384 := by decide +kernel
theorem checked000826 : checkPrimeHints 18841601 2 hints000826 = true := by decide +kernel
theorem counted000826 : hints000826.count 0 <= 1979 := by decide +kernel

noncomputable def block000826 : CheckedPrimeCountBlock 18841601 2 16384 1979 :=
  ⟨hints000826, length000826, checked000826, counted000826⟩

noncomputable def localPrefix000826 : CheckedPrimeCountBlock 18513921 2 180224 21602 :=
  localPrefix000825.append block000826

noncomputable def hints000827 : List Nat :=
  primeHintChunk% "../../certificates/prime-count33554432-v1/counts-000827.json" 33554432 9437183 18874369 2

theorem length000827 : hints000827.length = 16384 := by decide +kernel
theorem checked000827 : checkPrimeHints 18874369 2 hints000827 = true := by decide +kernel
theorem counted000827 : hints000827.count 0 <= 1879 := by decide +kernel

noncomputable def block000827 : CheckedPrimeCountBlock 18874369 2 16384 1879 :=
  ⟨hints000827, length000827, checked000827, counted000827⟩

noncomputable def localPrefix000827 : CheckedPrimeCountBlock 18513921 2 196608 23481 :=
  localPrefix000826.append block000827

noncomputable def hints000828 : List Nat :=
  primeHintChunk% "../../certificates/prime-count33554432-v1/counts-000828.json" 33554432 9453567 18907137 2

theorem length000828 : hints000828.length = 16384 := by decide +kernel
theorem checked000828 : checkPrimeHints 18907137 2 hints000828 = true := by decide +kernel
theorem counted000828 : hints000828.count 0 <= 2015 := by decide +kernel

noncomputable def block000828 : CheckedPrimeCountBlock 18907137 2 16384 2015 :=
  ⟨hints000828, length000828, checked000828, counted000828⟩

noncomputable def localPrefix000828 : CheckedPrimeCountBlock 18513921 2 212992 25496 :=
  localPrefix000827.append block000828

noncomputable def hints000829 : List Nat :=
  primeHintChunk% "../../certificates/prime-count33554432-v1/counts-000829.json" 33554432 9469951 18939905 2

theorem length000829 : hints000829.length = 16384 := by decide +kernel
theorem checked000829 : checkPrimeHints 18939905 2 hints000829 = true := by decide +kernel
theorem counted000829 : hints000829.count 0 <= 1943 := by decide +kernel

noncomputable def block000829 : CheckedPrimeCountBlock 18939905 2 16384 1943 :=
  ⟨hints000829, length000829, checked000829, counted000829⟩

noncomputable def localPrefix000829 : CheckedPrimeCountBlock 18513921 2 229376 27439 :=
  localPrefix000828.append block000829

noncomputable def hints000830 : List Nat :=
  primeHintChunk% "../../certificates/prime-count33554432-v1/counts-000830.json" 33554432 9486335 18972673 2

theorem length000830 : hints000830.length = 16384 := by decide +kernel
theorem checked000830 : checkPrimeHints 18972673 2 hints000830 = true := by decide +kernel
theorem counted000830 : hints000830.count 0 <= 1958 := by decide +kernel

noncomputable def block000830 : CheckedPrimeCountBlock 18972673 2 16384 1958 :=
  ⟨hints000830, length000830, checked000830, counted000830⟩

noncomputable def localPrefix000830 : CheckedPrimeCountBlock 18513921 2 245760 29397 :=
  localPrefix000829.append block000830

noncomputable def hints000831 : List Nat :=
  primeHintChunk% "../../certificates/prime-count33554432-v1/counts-000831.json" 33554432 9502719 19005441 2

theorem length000831 : hints000831.length = 16384 := by decide +kernel
theorem checked000831 : checkPrimeHints 19005441 2 hints000831 = true := by decide +kernel
theorem counted000831 : hints000831.count 0 <= 1948 := by decide +kernel

noncomputable def block000831 : CheckedPrimeCountBlock 19005441 2 16384 1948 :=
  ⟨hints000831, length000831, checked000831, counted000831⟩

noncomputable def localPrefix000831 : CheckedPrimeCountBlock 18513921 2 262144 31345 :=
  localPrefix000830.append block000831

end JSP848.FullPrimeCount
