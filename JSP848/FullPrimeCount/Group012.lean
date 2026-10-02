import JSP848.PrimeCountInput

set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0

namespace JSP848.FullPrimeCount

open PrimeCountInput

noncomputable def hints000192 : List Nat :=
  primeHintChunk% "../../certificates/prime-count33554432-v1/counts-000192.json" 33554432 157731 315465 2

theorem length000192 : hints000192.length = 2464 := by decide +kernel
theorem checked000192 : checkPrimeHints 315465 2 hints000192 = true := by decide +kernel
theorem counted000192 : hints000192.count 0 <= 414 := by decide +kernel

noncomputable def block000192 : CheckedPrimeCountBlock 315465 2 2464 414 :=
  ⟨hints000192, length000192, checked000192, counted000192⟩

noncomputable def localPrefix000192 : CheckedPrimeCountBlock 315465 2 2464 414 :=
  block000192

noncomputable def hints000193 : List Nat :=
  primeHintChunk% "../../certificates/prime-count33554432-v1/counts-000193.json" 33554432 160195 320393 2

theorem length000193 : hints000193.length = 2503 := by decide +kernel
theorem checked000193 : checkPrimeHints 320393 2 hints000193 = true := by decide +kernel
theorem counted000193 : hints000193.count 0 <= 394 := by decide +kernel

noncomputable def block000193 : CheckedPrimeCountBlock 320393 2 2503 394 :=
  ⟨hints000193, length000193, checked000193, counted000193⟩

noncomputable def localPrefix000193 : CheckedPrimeCountBlock 315465 2 4967 808 :=
  localPrefix000192.append block000193

noncomputable def hints000194 : List Nat :=
  primeHintChunk% "../../certificates/prime-count33554432-v1/counts-000194.json" 33554432 162698 325399 2

theorem length000194 : hints000194.length = 2542 := by decide +kernel
theorem checked000194 : checkPrimeHints 325399 2 hints000194 = true := by decide +kernel
theorem counted000194 : hints000194.count 0 <= 407 := by decide +kernel

noncomputable def block000194 : CheckedPrimeCountBlock 325399 2 2542 407 :=
  ⟨hints000194, length000194, checked000194, counted000194⟩

noncomputable def localPrefix000194 : CheckedPrimeCountBlock 315465 2 7509 1215 :=
  localPrefix000193.append block000194

noncomputable def hints000195 : List Nat :=
  primeHintChunk% "../../certificates/prime-count33554432-v1/counts-000195.json" 33554432 165240 330483 2

theorem length000195 : hints000195.length = 2581 := by decide +kernel
theorem checked000195 : checkPrimeHints 330483 2 hints000195 = true := by decide +kernel
theorem counted000195 : hints000195.count 0 <= 402 := by decide +kernel

noncomputable def block000195 : CheckedPrimeCountBlock 330483 2 2581 402 :=
  ⟨hints000195, length000195, checked000195, counted000195⟩

noncomputable def localPrefix000195 : CheckedPrimeCountBlock 315465 2 10090 1617 :=
  localPrefix000194.append block000195

noncomputable def hints000196 : List Nat :=
  primeHintChunk% "../../certificates/prime-count33554432-v1/counts-000196.json" 33554432 167821 335645 2

theorem length000196 : hints000196.length = 2622 := by decide +kernel
theorem checked000196 : checkPrimeHints 335645 2 hints000196 = true := by decide +kernel
theorem counted000196 : hints000196.count 0 <= 405 := by decide +kernel

noncomputable def block000196 : CheckedPrimeCountBlock 335645 2 2622 405 :=
  ⟨hints000196, length000196, checked000196, counted000196⟩

noncomputable def localPrefix000196 : CheckedPrimeCountBlock 315465 2 12712 2022 :=
  localPrefix000195.append block000196

noncomputable def hints000197 : List Nat :=
  primeHintChunk% "../../certificates/prime-count33554432-v1/counts-000197.json" 33554432 170443 340889 2

