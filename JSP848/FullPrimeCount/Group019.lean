import JSP848.PrimeCountInput

set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0

namespace JSP848.FullPrimeCount

open PrimeCountInput

noncomputable def hints000304 : List Nat :=
  primeHintChunk% "../../certificates/prime-count33554432-v1/counts-000304.json" 33554432 892167 1784337 2

theorem length000304 : hints000304.length = 13940 := by decide +kernel
theorem checked000304 : checkPrimeHints 1784337 2 hints000304 = true := by decide +kernel
theorem counted000304 : hints000304.count 0 <= 1944 := by decide +kernel

noncomputable def block000304 : CheckedPrimeCountBlock 1784337 2 13940 1944 :=
  ⟨hints000304, length000304, checked000304, counted000304⟩

noncomputable def localPrefix000304 : CheckedPrimeCountBlock 1784337 2 13940 1944 :=
  block000304

noncomputable def hints000305 : List Nat :=
  primeHintChunk% "../../certificates/prime-count33554432-v1/counts-000305.json" 33554432 906107 1812217 2

theorem length000305 : hints000305.length = 14157 := by decide +kernel
theorem checked000305 : checkPrimeHints 1812217 2 hints000305 = true := by decide +kernel
theorem counted000305 : hints000305.count 0 <= 1948 := by decide +kernel

noncomputable def block000305 : CheckedPrimeCountBlock 1812217 2 14157 1948 :=
  ⟨hints000305, length000305, checked000305, counted000305⟩

noncomputable def localPrefix000305 : CheckedPrimeCountBlock 1784337 2 28097 3892 :=
  localPrefix000304.append block000305

noncomputable def hints000306 : List Nat :=
  primeHintChunk% "../../certificates/prime-count33554432-v1/counts-000306.json" 33554432 920264 1840531 2

theorem length000306 : hints000306.length = 14379 := by decide +kernel
theorem checked000306 : checkPrimeHints 1840531 2 hints000306 = true := by decide +kernel
theorem counted000306 : hints000306.count 0 <= 2038 := by decide +kernel

noncomputable def block000306 : CheckedPrimeCountBlock 1840531 2 14379 2038 :=
  ⟨hints000306, length000306, checked000306, counted000306⟩

noncomputable def localPrefix000306 : CheckedPrimeCountBlock 1784337 2 42476 5930 :=
  localPrefix000305.append block000306

noncomputable def hints000307 : List Nat :=
  primeHintChunk% "../../certificates/prime-count33554432-v1/counts-000307.json" 33554432 934643 1869289 2

theorem length000307 : hints000307.length = 14603 := by decide +kernel
theorem checked000307 : checkPrimeHints 1869289 2 hints000307 = true := by decide +kernel
theorem counted000307 : hints000307.count 0 <= 2020 := by decide +kernel

noncomputable def block000307 : CheckedPrimeCountBlock 1869289 2 14603 2020 :=
  ⟨hints000307, length000307, checked000307, counted000307⟩

noncomputable def localPrefix000307 : CheckedPrimeCountBlock 1784337 2 57079 7950 :=
  localPrefix000306.append block000307

noncomputable def hints000308 : List Nat :=
  primeHintChunk% "../../certificates/prime-count33554432-v1/counts-000308.json" 33554432 949246 1898495 2

theorem length000308 : hints000308.length = 14831 := by decide +kernel
theorem checked000308 : checkPrimeHints 1898495 2 hints000308 = true := by decide +kernel
theorem counted000308 : hints000308.count 0 <= 2061 := by decide +kernel

noncomputable def block000308 : CheckedPrimeCountBlock 1898495 2 14831 2061 :=
  ⟨hints000308, length000308, checked000308, counted000308⟩

noncomputable def localPrefix000308 : CheckedPrimeCountBlock 1784337 2 71910 10011 :=
  localPrefix000307.append block000308

noncomputable def hints000309 : List Nat :=
  primeHintChunk% "../../certificates/prime-count33554432-v1/counts-000309.json" 33554432 964077 1928157 2

