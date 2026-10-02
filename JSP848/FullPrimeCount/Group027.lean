import JSP848.PrimeCountInput

set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0

namespace JSP848.FullPrimeCount

open PrimeCountInput

noncomputable def hints000432 : List Nat :=
  primeHintChunk% "../../certificates/prime-count33554432-v1/counts-000432.json" 33554432 2965503 5931009 2

theorem length000432 : hints000432.length = 16384 := by decide +kernel
theorem checked000432 : checkPrimeHints 5931009 2 hints000432 = true := by decide +kernel
theorem counted000432 : hints000432.count 0 <= 2095 := by decide +kernel

noncomputable def block000432 : CheckedPrimeCountBlock 5931009 2 16384 2095 :=
  ⟨hints000432, length000432, checked000432, counted000432⟩

noncomputable def localPrefix000432 : CheckedPrimeCountBlock 5931009 2 16384 2095 :=
  block000432

noncomputable def hints000433 : List Nat :=
  primeHintChunk% "../../certificates/prime-count33554432-v1/counts-000433.json" 33554432 2981887 5963777 2

theorem length000433 : hints000433.length = 16384 := by decide +kernel
theorem checked000433 : checkPrimeHints 5963777 2 hints000433 = true := by decide +kernel
theorem counted000433 : hints000433.count 0 <= 2075 := by decide +kernel

noncomputable def block000433 : CheckedPrimeCountBlock 5963777 2 16384 2075 :=
  ⟨hints000433, length000433, checked000433, counted000433⟩

noncomputable def localPrefix000433 : CheckedPrimeCountBlock 5931009 2 32768 4170 :=
  localPrefix000432.append block000433

noncomputable def hints000434 : List Nat :=
  primeHintChunk% "../../certificates/prime-count33554432-v1/counts-000434.json" 33554432 2998271 5996545 2

theorem length000434 : hints000434.length = 16384 := by decide +kernel
theorem checked000434 : checkPrimeHints 5996545 2 hints000434 = true := by decide +kernel
theorem counted000434 : hints000434.count 0 <= 2142 := by decide +kernel

noncomputable def block000434 : CheckedPrimeCountBlock 5996545 2 16384 2142 :=
  ⟨hints000434, length000434, checked000434, counted000434⟩

noncomputable def localPrefix000434 : CheckedPrimeCountBlock 5931009 2 49152 6312 :=
  localPrefix000433.append block000434

noncomputable def hints000435 : List Nat :=
  primeHintChunk% "../../certificates/prime-count33554432-v1/counts-000435.json" 33554432 3014655 6029313 2

theorem length000435 : hints000435.length = 16384 := by decide +kernel
theorem checked000435 : checkPrimeHints 6029313 2 hints000435 = true := by decide +kernel
theorem counted000435 : hints000435.count 0 <= 2054 := by decide +kernel

noncomputable def block000435 : CheckedPrimeCountBlock 6029313 2 16384 2054 :=
  ⟨hints000435, length000435, checked000435, counted000435⟩

noncomputable def localPrefix000435 : CheckedPrimeCountBlock 5931009 2 65536 8366 :=
  localPrefix000434.append block000435

noncomputable def hints000436 : List Nat :=
  primeHintChunk% "../../certificates/prime-count33554432-v1/counts-000436.json" 33554432 3031039 6062081 2

theorem length000436 : hints000436.length = 16384 := by decide +kernel
theorem checked000436 : checkPrimeHints 6062081 2 hints000436 = true := by decide +kernel
theorem counted000436 : hints000436.count 0 <= 2074 := by decide +kernel

noncomputable def block000436 : CheckedPrimeCountBlock 6062081 2 16384 2074 :=
  ⟨hints000436, length000436, checked000436, counted000436⟩

noncomputable def localPrefix000436 : CheckedPrimeCountBlock 5931009 2 81920 10440 :=
  localPrefix000435.append block000436

noncomputable def hints000437 : List Nat :=
  primeHintChunk% "../../certificates/prime-count33554432-v1/counts-000437.json" 33554432 3047423 6094849 2

