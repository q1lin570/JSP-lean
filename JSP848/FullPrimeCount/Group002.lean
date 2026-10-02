import JSP848.PrimeCountInput

set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0

namespace JSP848.FullPrimeCount

open PrimeCountInput

noncomputable def hints000032 : List Nat :=
  primeHintChunk% "../../certificates/prime-count33554432-v1/counts-000032.json" 33554432 13230 26463 2

theorem length000032 : hints000032.length = 206 := by decide +kernel
theorem checked000032 : checkPrimeHints 26463 2 hints000032 = true := by decide +kernel
theorem counted000032 : hints000032.count 0 <= 40 := by decide +kernel

noncomputable def block000032 : CheckedPrimeCountBlock 26463 2 206 40 :=
  ⟨hints000032, length000032, checked000032, counted000032⟩

noncomputable def localPrefix000032 : CheckedPrimeCountBlock 26463 2 206 40 :=
  block000032

noncomputable def hints000033 : List Nat :=
  primeHintChunk% "../../certificates/prime-count33554432-v1/counts-000033.json" 33554432 13436 26875 2

theorem length000033 : hints000033.length = 209 := by decide +kernel
theorem checked000033 : checkPrimeHints 26875 2 hints000033 = true := by decide +kernel
theorem counted000033 : hints000033.count 0 <= 41 := by decide +kernel

noncomputable def block000033 : CheckedPrimeCountBlock 26875 2 209 41 :=
  ⟨hints000033, length000033, checked000033, counted000033⟩

noncomputable def localPrefix000033 : CheckedPrimeCountBlock 26463 2 415 81 :=
  localPrefix000032.append block000033

noncomputable def hints000034 : List Nat :=
  primeHintChunk% "../../certificates/prime-count33554432-v1/counts-000034.json" 33554432 13645 27293 2

theorem length000034 : hints000034.length = 213 := by decide +kernel
theorem checked000034 : checkPrimeHints 27293 2 hints000034 = true := by decide +kernel
theorem counted000034 : hints000034.count 0 <= 34 := by decide +kernel

noncomputable def block000034 : CheckedPrimeCountBlock 27293 2 213 34 :=
  ⟨hints000034, length000034, checked000034, counted000034⟩

noncomputable def localPrefix000034 : CheckedPrimeCountBlock 26463 2 628 115 :=
  localPrefix000033.append block000034

noncomputable def hints000035 : List Nat :=
  primeHintChunk% "../../certificates/prime-count33554432-v1/counts-000035.json" 33554432 13858 27719 2

theorem length000035 : hints000035.length = 216 := by decide +kernel
theorem checked000035 : checkPrimeHints 27719 2 hints000035 = true := by decide +kernel
theorem counted000035 : hints000035.count 0 <= 47 := by decide +kernel

noncomputable def block000035 : CheckedPrimeCountBlock 27719 2 216 47 :=
  ⟨hints000035, length000035, checked000035, counted000035⟩

noncomputable def localPrefix000035 : CheckedPrimeCountBlock 26463 2 844 162 :=
  localPrefix000034.append block000035

noncomputable def hints000036 : List Nat :=
  primeHintChunk% "../../certificates/prime-count33554432-v1/counts-000036.json" 33554432 14074 28151 2

theorem length000036 : hints000036.length = 219 := by decide +kernel
theorem checked000036 : checkPrimeHints 28151 2 hints000036 = true := by decide +kernel
theorem counted000036 : hints000036.count 0 <= 41 := by decide +kernel

noncomputable def block000036 : CheckedPrimeCountBlock 28151 2 219 41 :=
  ⟨hints000036, length000036, checked000036, counted000036⟩

noncomputable def localPrefix000036 : CheckedPrimeCountBlock 26463 2 1063 203 :=
  localPrefix000035.append block000036

noncomputable def hints000037 : List Nat :=
  primeHintChunk% "../../certificates/prime-count33554432-v1/counts-000037.json" 33554432 14293 28589 2

