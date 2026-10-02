import JSP848.PrimeCountInput

set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0

namespace JSP848.FullPrimeCount

open PrimeCountInput

noncomputable def hints000320 : List Nat :=
  primeHintChunk% "../../certificates/prime-count33554432-v1/counts-000320.json" 33554432 1130495 2260993 2

theorem length000320 : hints000320.length = 16384 := by decide +kernel
theorem checked000320 : checkPrimeHints 2260993 2 hints000320 = true := by decide +kernel
theorem counted000320 : hints000320.count 0 <= 2235 := by decide +kernel

noncomputable def block000320 : CheckedPrimeCountBlock 2260993 2 16384 2235 :=
  ⟨hints000320, length000320, checked000320, counted000320⟩

noncomputable def localPrefix000320 : CheckedPrimeCountBlock 2260993 2 16384 2235 :=
  block000320

noncomputable def hints000321 : List Nat :=
  primeHintChunk% "../../certificates/prime-count33554432-v1/counts-000321.json" 33554432 1146879 2293761 2

theorem length000321 : hints000321.length = 16384 := by decide +kernel
theorem checked000321 : checkPrimeHints 2293761 2 hints000321 = true := by decide +kernel
theorem counted000321 : hints000321.count 0 <= 2208 := by decide +kernel

noncomputable def block000321 : CheckedPrimeCountBlock 2293761 2 16384 2208 :=
  ⟨hints000321, length000321, checked000321, counted000321⟩

noncomputable def localPrefix000321 : CheckedPrimeCountBlock 2260993 2 32768 4443 :=
  localPrefix000320.append block000321

noncomputable def hints000322 : List Nat :=
  primeHintChunk% "../../certificates/prime-count33554432-v1/counts-000322.json" 33554432 1163263 2326529 2

theorem length000322 : hints000322.length = 16384 := by decide +kernel
theorem checked000322 : checkPrimeHints 2326529 2 hints000322 = true := by decide +kernel
theorem counted000322 : hints000322.count 0 <= 2222 := by decide +kernel

noncomputable def block000322 : CheckedPrimeCountBlock 2326529 2 16384 2222 :=
  ⟨hints000322, length000322, checked000322, counted000322⟩

noncomputable def localPrefix000322 : CheckedPrimeCountBlock 2260993 2 49152 6665 :=
  localPrefix000321.append block000322

noncomputable def hints000323 : List Nat :=
  primeHintChunk% "../../certificates/prime-count33554432-v1/counts-000323.json" 33554432 1179647 2359297 2

theorem length000323 : hints000323.length = 16384 := by decide +kernel
theorem checked000323 : checkPrimeHints 2359297 2 hints000323 = true := by decide +kernel
theorem counted000323 : hints000323.count 0 <= 2247 := by decide +kernel

noncomputable def block000323 : CheckedPrimeCountBlock 2359297 2 16384 2247 :=
  ⟨hints000323, length000323, checked000323, counted000323⟩

noncomputable def localPrefix000323 : CheckedPrimeCountBlock 2260993 2 65536 8912 :=
  localPrefix000322.append block000323

noncomputable def hints000324 : List Nat :=
  primeHintChunk% "../../certificates/prime-count33554432-v1/counts-000324.json" 33554432 1196031 2392065 2

theorem length000324 : hints000324.length = 16384 := by decide +kernel
theorem checked000324 : checkPrimeHints 2392065 2 hints000324 = true := by decide +kernel
theorem counted000324 : hints000324.count 0 <= 2213 := by decide +kernel

noncomputable def block000324 : CheckedPrimeCountBlock 2392065 2 16384 2213 :=
  ⟨hints000324, length000324, checked000324, counted000324⟩

noncomputable def localPrefix000324 : CheckedPrimeCountBlock 2260993 2 81920 11125 :=
  localPrefix000323.append block000324

noncomputable def hints000325 : List Nat :=
  primeHintChunk% "../../certificates/prime-count33554432-v1/counts-000325.json" 33554432 1212415 2424833 2

