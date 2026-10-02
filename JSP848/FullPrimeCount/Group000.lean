import JSP848.PrimeCountInput

set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0

namespace JSP848.FullPrimeCount

open PrimeCountInput

noncomputable def hints000000 : List Nat :=
  primeHintChunk% "../../certificates/prime-count33554432-v1/counts-000000.json" 33554432 0 3 2

theorem length000000 : hints000000.length = 8191 := by decide +kernel
theorem checked000000 : checkPrimeHints 3 2 hints000000 = true := by decide +kernel
theorem counted000000 : hints000000.count 0 <= 1899 := by decide +kernel

noncomputable def block000000 : CheckedPrimeCountBlock 3 2 8191 1899 :=
  ⟨hints000000, length000000, checked000000, counted000000⟩

noncomputable def localPrefix000000 : CheckedPrimeCountBlock 3 2 8191 1899 :=
  block000000

noncomputable def hints000001 : List Nat :=
  primeHintChunk% "../../certificates/prime-count33554432-v1/counts-000001.json" 33554432 8191 16385 2

theorem length000001 : hints000001.length = 128 := by decide +kernel
theorem checked000001 : checkPrimeHints 16385 2 hints000001 = true := by decide +kernel
theorem counted000001 : hints000001.count 0 <= 24 := by decide +kernel

noncomputable def block000001 : CheckedPrimeCountBlock 16385 2 128 24 :=
  ⟨hints000001, length000001, checked000001, counted000001⟩

noncomputable def localPrefix000001 : CheckedPrimeCountBlock 3 2 8319 1923 :=
  localPrefix000000.append block000001

noncomputable def hints000002 : List Nat :=
  primeHintChunk% "../../certificates/prime-count33554432-v1/counts-000002.json" 33554432 8319 16641 2

theorem length000002 : hints000002.length = 130 := by decide +kernel
theorem checked000002 : checkPrimeHints 16641 2 hints000002 = true := by decide +kernel
theorem counted000002 : hints000002.count 0 <= 24 := by decide +kernel

noncomputable def block000002 : CheckedPrimeCountBlock 16641 2 130 24 :=
  ⟨hints000002, length000002, checked000002, counted000002⟩

noncomputable def localPrefix000002 : CheckedPrimeCountBlock 3 2 8449 1947 :=
  localPrefix000001.append block000002

noncomputable def hints000003 : List Nat :=
  primeHintChunk% "../../certificates/prime-count33554432-v1/counts-000003.json" 33554432 8449 16901 2

theorem length000003 : hints000003.length = 132 := by decide +kernel
theorem checked000003 : checkPrimeHints 16901 2 hints000003 = true := by decide +kernel
theorem counted000003 : hints000003.count 0 <= 28 := by decide +kernel

noncomputable def block000003 : CheckedPrimeCountBlock 16901 2 132 28 :=
  ⟨hints000003, length000003, checked000003, counted000003⟩

noncomputable def localPrefix000003 : CheckedPrimeCountBlock 3 2 8581 1975 :=
  localPrefix000002.append block000003

noncomputable def hints000004 : List Nat :=
  primeHintChunk% "../../certificates/prime-count33554432-v1/counts-000004.json" 33554432 8581 17165 2

theorem length000004 : hints000004.length = 134 := by decide +kernel
theorem checked000004 : checkPrimeHints 17165 2 hints000004 = true := by decide +kernel
theorem counted000004 : hints000004.count 0 <= 29 := by decide +kernel

noncomputable def block000004 : CheckedPrimeCountBlock 17165 2 134 29 :=
  ⟨hints000004, length000004, checked000004, counted000004⟩

noncomputable def localPrefix000004 : CheckedPrimeCountBlock 3 2 8715 2004 :=
  localPrefix000003.append block000004

noncomputable def hints000005 : List Nat :=
  primeHintChunk% "../../certificates/prime-count33554432-v1/counts-000005.json" 33554432 8715 17433 2

