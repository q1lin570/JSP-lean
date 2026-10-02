import JSP848.PrimeCountInput

set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0

namespace JSP848.FullPrimeCount

open PrimeCountInput

noncomputable def hints000384 : List Nat :=
  primeHintChunk% "../../certificates/prime-count33554432-v1/counts-000384.json" 33554432 2179071 4358145 2

theorem length000384 : hints000384.length = 16384 := by decide +kernel
theorem checked000384 : checkPrimeHints 4358145 2 hints000384 = true := by decide +kernel
theorem counted000384 : hints000384.count 0 <= 2151 := by decide +kernel

noncomputable def block000384 : CheckedPrimeCountBlock 4358145 2 16384 2151 :=
  ⟨hints000384, length000384, checked000384, counted000384⟩

noncomputable def localPrefix000384 : CheckedPrimeCountBlock 4358145 2 16384 2151 :=
  block000384

noncomputable def hints000385 : List Nat :=
  primeHintChunk% "../../certificates/prime-count33554432-v1/counts-000385.json" 33554432 2195455 4390913 2

theorem length000385 : hints000385.length = 16384 := by decide +kernel
theorem checked000385 : checkPrimeHints 4390913 2 hints000385 = true := by decide +kernel
theorem counted000385 : hints000385.count 0 <= 2144 := by decide +kernel

noncomputable def block000385 : CheckedPrimeCountBlock 4390913 2 16384 2144 :=
  ⟨hints000385, length000385, checked000385, counted000385⟩

noncomputable def localPrefix000385 : CheckedPrimeCountBlock 4358145 2 32768 4295 :=
  localPrefix000384.append block000385

noncomputable def hints000386 : List Nat :=
  primeHintChunk% "../../certificates/prime-count33554432-v1/counts-000386.json" 33554432 2211839 4423681 2

theorem length000386 : hints000386.length = 16384 := by decide +kernel
theorem checked000386 : checkPrimeHints 4423681 2 hints000386 = true := by decide +kernel
theorem counted000386 : hints000386.count 0 <= 2183 := by decide +kernel

noncomputable def block000386 : CheckedPrimeCountBlock 4423681 2 16384 2183 :=
  ⟨hints000386, length000386, checked000386, counted000386⟩

noncomputable def localPrefix000386 : CheckedPrimeCountBlock 4358145 2 49152 6478 :=
  localPrefix000385.append block000386

noncomputable def hints000387 : List Nat :=
  primeHintChunk% "../../certificates/prime-count33554432-v1/counts-000387.json" 33554432 2228223 4456449 2

theorem length000387 : hints000387.length = 16384 := by decide +kernel
theorem checked000387 : checkPrimeHints 4456449 2 hints000387 = true := by decide +kernel
theorem counted000387 : hints000387.count 0 <= 2175 := by decide +kernel

noncomputable def block000387 : CheckedPrimeCountBlock 4456449 2 16384 2175 :=
  ⟨hints000387, length000387, checked000387, counted000387⟩

noncomputable def localPrefix000387 : CheckedPrimeCountBlock 4358145 2 65536 8653 :=
  localPrefix000386.append block000387

noncomputable def hints000388 : List Nat :=
  primeHintChunk% "../../certificates/prime-count33554432-v1/counts-000388.json" 33554432 2244607 4489217 2

theorem length000388 : hints000388.length = 16384 := by decide +kernel
theorem checked000388 : checkPrimeHints 4489217 2 hints000388 = true := by decide +kernel
theorem counted000388 : hints000388.count 0 <= 2108 := by decide +kernel

noncomputable def block000388 : CheckedPrimeCountBlock 4489217 2 16384 2108 :=
  ⟨hints000388, length000388, checked000388, counted000388⟩

noncomputable def localPrefix000388 : CheckedPrimeCountBlock 4358145 2 81920 10761 :=
  localPrefix000387.append block000388

noncomputable def hints000389 : List Nat :=
  primeHintChunk% "../../certificates/prime-count33554432-v1/counts-000389.json" 33554432 2260991 4521985 2

