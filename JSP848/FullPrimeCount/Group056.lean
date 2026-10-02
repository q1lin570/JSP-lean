import JSP848.PrimeCountInput

set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0

namespace JSP848.FullPrimeCount

open PrimeCountInput

noncomputable def hints000896 : List Nat :=
  primeHintChunk% "../../certificates/prime-count33554432-v1/counts-000896.json" 33554432 10567679 21135361 2

theorem length000896 : hints000896.length = 16384 := by decide +kernel
theorem checked000896 : checkPrimeHints 21135361 2 hints000896 = true := by decide +kernel
theorem counted000896 : hints000896.count 0 <= 1910 := by decide +kernel

noncomputable def block000896 : CheckedPrimeCountBlock 21135361 2 16384 1910 :=
  ⟨hints000896, length000896, checked000896, counted000896⟩

noncomputable def localPrefix000896 : CheckedPrimeCountBlock 21135361 2 16384 1910 :=
  block000896

noncomputable def hints000897 : List Nat :=
  primeHintChunk% "../../certificates/prime-count33554432-v1/counts-000897.json" 33554432 10584063 21168129 2

theorem length000897 : hints000897.length = 16384 := by decide +kernel
theorem checked000897 : checkPrimeHints 21168129 2 hints000897 = true := by decide +kernel
theorem counted000897 : hints000897.count 0 <= 1950 := by decide +kernel

noncomputable def block000897 : CheckedPrimeCountBlock 21168129 2 16384 1950 :=
  ⟨hints000897, length000897, checked000897, counted000897⟩

noncomputable def localPrefix000897 : CheckedPrimeCountBlock 21135361 2 32768 3860 :=
  localPrefix000896.append block000897

noncomputable def hints000898 : List Nat :=
  primeHintChunk% "../../certificates/prime-count33554432-v1/counts-000898.json" 33554432 10600447 21200897 2

theorem length000898 : hints000898.length = 16384 := by decide +kernel
theorem checked000898 : checkPrimeHints 21200897 2 hints000898 = true := by decide +kernel
theorem counted000898 : hints000898.count 0 <= 1913 := by decide +kernel

noncomputable def block000898 : CheckedPrimeCountBlock 21200897 2 16384 1913 :=
  ⟨hints000898, length000898, checked000898, counted000898⟩

noncomputable def localPrefix000898 : CheckedPrimeCountBlock 21135361 2 49152 5773 :=
  localPrefix000897.append block000898

noncomputable def hints000899 : List Nat :=
  primeHintChunk% "../../certificates/prime-count33554432-v1/counts-000899.json" 33554432 10616831 21233665 2

theorem length000899 : hints000899.length = 16384 := by decide +kernel
theorem checked000899 : checkPrimeHints 21233665 2 hints000899 = true := by decide +kernel
theorem counted000899 : hints000899.count 0 <= 1955 := by decide +kernel

noncomputable def block000899 : CheckedPrimeCountBlock 21233665 2 16384 1955 :=
  ⟨hints000899, length000899, checked000899, counted000899⟩

noncomputable def localPrefix000899 : CheckedPrimeCountBlock 21135361 2 65536 7728 :=
  localPrefix000898.append block000899

noncomputable def hints000900 : List Nat :=
  primeHintChunk% "../../certificates/prime-count33554432-v1/counts-000900.json" 33554432 10633215 21266433 2

theorem length000900 : hints000900.length = 16384 := by decide +kernel
theorem checked000900 : checkPrimeHints 21266433 2 hints000900 = true := by decide +kernel
theorem counted000900 : hints000900.count 0 <= 1990 := by decide +kernel

noncomputable def block000900 : CheckedPrimeCountBlock 21266433 2 16384 1990 :=
  ⟨hints000900, length000900, checked000900, counted000900⟩

noncomputable def localPrefix000900 : CheckedPrimeCountBlock 21135361 2 81920 9718 :=
  localPrefix000899.append block000900

noncomputable def hints000901 : List Nat :=
  primeHintChunk% "../../certificates/prime-count33554432-v1/counts-000901.json" 33554432 10649599 21299201 2

