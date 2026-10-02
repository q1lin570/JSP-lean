import JSP848.PrimeCountInput

set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0

namespace JSP848.FullPrimeCount

open PrimeCountInput

noncomputable def hints000176 : List Nat :=
  primeHintChunk% "../../certificates/prime-count33554432-v1/counts-000176.json" 33554432 123085 246173 2

theorem length000176 : hints000176.length = 1923 := by decide +kernel
theorem checked000176 : checkPrimeHints 246173 2 hints000176 = true := by decide +kernel
theorem counted000176 : hints000176.count 0 <= 322 := by decide +kernel

noncomputable def block000176 : CheckedPrimeCountBlock 246173 2 1923 322 :=
  ⟨hints000176, length000176, checked000176, counted000176⟩

noncomputable def localPrefix000176 : CheckedPrimeCountBlock 246173 2 1923 322 :=
  block000176

noncomputable def hints000177 : List Nat :=
  primeHintChunk% "../../certificates/prime-count33554432-v1/counts-000177.json" 33554432 125008 250019 2

theorem length000177 : hints000177.length = 1953 := by decide +kernel
theorem checked000177 : checkPrimeHints 250019 2 hints000177 = true := by decide +kernel
theorem counted000177 : hints000177.count 0 <= 309 := by decide +kernel

noncomputable def block000177 : CheckedPrimeCountBlock 250019 2 1953 309 :=
  ⟨hints000177, length000177, checked000177, counted000177⟩

noncomputable def localPrefix000177 : CheckedPrimeCountBlock 246173 2 3876 631 :=
  localPrefix000176.append block000177

noncomputable def hints000178 : List Nat :=
  primeHintChunk% "../../certificates/prime-count33554432-v1/counts-000178.json" 33554432 126961 253925 2

theorem length000178 : hints000178.length = 1983 := by decide +kernel
theorem checked000178 : checkPrimeHints 253925 2 hints000178 = true := by decide +kernel
theorem counted000178 : hints000178.count 0 <= 311 := by decide +kernel

noncomputable def block000178 : CheckedPrimeCountBlock 253925 2 1983 311 :=
  ⟨hints000178, length000178, checked000178, counted000178⟩

noncomputable def localPrefix000178 : CheckedPrimeCountBlock 246173 2 5859 942 :=
  localPrefix000177.append block000178

noncomputable def hints000179 : List Nat :=
  primeHintChunk% "../../certificates/prime-count33554432-v1/counts-000179.json" 33554432 128944 257891 2

theorem length000179 : hints000179.length = 2014 := by decide +kernel
theorem checked000179 : checkPrimeHints 257891 2 hints000179 = true := by decide +kernel
theorem counted000179 : hints000179.count 0 <= 316 := by decide +kernel

noncomputable def block000179 : CheckedPrimeCountBlock 257891 2 2014 316 :=
  ⟨hints000179, length000179, checked000179, counted000179⟩

noncomputable def localPrefix000179 : CheckedPrimeCountBlock 246173 2 7873 1258 :=
  localPrefix000178.append block000179

noncomputable def hints000180 : List Nat :=
  primeHintChunk% "../../certificates/prime-count33554432-v1/counts-000180.json" 33554432 130958 261919 2

theorem length000180 : hints000180.length = 2046 := by decide +kernel
theorem checked000180 : checkPrimeHints 261919 2 hints000180 = true := by decide +kernel
theorem counted000180 : hints000180.count 0 <= 328 := by decide +kernel

noncomputable def block000180 : CheckedPrimeCountBlock 261919 2 2046 328 :=
  ⟨hints000180, length000180, checked000180, counted000180⟩

noncomputable def localPrefix000180 : CheckedPrimeCountBlock 246173 2 9919 1586 :=
  localPrefix000179.append block000180

noncomputable def hints000181 : List Nat :=
  primeHintChunk% "../../certificates/prime-count33554432-v1/counts-000181.json" 33554432 133004 266011 2

