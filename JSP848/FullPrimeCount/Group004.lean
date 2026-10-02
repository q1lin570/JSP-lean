import JSP848.PrimeCountInput

set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0

namespace JSP848.FullPrimeCount

open PrimeCountInput

noncomputable def hints000064 : List Nat :=
  primeHintChunk% "../../certificates/prime-count33554432-v1/counts-000064.json" 33554432 21705 43413 2

theorem length000064 : hints000064.length = 339 := by decide +kernel
theorem checked000064 : checkPrimeHints 43413 2 hints000064 = true := by decide +kernel
theorem counted000064 : hints000064.count 0 <= 62 := by decide +kernel

noncomputable def block000064 : CheckedPrimeCountBlock 43413 2 339 62 :=
  ⟨hints000064, length000064, checked000064, counted000064⟩

noncomputable def localPrefix000064 : CheckedPrimeCountBlock 43413 2 339 62 :=
  block000064

noncomputable def hints000065 : List Nat :=
  primeHintChunk% "../../certificates/prime-count33554432-v1/counts-000065.json" 33554432 22044 44091 2

theorem length000065 : hints000065.length = 344 := by decide +kernel
theorem checked000065 : checkPrimeHints 44091 2 hints000065 = true := by decide +kernel
theorem counted000065 : hints000065.count 0 <= 65 := by decide +kernel

noncomputable def block000065 : CheckedPrimeCountBlock 44091 2 344 65 :=
  ⟨hints000065, length000065, checked000065, counted000065⟩

noncomputable def localPrefix000065 : CheckedPrimeCountBlock 43413 2 683 127 :=
  localPrefix000064.append block000065

noncomputable def hints000066 : List Nat :=
  primeHintChunk% "../../certificates/prime-count33554432-v1/counts-000066.json" 33554432 22388 44779 2

theorem length000066 : hints000066.length = 349 := by decide +kernel
theorem checked000066 : checkPrimeHints 44779 2 hints000066 = true := by decide +kernel
theorem counted000066 : hints000066.count 0 <= 60 := by decide +kernel

noncomputable def block000066 : CheckedPrimeCountBlock 44779 2 349 60 :=
  ⟨hints000066, length000066, checked000066, counted000066⟩

noncomputable def localPrefix000066 : CheckedPrimeCountBlock 43413 2 1032 187 :=
  localPrefix000065.append block000066

noncomputable def hints000067 : List Nat :=
  primeHintChunk% "../../certificates/prime-count33554432-v1/counts-000067.json" 33554432 22737 45477 2

theorem length000067 : hints000067.length = 355 := by decide +kernel
theorem checked000067 : checkPrimeHints 45477 2 hints000067 = true := by decide +kernel
theorem counted000067 : hints000067.count 0 <= 64 := by decide +kernel

noncomputable def block000067 : CheckedPrimeCountBlock 45477 2 355 64 :=
  ⟨hints000067, length000067, checked000067, counted000067⟩

noncomputable def localPrefix000067 : CheckedPrimeCountBlock 43413 2 1387 251 :=
  localPrefix000066.append block000067

noncomputable def hints000068 : List Nat :=
  primeHintChunk% "../../certificates/prime-count33554432-v1/counts-000068.json" 33554432 23092 46187 2

theorem length000068 : hints000068.length = 360 := by decide +kernel
theorem checked000068 : checkPrimeHints 46187 2 hints000068 = true := by decide +kernel
theorem counted000068 : hints000068.count 0 <= 68 := by decide +kernel

noncomputable def block000068 : CheckedPrimeCountBlock 46187 2 360 68 :=
  ⟨hints000068, length000068, checked000068, counted000068⟩

noncomputable def localPrefix000068 : CheckedPrimeCountBlock 43413 2 1747 319 :=
  localPrefix000067.append block000068

noncomputable def hints000069 : List Nat :=
  primeHintChunk% "../../certificates/prime-count33554432-v1/counts-000069.json" 33554432 23452 46907 2

