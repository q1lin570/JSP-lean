import JSP848.PrimeCountInput

set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0

namespace JSP848.FullPrimeCount

open PrimeCountInput

noncomputable def hints000656 : List Nat :=
  primeHintChunk% "../../certificates/prime-count33554432-v1/counts-000656.json" 33554432 6635519 13271041 2

theorem length000656 : hints000656.length = 16384 := by decide +kernel
theorem checked000656 : checkPrimeHints 13271041 2 hints000656 = true := by decide +kernel
theorem counted000656 : hints000656.count 0 <= 2006 := by decide +kernel

noncomputable def block000656 : CheckedPrimeCountBlock 13271041 2 16384 2006 :=
  ⟨hints000656, length000656, checked000656, counted000656⟩

noncomputable def localPrefix000656 : CheckedPrimeCountBlock 13271041 2 16384 2006 :=
  block000656

noncomputable def hints000657 : List Nat :=
  primeHintChunk% "../../certificates/prime-count33554432-v1/counts-000657.json" 33554432 6651903 13303809 2

theorem length000657 : hints000657.length = 16384 := by decide +kernel
theorem checked000657 : checkPrimeHints 13303809 2 hints000657 = true := by decide +kernel
theorem counted000657 : hints000657.count 0 <= 2007 := by decide +kernel

noncomputable def block000657 : CheckedPrimeCountBlock 13303809 2 16384 2007 :=
  ⟨hints000657, length000657, checked000657, counted000657⟩

noncomputable def localPrefix000657 : CheckedPrimeCountBlock 13271041 2 32768 4013 :=
  localPrefix000656.append block000657

noncomputable def hints000658 : List Nat :=
  primeHintChunk% "../../certificates/prime-count33554432-v1/counts-000658.json" 33554432 6668287 13336577 2

theorem length000658 : hints000658.length = 16384 := by decide +kernel
theorem checked000658 : checkPrimeHints 13336577 2 hints000658 = true := by decide +kernel
theorem counted000658 : hints000658.count 0 <= 2010 := by decide +kernel

noncomputable def block000658 : CheckedPrimeCountBlock 13336577 2 16384 2010 :=
  ⟨hints000658, length000658, checked000658, counted000658⟩

noncomputable def localPrefix000658 : CheckedPrimeCountBlock 13271041 2 49152 6023 :=
  localPrefix000657.append block000658

noncomputable def hints000659 : List Nat :=
  primeHintChunk% "../../certificates/prime-count33554432-v1/counts-000659.json" 33554432 6684671 13369345 2

theorem length000659 : hints000659.length = 16384 := by decide +kernel
theorem checked000659 : checkPrimeHints 13369345 2 hints000659 = true := by decide +kernel
theorem counted000659 : hints000659.count 0 <= 1993 := by decide +kernel

noncomputable def block000659 : CheckedPrimeCountBlock 13369345 2 16384 1993 :=
  ⟨hints000659, length000659, checked000659, counted000659⟩

noncomputable def localPrefix000659 : CheckedPrimeCountBlock 13271041 2 65536 8016 :=
  localPrefix000658.append block000659

noncomputable def hints000660 : List Nat :=
  primeHintChunk% "../../certificates/prime-count33554432-v1/counts-000660.json" 33554432 6701055 13402113 2

theorem length000660 : hints000660.length = 16384 := by decide +kernel
theorem checked000660 : checkPrimeHints 13402113 2 hints000660 = true := by decide +kernel
theorem counted000660 : hints000660.count 0 <= 1975 := by decide +kernel

noncomputable def block000660 : CheckedPrimeCountBlock 13402113 2 16384 1975 :=
  ⟨hints000660, length000660, checked000660, counted000660⟩

noncomputable def localPrefix000660 : CheckedPrimeCountBlock 13271041 2 81920 9991 :=
  localPrefix000659.append block000660

noncomputable def hints000661 : List Nat :=
  primeHintChunk% "../../certificates/prime-count33554432-v1/counts-000661.json" 33554432 6717439 13434881 2

