import JSP848.PrimeCountInput

set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0

namespace JSP848.FullPrimeCount

open PrimeCountInput

noncomputable def hints001072 : List Nat :=
  primeHintChunk% "../../certificates/prime-count33554432-v1/counts-001072.json" 33554432 13451263 26902529 2

theorem length001072 : hints001072.length = 16384 := by decide +kernel
theorem checked001072 : checkPrimeHints 26902529 2 hints001072 = true := by decide +kernel
theorem counted001072 : hints001072.count 0 <= 1930 := by decide +kernel

noncomputable def block001072 : CheckedPrimeCountBlock 26902529 2 16384 1930 :=
  ⟨hints001072, length001072, checked001072, counted001072⟩

noncomputable def localPrefix001072 : CheckedPrimeCountBlock 26902529 2 16384 1930 :=
  block001072

noncomputable def hints001073 : List Nat :=
  primeHintChunk% "../../certificates/prime-count33554432-v1/counts-001073.json" 33554432 13467647 26935297 2

theorem length001073 : hints001073.length = 16384 := by decide +kernel
theorem checked001073 : checkPrimeHints 26935297 2 hints001073 = true := by decide +kernel
theorem counted001073 : hints001073.count 0 <= 1927 := by decide +kernel

noncomputable def block001073 : CheckedPrimeCountBlock 26935297 2 16384 1927 :=
  ⟨hints001073, length001073, checked001073, counted001073⟩

noncomputable def localPrefix001073 : CheckedPrimeCountBlock 26902529 2 32768 3857 :=
  localPrefix001072.append block001073

noncomputable def hints001074 : List Nat :=
  primeHintChunk% "../../certificates/prime-count33554432-v1/counts-001074.json" 33554432 13484031 26968065 2

theorem length001074 : hints001074.length = 16384 := by decide +kernel
theorem checked001074 : checkPrimeHints 26968065 2 hints001074 = true := by decide +kernel
theorem counted001074 : hints001074.count 0 <= 1917 := by decide +kernel

noncomputable def block001074 : CheckedPrimeCountBlock 26968065 2 16384 1917 :=
  ⟨hints001074, length001074, checked001074, counted001074⟩

noncomputable def localPrefix001074 : CheckedPrimeCountBlock 26902529 2 49152 5774 :=
  localPrefix001073.append block001074

noncomputable def hints001075 : List Nat :=
  primeHintChunk% "../../certificates/prime-count33554432-v1/counts-001075.json" 33554432 13500415 27000833 2

theorem length001075 : hints001075.length = 16384 := by decide +kernel
theorem checked001075 : checkPrimeHints 27000833 2 hints001075 = true := by decide +kernel
theorem counted001075 : hints001075.count 0 <= 1917 := by decide +kernel

noncomputable def block001075 : CheckedPrimeCountBlock 27000833 2 16384 1917 :=
  ⟨hints001075, length001075, checked001075, counted001075⟩

noncomputable def localPrefix001075 : CheckedPrimeCountBlock 26902529 2 65536 7691 :=
  localPrefix001074.append block001075

noncomputable def hints001076 : List Nat :=
  primeHintChunk% "../../certificates/prime-count33554432-v1/counts-001076.json" 33554432 13516799 27033601 2

theorem length001076 : hints001076.length = 16384 := by decide +kernel
theorem checked001076 : checkPrimeHints 27033601 2 hints001076 = true := by decide +kernel
theorem counted001076 : hints001076.count 0 <= 1897 := by decide +kernel

noncomputable def block001076 : CheckedPrimeCountBlock 27033601 2 16384 1897 :=
  ⟨hints001076, length001076, checked001076, counted001076⟩

noncomputable def localPrefix001076 : CheckedPrimeCountBlock 26902529 2 81920 9588 :=
  localPrefix001075.append block001076

noncomputable def hints001077 : List Nat :=
  primeHintChunk% "../../certificates/prime-count33554432-v1/counts-001077.json" 33554432 13533183 27066369 2

