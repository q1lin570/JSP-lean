import JSP848.PrimeCountInput

set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0

namespace JSP848.FullPrimeCount

open PrimeCountInput

noncomputable def hints000128 : List Nat :=
  primeHintChunk% "../../certificates/prime-count33554432-v1/counts-000128.json" 33554432 58496 116995 2

theorem length000128 : hints000128.length = 914 := by decide +kernel
theorem checked000128 : checkPrimeHints 116995 2 hints000128 = true := by decide +kernel
theorem counted000128 : hints000128.count 0 <= 155 := by decide +kernel

noncomputable def block000128 : CheckedPrimeCountBlock 116995 2 914 155 :=
  ⟨hints000128, length000128, checked000128, counted000128⟩

noncomputable def localPrefix000128 : CheckedPrimeCountBlock 116995 2 914 155 :=
  block000128

noncomputable def hints000129 : List Nat :=
  primeHintChunk% "../../certificates/prime-count33554432-v1/counts-000129.json" 33554432 59410 118823 2

theorem length000129 : hints000129.length = 928 := by decide +kernel
theorem checked000129 : checkPrimeHints 118823 2 hints000129 = true := by decide +kernel
theorem counted000129 : hints000129.count 0 <= 156 := by decide +kernel

noncomputable def block000129 : CheckedPrimeCountBlock 118823 2 928 156 :=
  ⟨hints000129, length000129, checked000129, counted000129⟩

noncomputable def localPrefix000129 : CheckedPrimeCountBlock 116995 2 1842 311 :=
  localPrefix000128.append block000129

noncomputable def hints000130 : List Nat :=
  primeHintChunk% "../../certificates/prime-count33554432-v1/counts-000130.json" 33554432 60338 120679 2

theorem length000130 : hints000130.length = 942 := by decide +kernel
theorem checked000130 : checkPrimeHints 120679 2 hints000130 = true := by decide +kernel
theorem counted000130 : hints000130.count 0 <= 173 := by decide +kernel

noncomputable def block000130 : CheckedPrimeCountBlock 120679 2 942 173 :=
  ⟨hints000130, length000130, checked000130, counted000130⟩

noncomputable def localPrefix000130 : CheckedPrimeCountBlock 116995 2 2784 484 :=
  localPrefix000129.append block000130

noncomputable def hints000131 : List Nat :=
  primeHintChunk% "../../certificates/prime-count33554432-v1/counts-000131.json" 33554432 61280 122563 2

theorem length000131 : hints000131.length = 957 := by decide +kernel
theorem checked000131 : checkPrimeHints 122563 2 hints000131 = true := by decide +kernel
theorem counted000131 : hints000131.count 0 <= 161 := by decide +kernel

noncomputable def block000131 : CheckedPrimeCountBlock 122563 2 957 161 :=
  ⟨hints000131, length000131, checked000131, counted000131⟩

noncomputable def localPrefix000131 : CheckedPrimeCountBlock 116995 2 3741 645 :=
  localPrefix000130.append block000131

noncomputable def hints000132 : List Nat :=
  primeHintChunk% "../../certificates/prime-count33554432-v1/counts-000132.json" 33554432 62237 124477 2

theorem length000132 : hints000132.length = 972 := by decide +kernel
theorem checked000132 : checkPrimeHints 124477 2 hints000132 = true := by decide +kernel
theorem counted000132 : hints000132.count 0 <= 164 := by decide +kernel

noncomputable def block000132 : CheckedPrimeCountBlock 124477 2 972 164 :=
  ⟨hints000132, length000132, checked000132, counted000132⟩

noncomputable def localPrefix000132 : CheckedPrimeCountBlock 116995 2 4713 809 :=
  localPrefix000131.append block000132

noncomputable def hints000133 : List Nat :=
  primeHintChunk% "../../certificates/prime-count33554432-v1/counts-000133.json" 33554432 63209 126421 2