theorem length000069 : hints000069.length = 366 := by decide +kernel
theorem checked000069 : checkPrimeHints 46907 2 hints000069 = true := by decide +kernel
theorem counted000069 : hints000069.count 0 <= 64 := by decide +kernel

noncomputable def block000069 : CheckedPrimeCountBlock 46907 2 366 64 :=
  ⟨hints000069, length000069, checked000069, counted000069⟩

noncomputable def localPrefix000069 : CheckedPrimeCountBlock 43413 2 2113 383 :=
  localPrefix000068.append block000069

noncomputable def hints000070 : List Nat :=
  primeHintChunk% "../../certificates/prime-count33554432-v1/counts-000070.json" 33554432 23818 47639 2

theorem length000070 : hints000070.length = 372 := by decide +kernel
theorem checked000070 : checkPrimeHints 47639 2 hints000070 = true := by decide +kernel
theorem counted000070 : hints000070.count 0 <= 66 := by decide +kernel

noncomputable def block000070 : CheckedPrimeCountBlock 47639 2 372 66 :=
  ⟨hints000070, length000070, checked000070, counted000070⟩

noncomputable def localPrefix000070 : CheckedPrimeCountBlock 43413 2 2485 449 :=
  localPrefix000069.append block000070

noncomputable def hints000071 : List Nat :=
  primeHintChunk% "../../certificates/prime-count33554432-v1/counts-000071.json" 33554432 24190 48383 2

theorem length000071 : hints000071.length = 377 := by decide +kernel
theorem checked000071 : checkPrimeHints 48383 2 hints000071 = true := by decide +kernel
theorem counted000071 : hints000071.count 0 <= 74 := by decide +kernel

noncomputable def block000071 : CheckedPrimeCountBlock 48383 2 377 74 :=
  ⟨hints000071, length000071, checked000071, counted000071⟩

noncomputable def localPrefix000071 : CheckedPrimeCountBlock 43413 2 2862 523 :=
  localPrefix000070.append block000071

noncomputable def hints000072 : List Nat :=
  primeHintChunk% "../../certificates/prime-count33554432-v1/counts-000072.json" 33554432 24567 49137 2

theorem length000072 : hints000072.length = 383 := by decide +kernel
theorem checked000072 : checkPrimeHints 49137 2 hints000072 = true := by decide +kernel
theorem counted000072 : hints000072.count 0 <= 73 := by decide +kernel

noncomputable def block000072 : CheckedPrimeCountBlock 49137 2 383 73 :=
  ⟨hints000072, length000072, checked000072, counted000072⟩

noncomputable def localPrefix000072 : CheckedPrimeCountBlock 43413 2 3245 596 :=
  localPrefix000071.append block000072

noncomputable def hints000073 : List Nat :=
  primeHintChunk% "../../certificates/prime-count33554432-v1/counts-000073.json" 33554432 24950 49903 2

theorem length000073 : hints000073.length = 389 := by decide +kernel
theorem checked000073 : checkPrimeHints 49903 2 hints000073 = true := by decide +kernel
theorem counted000073 : hints000073.count 0 <= 72 := by decide +kernel

noncomputable def block000073 : CheckedPrimeCountBlock 49903 2 389 72 :=
  ⟨hints000073, length000073, checked000073, counted000073⟩

noncomputable def localPrefix000073 : CheckedPrimeCountBlock 43413 2 3634 668 :=
  localPrefix000072.append block000073

noncomputable def hints000074 : List Nat :=
  primeHintChunk% "../../certificates/prime-count33554432-v1/counts-000074.json" 33554432 25339 50681 2

theorem length000074 : hints000074.length = 395 := by decide +kernel
theorem checked000074 : checkPrimeHints 50681 2 hints000074 = true := by decide +kernel
theorem counted000074 : hints000074.count 0 <= 71 := by decide +kernel

