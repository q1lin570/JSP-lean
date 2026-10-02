import JSP848.PrimeCountInput

set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0

namespace JSP848.FullPrimeCount

open PrimeCountInput

noncomputable def hints000576 : List Nat :=
  primeHintChunk% "../../certificates/prime-count33554432-v1/counts-000576.json" 33554432 5324799 10649601 2

theorem length000576 : hints000576.length = 16384 := by decide +kernel
theorem checked000576 : checkPrimeHints 10649601 2 hints000576 = true := by decide +kernel
theorem counted000576 : hints000576.count 0 <= 2050 := by decide +kernel

noncomputable def block000576 : CheckedPrimeCountBlock 10649601 2 16384 2050 :=
  ⟨hints000576, length000576, checked000576, counted000576⟩

noncomputable def localPrefix000576 : CheckedPrimeCountBlock 10649601 2 16384 2050 :=
  block000576

noncomputable def hints000577 : List Nat :=
  primeHintChunk% "../../certificates/prime-count33554432-v1/counts-000577.json" 33554432 5341183 10682369 2

theorem length000577 : hints000577.length = 16384 := by decide +kernel
theorem checked000577 : checkPrimeHints 10682369 2 hints000577 = true := by decide +kernel
theorem counted000577 : hints000577.count 0 <= 2045 := by decide +kernel

noncomputable def block000577 : CheckedPrimeCountBlock 10682369 2 16384 2045 :=
  ⟨hints000577, length000577, checked000577, counted000577⟩

noncomputable def localPrefix000577 : CheckedPrimeCountBlock 10649601 2 32768 4095 :=
  localPrefix000576.append block000577

noncomputable def hints000578 : List Nat :=
  primeHintChunk% "../../certificates/prime-count33554432-v1/counts-000578.json" 33554432 5357567 10715137 2

theorem length000578 : hints000578.length = 16384 := by decide +kernel
theorem checked000578 : checkPrimeHints 10715137 2 hints000578 = true := by decide +kernel
theorem counted000578 : hints000578.count 0 <= 2012 := by decide +kernel

noncomputable def block000578 : CheckedPrimeCountBlock 10715137 2 16384 2012 :=
  ⟨hints000578, length000578, checked000578, counted000578⟩

noncomputable def localPrefix000578 : CheckedPrimeCountBlock 10649601 2 49152 6107 :=
  localPrefix000577.append block000578

noncomputable def hints000579 : List Nat :=
  primeHintChunk% "../../certificates/prime-count33554432-v1/counts-000579.json" 33554432 5373951 10747905 2

theorem length000579 : hints000579.length = 16384 := by decide +kernel
theorem checked000579 : checkPrimeHints 10747905 2 hints000579 = true := by decide +kernel
theorem counted000579 : hints000579.count 0 <= 1998 := by decide +kernel

noncomputable def block000579 : CheckedPrimeCountBlock 10747905 2 16384 1998 :=
  ⟨hints000579, length000579, checked000579, counted000579⟩

noncomputable def localPrefix000579 : CheckedPrimeCountBlock 10649601 2 65536 8105 :=
  localPrefix000578.append block000579

noncomputable def hints000580 : List Nat :=
  primeHintChunk% "../../certificates/prime-count33554432-v1/counts-000580.json" 33554432 5390335 10780673 2

theorem length000580 : hints000580.length = 16384 := by decide +kernel
theorem checked000580 : checkPrimeHints 10780673 2 hints000580 = true := by decide +kernel
theorem counted000580 : hints000580.count 0 <= 2024 := by decide +kernel

noncomputable def block000580 : CheckedPrimeCountBlock 10780673 2 16384 2024 :=
  ⟨hints000580, length000580, checked000580, counted000580⟩

noncomputable def localPrefix000580 : CheckedPrimeCountBlock 10649601 2 81920 10129 :=
  localPrefix000579.append block000580

noncomputable def hints000581 : List Nat :=
  primeHintChunk% "../../certificates/prime-count33554432-v1/counts-000581.json" 33554432 5406719 10813441 2