theorem length000133 : hints000133.length = 987 := by decide +kernel
theorem checked000133 : checkPrimeHints 126421 2 hints000133 = true := by decide +kernel
theorem counted000133 : hints000133.count 0 <= 166 := by decide +kernel

noncomputable def block000133 : CheckedPrimeCountBlock 126421 2 987 166 :=
  ⟨hints000133, length000133, checked000133, counted000133⟩

noncomputable def localPrefix000133 : CheckedPrimeCountBlock 116995 2 5700 975 :=
  localPrefix000132.append block000133

noncomputable def hints000134 : List Nat :=
  primeHintChunk% "../../certificates/prime-count33554432-v1/counts-000134.json" 33554432 64196 128395 2

theorem length000134 : hints000134.length = 1003 := by decide +kernel
theorem checked000134 : checkPrimeHints 128395 2 hints000134 = true := by decide +kernel
theorem counted000134 : hints000134.count 0 <= 175 := by decide +kernel

noncomputable def block000134 : CheckedPrimeCountBlock 128395 2 1003 175 :=
  ⟨hints000134, length000134, checked000134, counted000134⟩

noncomputable def localPrefix000134 : CheckedPrimeCountBlock 116995 2 6703 1150 :=
  localPrefix000133.append block000134

noncomputable def hints000135 : List Nat :=
  primeHintChunk% "../../certificates/prime-count33554432-v1/counts-000135.json" 33554432 65199 130401 2

theorem length000135 : hints000135.length = 1018 := by decide +kernel
theorem checked000135 : checkPrimeHints 130401 2 hints000135 = true := by decide +kernel
theorem counted000135 : hints000135.count 0 <= 167 := by decide +kernel

noncomputable def block000135 : CheckedPrimeCountBlock 130401 2 1018 167 :=
  ⟨hints000135, length000135, checked000135, counted000135⟩

noncomputable def localPrefix000135 : CheckedPrimeCountBlock 116995 2 7721 1317 :=
  localPrefix000134.append block000135

noncomputable def hints000136 : List Nat :=
  primeHintChunk% "../../certificates/prime-count33554432-v1/counts-000136.json" 33554432 66217 132437 2

theorem length000136 : hints000136.length = 1034 := by decide +kernel
theorem checked000136 : checkPrimeHints 132437 2 hints000136 = true := by decide +kernel
theorem counted000136 : hints000136.count 0 <= 178 := by decide +kernel

noncomputable def block000136 : CheckedPrimeCountBlock 132437 2 1034 178 :=
  ⟨hints000136, length000136, checked000136, counted000136⟩

noncomputable def localPrefix000136 : CheckedPrimeCountBlock 116995 2 8755 1495 :=
  localPrefix000135.append block000136

noncomputable def hints000137 : List Nat :=
  primeHintChunk% "../../certificates/prime-count33554432-v1/counts-000137.json" 33554432 67251 134505 2

theorem length000137 : hints000137.length = 1050 := by decide +kernel
theorem checked000137 : checkPrimeHints 134505 2 hints000137 = true := by decide +kernel
theorem counted000137 : hints000137.count 0 <= 185 := by decide +kernel

noncomputable def block000137 : CheckedPrimeCountBlock 134505 2 1050 185 :=
  ⟨hints000137, length000137, checked000137, counted000137⟩

noncomputable def localPrefix000137 : CheckedPrimeCountBlock 116995 2 9805 1680 :=
  localPrefix000136.append block000137

noncomputable def hints000138 : List Nat :=
  primeHintChunk% "../../certificates/prime-count33554432-v1/counts-000138.json" 33554432 68301 136605 2

theorem length000138 : hints000138.length = 1067 := by decide +kernel
theorem checked000138 : checkPrimeHints 136605 2 hints000138 = true := by decide +kernel
theorem counted000138 : hints000138.count 0 <= 181 := by decide +kernel