theorem length000197 : hints000197.length = 2663 := by decide +kernel
theorem checked000197 : checkPrimeHints 340889 2 hints000197 = true := by decide +kernel
theorem counted000197 : hints000197.count 0 <= 421 := by decide +kernel

noncomputable def block000197 : CheckedPrimeCountBlock 340889 2 2663 421 :=
  ⟨hints000197, length000197, checked000197, counted000197⟩

noncomputable def localPrefix000197 : CheckedPrimeCountBlock 315465 2 15375 2443 :=
  localPrefix000196.append block000197

noncomputable def hints000198 : List Nat :=
  primeHintChunk% "../../certificates/prime-count33554432-v1/counts-000198.json" 33554432 173106 346215 2

theorem length000198 : hints000198.length = 2704 := by decide +kernel
theorem checked000198 : checkPrimeHints 346215 2 hints000198 = true := by decide +kernel
theorem counted000198 : hints000198.count 0 <= 429 := by decide +kernel

noncomputable def block000198 : CheckedPrimeCountBlock 346215 2 2704 429 :=
  ⟨hints000198, length000198, checked000198, counted000198⟩

noncomputable def localPrefix000198 : CheckedPrimeCountBlock 315465 2 18079 2872 :=
  localPrefix000197.append block000198

noncomputable def hints000199 : List Nat :=
  primeHintChunk% "../../certificates/prime-count33554432-v1/counts-000199.json" 33554432 175810 351623 2

theorem length000199 : hints000199.length = 2747 := by decide +kernel
theorem checked000199 : checkPrimeHints 351623 2 hints000199 = true := by decide +kernel
theorem counted000199 : hints000199.count 0 <= 429 := by decide +kernel

noncomputable def block000199 : CheckedPrimeCountBlock 351623 2 2747 429 :=
  ⟨hints000199, length000199, checked000199, counted000199⟩

noncomputable def localPrefix000199 : CheckedPrimeCountBlock 315465 2 20826 3301 :=
  localPrefix000198.append block000199

noncomputable def hints000200 : List Nat :=
  primeHintChunk% "../../certificates/prime-count33554432-v1/counts-000200.json" 33554432 178557 357117 2

theorem length000200 : hints000200.length = 2789 := by decide +kernel
theorem checked000200 : checkPrimeHints 357117 2 hints000200 = true := by decide +kernel
theorem counted000200 : hints000200.count 0 <= 426 := by decide +kernel

noncomputable def block000200 : CheckedPrimeCountBlock 357117 2 2789 426 :=
  ⟨hints000200, length000200, checked000200, counted000200⟩

noncomputable def localPrefix000200 : CheckedPrimeCountBlock 315465 2 23615 3727 :=
  localPrefix000199.append block000200

noncomputable def hints000201 : List Nat :=
  primeHintChunk% "../../certificates/prime-count33554432-v1/counts-000201.json" 33554432 181346 362695 2

theorem length000201 : hints000201.length = 2833 := by decide +kernel
theorem checked000201 : checkPrimeHints 362695 2 hints000201 = true := by decide +kernel
theorem counted000201 : hints000201.count 0 <= 454 := by decide +kernel

noncomputable def block000201 : CheckedPrimeCountBlock 362695 2 2833 454 :=
  ⟨hints000201, length000201, checked000201, counted000201⟩

noncomputable def localPrefix000201 : CheckedPrimeCountBlock 315465 2 26448 4181 :=
  localPrefix000200.append block000201

noncomputable def hints000202 : List Nat :=
  primeHintChunk% "../../certificates/prime-count33554432-v1/counts-000202.json" 33554432 184179 368361 2

theorem length000202 : hints000202.length = 2877 := by decide +kernel
theorem checked000202 : checkPrimeHints 368361 2 hints000202 = true := by decide +kernel
theorem counted000202 : hints000202.count 0 <= 422 := by decide +kernel

