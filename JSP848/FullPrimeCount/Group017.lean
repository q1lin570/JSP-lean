import JSP848.PrimeCountInput

set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0

namespace JSP848.FullPrimeCount

open PrimeCountInput

noncomputable def hints000272 : List Nat :=
  primeHintChunk% "../../certificates/prime-count33554432-v1/counts-000272.json" 33554432 543233 1086469 2

theorem length000272 : hints000272.length = 8488 := by decide +kernel
theorem checked000272 : checkPrimeHints 1086469 2 hints000272 = true := by decide +kernel
theorem counted000272 : hints000272.count 0 <= 1225 := by decide +kernel

noncomputable def block000272 : CheckedPrimeCountBlock 1086469 2 8488 1225 :=
  ⟨hints000272, length000272, checked000272, counted000272⟩

noncomputable def localPrefix000272 : CheckedPrimeCountBlock 1086469 2 8488 1225 :=
  block000272

noncomputable def hints000273 : List Nat :=
  primeHintChunk% "../../certificates/prime-count33554432-v1/counts-000273.json" 33554432 551721 1103445 2

theorem length000273 : hints000273.length = 8620 := by decide +kernel
theorem checked000273 : checkPrimeHints 1103445 2 hints000273 = true := by decide +kernel
theorem counted000273 : hints000273.count 0 <= 1256 := by decide +kernel

noncomputable def block000273 : CheckedPrimeCountBlock 1103445 2 8620 1256 :=
  ⟨hints000273, length000273, checked000273, counted000273⟩

noncomputable def localPrefix000273 : CheckedPrimeCountBlock 1086469 2 17108 2481 :=
  localPrefix000272.append block000273

noncomputable def hints000274 : List Nat :=
  primeHintChunk% "../../certificates/prime-count33554432-v1/counts-000274.json" 33554432 560341 1120685 2

theorem length000274 : hints000274.length = 8755 := by decide +kernel
theorem checked000274 : checkPrimeHints 1120685 2 hints000274 = true := by decide +kernel
theorem counted000274 : hints000274.count 0 <= 1257 := by decide +kernel

noncomputable def block000274 : CheckedPrimeCountBlock 1120685 2 8755 1257 :=
  ⟨hints000274, length000274, checked000274, counted000274⟩

noncomputable def localPrefix000274 : CheckedPrimeCountBlock 1086469 2 25863 3738 :=
  localPrefix000273.append block000274

noncomputable def hints000275 : List Nat :=
  primeHintChunk% "../../certificates/prime-count33554432-v1/counts-000275.json" 33554432 569096 1138195 2

theorem length000275 : hints000275.length = 8892 := by decide +kernel
theorem checked000275 : checkPrimeHints 1138195 2 hints000275 = true := by decide +kernel
theorem counted000275 : hints000275.count 0 <= 1258 := by decide +kernel

noncomputable def block000275 : CheckedPrimeCountBlock 1138195 2 8892 1258 :=
  ⟨hints000275, length000275, checked000275, counted000275⟩

noncomputable def localPrefix000275 : CheckedPrimeCountBlock 1086469 2 34755 4996 :=
  localPrefix000274.append block000275

noncomputable def hints000276 : List Nat :=
  primeHintChunk% "../../certificates/prime-count33554432-v1/counts-000276.json" 33554432 577988 1155979 2

theorem length000276 : hints000276.length = 9031 := by decide +kernel
theorem checked000276 : checkPrimeHints 1155979 2 hints000276 = true := by decide +kernel
theorem counted000276 : hints000276.count 0 <= 1312 := by decide +kernel

noncomputable def block000276 : CheckedPrimeCountBlock 1155979 2 9031 1312 :=
  ⟨hints000276, length000276, checked000276, counted000276⟩

noncomputable def localPrefix000276 : CheckedPrimeCountBlock 1086469 2 43786 6308 :=
  localPrefix000275.append block000276

noncomputable def hints000277 : List Nat :=
  primeHintChunk% "../../certificates/prime-count33554432-v1/counts-000277.json" 33554432 587019 1174041 2