theorem length001077 : hints001077.length = 16384 := by decide +kernel
theorem checked001077 : checkPrimeHints 27066369 2 hints001077 = true := by decide +kernel
theorem counted001077 : hints001077.count 0 <= 1967 := by decide +kernel

noncomputable def block001077 : CheckedPrimeCountBlock 27066369 2 16384 1967 :=
  ⟨hints001077, length001077, checked001077, counted001077⟩

noncomputable def localPrefix001077 : CheckedPrimeCountBlock 26902529 2 98304 11555 :=
  localPrefix001076.append block001077

noncomputable def hints001078 : List Nat :=
  primeHintChunk% "../../certificates/prime-count33554432-v1/counts-001078.json" 33554432 13549567 27099137 2

theorem length001078 : hints001078.length = 16384 := by decide +kernel
theorem checked001078 : checkPrimeHints 27099137 2 hints001078 = true := by decide +kernel
theorem counted001078 : hints001078.count 0 <= 1903 := by decide +kernel

noncomputable def block001078 : CheckedPrimeCountBlock 27099137 2 16384 1903 :=
  ⟨hints001078, length001078, checked001078, counted001078⟩

noncomputable def localPrefix001078 : CheckedPrimeCountBlock 26902529 2 114688 13458 :=
  localPrefix001077.append block001078

noncomputable def hints001079 : List Nat :=
  primeHintChunk% "../../certificates/prime-count33554432-v1/counts-001079.json" 33554432 13565951 27131905 2

theorem length001079 : hints001079.length = 16384 := by decide +kernel
theorem checked001079 : checkPrimeHints 27131905 2 hints001079 = true := by decide +kernel
theorem counted001079 : hints001079.count 0 <= 1928 := by decide +kernel

noncomputable def block001079 : CheckedPrimeCountBlock 27131905 2 16384 1928 :=
  ⟨hints001079, length001079, checked001079, counted001079⟩

noncomputable def localPrefix001079 : CheckedPrimeCountBlock 26902529 2 131072 15386 :=
  localPrefix001078.append block001079

noncomputable def hints001080 : List Nat :=
  primeHintChunk% "../../certificates/prime-count33554432-v1/counts-001080.json" 33554432 13582335 27164673 2

theorem length001080 : hints001080.length = 16384 := by decide +kernel
theorem checked001080 : checkPrimeHints 27164673 2 hints001080 = true := by decide +kernel
theorem counted001080 : hints001080.count 0 <= 1881 := by decide +kernel

noncomputable def block001080 : CheckedPrimeCountBlock 27164673 2 16384 1881 :=
  ⟨hints001080, length001080, checked001080, counted001080⟩

noncomputable def localPrefix001080 : CheckedPrimeCountBlock 26902529 2 147456 17267 :=
  localPrefix001079.append block001080

noncomputable def hints001081 : List Nat :=
  primeHintChunk% "../../certificates/prime-count33554432-v1/counts-001081.json" 33554432 13598719 27197441 2

theorem length001081 : hints001081.length = 16384 := by decide +kernel
theorem checked001081 : checkPrimeHints 27197441 2 hints001081 = true := by decide +kernel
theorem counted001081 : hints001081.count 0 <= 1925 := by decide +kernel

noncomputable def block001081 : CheckedPrimeCountBlock 27197441 2 16384 1925 :=
  ⟨hints001081, length001081, checked001081, counted001081⟩

noncomputable def localPrefix001081 : CheckedPrimeCountBlock 26902529 2 163840 19192 :=
  localPrefix001080.append block001081

noncomputable def hints001082 : List Nat :=
  primeHintChunk% "../../certificates/prime-count33554432-v1/counts-001082.json" 33554432 13615103 27230209 2

theorem length001082 : hints001082.length = 16384 := by decide +kernel
theorem checked001082 : checkPrimeHints 27230209 2 hints001082 = true := by decide +kernel
theorem counted001082 : hints001082.count 0 <= 1883 := by decide +kernel