theorem length000005 : hints000005.length = 136 := by decide +kernel
theorem checked000005 : checkPrimeHints 17433 2 hints000005 = true := by decide +kernel
theorem counted000005 : hints000005.count 0 <= 27 := by decide +kernel

noncomputable def block000005 : CheckedPrimeCountBlock 17433 2 136 27 :=
  ⟨hints000005, length000005, checked000005, counted000005⟩

noncomputable def localPrefix000005 : CheckedPrimeCountBlock 3 2 8851 2031 :=
  localPrefix000004.append block000005

noncomputable def hints000006 : List Nat :=
  primeHintChunk% "../../certificates/prime-count33554432-v1/counts-000006.json" 33554432 8851 17705 2

theorem length000006 : hints000006.length = 138 := by decide +kernel
theorem checked000006 : checkPrimeHints 17705 2 hints000006 = true := by decide +kernel
theorem counted000006 : hints000006.count 0 <= 29 := by decide +kernel

noncomputable def block000006 : CheckedPrimeCountBlock 17705 2 138 29 :=
  ⟨hints000006, length000006, checked000006, counted000006⟩

noncomputable def localPrefix000006 : CheckedPrimeCountBlock 3 2 8989 2060 :=
  localPrefix000005.append block000006

noncomputable def hints000007 : List Nat :=
  primeHintChunk% "../../certificates/prime-count33554432-v1/counts-000007.json" 33554432 8989 17981 2

theorem length000007 : hints000007.length = 140 := by decide +kernel
theorem checked000007 : checkPrimeHints 17981 2 hints000007 = true := by decide +kernel
theorem counted000007 : hints000007.count 0 <= 32 := by decide +kernel

noncomputable def block000007 : CheckedPrimeCountBlock 17981 2 140 32 :=
  ⟨hints000007, length000007, checked000007, counted000007⟩

noncomputable def localPrefix000007 : CheckedPrimeCountBlock 3 2 9129 2092 :=
  localPrefix000006.append block000007

noncomputable def hints000008 : List Nat :=
  primeHintChunk% "../../certificates/prime-count33554432-v1/counts-000008.json" 33554432 9129 18261 2

theorem length000008 : hints000008.length = 142 := by decide +kernel
theorem checked000008 : checkPrimeHints 18261 2 hints000008 = true := by decide +kernel
theorem counted000008 : hints000008.count 0 <= 31 := by decide +kernel

noncomputable def block000008 : CheckedPrimeCountBlock 18261 2 142 31 :=
  ⟨hints000008, length000008, checked000008, counted000008⟩

noncomputable def localPrefix000008 : CheckedPrimeCountBlock 3 2 9271 2123 :=
  localPrefix000007.append block000008

noncomputable def hints000009 : List Nat :=
  primeHintChunk% "../../certificates/prime-count33554432-v1/counts-000009.json" 33554432 9271 18545 2

theorem length000009 : hints000009.length = 144 := by decide +kernel
theorem checked000009 : checkPrimeHints 18545 2 hints000009 = true := by decide +kernel
theorem counted000009 : hints000009.count 0 <= 22 := by decide +kernel

noncomputable def block000009 : CheckedPrimeCountBlock 18545 2 144 22 :=
  ⟨hints000009, length000009, checked000009, counted000009⟩

noncomputable def localPrefix000009 : CheckedPrimeCountBlock 3 2 9415 2145 :=
  localPrefix000008.append block000009

noncomputable def hints000010 : List Nat :=
  primeHintChunk% "../../certificates/prime-count33554432-v1/counts-000010.json" 33554432 9415 18833 2

theorem length000010 : hints000010.length = 147 := by decide +kernel
theorem checked000010 : checkPrimeHints 18833 2 hints000010 = true := by decide +kernel
theorem counted000010 : hints000010.count 0 <= 24 := by decide +kernel