theorem length000325 : hints000325.length = 16384 := by decide +kernel
theorem checked000325 : checkPrimeHints 2424833 2 hints000325 = true := by decide +kernel
theorem counted000325 : hints000325.count 0 <= 2223 := by decide +kernel

noncomputable def block000325 : CheckedPrimeCountBlock 2424833 2 16384 2223 :=
  ⟨hints000325, length000325, checked000325, counted000325⟩

noncomputable def localPrefix000325 : CheckedPrimeCountBlock 2260993 2 98304 13348 :=
  localPrefix000324.append block000325

noncomputable def hints000326 : List Nat :=
  primeHintChunk% "../../certificates/prime-count33554432-v1/counts-000326.json" 33554432 1228799 2457601 2

theorem length000326 : hints000326.length = 16384 := by decide +kernel
theorem checked000326 : checkPrimeHints 2457601 2 hints000326 = true := by decide +kernel
theorem counted000326 : hints000326.count 0 <= 2223 := by decide +kernel

noncomputable def block000326 : CheckedPrimeCountBlock 2457601 2 16384 2223 :=
  ⟨hints000326, length000326, checked000326, counted000326⟩

noncomputable def localPrefix000326 : CheckedPrimeCountBlock 2260993 2 114688 15571 :=
  localPrefix000325.append block000326

noncomputable def hints000327 : List Nat :=
  primeHintChunk% "../../certificates/prime-count33554432-v1/counts-000327.json" 33554432 1245183 2490369 2

theorem length000327 : hints000327.length = 16384 := by decide +kernel
theorem checked000327 : checkPrimeHints 2490369 2 hints000327 = true := by decide +kernel
theorem counted000327 : hints000327.count 0 <= 2214 := by decide +kernel

noncomputable def block000327 : CheckedPrimeCountBlock 2490369 2 16384 2214 :=
  ⟨hints000327, length000327, checked000327, counted000327⟩

noncomputable def localPrefix000327 : CheckedPrimeCountBlock 2260993 2 131072 17785 :=
  localPrefix000326.append block000327

noncomputable def hints000328 : List Nat :=
  primeHintChunk% "../../certificates/prime-count33554432-v1/counts-000328.json" 33554432 1261567 2523137 2

theorem length000328 : hints000328.length = 16384 := by decide +kernel
theorem checked000328 : checkPrimeHints 2523137 2 hints000328 = true := by decide +kernel
theorem counted000328 : hints000328.count 0 <= 2232 := by decide +kernel

noncomputable def block000328 : CheckedPrimeCountBlock 2523137 2 16384 2232 :=
  ⟨hints000328, length000328, checked000328, counted000328⟩

noncomputable def localPrefix000328 : CheckedPrimeCountBlock 2260993 2 147456 20017 :=
  localPrefix000327.append block000328

noncomputable def hints000329 : List Nat :=
  primeHintChunk% "../../certificates/prime-count33554432-v1/counts-000329.json" 33554432 1277951 2555905 2

theorem length000329 : hints000329.length = 16384 := by decide +kernel
theorem checked000329 : checkPrimeHints 2555905 2 hints000329 = true := by decide +kernel
theorem counted000329 : hints000329.count 0 <= 2245 := by decide +kernel

noncomputable def block000329 : CheckedPrimeCountBlock 2555905 2 16384 2245 :=
  ⟨hints000329, length000329, checked000329, counted000329⟩

noncomputable def localPrefix000329 : CheckedPrimeCountBlock 2260993 2 163840 22262 :=
  localPrefix000328.append block000329

noncomputable def hints000330 : List Nat :=
  primeHintChunk% "../../certificates/prime-count33554432-v1/counts-000330.json" 33554432 1294335 2588673 2

theorem length000330 : hints000330.length = 16384 := by decide +kernel
theorem checked000330 : checkPrimeHints 2588673 2 hints000330 = true := by decide +kernel
theorem counted000330 : hints000330.count 0 <= 2197 := by decide +kernel

