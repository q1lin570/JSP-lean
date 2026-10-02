import JSP848.PrimeCountInput

set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0

namespace JSP848.FullPrimeCount

open PrimeCountInput

noncomputable def hints000160 : List Nat :=
  primeHintChunk% "../../certificates/prime-count33554432-v1/counts-000160.json" 33554432 96052 192107 2

theorem length000160 : hints000160.length = 1500 := by decide +kernel
theorem checked000160 : checkPrimeHints 192107 2 hints000160 = true := by decide +kernel
theorem counted000160 : hints000160.count 0 <= 247 := by decide +kernel

noncomputable def block000160 : CheckedPrimeCountBlock 192107 2 1500 247 :=
  ⟨hints000160, length000160, checked000160, counted000160⟩

noncomputable def localPrefix000160 : CheckedPrimeCountBlock 192107 2 1500 247 :=
  block000160

noncomputable def hints000161 : List Nat :=
  primeHintChunk% "../../certificates/prime-count33554432-v1/counts-000161.json" 33554432 97552 195107 2

theorem length000161 : hints000161.length = 1524 := by decide +kernel
theorem checked000161 : checkPrimeHints 195107 2 hints000161 = true := by decide +kernel
theorem counted000161 : hints000161.count 0 <= 250 := by decide +kernel

noncomputable def block000161 : CheckedPrimeCountBlock 195107 2 1524 250 :=
  ⟨hints000161, length000161, checked000161, counted000161⟩

noncomputable def localPrefix000161 : CheckedPrimeCountBlock 192107 2 3024 497 :=
  localPrefix000160.append block000161

noncomputable def hints000162 : List Nat :=
  primeHintChunk% "../../certificates/prime-count33554432-v1/counts-000162.json" 33554432 99076 198155 2

theorem length000162 : hints000162.length = 1548 := by decide +kernel
theorem checked000162 : checkPrimeHints 198155 2 hints000162 = true := by decide +kernel
theorem counted000162 : hints000162.count 0 <= 248 := by decide +kernel

noncomputable def block000162 : CheckedPrimeCountBlock 198155 2 1548 248 :=
  ⟨hints000162, length000162, checked000162, counted000162⟩

noncomputable def localPrefix000162 : CheckedPrimeCountBlock 192107 2 4572 745 :=
  localPrefix000161.append block000162

noncomputable def hints000163 : List Nat :=
  primeHintChunk% "../../certificates/prime-count33554432-v1/counts-000163.json" 33554432 100624 201251 2

theorem length000163 : hints000163.length = 1572 := by decide +kernel
theorem checked000163 : checkPrimeHints 201251 2 hints000163 = true := by decide +kernel
theorem counted000163 : hints000163.count 0 <= 253 := by decide +kernel

noncomputable def block000163 : CheckedPrimeCountBlock 201251 2 1572 253 :=
  ⟨hints000163, length000163, checked000163, counted000163⟩

noncomputable def localPrefix000163 : CheckedPrimeCountBlock 192107 2 6144 998 :=
  localPrefix000162.append block000163

noncomputable def hints000164 : List Nat :=
  primeHintChunk% "../../certificates/prime-count33554432-v1/counts-000164.json" 33554432 102196 204395 2

theorem length000164 : hints000164.length = 1596 := by decide +kernel
theorem checked000164 : checkPrimeHints 204395 2 hints000164 = true := by decide +kernel
theorem counted000164 : hints000164.count 0 <= 267 := by decide +kernel

noncomputable def block000164 : CheckedPrimeCountBlock 204395 2 1596 267 :=
  ⟨hints000164, length000164, checked000164, counted000164⟩

noncomputable def localPrefix000164 : CheckedPrimeCountBlock 192107 2 7740 1265 :=
  localPrefix000163.append block000164

noncomputable def hints000165 : List Nat :=
  primeHintChunk% "../../certificates/prime-count33554432-v1/counts-000165.json" 33554432 103792 207587 2