theorem length000277 : hints000277.length = 9172 := by decide +kernel
theorem checked000277 : checkPrimeHints 1174041 2 hints000277 = true := by decide +kernel
theorem counted000277 : hints000277.count 0 <= 1351 := by decide +kernel

noncomputable def block000277 : CheckedPrimeCountBlock 1174041 2 9172 1351 :=
  ⟨hints000277, length000277, checked000277, counted000277⟩

noncomputable def localPrefix000277 : CheckedPrimeCountBlock 1086469 2 52958 7659 :=
  localPrefix000276.append block000277

noncomputable def hints000278 : List Nat :=
  primeHintChunk% "../../certificates/prime-count33554432-v1/counts-000278.json" 33554432 596191 1192385 2

theorem length000278 : hints000278.length = 9315 := by decide +kernel
theorem checked000278 : checkPrimeHints 1192385 2 hints000278 = true := by decide +kernel
theorem counted000278 : hints000278.count 0 <= 1292 := by decide +kernel

noncomputable def block000278 : CheckedPrimeCountBlock 1192385 2 9315 1292 :=
  ⟨hints000278, length000278, checked000278, counted000278⟩

noncomputable def localPrefix000278 : CheckedPrimeCountBlock 1086469 2 62273 8951 :=
  localPrefix000277.append block000278

noncomputable def hints000279 : List Nat :=
  primeHintChunk% "../../certificates/prime-count33554432-v1/counts-000279.json" 33554432 605506 1211015 2

theorem length000279 : hints000279.length = 9461 := by decide +kernel
theorem checked000279 : checkPrimeHints 1211015 2 hints000279 = true := by decide +kernel
theorem counted000279 : hints000279.count 0 <= 1355 := by decide +kernel

noncomputable def block000279 : CheckedPrimeCountBlock 1211015 2 9461 1355 :=
  ⟨hints000279, length000279, checked000279, counted000279⟩

noncomputable def localPrefix000279 : CheckedPrimeCountBlock 1086469 2 71734 10306 :=
  localPrefix000278.append block000279

noncomputable def hints000280 : List Nat :=
  primeHintChunk% "../../certificates/prime-count33554432-v1/counts-000280.json" 33554432 614967 1229937 2

theorem length000280 : hints000280.length = 9608 := by decide +kernel
theorem checked000280 : checkPrimeHints 1229937 2 hints000280 = true := by decide +kernel
theorem counted000280 : hints000280.count 0 <= 1363 := by decide +kernel

noncomputable def block000280 : CheckedPrimeCountBlock 1229937 2 9608 1363 :=
  ⟨hints000280, length000280, checked000280, counted000280⟩

noncomputable def localPrefix000280 : CheckedPrimeCountBlock 1086469 2 81342 11669 :=
  localPrefix000279.append block000280

noncomputable def hints000281 : List Nat :=
  primeHintChunk% "../../certificates/prime-count33554432-v1/counts-000281.json" 33554432 624575 1249153 2

theorem length000281 : hints000281.length = 9759 := by decide +kernel
theorem checked000281 : checkPrimeHints 1249153 2 hints000281 = true := by decide +kernel
theorem counted000281 : hints000281.count 0 <= 1399 := by decide +kernel

noncomputable def block000281 : CheckedPrimeCountBlock 1249153 2 9759 1399 :=
  ⟨hints000281, length000281, checked000281, counted000281⟩

noncomputable def localPrefix000281 : CheckedPrimeCountBlock 1086469 2 91101 13068 :=
  localPrefix000280.append block000281

noncomputable def hints000282 : List Nat :=
  primeHintChunk% "../../certificates/prime-count33554432-v1/counts-000282.json" 33554432 634334 1268671 2

theorem length000282 : hints000282.length = 9911 := by decide +kernel
theorem checked000282 : checkPrimeHints 1268671 2 hints000282 = true := by decide +kernel
theorem counted000282 : hints000282.count 0 <= 1414 := by decide +kernel

