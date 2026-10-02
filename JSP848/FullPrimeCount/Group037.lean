import JSP848.PrimeCountInput

set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0

namespace JSP848.FullPrimeCount

open PrimeCountInput

noncomputable def hints000592 : List Nat :=
  primeHintChunk% "../../certificates/prime-count33554432-v1/counts-000592.json" 33554432 5586943 11173889 2

theorem length000592 : hints000592.length = 16384 := by decide +kernel
theorem checked000592 : checkPrimeHints 11173889 2 hints000592 = true := by decide +kernel
theorem counted000592 : hints000592.count 0 <= 2029 := by decide +kernel

noncomputable def block000592 : CheckedPrimeCountBlock 11173889 2 16384 2029 :=
  ⟨hints000592, length000592, checked000592, counted000592⟩

noncomputable def localPrefix000592 : CheckedPrimeCountBlock 11173889 2 16384 2029 :=
  block000592

noncomputable def hints000593 : List Nat :=
  primeHintChunk% "../../certificates/prime-count33554432-v1/counts-000593.json" 33554432 5603327 11206657 2

theorem length000593 : hints000593.length = 16384 := by decide +kernel
theorem checked000593 : checkPrimeHints 11206657 2 hints000593 = true := by decide +kernel
theorem counted000593 : hints000593.count 0 <= 1991 := by decide +kernel

noncomputable def block000593 : CheckedPrimeCountBlock 11206657 2 16384 1991 :=
  ⟨hints000593, length000593, checked000593, counted000593⟩

noncomputable def localPrefix000593 : CheckedPrimeCountBlock 11173889 2 32768 4020 :=
  localPrefix000592.append block000593

noncomputable def hints000594 : List Nat :=
  primeHintChunk% "../../certificates/prime-count33554432-v1/counts-000594.json" 33554432 5619711 11239425 2

theorem length000594 : hints000594.length = 16384 := by decide +kernel
theorem checked000594 : checkPrimeHints 11239425 2 hints000594 = true := by decide +kernel
theorem counted000594 : hints000594.count 0 <= 2012 := by decide +kernel

noncomputable def block000594 : CheckedPrimeCountBlock 11239425 2 16384 2012 :=
  ⟨hints000594, length000594, checked000594, counted000594⟩

noncomputable def localPrefix000594 : CheckedPrimeCountBlock 11173889 2 49152 6032 :=
  localPrefix000593.append block000594

noncomputable def hints000595 : List Nat :=
  primeHintChunk% "../../certificates/prime-count33554432-v1/counts-000595.json" 33554432 5636095 11272193 2

theorem length000595 : hints000595.length = 16384 := by decide +kernel
theorem checked000595 : checkPrimeHints 11272193 2 hints000595 = true := by decide +kernel
theorem counted000595 : hints000595.count 0 <= 2012 := by decide +kernel

noncomputable def block000595 : CheckedPrimeCountBlock 11272193 2 16384 2012 :=
  ⟨hints000595, length000595, checked000595, counted000595⟩

noncomputable def localPrefix000595 : CheckedPrimeCountBlock 11173889 2 65536 8044 :=
  localPrefix000594.append block000595

noncomputable def hints000596 : List Nat :=
  primeHintChunk% "../../certificates/prime-count33554432-v1/counts-000596.json" 33554432 5652479 11304961 2

theorem length000596 : hints000596.length = 16384 := by decide +kernel
theorem checked000596 : checkPrimeHints 11304961 2 hints000596 = true := by decide +kernel
theorem counted000596 : hints000596.count 0 <= 2024 := by decide +kernel

noncomputable def block000596 : CheckedPrimeCountBlock 11304961 2 16384 2024 :=
  ⟨hints000596, length000596, checked000596, counted000596⟩

noncomputable def localPrefix000596 : CheckedPrimeCountBlock 11173889 2 81920 10068 :=
  localPrefix000595.append block000596

noncomputable def hints000597 : List Nat :=
  primeHintChunk% "../../certificates/prime-count33554432-v1/counts-000597.json" 33554432 5668863 11337729 2

