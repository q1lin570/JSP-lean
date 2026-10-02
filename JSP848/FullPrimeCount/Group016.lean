import JSP848.PrimeCountInput

set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0

namespace JSP848.FullPrimeCount

open PrimeCountInput

noncomputable def hints000256 : List Nat :=
  primeHintChunk% "../../certificates/prime-count33554432-v1/counts-000256.json" 33554432 423896 847795 2

theorem length000256 : hints000256.length = 6623 := by decide +kernel
theorem checked000256 : checkPrimeHints 847795 2 hints000256 = true := by decide +kernel
theorem counted000256 : hints000256.count 0 <= 965 := by decide +kernel

noncomputable def block000256 : CheckedPrimeCountBlock 847795 2 6623 965 :=
  ⟨hints000256, length000256, checked000256, counted000256⟩

noncomputable def localPrefix000256 : CheckedPrimeCountBlock 847795 2 6623 965 :=
  block000256

noncomputable def hints000257 : List Nat :=
  primeHintChunk% "../../certificates/prime-count33554432-v1/counts-000257.json" 33554432 430519 861041 2

theorem length000257 : hints000257.length = 6726 := by decide +kernel
theorem checked000257 : checkPrimeHints 861041 2 hints000257 = true := by decide +kernel
theorem counted000257 : hints000257.count 0 <= 986 := by decide +kernel

noncomputable def block000257 : CheckedPrimeCountBlock 861041 2 6726 986 :=
  ⟨hints000257, length000257, checked000257, counted000257⟩

noncomputable def localPrefix000257 : CheckedPrimeCountBlock 847795 2 13349 1951 :=
  localPrefix000256.append block000257

noncomputable def hints000258 : List Nat :=
  primeHintChunk% "../../certificates/prime-count33554432-v1/counts-000258.json" 33554432 437245 874493 2

theorem length000258 : hints000258.length = 6831 := by decide +kernel
theorem checked000258 : checkPrimeHints 874493 2 hints000258 = true := by decide +kernel
theorem counted000258 : hints000258.count 0 <= 1011 := by decide +kernel

noncomputable def block000258 : CheckedPrimeCountBlock 874493 2 6831 1011 :=
  ⟨hints000258, length000258, checked000258, counted000258⟩

noncomputable def localPrefix000258 : CheckedPrimeCountBlock 847795 2 20180 2962 :=
  localPrefix000257.append block000258

noncomputable def hints000259 : List Nat :=
  primeHintChunk% "../../certificates/prime-count33554432-v1/counts-000259.json" 33554432 444076 888155 2

theorem length000259 : hints000259.length = 6938 := by decide +kernel
theorem checked000259 : checkPrimeHints 888155 2 hints000259 = true := by decide +kernel
theorem counted000259 : hints000259.count 0 <= 1003 := by decide +kernel

noncomputable def block000259 : CheckedPrimeCountBlock 888155 2 6938 1003 :=
  ⟨hints000259, length000259, checked000259, counted000259⟩

noncomputable def localPrefix000259 : CheckedPrimeCountBlock 847795 2 27118 3965 :=
  localPrefix000258.append block000259

noncomputable def hints000260 : List Nat :=
  primeHintChunk% "../../certificates/prime-count33554432-v1/counts-000260.json" 33554432 451014 902031 2

theorem length000260 : hints000260.length = 7047 := by decide +kernel
theorem checked000260 : checkPrimeHints 902031 2 hints000260 = true := by decide +kernel
theorem counted000260 : hints000260.count 0 <= 1023 := by decide +kernel

noncomputable def block000260 : CheckedPrimeCountBlock 902031 2 7047 1023 :=
  ⟨hints000260, length000260, checked000260, counted000260⟩

noncomputable def localPrefix000260 : CheckedPrimeCountBlock 847795 2 34165 4988 :=
  localPrefix000259.append block000260

noncomputable def hints000261 : List Nat :=
  primeHintChunk% "../../certificates/prime-count33554432-v1/counts-000261.json" 33554432 458061 916125 2