theorem length000181 : hints000181.length = 2078 := by decide +kernel
theorem checked000181 : checkPrimeHints 266011 2 hints000181 = true := by decide +kernel
theorem counted000181 : hints000181.count 0 <= 346 := by decide +kernel

noncomputable def block000181 : CheckedPrimeCountBlock 266011 2 2078 346 :=
  ⟨hints000181, length000181, checked000181, counted000181⟩

noncomputable def localPrefix000181 : CheckedPrimeCountBlock 246173 2 11997 1932 :=
  localPrefix000180.append block000181

noncomputable def hints000182 : List Nat :=
  primeHintChunk% "../../certificates/prime-count33554432-v1/counts-000182.json" 33554432 135082 270167 2

theorem length000182 : hints000182.length = 2110 := by decide +kernel
theorem checked000182 : checkPrimeHints 270167 2 hints000182 = true := by decide +kernel
theorem counted000182 : hints000182.count 0 <= 334 := by decide +kernel

noncomputable def block000182 : CheckedPrimeCountBlock 270167 2 2110 334 :=
  ⟨hints000182, length000182, checked000182, counted000182⟩

noncomputable def localPrefix000182 : CheckedPrimeCountBlock 246173 2 14107 2266 :=
  localPrefix000181.append block000182

noncomputable def hints000183 : List Nat :=
  primeHintChunk% "../../certificates/prime-count33554432-v1/counts-000183.json" 33554432 137192 274387 2

theorem length000183 : hints000183.length = 2143 := by decide +kernel
theorem checked000183 : checkPrimeHints 274387 2 hints000183 = true := by decide +kernel
theorem counted000183 : hints000183.count 0 <= 343 := by decide +kernel

noncomputable def block000183 : CheckedPrimeCountBlock 274387 2 2143 343 :=
  ⟨hints000183, length000183, checked000183, counted000183⟩

noncomputable def localPrefix000183 : CheckedPrimeCountBlock 246173 2 16250 2609 :=
  localPrefix000182.append block000183

noncomputable def hints000184 : List Nat :=
  primeHintChunk% "../../certificates/prime-count33554432-v1/counts-000184.json" 33554432 139335 278673 2

theorem length000184 : hints000184.length = 2177 := by decide +kernel
theorem checked000184 : checkPrimeHints 278673 2 hints000184 = true := by decide +kernel
theorem counted000184 : hints000184.count 0 <= 351 := by decide +kernel

noncomputable def block000184 : CheckedPrimeCountBlock 278673 2 2177 351 :=
  ⟨hints000184, length000184, checked000184, counted000184⟩

noncomputable def localPrefix000184 : CheckedPrimeCountBlock 246173 2 18427 2960 :=
  localPrefix000183.append block000184

noncomputable def hints000185 : List Nat :=
  primeHintChunk% "../../certificates/prime-count33554432-v1/counts-000185.json" 33554432 141512 283027 2

theorem length000185 : hints000185.length = 2211 := by decide +kernel
theorem checked000185 : checkPrimeHints 283027 2 hints000185 = true := by decide +kernel
theorem counted000185 : hints000185.count 0 <= 344 := by decide +kernel

noncomputable def block000185 : CheckedPrimeCountBlock 283027 2 2211 344 :=
  ⟨hints000185, length000185, checked000185, counted000185⟩

noncomputable def localPrefix000185 : CheckedPrimeCountBlock 246173 2 20638 3304 :=
  localPrefix000184.append block000185

noncomputable def hints000186 : List Nat :=
  primeHintChunk% "../../certificates/prime-count33554432-v1/counts-000186.json" 33554432 143723 287449 2

theorem length000186 : hints000186.length = 2245 := by decide +kernel
theorem checked000186 : checkPrimeHints 287449 2 hints000186 = true := by decide +kernel
theorem counted000186 : hints000186.count 0 <= 353 := by decide +kernel