theorem length000581 : hints000581.length = 16384 := by decide +kernel
theorem checked000581 : checkPrimeHints 10813441 2 hints000581 = true := by decide +kernel
theorem counted000581 : hints000581.count 0 <= 2021 := by decide +kernel

noncomputable def block000581 : CheckedPrimeCountBlock 10813441 2 16384 2021 :=
  ⟨hints000581, length000581, checked000581, counted000581⟩

noncomputable def localPrefix000581 : CheckedPrimeCountBlock 10649601 2 98304 12150 :=
  localPrefix000580.append block000581

noncomputable def hints000582 : List Nat :=
  primeHintChunk% "../../certificates/prime-count33554432-v1/counts-000582.json" 33554432 5423103 10846209 2

theorem length000582 : hints000582.length = 16384 := by decide +kernel
theorem checked000582 : checkPrimeHints 10846209 2 hints000582 = true := by decide +kernel
theorem counted000582 : hints000582.count 0 <= 2016 := by decide +kernel

noncomputable def block000582 : CheckedPrimeCountBlock 10846209 2 16384 2016 :=
  ⟨hints000582, length000582, checked000582, counted000582⟩

noncomputable def localPrefix000582 : CheckedPrimeCountBlock 10649601 2 114688 14166 :=
  localPrefix000581.append block000582

noncomputable def hints000583 : List Nat :=
  primeHintChunk% "../../certificates/prime-count33554432-v1/counts-000583.json" 33554432 5439487 10878977 2

theorem length000583 : hints000583.length = 16384 := by decide +kernel
theorem checked000583 : checkPrimeHints 10878977 2 hints000583 = true := by decide +kernel
theorem counted000583 : hints000583.count 0 <= 2035 := by decide +kernel

noncomputable def block000583 : CheckedPrimeCountBlock 10878977 2 16384 2035 :=
  ⟨hints000583, length000583, checked000583, counted000583⟩

noncomputable def localPrefix000583 : CheckedPrimeCountBlock 10649601 2 131072 16201 :=
  localPrefix000582.append block000583

noncomputable def hints000584 : List Nat :=
  primeHintChunk% "../../certificates/prime-count33554432-v1/counts-000584.json" 33554432 5455871 10911745 2

theorem length000584 : hints000584.length = 16384 := by decide +kernel
theorem checked000584 : checkPrimeHints 10911745 2 hints000584 = true := by decide +kernel
theorem counted000584 : hints000584.count 0 <= 2034 := by decide +kernel

noncomputable def block000584 : CheckedPrimeCountBlock 10911745 2 16384 2034 :=
  ⟨hints000584, length000584, checked000584, counted000584⟩

noncomputable def localPrefix000584 : CheckedPrimeCountBlock 10649601 2 147456 18235 :=
  localPrefix000583.append block000584

noncomputable def hints000585 : List Nat :=
  primeHintChunk% "../../certificates/prime-count33554432-v1/counts-000585.json" 33554432 5472255 10944513 2

theorem length000585 : hints000585.length = 16384 := by decide +kernel
theorem checked000585 : checkPrimeHints 10944513 2 hints000585 = true := by decide +kernel
theorem counted000585 : hints000585.count 0 <= 2020 := by decide +kernel

noncomputable def block000585 : CheckedPrimeCountBlock 10944513 2 16384 2020 :=
  ⟨hints000585, length000585, checked000585, counted000585⟩

noncomputable def localPrefix000585 : CheckedPrimeCountBlock 10649601 2 163840 20255 :=
  localPrefix000584.append block000585

noncomputable def hints000586 : List Nat :=
  primeHintChunk% "../../certificates/prime-count33554432-v1/counts-000586.json" 33554432 5488639 10977281 2

theorem length000586 : hints000586.length = 16384 := by decide +kernel
theorem checked000586 : checkPrimeHints 10977281 2 hints000586 = true := by decide +kernel
theorem counted000586 : hints000586.count 0 <= 2004 := by decide +kernel