theorem length000901 : hints000901.length = 16384 := by decide +kernel
theorem checked000901 : checkPrimeHints 21299201 2 hints000901 = true := by decide +kernel
theorem counted000901 : hints000901.count 0 <= 1927 := by decide +kernel

noncomputable def block000901 : CheckedPrimeCountBlock 21299201 2 16384 1927 :=
  ⟨hints000901, length000901, checked000901, counted000901⟩

noncomputable def localPrefix000901 : CheckedPrimeCountBlock 21135361 2 98304 11645 :=
  localPrefix000900.append block000901

noncomputable def hints000902 : List Nat :=
  primeHintChunk% "../../certificates/prime-count33554432-v1/counts-000902.json" 33554432 10665983 21331969 2

theorem length000902 : hints000902.length = 16384 := by decide +kernel
theorem checked000902 : checkPrimeHints 21331969 2 hints000902 = true := by decide +kernel
theorem counted000902 : hints000902.count 0 <= 1929 := by decide +kernel

noncomputable def block000902 : CheckedPrimeCountBlock 21331969 2 16384 1929 :=
  ⟨hints000902, length000902, checked000902, counted000902⟩

noncomputable def localPrefix000902 : CheckedPrimeCountBlock 21135361 2 114688 13574 :=
  localPrefix000901.append block000902

noncomputable def hints000903 : List Nat :=
  primeHintChunk% "../../certificates/prime-count33554432-v1/counts-000903.json" 33554432 10682367 21364737 2

theorem length000903 : hints000903.length = 16384 := by decide +kernel
theorem checked000903 : checkPrimeHints 21364737 2 hints000903 = true := by decide +kernel
theorem counted000903 : hints000903.count 0 <= 1948 := by decide +kernel

noncomputable def block000903 : CheckedPrimeCountBlock 21364737 2 16384 1948 :=
  ⟨hints000903, length000903, checked000903, counted000903⟩

noncomputable def localPrefix000903 : CheckedPrimeCountBlock 21135361 2 131072 15522 :=
  localPrefix000902.append block000903

noncomputable def hints000904 : List Nat :=
  primeHintChunk% "../../certificates/prime-count33554432-v1/counts-000904.json" 33554432 10698751 21397505 2

theorem length000904 : hints000904.length = 16384 := by decide +kernel
theorem checked000904 : checkPrimeHints 21397505 2 hints000904 = true := by decide +kernel
theorem counted000904 : hints000904.count 0 <= 1932 := by decide +kernel

noncomputable def block000904 : CheckedPrimeCountBlock 21397505 2 16384 1932 :=
  ⟨hints000904, length000904, checked000904, counted000904⟩

noncomputable def localPrefix000904 : CheckedPrimeCountBlock 21135361 2 147456 17454 :=
  localPrefix000903.append block000904

noncomputable def hints000905 : List Nat :=
  primeHintChunk% "../../certificates/prime-count33554432-v1/counts-000905.json" 33554432 10715135 21430273 2

theorem length000905 : hints000905.length = 16384 := by decide +kernel
theorem checked000905 : checkPrimeHints 21430273 2 hints000905 = true := by decide +kernel
theorem counted000905 : hints000905.count 0 <= 1978 := by decide +kernel

noncomputable def block000905 : CheckedPrimeCountBlock 21430273 2 16384 1978 :=
  ⟨hints000905, length000905, checked000905, counted000905⟩

noncomputable def localPrefix000905 : CheckedPrimeCountBlock 21135361 2 163840 19432 :=
  localPrefix000904.append block000905

noncomputable def hints000906 : List Nat :=
  primeHintChunk% "../../certificates/prime-count33554432-v1/counts-000906.json" 33554432 10731519 21463041 2

theorem length000906 : hints000906.length = 16384 := by decide +kernel
theorem checked000906 : checkPrimeHints 21463041 2 hints000906 = true := by decide +kernel
theorem counted000906 : hints000906.count 0 <= 1967 := by decide +kernel