noncomputable def block000282 : CheckedPrimeCountBlock 1268671 2 9911 1414 :=
  ⟨hints000282, length000282, checked000282, counted000282⟩

noncomputable def localPrefix000282 : CheckedPrimeCountBlock 1086469 2 101012 14482 :=
  localPrefix000281.append block000282

noncomputable def hints000283 : List Nat :=
  primeHintChunk% "../../certificates/prime-count33554432-v1/counts-000283.json" 33554432 644245 1288493 2

theorem length000283 : hints000283.length = 10066 := by decide +kernel
theorem checked000283 : checkPrimeHints 1288493 2 hints000283 = true := by decide +kernel
theorem counted000283 : hints000283.count 0 <= 1412 := by decide +kernel

noncomputable def block000283 : CheckedPrimeCountBlock 1288493 2 10066 1412 :=
  ⟨hints000283, length000283, checked000283, counted000283⟩

noncomputable def localPrefix000283 : CheckedPrimeCountBlock 1086469 2 111078 15894 :=
  localPrefix000282.append block000283

noncomputable def hints000284 : List Nat :=
  primeHintChunk% "../../certificates/prime-count33554432-v1/counts-000284.json" 33554432 654311 1308625 2

theorem length000284 : hints000284.length = 10223 := by decide +kernel
theorem checked000284 : checkPrimeHints 1308625 2 hints000284 = true := by decide +kernel
theorem counted000284 : hints000284.count 0 <= 1450 := by decide +kernel

noncomputable def block000284 : CheckedPrimeCountBlock 1308625 2 10223 1450 :=
  ⟨hints000284, length000284, checked000284, counted000284⟩

noncomputable def localPrefix000284 : CheckedPrimeCountBlock 1086469 2 121301 17344 :=
  localPrefix000283.append block000284

noncomputable def hints000285 : List Nat :=
  primeHintChunk% "../../certificates/prime-count33554432-v1/counts-000285.json" 33554432 664534 1329071 2

theorem length000285 : hints000285.length = 10383 := by decide +kernel
theorem checked000285 : checkPrimeHints 1329071 2 hints000285 = true := by decide +kernel
theorem counted000285 : hints000285.count 0 <= 1451 := by decide +kernel

noncomputable def block000285 : CheckedPrimeCountBlock 1329071 2 10383 1451 :=
  ⟨hints000285, length000285, checked000285, counted000285⟩

noncomputable def localPrefix000285 : CheckedPrimeCountBlock 1086469 2 131684 18795 :=
  localPrefix000284.append block000285

noncomputable def hints000286 : List Nat :=
  primeHintChunk% "../../certificates/prime-count33554432-v1/counts-000286.json" 33554432 674917 1349837 2

theorem length000286 : hints000286.length = 10545 := by decide +kernel
theorem checked000286 : checkPrimeHints 1349837 2 hints000286 = true := by decide +kernel
theorem counted000286 : hints000286.count 0 <= 1501 := by decide +kernel

noncomputable def block000286 : CheckedPrimeCountBlock 1349837 2 10545 1501 :=
  ⟨hints000286, length000286, checked000286, counted000286⟩

noncomputable def localPrefix000286 : CheckedPrimeCountBlock 1086469 2 142229 20296 :=
  localPrefix000285.append block000286

noncomputable def hints000287 : List Nat :=
  primeHintChunk% "../../certificates/prime-count33554432-v1/counts-000287.json" 33554432 685462 1370927 2

theorem length000287 : hints000287.length = 10710 := by decide +kernel
theorem checked000287 : checkPrimeHints 1370927 2 hints000287 = true := by decide +kernel
theorem counted000287 : hints000287.count 0 <= 1509 := by decide +kernel

noncomputable def block000287 : CheckedPrimeCountBlock 1370927 2 10710 1509 :=
  ⟨hints000287, length000287, checked000287, counted000287⟩

noncomputable def localPrefix000287 : CheckedPrimeCountBlock 1086469 2 152939 21805 :=
  localPrefix000286.append block000287

end JSP848.FullPrimeCount