theorem length000437 : hints000437.length = 16384 := by decide +kernel
theorem checked000437 : checkPrimeHints 6094849 2 hints000437 = true := by decide +kernel
theorem counted000437 : hints000437.count 0 <= 2117 := by decide +kernel

noncomputable def block000437 : CheckedPrimeCountBlock 6094849 2 16384 2117 :=
  ⟨hints000437, length000437, checked000437, counted000437⟩

noncomputable def localPrefix000437 : CheckedPrimeCountBlock 5931009 2 98304 12557 :=
  localPrefix000436.append block000437

noncomputable def hints000438 : List Nat :=
  primeHintChunk% "../../certificates/prime-count33554432-v1/counts-000438.json" 33554432 3063807 6127617 2

theorem length000438 : hints000438.length = 16384 := by decide +kernel
theorem checked000438 : checkPrimeHints 6127617 2 hints000438 = true := by decide +kernel
theorem counted000438 : hints000438.count 0 <= 2103 := by decide +kernel

noncomputable def block000438 : CheckedPrimeCountBlock 6127617 2 16384 2103 :=
  ⟨hints000438, length000438, checked000438, counted000438⟩

noncomputable def localPrefix000438 : CheckedPrimeCountBlock 5931009 2 114688 14660 :=
  localPrefix000437.append block000438

noncomputable def hints000439 : List Nat :=
  primeHintChunk% "../../certificates/prime-count33554432-v1/counts-000439.json" 33554432 3080191 6160385 2

theorem length000439 : hints000439.length = 16384 := by decide +kernel
theorem checked000439 : checkPrimeHints 6160385 2 hints000439 = true := by decide +kernel
theorem counted000439 : hints000439.count 0 <= 2066 := by decide +kernel

noncomputable def block000439 : CheckedPrimeCountBlock 6160385 2 16384 2066 :=
  ⟨hints000439, length000439, checked000439, counted000439⟩

noncomputable def localPrefix000439 : CheckedPrimeCountBlock 5931009 2 131072 16726 :=
  localPrefix000438.append block000439

noncomputable def hints000440 : List Nat :=
  primeHintChunk% "../../certificates/prime-count33554432-v1/counts-000440.json" 33554432 3096575 6193153 2

theorem length000440 : hints000440.length = 16384 := by decide +kernel
theorem checked000440 : checkPrimeHints 6193153 2 hints000440 = true := by decide +kernel
theorem counted000440 : hints000440.count 0 <= 2091 := by decide +kernel

noncomputable def block000440 : CheckedPrimeCountBlock 6193153 2 16384 2091 :=
  ⟨hints000440, length000440, checked000440, counted000440⟩

noncomputable def localPrefix000440 : CheckedPrimeCountBlock 5931009 2 147456 18817 :=
  localPrefix000439.append block000440

noncomputable def hints000441 : List Nat :=
  primeHintChunk% "../../certificates/prime-count33554432-v1/counts-000441.json" 33554432 3112959 6225921 2

theorem length000441 : hints000441.length = 16384 := by decide +kernel
theorem checked000441 : checkPrimeHints 6225921 2 hints000441 = true := by decide +kernel
theorem counted000441 : hints000441.count 0 <= 2110 := by decide +kernel

noncomputable def block000441 : CheckedPrimeCountBlock 6225921 2 16384 2110 :=
  ⟨hints000441, length000441, checked000441, counted000441⟩

noncomputable def localPrefix000441 : CheckedPrimeCountBlock 5931009 2 163840 20927 :=
  localPrefix000440.append block000441

noncomputable def hints000442 : List Nat :=
  primeHintChunk% "../../certificates/prime-count33554432-v1/counts-000442.json" 33554432 3129343 6258689 2

theorem length000442 : hints000442.length = 16384 := by decide +kernel
theorem checked000442 : checkPrimeHints 6258689 2 hints000442 = true := by decide +kernel
theorem counted000442 : hints000442.count 0 <= 2116 := by decide +kernel