theorem length000165 : hints000165.length = 1621 := by decide +kernel
theorem checked000165 : checkPrimeHints 207587 2 hints000165 = true := by decide +kernel
theorem counted000165 : hints000165.count 0 <= 277 := by decide +kernel

noncomputable def block000165 : CheckedPrimeCountBlock 207587 2 1621 277 :=
  ⟨hints000165, length000165, checked000165, counted000165⟩

noncomputable def localPrefix000165 : CheckedPrimeCountBlock 192107 2 9361 1542 :=
  localPrefix000164.append block000165

noncomputable def hints000166 : List Nat :=
  primeHintChunk% "../../certificates/prime-count33554432-v1/counts-000166.json" 33554432 105413 210829 2

theorem length000166 : hints000166.length = 1647 := by decide +kernel
theorem checked000166 : checkPrimeHints 210829 2 hints000166 = true := by decide +kernel
theorem counted000166 : hints000166.count 0 <= 261 := by decide +kernel

noncomputable def block000166 : CheckedPrimeCountBlock 210829 2 1647 261 :=
  ⟨hints000166, length000166, checked000166, counted000166⟩

noncomputable def localPrefix000166 : CheckedPrimeCountBlock 192107 2 11008 1803 :=
  localPrefix000165.append block000166

noncomputable def hints000167 : List Nat :=
  primeHintChunk% "../../certificates/prime-count33554432-v1/counts-000167.json" 33554432 107060 214123 2

theorem length000167 : hints000167.length = 1672 := by decide +kernel
theorem checked000167 : checkPrimeHints 214123 2 hints000167 = true := by decide +kernel
theorem counted000167 : hints000167.count 0 <= 267 := by decide +kernel

noncomputable def block000167 : CheckedPrimeCountBlock 214123 2 1672 267 :=
  ⟨hints000167, length000167, checked000167, counted000167⟩

noncomputable def localPrefix000167 : CheckedPrimeCountBlock 192107 2 12680 2070 :=
  localPrefix000166.append block000167

noncomputable def hints000168 : List Nat :=
  primeHintChunk% "../../certificates/prime-count33554432-v1/counts-000168.json" 33554432 108732 217467 2

theorem length000168 : hints000168.length = 1698 := by decide +kernel
theorem checked000168 : checkPrimeHints 217467 2 hints000168 = true := by decide +kernel
theorem counted000168 : hints000168.count 0 <= 277 := by decide +kernel

noncomputable def block000168 : CheckedPrimeCountBlock 217467 2 1698 277 :=
  ⟨hints000168, length000168, checked000168, counted000168⟩

noncomputable def localPrefix000168 : CheckedPrimeCountBlock 192107 2 14378 2347 :=
  localPrefix000167.append block000168

noncomputable def hints000169 : List Nat :=
  primeHintChunk% "../../certificates/prime-count33554432-v1/counts-000169.json" 33554432 110430 220863 2

theorem length000169 : hints000169.length = 1725 := by decide +kernel
theorem checked000169 : checkPrimeHints 220863 2 hints000169 = true := by decide +kernel
theorem counted000169 : hints000169.count 0 <= 283 := by decide +kernel

noncomputable def block000169 : CheckedPrimeCountBlock 220863 2 1725 283 :=
  ⟨hints000169, length000169, checked000169, counted000169⟩

noncomputable def localPrefix000169 : CheckedPrimeCountBlock 192107 2 16103 2630 :=
  localPrefix000168.append block000169

noncomputable def hints000170 : List Nat :=
  primeHintChunk% "../../certificates/prime-count33554432-v1/counts-000170.json" 33554432 112155 224313 2

theorem length000170 : hints000170.length = 1752 := by decide +kernel
theorem checked000170 : checkPrimeHints 224313 2 hints000170 = true := by decide +kernel
theorem counted000170 : hints000170.count 0 <= 284 := by decide +kernel