theorem length000597 : hints000597.length = 16384 := by decide +kernel
theorem checked000597 : checkPrimeHints 11337729 2 hints000597 = true := by decide +kernel
theorem counted000597 : hints000597.count 0 <= 1993 := by decide +kernel

noncomputable def block000597 : CheckedPrimeCountBlock 11337729 2 16384 1993 :=
  ⟨hints000597, length000597, checked000597, counted000597⟩

noncomputable def localPrefix000597 : CheckedPrimeCountBlock 11173889 2 98304 12061 :=
  localPrefix000596.append block000597

noncomputable def hints000598 : List Nat :=
  primeHintChunk% "../../certificates/prime-count33554432-v1/counts-000598.json" 33554432 5685247 11370497 2

theorem length000598 : hints000598.length = 16384 := by decide +kernel
theorem checked000598 : checkPrimeHints 11370497 2 hints000598 = true := by decide +kernel
theorem counted000598 : hints000598.count 0 <= 2017 := by decide +kernel

noncomputable def block000598 : CheckedPrimeCountBlock 11370497 2 16384 2017 :=
  ⟨hints000598, length000598, checked000598, counted000598⟩

noncomputable def localPrefix000598 : CheckedPrimeCountBlock 11173889 2 114688 14078 :=
  localPrefix000597.append block000598

noncomputable def hints000599 : List Nat :=
  primeHintChunk% "../../certificates/prime-count33554432-v1/counts-000599.json" 33554432 5701631 11403265 2

theorem length000599 : hints000599.length = 16384 := by decide +kernel
theorem checked000599 : checkPrimeHints 11403265 2 hints000599 = true := by decide +kernel
theorem counted000599 : hints000599.count 0 <= 1994 := by decide +kernel

noncomputable def block000599 : CheckedPrimeCountBlock 11403265 2 16384 1994 :=
  ⟨hints000599, length000599, checked000599, counted000599⟩

noncomputable def localPrefix000599 : CheckedPrimeCountBlock 11173889 2 131072 16072 :=
  localPrefix000598.append block000599

noncomputable def hints000600 : List Nat :=
  primeHintChunk% "../../certificates/prime-count33554432-v1/counts-000600.json" 33554432 5718015 11436033 2

theorem length000600 : hints000600.length = 16384 := by decide +kernel
theorem checked000600 : checkPrimeHints 11436033 2 hints000600 = true := by decide +kernel
theorem counted000600 : hints000600.count 0 <= 2048 := by decide +kernel

noncomputable def block000600 : CheckedPrimeCountBlock 11436033 2 16384 2048 :=
  ⟨hints000600, length000600, checked000600, counted000600⟩

noncomputable def localPrefix000600 : CheckedPrimeCountBlock 11173889 2 147456 18120 :=
  localPrefix000599.append block000600

noncomputable def hints000601 : List Nat :=
  primeHintChunk% "../../certificates/prime-count33554432-v1/counts-000601.json" 33554432 5734399 11468801 2

theorem length000601 : hints000601.length = 16384 := by decide +kernel
theorem checked000601 : checkPrimeHints 11468801 2 hints000601 = true := by decide +kernel
theorem counted000601 : hints000601.count 0 <= 2016 := by decide +kernel

noncomputable def block000601 : CheckedPrimeCountBlock 11468801 2 16384 2016 :=
  ⟨hints000601, length000601, checked000601, counted000601⟩

noncomputable def localPrefix000601 : CheckedPrimeCountBlock 11173889 2 163840 20136 :=
  localPrefix000600.append block000601

noncomputable def hints000602 : List Nat :=
  primeHintChunk% "../../certificates/prime-count33554432-v1/counts-000602.json" 33554432 5750783 11501569 2

theorem length000602 : hints000602.length = 16384 := by decide +kernel
theorem checked000602 : checkPrimeHints 11501569 2 hints000602 = true := by decide +kernel
theorem counted000602 : hints000602.count 0 <= 2010 := by decide +kernel