theorem length000261 : hints000261.length = 7157 := by decide +kernel
theorem checked000261 : checkPrimeHints 916125 2 hints000261 = true := by decide +kernel
theorem counted000261 : hints000261.count 0 <= 1058 := by decide +kernel

noncomputable def block000261 : CheckedPrimeCountBlock 916125 2 7157 1058 :=
  ⟨hints000261, length000261, checked000261, counted000261⟩

noncomputable def localPrefix000261 : CheckedPrimeCountBlock 847795 2 41322 6046 :=
  localPrefix000260.append block000261

noncomputable def hints000262 : List Nat :=
  primeHintChunk% "../../certificates/prime-count33554432-v1/counts-000262.json" 33554432 465218 930439 2

theorem length000262 : hints000262.length = 7269 := by decide +kernel
theorem checked000262 : checkPrimeHints 930439 2 hints000262 = true := by decide +kernel
theorem counted000262 : hints000262.count 0 <= 1055 := by decide +kernel

noncomputable def block000262 : CheckedPrimeCountBlock 930439 2 7269 1055 :=
  ⟨hints000262, length000262, checked000262, counted000262⟩

noncomputable def localPrefix000262 : CheckedPrimeCountBlock 847795 2 48591 7101 :=
  localPrefix000261.append block000262

noncomputable def hints000263 : List Nat :=
  primeHintChunk% "../../certificates/prime-count33554432-v1/counts-000263.json" 33554432 472487 944977 2

theorem length000263 : hints000263.length = 7382 := by decide +kernel
theorem checked000263 : checkPrimeHints 944977 2 hints000263 = true := by decide +kernel
theorem counted000263 : hints000263.count 0 <= 1039 := by decide +kernel

noncomputable def block000263 : CheckedPrimeCountBlock 944977 2 7382 1039 :=
  ⟨hints000263, length000263, checked000263, counted000263⟩

noncomputable def localPrefix000263 : CheckedPrimeCountBlock 847795 2 55973 8140 :=
  localPrefix000262.append block000263

noncomputable def hints000264 : List Nat :=
  primeHintChunk% "../../certificates/prime-count33554432-v1/counts-000264.json" 33554432 479869 959741 2

theorem length000264 : hints000264.length = 7497 := by decide +kernel
theorem checked000264 : checkPrimeHints 959741 2 hints000264 = true := by decide +kernel
theorem counted000264 : hints000264.count 0 <= 1100 := by decide +kernel

noncomputable def block000264 : CheckedPrimeCountBlock 959741 2 7497 1100 :=
  ⟨hints000264, length000264, checked000264, counted000264⟩

noncomputable def localPrefix000264 : CheckedPrimeCountBlock 847795 2 63470 9240 :=
  localPrefix000263.append block000264

noncomputable def hints000265 : List Nat :=
  primeHintChunk% "../../certificates/prime-count33554432-v1/counts-000265.json" 33554432 487366 974735 2

theorem length000265 : hints000265.length = 7615 := by decide +kernel
theorem checked000265 : checkPrimeHints 974735 2 hints000265 = true := by decide +kernel
theorem counted000265 : hints000265.count 0 <= 1074 := by decide +kernel

noncomputable def block000265 : CheckedPrimeCountBlock 974735 2 7615 1074 :=
  ⟨hints000265, length000265, checked000265, counted000265⟩

noncomputable def localPrefix000265 : CheckedPrimeCountBlock 847795 2 71085 10314 :=
  localPrefix000264.append block000265

noncomputable def hints000266 : List Nat :=
  primeHintChunk% "../../certificates/prime-count33554432-v1/counts-000266.json" 33554432 494981 989965 2

theorem length000266 : hints000266.length = 7734 := by decide +kernel
theorem checked000266 : checkPrimeHints 989965 2 hints000266 = true := by decide +kernel
theorem counted000266 : hints000266.count 0 <= 1130 := by decide +kernel