noncomputable def block000010 : CheckedPrimeCountBlock 18833 2 147 24 :=
  ⟨hints000010, length000010, checked000010, counted000010⟩

noncomputable def localPrefix000010 : CheckedPrimeCountBlock 3 2 9562 2169 :=
  localPrefix000009.append block000010

noncomputable def hints000011 : List Nat :=
  primeHintChunk% "../../certificates/prime-count33554432-v1/counts-000011.json" 33554432 9562 19127 2

theorem length000011 : hints000011.length = 149 := by decide +kernel
theorem checked000011 : checkPrimeHints 19127 2 hints000011 = true := by decide +kernel
theorem counted000011 : hints000011.count 0 <= 30 := by decide +kernel

noncomputable def block000011 : CheckedPrimeCountBlock 19127 2 149 30 :=
  ⟨hints000011, length000011, checked000011, counted000011⟩

noncomputable def localPrefix000011 : CheckedPrimeCountBlock 3 2 9711 2199 :=
  localPrefix000010.append block000011

noncomputable def hints000012 : List Nat :=
  primeHintChunk% "../../certificates/prime-count33554432-v1/counts-000012.json" 33554432 9711 19425 2

theorem length000012 : hints000012.length = 151 := by decide +kernel
theorem checked000012 : checkPrimeHints 19425 2 hints000012 = true := by decide +kernel
theorem counted000012 : hints000012.count 0 <= 32 := by decide +kernel

noncomputable def block000012 : CheckedPrimeCountBlock 19425 2 151 32 :=
  ⟨hints000012, length000012, checked000012, counted000012⟩

noncomputable def localPrefix000012 : CheckedPrimeCountBlock 3 2 9862 2231 :=
  localPrefix000011.append block000012

noncomputable def hints000013 : List Nat :=
  primeHintChunk% "../../certificates/prime-count33554432-v1/counts-000013.json" 33554432 9862 19727 2

theorem length000013 : hints000013.length = 154 := by decide +kernel
theorem checked000013 : checkPrimeHints 19727 2 hints000013 = true := by decide +kernel
theorem counted000013 : hints000013.count 0 <= 34 := by decide +kernel

noncomputable def block000013 : CheckedPrimeCountBlock 19727 2 154 34 :=
  ⟨hints000013, length000013, checked000013, counted000013⟩

noncomputable def localPrefix000013 : CheckedPrimeCountBlock 3 2 10016 2265 :=
  localPrefix000012.append block000013

noncomputable def hints000014 : List Nat :=
  primeHintChunk% "../../certificates/prime-count33554432-v1/counts-000014.json" 33554432 10016 20035 2

theorem length000014 : hints000014.length = 156 := by decide +kernel
theorem checked000014 : checkPrimeHints 20035 2 hints000014 = true := by decide +kernel
theorem counted000014 : hints000014.count 0 <= 31 := by decide +kernel

noncomputable def block000014 : CheckedPrimeCountBlock 20035 2 156 31 :=
  ⟨hints000014, length000014, checked000014, counted000014⟩

noncomputable def localPrefix000014 : CheckedPrimeCountBlock 3 2 10172 2296 :=
  localPrefix000013.append block000014

noncomputable def hints000015 : List Nat :=
  primeHintChunk% "../../certificates/prime-count33554432-v1/counts-000015.json" 33554432 10172 20347 2

theorem length000015 : hints000015.length = 158 := by decide +kernel
theorem checked000015 : checkPrimeHints 20347 2 hints000015 = true := by decide +kernel
theorem counted000015 : hints000015.count 0 <= 30 := by decide +kernel

noncomputable def block000015 : CheckedPrimeCountBlock 20347 2 158 30 :=
  ⟨hints000015, length000015, checked000015, counted000015⟩

noncomputable def localPrefix000015 : CheckedPrimeCountBlock 3 2 10330 2326 :=
  localPrefix000014.append block000015

end JSP848.FullPrimeCount