noncomputable def block001082 : CheckedPrimeCountBlock 27230209 2 16384 1883 :=
  ⟨hints001082, length001082, checked001082, counted001082⟩

noncomputable def localPrefix001082 : CheckedPrimeCountBlock 26902529 2 180224 21075 :=
  localPrefix001081.append block001082

noncomputable def hints001083 : List Nat :=
  primeHintChunk% "../../certificates/prime-count33554432-v1/counts-001083.json" 33554432 13631487 27262977 2

theorem length001083 : hints001083.length = 16384 := by decide +kernel
theorem checked001083 : checkPrimeHints 27262977 2 hints001083 = true := by decide +kernel
theorem counted001083 : hints001083.count 0 <= 1909 := by decide +kernel

noncomputable def block001083 : CheckedPrimeCountBlock 27262977 2 16384 1909 :=
  ⟨hints001083, length001083, checked001083, counted001083⟩

noncomputable def localPrefix001083 : CheckedPrimeCountBlock 26902529 2 196608 22984 :=
  localPrefix001082.append block001083

noncomputable def hints001084 : List Nat :=
  primeHintChunk% "../../certificates/prime-count33554432-v1/counts-001084.json" 33554432 13647871 27295745 2

theorem length001084 : hints001084.length = 16384 := by decide +kernel
theorem checked001084 : checkPrimeHints 27295745 2 hints001084 = true := by decide +kernel
theorem counted001084 : hints001084.count 0 <= 1887 := by decide +kernel

noncomputable def block001084 : CheckedPrimeCountBlock 27295745 2 16384 1887 :=
  ⟨hints001084, length001084, checked001084, counted001084⟩

noncomputable def localPrefix001084 : CheckedPrimeCountBlock 26902529 2 212992 24871 :=
  localPrefix001083.append block001084

noncomputable def hints001085 : List Nat :=
  primeHintChunk% "../../certificates/prime-count33554432-v1/counts-001085.json" 33554432 13664255 27328513 2

theorem length001085 : hints001085.length = 16384 := by decide +kernel
theorem checked001085 : checkPrimeHints 27328513 2 hints001085 = true := by decide +kernel
theorem counted001085 : hints001085.count 0 <= 1930 := by decide +kernel

noncomputable def block001085 : CheckedPrimeCountBlock 27328513 2 16384 1930 :=
  ⟨hints001085, length001085, checked001085, counted001085⟩

noncomputable def localPrefix001085 : CheckedPrimeCountBlock 26902529 2 229376 26801 :=
  localPrefix001084.append block001085

noncomputable def hints001086 : List Nat :=
  primeHintChunk% "../../certificates/prime-count33554432-v1/counts-001086.json" 33554432 13680639 27361281 2

theorem length001086 : hints001086.length = 16384 := by decide +kernel
theorem checked001086 : checkPrimeHints 27361281 2 hints001086 = true := by decide +kernel
theorem counted001086 : hints001086.count 0 <= 1894 := by decide +kernel

noncomputable def block001086 : CheckedPrimeCountBlock 27361281 2 16384 1894 :=
  ⟨hints001086, length001086, checked001086, counted001086⟩

noncomputable def localPrefix001086 : CheckedPrimeCountBlock 26902529 2 245760 28695 :=
  localPrefix001085.append block001086

noncomputable def hints001087 : List Nat :=
  primeHintChunk% "../../certificates/prime-count33554432-v1/counts-001087.json" 33554432 13697023 27394049 2

theorem length001087 : hints001087.length = 16384 := by decide +kernel
theorem checked001087 : checkPrimeHints 27394049 2 hints001087 = true := by decide +kernel
theorem counted001087 : hints001087.count 0 <= 1921 := by decide +kernel

noncomputable def block001087 : CheckedPrimeCountBlock 27394049 2 16384 1921 :=
  ⟨hints001087, length001087, checked001087, counted001087⟩

noncomputable def localPrefix001087 : CheckedPrimeCountBlock 26902529 2 262144 30616 :=
  localPrefix001086.append block001087

end JSP848.FullPrimeCount