noncomputable def block000266 : CheckedPrimeCountBlock 989965 2 7734 1130 :=
  ⟨hints000266, length000266, checked000266, counted000266⟩

noncomputable def localPrefix000266 : CheckedPrimeCountBlock 847795 2 78819 11444 :=
  localPrefix000265.append block000266

noncomputable def hints000267 : List Nat :=
  primeHintChunk% "../../certificates/prime-count33554432-v1/counts-000267.json" 33554432 502715 1005433 2

theorem length000267 : hints000267.length = 7854 := by decide +kernel
theorem checked000267 : checkPrimeHints 1005433 2 hints000267 = true := by decide +kernel
theorem counted000267 : hints000267.count 0 <= 1158 := by decide +kernel

noncomputable def block000267 : CheckedPrimeCountBlock 1005433 2 7854 1158 :=
  ⟨hints000267, length000267, checked000267, counted000267⟩

noncomputable def localPrefix000267 : CheckedPrimeCountBlock 847795 2 86673 12602 :=
  localPrefix000266.append block000267

noncomputable def hints000268 : List Nat :=
  primeHintChunk% "../../certificates/prime-count33554432-v1/counts-000268.json" 33554432 510569 1021141 2

theorem length000268 : hints000268.length = 7977 := by decide +kernel
theorem checked000268 : checkPrimeHints 1021141 2 hints000268 = true := by decide +kernel
theorem counted000268 : hints000268.count 0 <= 1149 := by decide +kernel

noncomputable def block000268 : CheckedPrimeCountBlock 1021141 2 7977 1149 :=
  ⟨hints000268, length000268, checked000268, counted000268⟩

noncomputable def localPrefix000268 : CheckedPrimeCountBlock 847795 2 94650 13751 :=
  localPrefix000267.append block000268

noncomputable def hints000269 : List Nat :=
  primeHintChunk% "../../certificates/prime-count33554432-v1/counts-000269.json" 33554432 518546 1037095 2

theorem length000269 : hints000269.length = 8102 := by decide +kernel
theorem checked000269 : checkPrimeHints 1037095 2 hints000269 = true := by decide +kernel
theorem counted000269 : hints000269.count 0 <= 1146 := by decide +kernel

noncomputable def block000269 : CheckedPrimeCountBlock 1037095 2 8102 1146 :=
  ⟨hints000269, length000269, checked000269, counted000269⟩

noncomputable def localPrefix000269 : CheckedPrimeCountBlock 847795 2 102752 14897 :=
  localPrefix000268.append block000269

noncomputable def hints000270 : List Nat :=
  primeHintChunk% "../../certificates/prime-count33554432-v1/counts-000270.json" 33554432 526648 1053299 2

theorem length000270 : hints000270.length = 8228 := by decide +kernel
theorem checked000270 : checkPrimeHints 1053299 2 hints000270 = true := by decide +kernel
theorem counted000270 : hints000270.count 0 <= 1175 := by decide +kernel

noncomputable def block000270 : CheckedPrimeCountBlock 1053299 2 8228 1175 :=
  ⟨hints000270, length000270, checked000270, counted000270⟩

noncomputable def localPrefix000270 : CheckedPrimeCountBlock 847795 2 110980 16072 :=
  localPrefix000269.append block000270

noncomputable def hints000271 : List Nat :=
  primeHintChunk% "../../certificates/prime-count33554432-v1/counts-000271.json" 33554432 534876 1069755 2

theorem length000271 : hints000271.length = 8357 := by decide +kernel
theorem checked000271 : checkPrimeHints 1069755 2 hints000271 = true := by decide +kernel
theorem counted000271 : hints000271.count 0 <= 1208 := by decide +kernel

noncomputable def block000271 : CheckedPrimeCountBlock 1069755 2 8357 1208 :=
  ⟨hints000271, length000271, checked000271, counted000271⟩

noncomputable def localPrefix000271 : CheckedPrimeCountBlock 847795 2 119337 17280 :=
  localPrefix000270.append block000271

end JSP848.FullPrimeCount