noncomputable def block000330 : CheckedPrimeCountBlock 2588673 2 16384 2197 :=
  ⟨hints000330, length000330, checked000330, counted000330⟩

noncomputable def localPrefix000330 : CheckedPrimeCountBlock 2260993 2 180224 24459 :=
  localPrefix000329.append block000330

noncomputable def hints000331 : List Nat :=
  primeHintChunk% "../../certificates/prime-count33554432-v1/counts-000331.json" 33554432 1310719 2621441 2

theorem length000331 : hints000331.length = 16384 := by decide +kernel
theorem checked000331 : checkPrimeHints 2621441 2 hints000331 = true := by decide +kernel
theorem counted000331 : hints000331.count 0 <= 2232 := by decide +kernel

noncomputable def block000331 : CheckedPrimeCountBlock 2621441 2 16384 2232 :=
  ⟨hints000331, length000331, checked000331, counted000331⟩

noncomputable def localPrefix000331 : CheckedPrimeCountBlock 2260993 2 196608 26691 :=
  localPrefix000330.append block000331

noncomputable def hints000332 : List Nat :=
  primeHintChunk% "../../certificates/prime-count33554432-v1/counts-000332.json" 33554432 1327103 2654209 2

theorem length000332 : hints000332.length = 16384 := by decide +kernel
theorem checked000332 : checkPrimeHints 2654209 2 hints000332 = true := by decide +kernel
theorem counted000332 : hints000332.count 0 <= 2206 := by decide +kernel

noncomputable def block000332 : CheckedPrimeCountBlock 2654209 2 16384 2206 :=
  ⟨hints000332, length000332, checked000332, counted000332⟩

noncomputable def localPrefix000332 : CheckedPrimeCountBlock 2260993 2 212992 28897 :=
  localPrefix000331.append block000332

noncomputable def hints000333 : List Nat :=
  primeHintChunk% "../../certificates/prime-count33554432-v1/counts-000333.json" 33554432 1343487 2686977 2

theorem length000333 : hints000333.length = 16384 := by decide +kernel
theorem checked000333 : checkPrimeHints 2686977 2 hints000333 = true := by decide +kernel
theorem counted000333 : hints000333.count 0 <= 2261 := by decide +kernel

noncomputable def block000333 : CheckedPrimeCountBlock 2686977 2 16384 2261 :=
  ⟨hints000333, length000333, checked000333, counted000333⟩

noncomputable def localPrefix000333 : CheckedPrimeCountBlock 2260993 2 229376 31158 :=
  localPrefix000332.append block000333

noncomputable def hints000334 : List Nat :=
  primeHintChunk% "../../certificates/prime-count33554432-v1/counts-000334.json" 33554432 1359871 2719745 2

theorem length000334 : hints000334.length = 16384 := by decide +kernel
theorem checked000334 : checkPrimeHints 2719745 2 hints000334 = true := by decide +kernel
theorem counted000334 : hints000334.count 0 <= 2160 := by decide +kernel

noncomputable def block000334 : CheckedPrimeCountBlock 2719745 2 16384 2160 :=
  ⟨hints000334, length000334, checked000334, counted000334⟩

noncomputable def localPrefix000334 : CheckedPrimeCountBlock 2260993 2 245760 33318 :=
  localPrefix000333.append block000334

noncomputable def hints000335 : List Nat :=
  primeHintChunk% "../../certificates/prime-count33554432-v1/counts-000335.json" 33554432 1376255 2752513 2

theorem length000335 : hints000335.length = 16384 := by decide +kernel
theorem checked000335 : checkPrimeHints 2752513 2 hints000335 = true := by decide +kernel
theorem counted000335 : hints000335.count 0 <= 2209 := by decide +kernel

noncomputable def block000335 : CheckedPrimeCountBlock 2752513 2 16384 2209 :=
  ⟨hints000335, length000335, checked000335, counted000335⟩

noncomputable def localPrefix000335 : CheckedPrimeCountBlock 2260993 2 262144 35527 :=
  localPrefix000334.append block000335

end JSP848.FullPrimeCount