noncomputable def block000442 : CheckedPrimeCountBlock 6258689 2 16384 2116 :=
  ⟨hints000442, length000442, checked000442, counted000442⟩

noncomputable def localPrefix000442 : CheckedPrimeCountBlock 5931009 2 180224 23043 :=
  localPrefix000441.append block000442

noncomputable def hints000443 : List Nat :=
  primeHintChunk% "../../certificates/prime-count33554432-v1/counts-000443.json" 33554432 3145727 6291457 2

theorem length000443 : hints000443.length = 16384 := by decide +kernel
theorem checked000443 : checkPrimeHints 6291457 2 hints000443 = true := by decide +kernel
theorem counted000443 : hints000443.count 0 <= 2126 := by decide +kernel

noncomputable def block000443 : CheckedPrimeCountBlock 6291457 2 16384 2126 :=
  ⟨hints000443, length000443, checked000443, counted000443⟩

noncomputable def localPrefix000443 : CheckedPrimeCountBlock 5931009 2 196608 25169 :=
  localPrefix000442.append block000443

noncomputable def hints000444 : List Nat :=
  primeHintChunk% "../../certificates/prime-count33554432-v1/counts-000444.json" 33554432 3162111 6324225 2

theorem length000444 : hints000444.length = 16384 := by decide +kernel
theorem checked000444 : checkPrimeHints 6324225 2 hints000444 = true := by decide +kernel
theorem counted000444 : hints000444.count 0 <= 2083 := by decide +kernel

noncomputable def block000444 : CheckedPrimeCountBlock 6324225 2 16384 2083 :=
  ⟨hints000444, length000444, checked000444, counted000444⟩

noncomputable def localPrefix000444 : CheckedPrimeCountBlock 5931009 2 212992 27252 :=
  localPrefix000443.append block000444

noncomputable def hints000445 : List Nat :=
  primeHintChunk% "../../certificates/prime-count33554432-v1/counts-000445.json" 33554432 3178495 6356993 2

theorem length000445 : hints000445.length = 16384 := by decide +kernel
theorem checked000445 : checkPrimeHints 6356993 2 hints000445 = true := by decide +kernel
theorem counted000445 : hints000445.count 0 <= 2033 := by decide +kernel

noncomputable def block000445 : CheckedPrimeCountBlock 6356993 2 16384 2033 :=
  ⟨hints000445, length000445, checked000445, counted000445⟩

noncomputable def localPrefix000445 : CheckedPrimeCountBlock 5931009 2 229376 29285 :=
  localPrefix000444.append block000445

noncomputable def hints000446 : List Nat :=
  primeHintChunk% "../../certificates/prime-count33554432-v1/counts-000446.json" 33554432 3194879 6389761 2

theorem length000446 : hints000446.length = 16384 := by decide +kernel
theorem checked000446 : checkPrimeHints 6389761 2 hints000446 = true := by decide +kernel
theorem counted000446 : hints000446.count 0 <= 2095 := by decide +kernel

noncomputable def block000446 : CheckedPrimeCountBlock 6389761 2 16384 2095 :=
  ⟨hints000446, length000446, checked000446, counted000446⟩

noncomputable def localPrefix000446 : CheckedPrimeCountBlock 5931009 2 245760 31380 :=
  localPrefix000445.append block000446

noncomputable def hints000447 : List Nat :=
  primeHintChunk% "../../certificates/prime-count33554432-v1/counts-000447.json" 33554432 3211263 6422529 2

theorem length000447 : hints000447.length = 16384 := by decide +kernel
theorem checked000447 : checkPrimeHints 6422529 2 hints000447 = true := by decide +kernel
theorem counted000447 : hints000447.count 0 <= 2082 := by decide +kernel

noncomputable def block000447 : CheckedPrimeCountBlock 6422529 2 16384 2082 :=
  ⟨hints000447, length000447, checked000447, counted000447⟩

noncomputable def localPrefix000447 : CheckedPrimeCountBlock 5931009 2 262144 33462 :=
  localPrefix000446.append block000447

end JSP848.FullPrimeCount