noncomputable def block000906 : CheckedPrimeCountBlock 21463041 2 16384 1967 :=
  ⟨hints000906, length000906, checked000906, counted000906⟩

noncomputable def localPrefix000906 : CheckedPrimeCountBlock 21135361 2 180224 21399 :=
  localPrefix000905.append block000906

noncomputable def hints000907 : List Nat :=
  primeHintChunk% "../../certificates/prime-count33554432-v1/counts-000907.json" 33554432 10747903 21495809 2

theorem length000907 : hints000907.length = 16384 := by decide +kernel
theorem checked000907 : checkPrimeHints 21495809 2 hints000907 = true := by decide +kernel
theorem counted000907 : hints000907.count 0 <= 1875 := by decide +kernel

noncomputable def block000907 : CheckedPrimeCountBlock 21495809 2 16384 1875 :=
  ⟨hints000907, length000907, checked000907, counted000907⟩

noncomputable def localPrefix000907 : CheckedPrimeCountBlock 21135361 2 196608 23274 :=
  localPrefix000906.append block000907

noncomputable def hints000908 : List Nat :=
  primeHintChunk% "../../certificates/prime-count33554432-v1/counts-000908.json" 33554432 10764287 21528577 2

theorem length000908 : hints000908.length = 16384 := by decide +kernel
theorem checked000908 : checkPrimeHints 21528577 2 hints000908 = true := by decide +kernel
theorem counted000908 : hints000908.count 0 <= 1960 := by decide +kernel

noncomputable def block000908 : CheckedPrimeCountBlock 21528577 2 16384 1960 :=
  ⟨hints000908, length000908, checked000908, counted000908⟩

noncomputable def localPrefix000908 : CheckedPrimeCountBlock 21135361 2 212992 25234 :=
  localPrefix000907.append block000908

noncomputable def hints000909 : List Nat :=
  primeHintChunk% "../../certificates/prime-count33554432-v1/counts-000909.json" 33554432 10780671 21561345 2

theorem length000909 : hints000909.length = 16384 := by decide +kernel
theorem checked000909 : checkPrimeHints 21561345 2 hints000909 = true := by decide +kernel
theorem counted000909 : hints000909.count 0 <= 1939 := by decide +kernel

noncomputable def block000909 : CheckedPrimeCountBlock 21561345 2 16384 1939 :=
  ⟨hints000909, length000909, checked000909, counted000909⟩

noncomputable def localPrefix000909 : CheckedPrimeCountBlock 21135361 2 229376 27173 :=
  localPrefix000908.append block000909

noncomputable def hints000910 : List Nat :=
  primeHintChunk% "../../certificates/prime-count33554432-v1/counts-000910.json" 33554432 10797055 21594113 2

theorem length000910 : hints000910.length = 16384 := by decide +kernel
theorem checked000910 : checkPrimeHints 21594113 2 hints000910 = true := by decide +kernel
theorem counted000910 : hints000910.count 0 <= 1942 := by decide +kernel

noncomputable def block000910 : CheckedPrimeCountBlock 21594113 2 16384 1942 :=
  ⟨hints000910, length000910, checked000910, counted000910⟩

noncomputable def localPrefix000910 : CheckedPrimeCountBlock 21135361 2 245760 29115 :=
  localPrefix000909.append block000910

noncomputable def hints000911 : List Nat :=
  primeHintChunk% "../../certificates/prime-count33554432-v1/counts-000911.json" 33554432 10813439 21626881 2

theorem length000911 : hints000911.length = 16384 := by decide +kernel
theorem checked000911 : checkPrimeHints 21626881 2 hints000911 = true := by decide +kernel
theorem counted000911 : hints000911.count 0 <= 1931 := by decide +kernel

noncomputable def block000911 : CheckedPrimeCountBlock 21626881 2 16384 1931 :=
  ⟨hints000911, length000911, checked000911, counted000911⟩

noncomputable def localPrefix000911 : CheckedPrimeCountBlock 21135361 2 262144 31046 :=
  localPrefix000910.append block000911

end JSP848.FullPrimeCount
