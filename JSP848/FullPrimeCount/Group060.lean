import JSP848.PrimeCountInput

set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0

namespace JSP848.FullPrimeCount

open PrimeCountInput

noncomputable def hints000960 : List Nat :=
  primeHintChunk% "../../certificates/prime-count33554432-v1/counts-000960.json" 33554432 11616255 23232513 2

theorem length000960 : hints000960.length = 16384 := by decide +kernel
theorem checked000960 : checkPrimeHints 23232513 2 hints000960 = true := by decide +kernel
theorem counted000960 : hints000960.count 0 <= 1940 := by decide +kernel

noncomputable def block000960 : CheckedPrimeCountBlock 23232513 2 16384 1940 :=
  ⟨hints000960, length000960, checked000960, counted000960⟩

noncomputable def localPrefix000960 : CheckedPrimeCountBlock 23232513 2 16384 1940 :=
  block000960

noncomputable def hints000961 : List Nat :=
  primeHintChunk% "../../certificates/prime-count33554432-v1/counts-000961.json" 33554432 11632639 23265281 2

theorem length000961 : hints000961.length = 16384 := by decide +kernel
theorem checked000961 : checkPrimeHints 23265281 2 hints000961 = true := by decide +kernel
theorem counted000961 : hints000961.count 0 <= 1951 := by decide +kernel

noncomputable def block000961 : CheckedPrimeCountBlock 23265281 2 16384 1951 :=
  ⟨hints000961, length000961, checked000961, counted000961⟩

noncomputable def localPrefix000961 : CheckedPrimeCountBlock 23232513 2 32768 3891 :=
  localPrefix000960.append block000961

noncomputable def hints000962 : List Nat :=
  primeHintChunk% "../../certificates/prime-count33554432-v1/counts-000962.json" 33554432 11649023 23298049 2

theorem length000962 : hints000962.length = 16384 := by decide +kernel
theorem checked000962 : checkPrimeHints 23298049 2 hints000962 = true := by decide +kernel
theorem counted000962 : hints000962.count 0 <= 1956 := by decide +kernel

noncomputable def block000962 : CheckedPrimeCountBlock 23298049 2 16384 1956 :=
  ⟨hints000962, length000962, checked000962, counted000962⟩

noncomputable def localPrefix000962 : CheckedPrimeCountBlock 23232513 2 49152 5847 :=
  localPrefix000961.append block000962

noncomputable def hints000963 : List Nat :=
  primeHintChunk% "../../certificates/prime-count33554432-v1/counts-000963.json" 33554432 11665407 23330817 2

theorem length000963 : hints000963.length = 16384 := by decide +kernel
theorem checked000963 : checkPrimeHints 23330817 2 hints000963 = true := by decide +kernel
theorem counted000963 : hints000963.count 0 <= 1938 := by decide +kernel

noncomputable def block000963 : CheckedPrimeCountBlock 23330817 2 16384 1938 :=
  ⟨hints000963, length000963, checked000963, counted000963⟩

noncomputable def localPrefix000963 : CheckedPrimeCountBlock 23232513 2 65536 7785 :=
  localPrefix000962.append block000963

noncomputable def hints000964 : List Nat :=
  primeHintChunk% "../../certificates/prime-count33554432-v1/counts-000964.json" 33554432 11681791 23363585 2

theorem length000964 : hints000964.length = 16384 := by decide +kernel
theorem checked000964 : checkPrimeHints 23363585 2 hints000964 = true := by decide +kernel
theorem counted000964 : hints000964.count 0 <= 1898 := by decide +kernel

noncomputable def block000964 : CheckedPrimeCountBlock 23363585 2 16384 1898 :=
  ⟨hints000964, length000964, checked000964, counted000964⟩

noncomputable def localPrefix000964 : CheckedPrimeCountBlock 23232513 2 81920 9683 :=
  localPrefix000963.append block000964

noncomputable def hints000965 : List Nat :=
  primeHintChunk% "../../certificates/prime-count33554432-v1/counts-000965.json" 33554432 11698175 23396353 2