noncomputable def block000170 : CheckedPrimeCountBlock 224313 2 1752 284 :=
  ⟨hints000170, length000170, checked000170, counted000170⟩

noncomputable def localPrefix000170 : CheckedPrimeCountBlock 192107 2 17855 2914 :=
  localPrefix000169.append block000170

noncomputable def hints000171 : List Nat :=
  primeHintChunk% "../../certificates/prime-count33554432-v1/counts-000171.json" 33554432 113907 227817 2

theorem length000171 : hints000171.length = 1779 := by decide +kernel
theorem checked000171 : checkPrimeHints 227817 2 hints000171 = true := by decide +kernel
theorem counted000171 : hints000171.count 0 <= 299 := by decide +kernel

noncomputable def block000171 : CheckedPrimeCountBlock 227817 2 1779 299 :=
  ⟨hints000171, length000171, checked000171, counted000171⟩

noncomputable def localPrefix000171 : CheckedPrimeCountBlock 192107 2 19634 3213 :=
  localPrefix000170.append block000171

noncomputable def hints000172 : List Nat :=
  primeHintChunk% "../../certificates/prime-count33554432-v1/counts-000172.json" 33554432 115686 231375 2

theorem length000172 : hints000172.length = 1807 := by decide +kernel
theorem checked000172 : checkPrimeHints 231375 2 hints000172 = true := by decide +kernel
theorem counted000172 : hints000172.count 0 <= 283 := by decide +kernel

noncomputable def block000172 : CheckedPrimeCountBlock 231375 2 1807 283 :=
  ⟨hints000172, length000172, checked000172, counted000172⟩

noncomputable def localPrefix000172 : CheckedPrimeCountBlock 192107 2 21441 3496 :=
  localPrefix000171.append block000172

noncomputable def hints000173 : List Nat :=
  primeHintChunk% "../../certificates/prime-count33554432-v1/counts-000173.json" 33554432 117493 234989 2

theorem length000173 : hints000173.length = 1835 := by decide +kernel
theorem checked000173 : checkPrimeHints 234989 2 hints000173 = true := by decide +kernel
theorem counted000173 : hints000173.count 0 <= 281 := by decide +kernel

noncomputable def block000173 : CheckedPrimeCountBlock 234989 2 1835 281 :=
  ⟨hints000173, length000173, checked000173, counted000173⟩

noncomputable def localPrefix000173 : CheckedPrimeCountBlock 192107 2 23276 3777 :=
  localPrefix000172.append block000173

noncomputable def hints000174 : List Nat :=
  primeHintChunk% "../../certificates/prime-count33554432-v1/counts-000174.json" 33554432 119328 238659 2

theorem length000174 : hints000174.length = 1864 := by decide +kernel
theorem checked000174 : checkPrimeHints 238659 2 hints000174 = true := by decide +kernel
theorem counted000174 : hints000174.count 0 <= 305 := by decide +kernel

noncomputable def block000174 : CheckedPrimeCountBlock 238659 2 1864 305 :=
  ⟨hints000174, length000174, checked000174, counted000174⟩

noncomputable def localPrefix000174 : CheckedPrimeCountBlock 192107 2 25140 4082 :=
  localPrefix000173.append block000174

noncomputable def hints000175 : List Nat :=
  primeHintChunk% "../../certificates/prime-count33554432-v1/counts-000175.json" 33554432 121192 242387 2

theorem length000175 : hints000175.length = 1893 := by decide +kernel
theorem checked000175 : checkPrimeHints 242387 2 hints000175 = true := by decide +kernel
theorem counted000175 : hints000175.count 0 <= 306 := by decide +kernel

noncomputable def block000175 : CheckedPrimeCountBlock 242387 2 1893 306 :=
  ⟨hints000175, length000175, checked000175, counted000175⟩

noncomputable def localPrefix000175 : CheckedPrimeCountBlock 192107 2 27033 4388 :=
  localPrefix000174.append block000175

end JSP848.FullPrimeCount