theorem length000037 : hints000037.length = 223 := by decide +kernel
theorem checked000037 : checkPrimeHints 28589 2 hints000037 = true := by decide +kernel
theorem counted000037 : hints000037.count 0 <= 49 := by decide +kernel

noncomputable def block000037 : CheckedPrimeCountBlock 28589 2 223 49 :=
  ⟨hints000037, length000037, checked000037, counted000037⟩

noncomputable def localPrefix000037 : CheckedPrimeCountBlock 26463 2 1286 252 :=
  localPrefix000036.append block000037

noncomputable def hints000038 : List Nat :=
  primeHintChunk% "../../certificates/prime-count33554432-v1/counts-000038.json" 33554432 14516 29035 2

theorem length000038 : hints000038.length = 226 := by decide +kernel
theorem checked000038 : checkPrimeHints 29035 2 hints000038 = true := by decide +kernel
theorem counted000038 : hints000038.count 0 <= 44 := by decide +kernel

noncomputable def block000038 : CheckedPrimeCountBlock 29035 2 226 44 :=
  ⟨hints000038, length000038, checked000038, counted000038⟩

noncomputable def localPrefix000038 : CheckedPrimeCountBlock 26463 2 1512 296 :=
  localPrefix000037.append block000038

noncomputable def hints000039 : List Nat :=
  primeHintChunk% "../../certificates/prime-count33554432-v1/counts-000039.json" 33554432 14742 29487 2

theorem length000039 : hints000039.length = 230 := by decide +kernel
theorem checked000039 : checkPrimeHints 29487 2 hints000039 = true := by decide +kernel
theorem counted000039 : hints000039.count 0 <= 38 := by decide +kernel

noncomputable def block000039 : CheckedPrimeCountBlock 29487 2 230 38 :=
  ⟨hints000039, length000039, checked000039, counted000039⟩

noncomputable def localPrefix000039 : CheckedPrimeCountBlock 26463 2 1742 334 :=
  localPrefix000038.append block000039

noncomputable def hints000040 : List Nat :=
  primeHintChunk% "../../certificates/prime-count33554432-v1/counts-000040.json" 33554432 14972 29947 2

theorem length000040 : hints000040.length = 233 := by decide +kernel
theorem checked000040 : checkPrimeHints 29947 2 hints000040 = true := by decide +kernel
theorem counted000040 : hints000040.count 0 <= 44 := by decide +kernel

noncomputable def block000040 : CheckedPrimeCountBlock 29947 2 233 44 :=
  ⟨hints000040, length000040, checked000040, counted000040⟩

noncomputable def localPrefix000040 : CheckedPrimeCountBlock 26463 2 1975 378 :=
  localPrefix000039.append block000040

noncomputable def hints000041 : List Nat :=
  primeHintChunk% "../../certificates/prime-count33554432-v1/counts-000041.json" 33554432 15205 30413 2

theorem length000041 : hints000041.length = 237 := by decide +kernel
theorem checked000041 : checkPrimeHints 30413 2 hints000041 = true := by decide +kernel
theorem counted000041 : hints000041.count 0 <= 46 := by decide +kernel

noncomputable def block000041 : CheckedPrimeCountBlock 30413 2 237 46 :=
  ⟨hints000041, length000041, checked000041, counted000041⟩

noncomputable def localPrefix000041 : CheckedPrimeCountBlock 26463 2 2212 424 :=
  localPrefix000040.append block000041

noncomputable def hints000042 : List Nat :=
  primeHintChunk% "../../certificates/prime-count33554432-v1/counts-000042.json" 33554432 15442 30887 2

theorem length000042 : hints000042.length = 241 := by decide +kernel
theorem checked000042 : checkPrimeHints 30887 2 hints000042 = true := by decide +kernel
theorem counted000042 : hints000042.count 0 <= 49 := by decide +kernel