noncomputable def block000138 : CheckedPrimeCountBlock 136605 2 1067 181 :=
  ⟨hints000138, length000138, checked000138, counted000138⟩

noncomputable def localPrefix000138 : CheckedPrimeCountBlock 116995 2 10872 1861 :=
  localPrefix000137.append block000138

noncomputable def hints000139 : List Nat :=
  primeHintChunk% "../../certificates/prime-count33554432-v1/counts-000139.json" 33554432 69368 138739 2

theorem length000139 : hints000139.length = 1083 := by decide +kernel
theorem checked000139 : checkPrimeHints 138739 2 hints000139 = true := by decide +kernel
theorem counted000139 : hints000139.count 0 <= 185 := by decide +kernel

noncomputable def block000139 : CheckedPrimeCountBlock 138739 2 1083 185 :=
  ⟨hints000139, length000139, checked000139, counted000139⟩

noncomputable def localPrefix000139 : CheckedPrimeCountBlock 116995 2 11955 2046 :=
  localPrefix000138.append block000139

noncomputable def hints000140 : List Nat :=
  primeHintChunk% "../../certificates/prime-count33554432-v1/counts-000140.json" 33554432 70451 140905 2

theorem length000140 : hints000140.length = 1100 := by decide +kernel
theorem checked000140 : checkPrimeHints 140905 2 hints000140 = true := by decide +kernel
theorem counted000140 : hints000140.count 0 <= 178 := by decide +kernel

noncomputable def block000140 : CheckedPrimeCountBlock 140905 2 1100 178 :=
  ⟨hints000140, length000140, checked000140, counted000140⟩

noncomputable def localPrefix000140 : CheckedPrimeCountBlock 116995 2 13055 2224 :=
  localPrefix000139.append block000140

noncomputable def hints000141 : List Nat :=
  primeHintChunk% "../../certificates/prime-count33554432-v1/counts-000141.json" 33554432 71551 143105 2

theorem length000141 : hints000141.length = 1118 := by decide +kernel
theorem checked000141 : checkPrimeHints 143105 2 hints000141 = true := by decide +kernel
theorem counted000141 : hints000141.count 0 <= 178 := by decide +kernel

noncomputable def block000141 : CheckedPrimeCountBlock 143105 2 1118 178 :=
  ⟨hints000141, length000141, checked000141, counted000141⟩

noncomputable def localPrefix000141 : CheckedPrimeCountBlock 116995 2 14173 2402 :=
  localPrefix000140.append block000141

noncomputable def hints000142 : List Nat :=
  primeHintChunk% "../../certificates/prime-count33554432-v1/counts-000142.json" 33554432 72669 145341 2

theorem length000142 : hints000142.length = 1135 := by decide +kernel
theorem checked000142 : checkPrimeHints 145341 2 hints000142 = true := by decide +kernel
theorem counted000142 : hints000142.count 0 <= 196 := by decide +kernel

noncomputable def block000142 : CheckedPrimeCountBlock 145341 2 1135 196 :=
  ⟨hints000142, length000142, checked000142, counted000142⟩

noncomputable def localPrefix000142 : CheckedPrimeCountBlock 116995 2 15308 2598 :=
  localPrefix000141.append block000142

noncomputable def hints000143 : List Nat :=
  primeHintChunk% "../../certificates/prime-count33554432-v1/counts-000143.json" 33554432 73804 147611 2

theorem length000143 : hints000143.length = 1153 := by decide +kernel
theorem checked000143 : checkPrimeHints 147611 2 hints000143 = true := by decide +kernel
theorem counted000143 : hints000143.count 0 <= 199 := by decide +kernel

noncomputable def block000143 : CheckedPrimeCountBlock 147611 2 1153 199 :=
  ⟨hints000143, length000143, checked000143, counted000143⟩

noncomputable def localPrefix000143 : CheckedPrimeCountBlock 116995 2 16461 2797 :=
  localPrefix000142.append block000143

end JSP848.FullPrimeCount