theorem length000309 : hints000309.length = 15063 := by decide +kernel
theorem checked000309 : checkPrimeHints 1928157 2 hints000309 = true := by decide +kernel
theorem counted000309 : hints000309.count 0 <= 2073 := by decide +kernel

noncomputable def block000309 : CheckedPrimeCountBlock 1928157 2 15063 2073 :=
  ⟨hints000309, length000309, checked000309, counted000309⟩

noncomputable def localPrefix000309 : CheckedPrimeCountBlock 1784337 2 86973 12084 :=
  localPrefix000308.append block000309

noncomputable def hints000310 : List Nat :=
  primeHintChunk% "../../certificates/prime-count33554432-v1/counts-000310.json" 33554432 979140 1958283 2

theorem length000310 : hints000310.length = 15299 := by decide +kernel
theorem checked000310 : checkPrimeHints 1958283 2 hints000310 = true := by decide +kernel
theorem counted000310 : hints000310.count 0 <= 2089 := by decide +kernel

noncomputable def block000310 : CheckedPrimeCountBlock 1958283 2 15299 2089 :=
  ⟨hints000310, length000310, checked000310, counted000310⟩

noncomputable def localPrefix000310 : CheckedPrimeCountBlock 1784337 2 102272 14173 :=
  localPrefix000309.append block000310

noncomputable def hints000311 : List Nat :=
  primeHintChunk% "../../certificates/prime-count33554432-v1/counts-000311.json" 33554432 994439 1988881 2

theorem length000311 : hints000311.length = 15538 := by decide +kernel
theorem checked000311 : checkPrimeHints 1988881 2 hints000311 = true := by decide +kernel
theorem counted000311 : hints000311.count 0 <= 2170 := by decide +kernel

noncomputable def block000311 : CheckedPrimeCountBlock 1988881 2 15538 2170 :=
  ⟨hints000311, length000311, checked000311, counted000311⟩

noncomputable def localPrefix000311 : CheckedPrimeCountBlock 1784337 2 117810 16343 :=
  localPrefix000310.append block000311

noncomputable def hints000312 : List Nat :=
  primeHintChunk% "../../certificates/prime-count33554432-v1/counts-000312.json" 33554432 1009977 2019957 2

theorem length000312 : hints000312.length = 15780 := by decide +kernel
theorem checked000312 : checkPrimeHints 2019957 2 hints000312 = true := by decide +kernel
theorem counted000312 : hints000312.count 0 <= 2169 := by decide +kernel

noncomputable def block000312 : CheckedPrimeCountBlock 2019957 2 15780 2169 :=
  ⟨hints000312, length000312, checked000312, counted000312⟩

noncomputable def localPrefix000312 : CheckedPrimeCountBlock 1784337 2 133590 18512 :=
  localPrefix000311.append block000312

noncomputable def hints000313 : List Nat :=
  primeHintChunk% "../../certificates/prime-count33554432-v1/counts-000313.json" 33554432 1025757 2051517 2

theorem length000313 : hints000313.length = 16027 := by decide +kernel
theorem checked000313 : checkPrimeHints 2051517 2 hints000313 = true := by decide +kernel
theorem counted000313 : hints000313.count 0 <= 2193 := by decide +kernel

noncomputable def block000313 : CheckedPrimeCountBlock 2051517 2 16027 2193 :=
  ⟨hints000313, length000313, checked000313, counted000313⟩

noncomputable def localPrefix000313 : CheckedPrimeCountBlock 1784337 2 149617 20705 :=
  localPrefix000312.append block000313

noncomputable def hints000314 : List Nat :=
  primeHintChunk% "../../certificates/prime-count33554432-v1/counts-000314.json" 33554432 1041784 2083571 2

theorem length000314 : hints000314.length = 6791 := by decide +kernel
theorem checked000314 : checkPrimeHints 2083571 2 hints000314 = true := by decide +kernel
theorem counted000314 : hints000314.count 0 <= 925 := by decide +kernel