noncomputable def block000602 : CheckedPrimeCountBlock 11501569 2 16384 2010 :=
  ⟨hints000602, length000602, checked000602, counted000602⟩

noncomputable def localPrefix000602 : CheckedPrimeCountBlock 11173889 2 180224 22146 :=
  localPrefix000601.append block000602

noncomputable def hints000603 : List Nat :=
  primeHintChunk% "../../certificates/prime-count33554432-v1/counts-000603.json" 33554432 5767167 11534337 2

theorem length000603 : hints000603.length = 16384 := by decide +kernel
theorem checked000603 : checkPrimeHints 11534337 2 hints000603 = true := by decide +kernel
theorem counted000603 : hints000603.count 0 <= 2044 := by decide +kernel

noncomputable def block000603 : CheckedPrimeCountBlock 11534337 2 16384 2044 :=
  ⟨hints000603, length000603, checked000603, counted000603⟩

noncomputable def localPrefix000603 : CheckedPrimeCountBlock 11173889 2 196608 24190 :=
  localPrefix000602.append block000603

noncomputable def hints000604 : List Nat :=
  primeHintChunk% "../../certificates/prime-count33554432-v1/counts-000604.json" 33554432 5783551 11567105 2

theorem length000604 : hints000604.length = 16384 := by decide +kernel
theorem checked000604 : checkPrimeHints 11567105 2 hints000604 = true := by decide +kernel
theorem counted000604 : hints000604.count 0 <= 2003 := by decide +kernel

noncomputable def block000604 : CheckedPrimeCountBlock 11567105 2 16384 2003 :=
  ⟨hints000604, length000604, checked000604, counted000604⟩

noncomputable def localPrefix000604 : CheckedPrimeCountBlock 11173889 2 212992 26193 :=
  localPrefix000603.append block000604

noncomputable def hints000605 : List Nat :=
  primeHintChunk% "../../certificates/prime-count33554432-v1/counts-000605.json" 33554432 5799935 11599873 2

theorem length000605 : hints000605.length = 16384 := by decide +kernel
theorem checked000605 : checkPrimeHints 11599873 2 hints000605 = true := by decide +kernel
theorem counted000605 : hints000605.count 0 <= 2070 := by decide +kernel

noncomputable def block000605 : CheckedPrimeCountBlock 11599873 2 16384 2070 :=
  ⟨hints000605, length000605, checked000605, counted000605⟩

noncomputable def localPrefix000605 : CheckedPrimeCountBlock 11173889 2 229376 28263 :=
  localPrefix000604.append block000605

noncomputable def hints000606 : List Nat :=
  primeHintChunk% "../../certificates/prime-count33554432-v1/counts-000606.json" 33554432 5816319 11632641 2

theorem length000606 : hints000606.length = 16384 := by decide +kernel
theorem checked000606 : checkPrimeHints 11632641 2 hints000606 = true := by decide +kernel
theorem counted000606 : hints000606.count 0 <= 1996 := by decide +kernel

noncomputable def block000606 : CheckedPrimeCountBlock 11632641 2 16384 1996 :=
  ⟨hints000606, length000606, checked000606, counted000606⟩

noncomputable def localPrefix000606 : CheckedPrimeCountBlock 11173889 2 245760 30259 :=
  localPrefix000605.append block000606

noncomputable def hints000607 : List Nat :=
  primeHintChunk% "../../certificates/prime-count33554432-v1/counts-000607.json" 33554432 5832703 11665409 2

theorem length000607 : hints000607.length = 16384 := by decide +kernel
theorem checked000607 : checkPrimeHints 11665409 2 hints000607 = true := by decide +kernel
theorem counted000607 : hints000607.count 0 <= 2003 := by decide +kernel

noncomputable def block000607 : CheckedPrimeCountBlock 11665409 2 16384 2003 :=
  ⟨hints000607, length000607, checked000607, counted000607⟩

noncomputable def localPrefix000607 : CheckedPrimeCountBlock 11173889 2 262144 32262 :=
  localPrefix000606.append block000607

end JSP848.FullPrimeCount