noncomputable def block000586 : CheckedPrimeCountBlock 10977281 2 16384 2004 :=
  ⟨hints000586, length000586, checked000586, counted000586⟩

noncomputable def localPrefix000586 : CheckedPrimeCountBlock 10649601 2 180224 22259 :=
  localPrefix000585.append block000586

noncomputable def hints000587 : List Nat :=
  primeHintChunk% "../../certificates/prime-count33554432-v1/counts-000587.json" 33554432 5505023 11010049 2

theorem length000587 : hints000587.length = 16384 := by decide +kernel
theorem checked000587 : checkPrimeHints 11010049 2 hints000587 = true := by decide +kernel
theorem counted000587 : hints000587.count 0 <= 2003 := by decide +kernel

noncomputable def block000587 : CheckedPrimeCountBlock 11010049 2 16384 2003 :=
  ⟨hints000587, length000587, checked000587, counted000587⟩

noncomputable def localPrefix000587 : CheckedPrimeCountBlock 10649601 2 196608 24262 :=
  localPrefix000586.append block000587

noncomputable def hints000588 : List Nat :=
  primeHintChunk% "../../certificates/prime-count33554432-v1/counts-000588.json" 33554432 5521407 11042817 2

theorem length000588 : hints000588.length = 16384 := by decide +kernel
theorem checked000588 : checkPrimeHints 11042817 2 hints000588 = true := by decide +kernel
theorem counted000588 : hints000588.count 0 <= 2055 := by decide +kernel

noncomputable def block000588 : CheckedPrimeCountBlock 11042817 2 16384 2055 :=
  ⟨hints000588, length000588, checked000588, counted000588⟩

noncomputable def localPrefix000588 : CheckedPrimeCountBlock 10649601 2 212992 26317 :=
  localPrefix000587.append block000588

noncomputable def hints000589 : List Nat :=
  primeHintChunk% "../../certificates/prime-count33554432-v1/counts-000589.json" 33554432 5537791 11075585 2

theorem length000589 : hints000589.length = 16384 := by decide +kernel
theorem checked000589 : checkPrimeHints 11075585 2 hints000589 = true := by decide +kernel
theorem counted000589 : hints000589.count 0 <= 2031 := by decide +kernel

noncomputable def block000589 : CheckedPrimeCountBlock 11075585 2 16384 2031 :=
  ⟨hints000589, length000589, checked000589, counted000589⟩

noncomputable def localPrefix000589 : CheckedPrimeCountBlock 10649601 2 229376 28348 :=
  localPrefix000588.append block000589

noncomputable def hints000590 : List Nat :=
  primeHintChunk% "../../certificates/prime-count33554432-v1/counts-000590.json" 33554432 5554175 11108353 2

theorem length000590 : hints000590.length = 16384 := by decide +kernel
theorem checked000590 : checkPrimeHints 11108353 2 hints000590 = true := by decide +kernel
theorem counted000590 : hints000590.count 0 <= 1986 := by decide +kernel

noncomputable def block000590 : CheckedPrimeCountBlock 11108353 2 16384 1986 :=
  ⟨hints000590, length000590, checked000590, counted000590⟩

noncomputable def localPrefix000590 : CheckedPrimeCountBlock 10649601 2 245760 30334 :=
  localPrefix000589.append block000590

noncomputable def hints000591 : List Nat :=
  primeHintChunk% "../../certificates/prime-count33554432-v1/counts-000591.json" 33554432 5570559 11141121 2

theorem length000591 : hints000591.length = 16384 := by decide +kernel
theorem checked000591 : checkPrimeHints 11141121 2 hints000591 = true := by decide +kernel
theorem counted000591 : hints000591.count 0 <= 2052 := by decide +kernel

noncomputable def block000591 : CheckedPrimeCountBlock 11141121 2 16384 2052 :=
  ⟨hints000591, length000591, checked000591, counted000591⟩

noncomputable def localPrefix000591 : CheckedPrimeCountBlock 10649601 2 262144 32386 :=
  localPrefix000590.append block000591

end JSP848.FullPrimeCount