noncomputable def block000314 : CheckedPrimeCountBlock 2083571 2 6791 925 :=
  ⟨hints000314, length000314, checked000314, counted000314⟩

noncomputable def localPrefix000314 : CheckedPrimeCountBlock 1784337 2 156408 21630 :=
  localPrefix000313.append block000314

noncomputable def hints000315 : List Nat :=
  primeHintChunk% "../../certificates/prime-count33554432-v1/counts-000315.json" 33554432 1048575 2097153 2

theorem length000315 : hints000315.length = 16384 := by decide +kernel
theorem checked000315 : checkPrimeHints 2097153 2 hints000315 = true := by decide +kernel
theorem counted000315 : hints000315.count 0 <= 2269 := by decide +kernel

noncomputable def block000315 : CheckedPrimeCountBlock 2097153 2 16384 2269 :=
  ⟨hints000315, length000315, checked000315, counted000315⟩

noncomputable def localPrefix000315 : CheckedPrimeCountBlock 1784337 2 172792 23899 :=
  localPrefix000314.append block000315

noncomputable def hints000316 : List Nat :=
  primeHintChunk% "../../certificates/prime-count33554432-v1/counts-000316.json" 33554432 1064959 2129921 2

theorem length000316 : hints000316.length = 16384 := by decide +kernel
theorem checked000316 : checkPrimeHints 2129921 2 hints000316 = true := by decide +kernel
theorem counted000316 : hints000316.count 0 <= 2264 := by decide +kernel

noncomputable def block000316 : CheckedPrimeCountBlock 2129921 2 16384 2264 :=
  ⟨hints000316, length000316, checked000316, counted000316⟩

noncomputable def localPrefix000316 : CheckedPrimeCountBlock 1784337 2 189176 26163 :=
  localPrefix000315.append block000316

noncomputable def hints000317 : List Nat :=
  primeHintChunk% "../../certificates/prime-count33554432-v1/counts-000317.json" 33554432 1081343 2162689 2

theorem length000317 : hints000317.length = 16384 := by decide +kernel
theorem checked000317 : checkPrimeHints 2162689 2 hints000317 = true := by decide +kernel
theorem counted000317 : hints000317.count 0 <= 2229 := by decide +kernel

noncomputable def block000317 : CheckedPrimeCountBlock 2162689 2 16384 2229 :=
  ⟨hints000317, length000317, checked000317, counted000317⟩

noncomputable def localPrefix000317 : CheckedPrimeCountBlock 1784337 2 205560 28392 :=
  localPrefix000316.append block000317

noncomputable def hints000318 : List Nat :=
  primeHintChunk% "../../certificates/prime-count33554432-v1/counts-000318.json" 33554432 1097727 2195457 2

theorem length000318 : hints000318.length = 16384 := by decide +kernel
theorem checked000318 : checkPrimeHints 2195457 2 hints000318 = true := by decide +kernel
theorem counted000318 : hints000318.count 0 <= 2225 := by decide +kernel

noncomputable def block000318 : CheckedPrimeCountBlock 2195457 2 16384 2225 :=
  ⟨hints000318, length000318, checked000318, counted000318⟩

noncomputable def localPrefix000318 : CheckedPrimeCountBlock 1784337 2 221944 30617 :=
  localPrefix000317.append block000318

noncomputable def hints000319 : List Nat :=
  primeHintChunk% "../../certificates/prime-count33554432-v1/counts-000319.json" 33554432 1114111 2228225 2

theorem length000319 : hints000319.length = 16384 := by decide +kernel
theorem checked000319 : checkPrimeHints 2228225 2 hints000319 = true := by decide +kernel
theorem counted000319 : hints000319.count 0 <= 2251 := by decide +kernel

noncomputable def block000319 : CheckedPrimeCountBlock 2228225 2 16384 2251 :=
  ⟨hints000319, length000319, checked000319, counted000319⟩

noncomputable def localPrefix000319 : CheckedPrimeCountBlock 1784337 2 238328 32868 :=
  localPrefix000318.append block000319

end JSP848.FullPrimeCount