noncomputable def block000074 : CheckedPrimeCountBlock 50681 2 395 71 :=
  ⟨hints000074, length000074, checked000074, counted000074⟩

noncomputable def localPrefix000074 : CheckedPrimeCountBlock 43413 2 4029 739 :=
  localPrefix000073.append block000074

noncomputable def hints000075 : List Nat :=
  primeHintChunk% "../../certificates/prime-count33554432-v1/counts-000075.json" 33554432 25734 51471 2

theorem length000075 : hints000075.length = 402 := by decide +kernel
theorem checked000075 : checkPrimeHints 51471 2 hints000075 = true := by decide +kernel
theorem counted000075 : hints000075.count 0 <= 78 := by decide +kernel

noncomputable def block000075 : CheckedPrimeCountBlock 51471 2 402 78 :=
  ⟨hints000075, length000075, checked000075, counted000075⟩

noncomputable def localPrefix000075 : CheckedPrimeCountBlock 43413 2 4431 817 :=
  localPrefix000074.append block000075

noncomputable def hints000076 : List Nat :=
  primeHintChunk% "../../certificates/prime-count33554432-v1/counts-000076.json" 33554432 26136 52275 2

theorem length000076 : hints000076.length = 408 := by decide +kernel
theorem checked000076 : checkPrimeHints 52275 2 hints000076 = true := by decide +kernel
theorem counted000076 : hints000076.count 0 <= 72 := by decide +kernel

noncomputable def block000076 : CheckedPrimeCountBlock 52275 2 408 72 :=
  ⟨hints000076, length000076, checked000076, counted000076⟩

noncomputable def localPrefix000076 : CheckedPrimeCountBlock 43413 2 4839 889 :=
  localPrefix000075.append block000076

noncomputable def hints000077 : List Nat :=
  primeHintChunk% "../../certificates/prime-count33554432-v1/counts-000077.json" 33554432 26544 53091 2

theorem length000077 : hints000077.length = 414 := by decide +kernel
theorem checked000077 : checkPrimeHints 53091 2 hints000077 = true := by decide +kernel
theorem counted000077 : hints000077.count 0 <= 77 := by decide +kernel

noncomputable def block000077 : CheckedPrimeCountBlock 53091 2 414 77 :=
  ⟨hints000077, length000077, checked000077, counted000077⟩

noncomputable def localPrefix000077 : CheckedPrimeCountBlock 43413 2 5253 966 :=
  localPrefix000076.append block000077

noncomputable def hints000078 : List Nat :=
  primeHintChunk% "../../certificates/prime-count33554432-v1/counts-000078.json" 33554432 26958 53919 2

theorem length000078 : hints000078.length = 421 := by decide +kernel
theorem checked000078 : checkPrimeHints 53919 2 hints000078 = true := by decide +kernel
theorem counted000078 : hints000078.count 0 <= 77 := by decide +kernel

noncomputable def block000078 : CheckedPrimeCountBlock 53919 2 421 77 :=
  ⟨hints000078, length000078, checked000078, counted000078⟩

noncomputable def localPrefix000078 : CheckedPrimeCountBlock 43413 2 5674 1043 :=
  localPrefix000077.append block000078

noncomputable def hints000079 : List Nat :=
  primeHintChunk% "../../certificates/prime-count33554432-v1/counts-000079.json" 33554432 27379 54761 2

theorem length000079 : hints000079.length = 427 := by decide +kernel
theorem checked000079 : checkPrimeHints 54761 2 hints000079 = true := by decide +kernel
theorem counted000079 : hints000079.count 0 <= 71 := by decide +kernel

noncomputable def block000079 : CheckedPrimeCountBlock 54761 2 427 71 :=
  ⟨hints000079, length000079, checked000079, counted000079⟩

noncomputable def localPrefix000079 : CheckedPrimeCountBlock 43413 2 6101 1114 :=
  localPrefix000078.append block000079

end JSP848.FullPrimeCount