theorem length000389 : hints000389.length = 16384 := by decide +kernel
theorem checked000389 : checkPrimeHints 4521985 2 hints000389 = true := by decide +kernel
theorem counted000389 : hints000389.count 0 <= 2125 := by decide +kernel

noncomputable def block000389 : CheckedPrimeCountBlock 4521985 2 16384 2125 :=
  ⟨hints000389, length000389, checked000389, counted000389⟩

noncomputable def localPrefix000389 : CheckedPrimeCountBlock 4358145 2 98304 12886 :=
  localPrefix000388.append block000389

noncomputable def hints000390 : List Nat :=
  primeHintChunk% "../../certificates/prime-count33554432-v1/counts-000390.json" 33554432 2277375 4554753 2

theorem length000390 : hints000390.length = 16384 := by decide +kernel
theorem checked000390 : checkPrimeHints 4554753 2 hints000390 = true := by decide +kernel
theorem counted000390 : hints000390.count 0 <= 2141 := by decide +kernel

noncomputable def block000390 : CheckedPrimeCountBlock 4554753 2 16384 2141 :=
  ⟨hints000390, length000390, checked000390, counted000390⟩

noncomputable def localPrefix000390 : CheckedPrimeCountBlock 4358145 2 114688 15027 :=
  localPrefix000389.append block000390

noncomputable def hints000391 : List Nat :=
  primeHintChunk% "../../certificates/prime-count33554432-v1/counts-000391.json" 33554432 2293759 4587521 2

theorem length000391 : hints000391.length = 16384 := by decide +kernel
theorem checked000391 : checkPrimeHints 4587521 2 hints000391 = true := by decide +kernel
theorem counted000391 : hints000391.count 0 <= 2143 := by decide +kernel

noncomputable def block000391 : CheckedPrimeCountBlock 4587521 2 16384 2143 :=
  ⟨hints000391, length000391, checked000391, counted000391⟩

noncomputable def localPrefix000391 : CheckedPrimeCountBlock 4358145 2 131072 17170 :=
  localPrefix000390.append block000391

noncomputable def hints000392 : List Nat :=
  primeHintChunk% "../../certificates/prime-count33554432-v1/counts-000392.json" 33554432 2310143 4620289 2

theorem length000392 : hints000392.length = 16384 := by decide +kernel
theorem checked000392 : checkPrimeHints 4620289 2 hints000392 = true := by decide +kernel
theorem counted000392 : hints000392.count 0 <= 2115 := by decide +kernel

noncomputable def block000392 : CheckedPrimeCountBlock 4620289 2 16384 2115 :=
  ⟨hints000392, length000392, checked000392, counted000392⟩

noncomputable def localPrefix000392 : CheckedPrimeCountBlock 4358145 2 147456 19285 :=
  localPrefix000391.append block000392

noncomputable def hints000393 : List Nat :=
  primeHintChunk% "../../certificates/prime-count33554432-v1/counts-000393.json" 33554432 2326527 4653057 2

theorem length000393 : hints000393.length = 16384 := by decide +kernel
theorem checked000393 : checkPrimeHints 4653057 2 hints000393 = true := by decide +kernel
theorem counted000393 : hints000393.count 0 <= 2149 := by decide +kernel

noncomputable def block000393 : CheckedPrimeCountBlock 4653057 2 16384 2149 :=
  ⟨hints000393, length000393, checked000393, counted000393⟩

noncomputable def localPrefix000393 : CheckedPrimeCountBlock 4358145 2 163840 21434 :=
  localPrefix000392.append block000393

noncomputable def hints000394 : List Nat :=
  primeHintChunk% "../../certificates/prime-count33554432-v1/counts-000394.json" 33554432 2342911 4685825 2

theorem length000394 : hints000394.length = 16384 := by decide +kernel
theorem checked000394 : checkPrimeHints 4685825 2 hints000394 = true := by decide +kernel
theorem counted000394 : hints000394.count 0 <= 2136 := by decide +kernel