noncomputable def block000202 : CheckedPrimeCountBlock 368361 2 2877 422 :=
  ⟨hints000202, length000202, checked000202, counted000202⟩

noncomputable def localPrefix000202 : CheckedPrimeCountBlock 315465 2 29325 4603 :=
  localPrefix000201.append block000202

noncomputable def hints000203 : List Nat :=
  primeHintChunk% "../../certificates/prime-count33554432-v1/counts-000203.json" 33554432 187056 374115 2

theorem length000203 : hints000203.length = 2922 := by decide +kernel
theorem checked000203 : checkPrimeHints 374115 2 hints000203 = true := by decide +kernel
theorem counted000203 : hints000203.count 0 <= 462 := by decide +kernel

noncomputable def block000203 : CheckedPrimeCountBlock 374115 2 2922 462 :=
  ⟨hints000203, length000203, checked000203, counted000203⟩

noncomputable def localPrefix000203 : CheckedPrimeCountBlock 315465 2 32247 5065 :=
  localPrefix000202.append block000203

noncomputable def hints000204 : List Nat :=
  primeHintChunk% "../../certificates/prime-count33554432-v1/counts-000204.json" 33554432 189978 379959 2

theorem length000204 : hints000204.length = 2968 := by decide +kernel
theorem checked000204 : checkPrimeHints 379959 2 hints000204 = true := by decide +kernel
theorem counted000204 : hints000204.count 0 <= 457 := by decide +kernel

noncomputable def block000204 : CheckedPrimeCountBlock 379959 2 2968 457 :=
  ⟨hints000204, length000204, checked000204, counted000204⟩

noncomputable def localPrefix000204 : CheckedPrimeCountBlock 315465 2 35215 5522 :=
  localPrefix000203.append block000204

noncomputable def hints000205 : List Nat :=
  primeHintChunk% "../../certificates/prime-count33554432-v1/counts-000205.json" 33554432 192946 385895 2

theorem length000205 : hints000205.length = 3014 := by decide +kernel
theorem checked000205 : checkPrimeHints 385895 2 hints000205 = true := by decide +kernel
theorem counted000205 : hints000205.count 0 <= 470 := by decide +kernel

noncomputable def block000205 : CheckedPrimeCountBlock 385895 2 3014 470 :=
  ⟨hints000205, length000205, checked000205, counted000205⟩

noncomputable def localPrefix000205 : CheckedPrimeCountBlock 315465 2 38229 5992 :=
  localPrefix000204.append block000205

noncomputable def hints000206 : List Nat :=
  primeHintChunk% "../../certificates/prime-count33554432-v1/counts-000206.json" 33554432 195960 391923 2

theorem length000206 : hints000206.length = 3061 := by decide +kernel
theorem checked000206 : checkPrimeHints 391923 2 hints000206 = true := by decide +kernel
theorem counted000206 : hints000206.count 0 <= 480 := by decide +kernel

noncomputable def block000206 : CheckedPrimeCountBlock 391923 2 3061 480 :=
  ⟨hints000206, length000206, checked000206, counted000206⟩

noncomputable def localPrefix000206 : CheckedPrimeCountBlock 315465 2 41290 6472 :=
  localPrefix000205.append block000206

noncomputable def hints000207 : List Nat :=
  primeHintChunk% "../../certificates/prime-count33554432-v1/counts-000207.json" 33554432 199021 398045 2

theorem length000207 : hints000207.length = 3109 := by decide +kernel
theorem checked000207 : checkPrimeHints 398045 2 hints000207 = true := by decide +kernel
theorem counted000207 : hints000207.count 0 <= 471 := by decide +kernel

noncomputable def block000207 : CheckedPrimeCountBlock 398045 2 3109 471 :=
  ⟨hints000207, length000207, checked000207, counted000207⟩

noncomputable def localPrefix000207 : CheckedPrimeCountBlock 315465 2 44399 6943 :=
  localPrefix000206.append block000207

end JSP848.FullPrimeCount