theorem length000965 : hints000965.length = 16384 := by decide +kernel
theorem checked000965 : checkPrimeHints 23396353 2 hints000965 = true := by decide +kernel
theorem counted000965 : hints000965.count 0 <= 1903 := by decide +kernel

noncomputable def block000965 : CheckedPrimeCountBlock 23396353 2 16384 1903 :=
  ⟨hints000965, length000965, checked000965, counted000965⟩

noncomputable def localPrefix000965 : CheckedPrimeCountBlock 23232513 2 98304 11586 :=
  localPrefix000964.append block000965

noncomputable def hints000966 : List Nat :=
  primeHintChunk% "../../certificates/prime-count33554432-v1/counts-000966.json" 33554432 11714559 23429121 2

theorem length000966 : hints000966.length = 16384 := by decide +kernel
theorem checked000966 : checkPrimeHints 23429121 2 hints000966 = true := by decide +kernel
theorem counted000966 : hints000966.count 0 <= 1956 := by decide +kernel

noncomputable def block000966 : CheckedPrimeCountBlock 23429121 2 16384 1956 :=
  ⟨hints000966, length000966, checked000966, counted000966⟩

noncomputable def localPrefix000966 : CheckedPrimeCountBlock 23232513 2 114688 13542 :=
  localPrefix000965.append block000966

noncomputable def hints000967 : List Nat :=
  primeHintChunk% "../../certificates/prime-count33554432-v1/counts-000967.json" 33554432 11730943 23461889 2

theorem length000967 : hints000967.length = 16384 := by decide +kernel
theorem checked000967 : checkPrimeHints 23461889 2 hints000967 = true := by decide +kernel
theorem counted000967 : hints000967.count 0 <= 1926 := by decide +kernel

noncomputable def block000967 : CheckedPrimeCountBlock 23461889 2 16384 1926 :=
  ⟨hints000967, length000967, checked000967, counted000967⟩

noncomputable def localPrefix000967 : CheckedPrimeCountBlock 23232513 2 131072 15468 :=
  localPrefix000966.append block000967

noncomputable def hints000968 : List Nat :=
  primeHintChunk% "../../certificates/prime-count33554432-v1/counts-000968.json" 33554432 11747327 23494657 2

theorem length000968 : hints000968.length = 16384 := by decide +kernel
theorem checked000968 : checkPrimeHints 23494657 2 hints000968 = true := by decide +kernel
theorem counted000968 : hints000968.count 0 <= 1928 := by decide +kernel

noncomputable def block000968 : CheckedPrimeCountBlock 23494657 2 16384 1928 :=
  ⟨hints000968, length000968, checked000968, counted000968⟩

noncomputable def localPrefix000968 : CheckedPrimeCountBlock 23232513 2 147456 17396 :=
  localPrefix000967.append block000968

noncomputable def hints000969 : List Nat :=
  primeHintChunk% "../../certificates/prime-count33554432-v1/counts-000969.json" 33554432 11763711 23527425 2

theorem length000969 : hints000969.length = 16384 := by decide +kernel
theorem checked000969 : checkPrimeHints 23527425 2 hints000969 = true := by decide +kernel
theorem counted000969 : hints000969.count 0 <= 1946 := by decide +kernel

noncomputable def block000969 : CheckedPrimeCountBlock 23527425 2 16384 1946 :=
  ⟨hints000969, length000969, checked000969, counted000969⟩

noncomputable def localPrefix000969 : CheckedPrimeCountBlock 23232513 2 163840 19342 :=
  localPrefix000968.append block000969

noncomputable def hints000970 : List Nat :=
  primeHintChunk% "../../certificates/prime-count33554432-v1/counts-000970.json" 33554432 11780095 23560193 2

theorem length000970 : hints000970.length = 16384 := by decide +kernel
theorem checked000970 : checkPrimeHints 23560193 2 hints000970 = true := by decide +kernel
theorem counted000970 : hints000970.count 0 <= 1906 := by decide +kernel