noncomputable def block000394 : CheckedPrimeCountBlock 4685825 2 16384 2136 :=
  ⟨hints000394, length000394, checked000394, counted000394⟩

noncomputable def localPrefix000394 : CheckedPrimeCountBlock 4358145 2 180224 23570 :=
  localPrefix000393.append block000394

noncomputable def hints000395 : List Nat :=
  primeHintChunk% "../../certificates/prime-count33554432-v1/counts-000395.json" 33554432 2359295 4718593 2

theorem length000395 : hints000395.length = 16384 := by decide +kernel
theorem checked000395 : checkPrimeHints 4718593 2 hints000395 = true := by decide +kernel
theorem counted000395 : hints000395.count 0 <= 2132 := by decide +kernel

noncomputable def block000395 : CheckedPrimeCountBlock 4718593 2 16384 2132 :=
  ⟨hints000395, length000395, checked000395, counted000395⟩

noncomputable def localPrefix000395 : CheckedPrimeCountBlock 4358145 2 196608 25702 :=
  localPrefix000394.append block000395

noncomputable def hints000396 : List Nat :=
  primeHintChunk% "../../certificates/prime-count33554432-v1/counts-000396.json" 33554432 2375679 4751361 2

theorem length000396 : hints000396.length = 16384 := by decide +kernel
theorem checked000396 : checkPrimeHints 4751361 2 hints000396 = true := by decide +kernel
theorem counted000396 : hints000396.count 0 <= 2112 := by decide +kernel

noncomputable def block000396 : CheckedPrimeCountBlock 4751361 2 16384 2112 :=
  ⟨hints000396, length000396, checked000396, counted000396⟩

noncomputable def localPrefix000396 : CheckedPrimeCountBlock 4358145 2 212992 27814 :=
  localPrefix000395.append block000396

noncomputable def hints000397 : List Nat :=
  primeHintChunk% "../../certificates/prime-count33554432-v1/counts-000397.json" 33554432 2392063 4784129 2

theorem length000397 : hints000397.length = 16384 := by decide +kernel
theorem checked000397 : checkPrimeHints 4784129 2 hints000397 = true := by decide +kernel
theorem counted000397 : hints000397.count 0 <= 2115 := by decide +kernel

noncomputable def block000397 : CheckedPrimeCountBlock 4784129 2 16384 2115 :=
  ⟨hints000397, length000397, checked000397, counted000397⟩

noncomputable def localPrefix000397 : CheckedPrimeCountBlock 4358145 2 229376 29929 :=
  localPrefix000396.append block000397

noncomputable def hints000398 : List Nat :=
  primeHintChunk% "../../certificates/prime-count33554432-v1/counts-000398.json" 33554432 2408447 4816897 2

theorem length000398 : hints000398.length = 16384 := by decide +kernel
theorem checked000398 : checkPrimeHints 4816897 2 hints000398 = true := by decide +kernel
theorem counted000398 : hints000398.count 0 <= 2141 := by decide +kernel

noncomputable def block000398 : CheckedPrimeCountBlock 4816897 2 16384 2141 :=
  ⟨hints000398, length000398, checked000398, counted000398⟩

noncomputable def localPrefix000398 : CheckedPrimeCountBlock 4358145 2 245760 32070 :=
  localPrefix000397.append block000398

noncomputable def hints000399 : List Nat :=
  primeHintChunk% "../../certificates/prime-count33554432-v1/counts-000399.json" 33554432 2424831 4849665 2

theorem length000399 : hints000399.length = 16384 := by decide +kernel
theorem checked000399 : checkPrimeHints 4849665 2 hints000399 = true := by decide +kernel
theorem counted000399 : hints000399.count 0 <= 2137 := by decide +kernel

noncomputable def block000399 : CheckedPrimeCountBlock 4849665 2 16384 2137 :=
  ⟨hints000399, length000399, checked000399, counted000399⟩

noncomputable def localPrefix000399 : CheckedPrimeCountBlock 4358145 2 262144 34207 :=
  localPrefix000398.append block000399

end JSP848.FullPrimeCount