theorem length000661 : hints000661.length = 16384 := by decide +kernel
theorem checked000661 : checkPrimeHints 13434881 2 hints000661 = true := by decide +kernel
theorem counted000661 : hints000661.count 0 <= 1964 := by decide +kernel

noncomputable def block000661 : CheckedPrimeCountBlock 13434881 2 16384 1964 :=
  ⟨hints000661, length000661, checked000661, counted000661⟩

noncomputable def localPrefix000661 : CheckedPrimeCountBlock 13271041 2 98304 11955 :=
  localPrefix000660.append block000661

noncomputable def hints000662 : List Nat :=
  primeHintChunk% "../../certificates/prime-count33554432-v1/counts-000662.json" 33554432 6733823 13467649 2

theorem length000662 : hints000662.length = 16384 := by decide +kernel
theorem checked000662 : checkPrimeHints 13467649 2 hints000662 = true := by decide +kernel
theorem counted000662 : hints000662.count 0 <= 1995 := by decide +kernel

noncomputable def block000662 : CheckedPrimeCountBlock 13467649 2 16384 1995 :=
  ⟨hints000662, length000662, checked000662, counted000662⟩

noncomputable def localPrefix000662 : CheckedPrimeCountBlock 13271041 2 114688 13950 :=
  localPrefix000661.append block000662

noncomputable def hints000663 : List Nat :=
  primeHintChunk% "../../certificates/prime-count33554432-v1/counts-000663.json" 33554432 6750207 13500417 2

theorem length000663 : hints000663.length = 16384 := by decide +kernel
theorem checked000663 : checkPrimeHints 13500417 2 hints000663 = true := by decide +kernel
theorem counted000663 : hints000663.count 0 <= 1977 := by decide +kernel

noncomputable def block000663 : CheckedPrimeCountBlock 13500417 2 16384 1977 :=
  ⟨hints000663, length000663, checked000663, counted000663⟩

noncomputable def localPrefix000663 : CheckedPrimeCountBlock 13271041 2 131072 15927 :=
  localPrefix000662.append block000663

noncomputable def hints000664 : List Nat :=
  primeHintChunk% "../../certificates/prime-count33554432-v1/counts-000664.json" 33554432 6766591 13533185 2

theorem length000664 : hints000664.length = 16384 := by decide +kernel
theorem checked000664 : checkPrimeHints 13533185 2 hints000664 = true := by decide +kernel
theorem counted000664 : hints000664.count 0 <= 1980 := by decide +kernel

noncomputable def block000664 : CheckedPrimeCountBlock 13533185 2 16384 1980 :=
  ⟨hints000664, length000664, checked000664, counted000664⟩

noncomputable def localPrefix000664 : CheckedPrimeCountBlock 13271041 2 147456 17907 :=
  localPrefix000663.append block000664

noncomputable def hints000665 : List Nat :=
  primeHintChunk% "../../certificates/prime-count33554432-v1/counts-000665.json" 33554432 6782975 13565953 2

theorem length000665 : hints000665.length = 16384 := by decide +kernel
theorem checked000665 : checkPrimeHints 13565953 2 hints000665 = true := by decide +kernel
theorem counted000665 : hints000665.count 0 <= 2007 := by decide +kernel

noncomputable def block000665 : CheckedPrimeCountBlock 13565953 2 16384 2007 :=
  ⟨hints000665, length000665, checked000665, counted000665⟩

noncomputable def localPrefix000665 : CheckedPrimeCountBlock 13271041 2 163840 19914 :=
  localPrefix000664.append block000665

noncomputable def hints000666 : List Nat :=
  primeHintChunk% "../../certificates/prime-count33554432-v1/counts-000666.json" 33554432 6799359 13598721 2

theorem length000666 : hints000666.length = 16384 := by decide +kernel
theorem checked000666 : checkPrimeHints 13598721 2 hints000666 = true := by decide +kernel
theorem counted000666 : hints000666.count 0 <= 2016 := by decide +kernel