noncomputable def block000042 : CheckedPrimeCountBlock 30887 2 241 49 :=
  ⟨hints000042, length000042, checked000042, counted000042⟩

noncomputable def localPrefix000042 : CheckedPrimeCountBlock 26463 2 2453 473 :=
  localPrefix000041.append block000042

noncomputable def hints000043 : List Nat :=
  primeHintChunk% "../../certificates/prime-count33554432-v1/counts-000043.json" 33554432 15683 31369 2

theorem length000043 : hints000043.length = 245 := by decide +kernel
theorem checked000043 : checkPrimeHints 31369 2 hints000043 = true := by decide +kernel
theorem counted000043 : hints000043.count 0 <= 42 := by decide +kernel

noncomputable def block000043 : CheckedPrimeCountBlock 31369 2 245 42 :=
  ⟨hints000043, length000043, checked000043, counted000043⟩

noncomputable def localPrefix000043 : CheckedPrimeCountBlock 26463 2 2698 515 :=
  localPrefix000042.append block000043

noncomputable def hints000044 : List Nat :=
  primeHintChunk% "../../certificates/prime-count33554432-v1/counts-000044.json" 33554432 15928 31859 2

theorem length000044 : hints000044.length = 248 := by decide +kernel
theorem checked000044 : checkPrimeHints 31859 2 hints000044 = true := by decide +kernel
theorem counted000044 : hints000044.count 0 <= 48 := by decide +kernel

noncomputable def block000044 : CheckedPrimeCountBlock 31859 2 248 48 :=
  ⟨hints000044, length000044, checked000044, counted000044⟩

noncomputable def localPrefix000044 : CheckedPrimeCountBlock 26463 2 2946 563 :=
  localPrefix000043.append block000044

noncomputable def hints000045 : List Nat :=
  primeHintChunk% "../../certificates/prime-count33554432-v1/counts-000045.json" 33554432 16176 32355 2

theorem length000045 : hints000045.length = 252 := by decide +kernel
theorem checked000045 : checkPrimeHints 32355 2 hints000045 = true := by decide +kernel
theorem counted000045 : hints000045.count 0 <= 53 := by decide +kernel

noncomputable def block000045 : CheckedPrimeCountBlock 32355 2 252 53 :=
  ⟨hints000045, length000045, checked000045, counted000045⟩

noncomputable def localPrefix000045 : CheckedPrimeCountBlock 26463 2 3198 616 :=
  localPrefix000044.append block000045

noncomputable def hints000046 : List Nat :=
  primeHintChunk% "../../certificates/prime-count33554432-v1/counts-000046.json" 33554432 16428 32859 2

theorem length000046 : hints000046.length = 256 := by decide +kernel
theorem checked000046 : checkPrimeHints 32859 2 hints000046 = true := by decide +kernel
theorem counted000046 : hints000046.count 0 <= 51 := by decide +kernel

noncomputable def block000046 : CheckedPrimeCountBlock 32859 2 256 51 :=
  ⟨hints000046, length000046, checked000046, counted000046⟩

noncomputable def localPrefix000046 : CheckedPrimeCountBlock 26463 2 3454 667 :=
  localPrefix000045.append block000046

noncomputable def hints000047 : List Nat :=
  primeHintChunk% "../../certificates/prime-count33554432-v1/counts-000047.json" 33554432 16684 33371 2

theorem length000047 : hints000047.length = 260 := by decide +kernel
theorem checked000047 : checkPrimeHints 33371 2 hints000047 = true := by decide +kernel
theorem counted000047 : hints000047.count 0 <= 55 := by decide +kernel

noncomputable def block000047 : CheckedPrimeCountBlock 33371 2 260 55 :=
  ⟨hints000047, length000047, checked000047, counted000047⟩

noncomputable def localPrefix000047 : CheckedPrimeCountBlock 26463 2 3714 722 :=
  localPrefix000046.append block000047

end JSP848.FullPrimeCount