noncomputable def block000186 : CheckedPrimeCountBlock 287449 2 2245 353 :=
  ⟨hints000186, length000186, checked000186, counted000186⟩

noncomputable def localPrefix000186 : CheckedPrimeCountBlock 246173 2 22883 3657 :=
  localPrefix000185.append block000186

noncomputable def hints000187 : List Nat :=
  primeHintChunk% "../../certificates/prime-count33554432-v1/counts-000187.json" 33554432 145968 291939 2

theorem length000187 : hints000187.length = 2280 := by decide +kernel
theorem checked000187 : checkPrimeHints 291939 2 hints000187 = true := by decide +kernel
theorem counted000187 : hints000187.count 0 <= 346 := by decide +kernel

noncomputable def block000187 : CheckedPrimeCountBlock 291939 2 2280 346 :=
  ⟨hints000187, length000187, checked000187, counted000187⟩

noncomputable def localPrefix000187 : CheckedPrimeCountBlock 246173 2 25163 4003 :=
  localPrefix000186.append block000187

noncomputable def hints000188 : List Nat :=
  primeHintChunk% "../../certificates/prime-count33554432-v1/counts-000188.json" 33554432 148248 296499 2

theorem length000188 : hints000188.length = 2316 := by decide +kernel
theorem checked000188 : checkPrimeHints 296499 2 hints000188 = true := by decide +kernel
theorem counted000188 : hints000188.count 0 <= 364 := by decide +kernel

noncomputable def block000188 : CheckedPrimeCountBlock 296499 2 2316 364 :=
  ⟨hints000188, length000188, checked000188, counted000188⟩

noncomputable def localPrefix000188 : CheckedPrimeCountBlock 246173 2 27479 4367 :=
  localPrefix000187.append block000188

noncomputable def hints000189 : List Nat :=
  primeHintChunk% "../../certificates/prime-count33554432-v1/counts-000189.json" 33554432 150564 301131 2

theorem length000189 : hints000189.length = 2352 := by decide +kernel
theorem checked000189 : checkPrimeHints 301131 2 hints000189 = true := by decide +kernel
theorem counted000189 : hints000189.count 0 <= 386 := by decide +kernel

noncomputable def block000189 : CheckedPrimeCountBlock 301131 2 2352 386 :=
  ⟨hints000189, length000189, checked000189, counted000189⟩

noncomputable def localPrefix000189 : CheckedPrimeCountBlock 246173 2 29831 4753 :=
  localPrefix000188.append block000189

noncomputable def hints000190 : List Nat :=
  primeHintChunk% "../../certificates/prime-count33554432-v1/counts-000190.json" 33554432 152916 305835 2

theorem length000190 : hints000190.length = 2389 := by decide +kernel
theorem checked000190 : checkPrimeHints 305835 2 hints000190 = true := by decide +kernel
theorem counted000190 : hints000190.count 0 <= 371 := by decide +kernel

noncomputable def block000190 : CheckedPrimeCountBlock 305835 2 2389 371 :=
  ⟨hints000190, length000190, checked000190, counted000190⟩

noncomputable def localPrefix000190 : CheckedPrimeCountBlock 246173 2 32220 5124 :=
  localPrefix000189.append block000190

noncomputable def hints000191 : List Nat :=
  primeHintChunk% "../../certificates/prime-count33554432-v1/counts-000191.json" 33554432 155305 310613 2

theorem length000191 : hints000191.length = 2426 := by decide +kernel
theorem checked000191 : checkPrimeHints 310613 2 hints000191 = true := by decide +kernel
theorem counted000191 : hints000191.count 0 <= 382 := by decide +kernel

noncomputable def block000191 : CheckedPrimeCountBlock 310613 2 2426 382 :=
  ⟨hints000191, length000191, checked000191, counted000191⟩

noncomputable def localPrefix000191 : CheckedPrimeCountBlock 246173 2 34646 5506 :=
  localPrefix000190.append block000191

end JSP848.FullPrimeCount