noncomputable def block000666 : CheckedPrimeCountBlock 13598721 2 16384 2016 :=
  ⟨hints000666, length000666, checked000666, counted000666⟩

noncomputable def localPrefix000666 : CheckedPrimeCountBlock 13271041 2 180224 21930 :=
  localPrefix000665.append block000666

noncomputable def hints000667 : List Nat :=
  primeHintChunk% "../../certificates/prime-count33554432-v1/counts-000667.json" 33554432 6815743 13631489 2

theorem length000667 : hints000667.length = 16384 := by decide +kernel
theorem checked000667 : checkPrimeHints 13631489 2 hints000667 = true := by decide +kernel
theorem counted000667 : hints000667.count 0 <= 2000 := by decide +kernel

noncomputable def block000667 : CheckedPrimeCountBlock 13631489 2 16384 2000 :=
  ⟨hints000667, length000667, checked000667, counted000667⟩

noncomputable def localPrefix000667 : CheckedPrimeCountBlock 13271041 2 196608 23930 :=
  localPrefix000666.append block000667

noncomputable def hints000668 : List Nat :=
  primeHintChunk% "../../certificates/prime-count33554432-v1/counts-000668.json" 33554432 6832127 13664257 2

theorem length000668 : hints000668.length = 16384 := by decide +kernel
theorem checked000668 : checkPrimeHints 13664257 2 hints000668 = true := by decide +kernel
theorem counted000668 : hints000668.count 0 <= 2021 := by decide +kernel

noncomputable def block000668 : CheckedPrimeCountBlock 13664257 2 16384 2021 :=
  ⟨hints000668, length000668, checked000668, counted000668⟩

noncomputable def localPrefix000668 : CheckedPrimeCountBlock 13271041 2 212992 25951 :=
  localPrefix000667.append block000668

noncomputable def hints000669 : List Nat :=
  primeHintChunk% "../../certificates/prime-count33554432-v1/counts-000669.json" 33554432 6848511 13697025 2

theorem length000669 : hints000669.length = 16384 := by decide +kernel
theorem checked000669 : checkPrimeHints 13697025 2 hints000669 = true := by decide +kernel
theorem counted000669 : hints000669.count 0 <= 1989 := by decide +kernel

noncomputable def block000669 : CheckedPrimeCountBlock 13697025 2 16384 1989 :=
  ⟨hints000669, length000669, checked000669, counted000669⟩

noncomputable def localPrefix000669 : CheckedPrimeCountBlock 13271041 2 229376 27940 :=
  localPrefix000668.append block000669

noncomputable def hints000670 : List Nat :=
  primeHintChunk% "../../certificates/prime-count33554432-v1/counts-000670.json" 33554432 6864895 13729793 2

theorem length000670 : hints000670.length = 16384 := by decide +kernel
theorem checked000670 : checkPrimeHints 13729793 2 hints000670 = true := by decide +kernel
theorem counted000670 : hints000670.count 0 <= 1986 := by decide +kernel

noncomputable def block000670 : CheckedPrimeCountBlock 13729793 2 16384 1986 :=
  ⟨hints000670, length000670, checked000670, counted000670⟩

noncomputable def localPrefix000670 : CheckedPrimeCountBlock 13271041 2 245760 29926 :=
  localPrefix000669.append block000670

noncomputable def hints000671 : List Nat :=
  primeHintChunk% "../../certificates/prime-count33554432-v1/counts-000671.json" 33554432 6881279 13762561 2

theorem length000671 : hints000671.length = 16384 := by decide +kernel
theorem checked000671 : checkPrimeHints 13762561 2 hints000671 = true := by decide +kernel
theorem counted000671 : hints000671.count 0 <= 2027 := by decide +kernel

noncomputable def block000671 : CheckedPrimeCountBlock 13762561 2 16384 2027 :=
  ⟨hints000671, length000671, checked000671, counted000671⟩

noncomputable def localPrefix000671 : CheckedPrimeCountBlock 13271041 2 262144 31953 :=
  localPrefix000670.append block000671

end JSP848.FullPrimeCount