noncomputable def block000970 : CheckedPrimeCountBlock 23560193 2 16384 1906 :=
  ⟨hints000970, length000970, checked000970, counted000970⟩

noncomputable def localPrefix000970 : CheckedPrimeCountBlock 23232513 2 180224 21248 :=
  localPrefix000969.append block000970

noncomputable def hints000971 : List Nat :=
  primeHintChunk% "../../certificates/prime-count33554432-v1/counts-000971.json" 33554432 11796479 23592961 2

theorem length000971 : hints000971.length = 16384 := by decide +kernel
theorem checked000971 : checkPrimeHints 23592961 2 hints000971 = true := by decide +kernel
theorem counted000971 : hints000971.count 0 <= 1949 := by decide +kernel

noncomputable def block000971 : CheckedPrimeCountBlock 23592961 2 16384 1949 :=
  ⟨hints000971, length000971, checked000971, counted000971⟩

noncomputable def localPrefix000971 : CheckedPrimeCountBlock 23232513 2 196608 23197 :=
  localPrefix000970.append block000971

noncomputable def hints000972 : List Nat :=
  primeHintChunk% "../../certificates/prime-count33554432-v1/counts-000972.json" 33554432 11812863 23625729 2

theorem length000972 : hints000972.length = 16384 := by decide +kernel
theorem checked000972 : checkPrimeHints 23625729 2 hints000972 = true := by decide +kernel
theorem counted000972 : hints000972.count 0 <= 1920 := by decide +kernel

noncomputable def block000972 : CheckedPrimeCountBlock 23625729 2 16384 1920 :=
  ⟨hints000972, length000972, checked000972, counted000972⟩

noncomputable def localPrefix000972 : CheckedPrimeCountBlock 23232513 2 212992 25117 :=
  localPrefix000971.append block000972

noncomputable def hints000973 : List Nat :=
  primeHintChunk% "../../certificates/prime-count33554432-v1/counts-000973.json" 33554432 11829247 23658497 2

theorem length000973 : hints000973.length = 16384 := by decide +kernel
theorem checked000973 : checkPrimeHints 23658497 2 hints000973 = true := by decide +kernel
theorem counted000973 : hints000973.count 0 <= 1947 := by decide +kernel

noncomputable def block000973 : CheckedPrimeCountBlock 23658497 2 16384 1947 :=
  ⟨hints000973, length000973, checked000973, counted000973⟩

noncomputable def localPrefix000973 : CheckedPrimeCountBlock 23232513 2 229376 27064 :=
  localPrefix000972.append block000973

noncomputable def hints000974 : List Nat :=
  primeHintChunk% "../../certificates/prime-count33554432-v1/counts-000974.json" 33554432 11845631 23691265 2

theorem length000974 : hints000974.length = 16384 := by decide +kernel
theorem checked000974 : checkPrimeHints 23691265 2 hints000974 = true := by decide +kernel
theorem counted000974 : hints000974.count 0 <= 1903 := by decide +kernel

noncomputable def block000974 : CheckedPrimeCountBlock 23691265 2 16384 1903 :=
  ⟨hints000974, length000974, checked000974, counted000974⟩

noncomputable def localPrefix000974 : CheckedPrimeCountBlock 23232513 2 245760 28967 :=
  localPrefix000973.append block000974

noncomputable def hints000975 : List Nat :=
  primeHintChunk% "../../certificates/prime-count33554432-v1/counts-000975.json" 33554432 11862015 23724033 2

theorem length000975 : hints000975.length = 16384 := by decide +kernel
theorem checked000975 : checkPrimeHints 23724033 2 hints000975 = true := by decide +kernel
theorem counted000975 : hints000975.count 0 <= 1914 := by decide +kernel

noncomputable def block000975 : CheckedPrimeCountBlock 23724033 2 16384 1914 :=
  ⟨hints000975, length000975, checked000975, counted000975⟩

noncomputable def localPrefix000975 : CheckedPrimeCountBlock 23232513 2 262144 30881 :=
  localPrefix000974.append block000975

end JSP848.FullPrimeCount
