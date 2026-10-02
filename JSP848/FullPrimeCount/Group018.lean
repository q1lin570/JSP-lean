import JSP848.PrimeCountInput

set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0

namespace JSP848.FullPrimeCount

open PrimeCountInput

noncomputable def hints000288 : List Nat :=
  primeHintChunk% "../../certificates/prime-count33554432-v1/counts-000288.json" 33554432 696172 1392347 2

theorem length000288 : hints000288.length = 10877 := by decide +kernel
theorem checked000288 : checkPrimeHints 1392347 2 hints000288 = true := by decide +kernel
theorem counted000288 : hints000288.count 0 <= 1559 := by decide +kernel

noncomputable def block000288 : CheckedPrimeCountBlock 1392347 2 10877 1559 :=
  ⟨hints000288, length000288, checked000288, counted000288⟩

noncomputable def localPrefix000288 : CheckedPrimeCountBlock 1392347 2 10877 1559 :=
  block000288

noncomputable def hints000289 : List Nat :=
  primeHintChunk% "../../certificates/prime-count33554432-v1/counts-000289.json" 33554432 707049 1414101 2

theorem length000289 : hints000289.length = 11047 := by decide +kernel
theorem checked000289 : checkPrimeHints 1414101 2 hints000289 = true := by decide +kernel
theorem counted000289 : hints000289.count 0 <= 1554 := by decide +kernel

noncomputable def block000289 : CheckedPrimeCountBlock 1414101 2 11047 1554 :=
  ⟨hints000289, length000289, checked000289, counted000289⟩

noncomputable def localPrefix000289 : CheckedPrimeCountBlock 1392347 2 21924 3113 :=
  localPrefix000288.append block000289

noncomputable def hints000290 : List Nat :=
  primeHintChunk% "../../certificates/prime-count33554432-v1/counts-000290.json" 33554432 718096 1436195 2

theorem length000290 : hints000290.length = 11220 := by decide +kernel
theorem checked000290 : checkPrimeHints 1436195 2 hints000290 = true := by decide +kernel
theorem counted000290 : hints000290.count 0 <= 1590 := by decide +kernel

noncomputable def block000290 : CheckedPrimeCountBlock 1436195 2 11220 1590 :=
  ⟨hints000290, length000290, checked000290, counted000290⟩

noncomputable def localPrefix000290 : CheckedPrimeCountBlock 1392347 2 33144 4703 :=
  localPrefix000289.append block000290

noncomputable def hints000291 : List Nat :=
  primeHintChunk% "../../certificates/prime-count33554432-v1/counts-000291.json" 33554432 729316 1458635 2

theorem length000291 : hints000291.length = 11395 := by decide +kernel
theorem checked000291 : checkPrimeHints 1458635 2 hints000291 = true := by decide +kernel
theorem counted000291 : hints000291.count 0 <= 1603 := by decide +kernel

noncomputable def block000291 : CheckedPrimeCountBlock 1458635 2 11395 1603 :=
  ⟨hints000291, length000291, checked000291, counted000291⟩

noncomputable def localPrefix000291 : CheckedPrimeCountBlock 1392347 2 44539 6306 :=
  localPrefix000290.append block000291

noncomputable def hints000292 : List Nat :=
  primeHintChunk% "../../certificates/prime-count33554432-v1/counts-000292.json" 33554432 740711 1481425 2

theorem length000292 : hints000292.length = 11573 := by decide +kernel
theorem checked000292 : checkPrimeHints 1481425 2 hints000292 = true := by decide +kernel
theorem counted000292 : hints000292.count 0 <= 1637 := by decide +kernel

noncomputable def block000292 : CheckedPrimeCountBlock 1481425 2 11573 1637 :=
  ⟨hints000292, length000292, checked000292, counted000292⟩

noncomputable def localPrefix000292 : CheckedPrimeCountBlock 1392347 2 56112 7943 :=
  localPrefix000291.append block000292

noncomputable def hints000293 : List Nat :=
  primeHintChunk% "../../certificates/prime-count33554432-v1/counts-000293.json" 33554432 752284 1504571 2

theorem length000293 : hints000293.length = 11754 := by decide +kernel
theorem checked000293 : checkPrimeHints 1504571 2 hints000293 = true := by decide +kernel
theorem counted000293 : hints000293.count 0 <= 1658 := by decide +kernel

noncomputable def block000293 : CheckedPrimeCountBlock 1504571 2 11754 1658 :=
  ⟨hints000293, length000293, checked000293, counted000293⟩

noncomputable def localPrefix000293 : CheckedPrimeCountBlock 1392347 2 67866 9601 :=
  localPrefix000292.append block000293

noncomputable def hints000294 : List Nat :=
  primeHintChunk% "../../certificates/prime-count33554432-v1/counts-000294.json" 33554432 764038 1528079 2

theorem length000294 : hints000294.length = 11938 := by decide +kernel
theorem checked000294 : checkPrimeHints 1528079 2 hints000294 = true := by decide +kernel
theorem counted000294 : hints000294.count 0 <= 1653 := by decide +kernel

noncomputable def block000294 : CheckedPrimeCountBlock 1528079 2 11938 1653 :=
  ⟨hints000294, length000294, checked000294, counted000294⟩

noncomputable def localPrefix000294 : CheckedPrimeCountBlock 1392347 2 79804 11254 :=
  localPrefix000293.append block000294

noncomputable def hints000295 : List Nat :=
  primeHintChunk% "../../certificates/prime-count33554432-v1/counts-000295.json" 33554432 775976 1551955 2

theorem length000295 : hints000295.length = 12124 := by decide +kernel
theorem checked000295 : checkPrimeHints 1551955 2 hints000295 = true := by decide +kernel
theorem counted000295 : hints000295.count 0 <= 1700 := by decide +kernel

noncomputable def block000295 : CheckedPrimeCountBlock 1551955 2 12124 1700 :=
  ⟨hints000295, length000295, checked000295, counted000295⟩

noncomputable def localPrefix000295 : CheckedPrimeCountBlock 1392347 2 91928 12954 :=
  localPrefix000294.append block000295

noncomputable def hints000296 : List Nat :=
  primeHintChunk% "../../certificates/prime-count33554432-v1/counts-000296.json" 33554432 788100 1576203 2

theorem length000296 : hints000296.length = 12314 := by decide +kernel
theorem checked000296 : checkPrimeHints 1576203 2 hints000296 = true := by decide +kernel
theorem counted000296 : hints000296.count 0 <= 1687 := by decide +kernel

noncomputable def block000296 : CheckedPrimeCountBlock 1576203 2 12314 1687 :=
  ⟨hints000296, length000296, checked000296, counted000296⟩

noncomputable def localPrefix000296 : CheckedPrimeCountBlock 1392347 2 104242 14641 :=
  localPrefix000295.append block000296

noncomputable def hints000297 : List Nat :=
  primeHintChunk% "../../certificates/prime-count33554432-v1/counts-000297.json" 33554432 800414 1600831 2

theorem length000297 : hints000297.length = 12506 := by decide +kernel
theorem checked000297 : checkPrimeHints 1600831 2 hints000297 = true := by decide +kernel
theorem counted000297 : hints000297.count 0 <= 1760 := by decide +kernel

noncomputable def block000297 : CheckedPrimeCountBlock 1600831 2 12506 1760 :=
  ⟨hints000297, length000297, checked000297, counted000297⟩

noncomputable def localPrefix000297 : CheckedPrimeCountBlock 1392347 2 116748 16401 :=
  localPrefix000296.append block000297

noncomputable def hints000298 : List Nat :=
  primeHintChunk% "../../certificates/prime-count33554432-v1/counts-000298.json" 33554432 812920 1625843 2

theorem length000298 : hints000298.length = 12701 := by decide +kernel
theorem checked000298 : checkPrimeHints 1625843 2 hints000298 = true := by decide +kernel
theorem counted000298 : hints000298.count 0 <= 1779 := by decide +kernel

noncomputable def block000298 : CheckedPrimeCountBlock 1625843 2 12701 1779 :=
  ⟨hints000298, length000298, checked000298, counted000298⟩

noncomputable def localPrefix000298 : CheckedPrimeCountBlock 1392347 2 129449 18180 :=
  localPrefix000297.append block000298

noncomputable def hints000299 : List Nat :=
  primeHintChunk% "../../certificates/prime-count33554432-v1/counts-000299.json" 33554432 825621 1651245 2

theorem length000299 : hints000299.length = 12900 := by decide +kernel
theorem checked000299 : checkPrimeHints 1651245 2 hints000299 = true := by decide +kernel
theorem counted000299 : hints000299.count 0 <= 1814 := by decide +kernel

noncomputable def block000299 : CheckedPrimeCountBlock 1651245 2 12900 1814 :=
  ⟨hints000299, length000299, checked000299, counted000299⟩

noncomputable def localPrefix000299 : CheckedPrimeCountBlock 1392347 2 142349 19994 :=
  localPrefix000298.append block000299

noncomputable def hints000300 : List Nat :=
  primeHintChunk% "../../certificates/prime-count33554432-v1/counts-000300.json" 33554432 838521 1677045 2

theorem length000300 : hints000300.length = 13101 := by decide +kernel
theorem checked000300 : checkPrimeHints 1677045 2 hints000300 = true := by decide +kernel
theorem counted000300 : hints000300.count 0 <= 1836 := by decide +kernel

noncomputable def block000300 : CheckedPrimeCountBlock 1677045 2 13101 1836 :=
  ⟨hints000300, length000300, checked000300, counted000300⟩

noncomputable def localPrefix000300 : CheckedPrimeCountBlock 1392347 2 155450 21830 :=
  localPrefix000299.append block000300

noncomputable def hints000301 : List Nat :=
  primeHintChunk% "../../certificates/prime-count33554432-v1/counts-000301.json" 33554432 851622 1703247 2

theorem length000301 : hints000301.length = 13306 := by decide +kernel
theorem checked000301 : checkPrimeHints 1703247 2 hints000301 = true := by decide +kernel
theorem counted000301 : hints000301.count 0 <= 1830 := by decide +kernel

noncomputable def block000301 : CheckedPrimeCountBlock 1703247 2 13306 1830 :=
  ⟨hints000301, length000301, checked000301, counted000301⟩

noncomputable def localPrefix000301 : CheckedPrimeCountBlock 1392347 2 168756 23660 :=
  localPrefix000300.append block000301

noncomputable def hints000302 : List Nat :=
  primeHintChunk% "../../certificates/prime-count33554432-v1/counts-000302.json" 33554432 864928 1729859 2

theorem length000302 : hints000302.length = 13514 := by decide +kernel
theorem checked000302 : checkPrimeHints 1729859 2 hints000302 = true := by decide +kernel
theorem counted000302 : hints000302.count 0 <= 1886 := by decide +kernel

noncomputable def block000302 : CheckedPrimeCountBlock 1729859 2 13514 1886 :=
  ⟨hints000302, length000302, checked000302, counted000302⟩

noncomputable def localPrefix000302 : CheckedPrimeCountBlock 1392347 2 182270 25546 :=
  localPrefix000301.append block000302

noncomputable def hints000303 : List Nat :=
  primeHintChunk% "../../certificates/prime-count33554432-v1/counts-000303.json" 33554432 878442 1756887 2

theorem length000303 : hints000303.length = 13725 := by decide +kernel
theorem checked000303 : checkPrimeHints 1756887 2 hints000303 = true := by decide +kernel
theorem counted000303 : hints000303.count 0 <= 1891 := by decide +kernel

noncomputable def block000303 : CheckedPrimeCountBlock 1756887 2 13725 1891 :=
  ⟨hints000303, length000303, checked000303, counted000303⟩

noncomputable def localPrefix000303 : CheckedPrimeCountBlock 1392347 2 195995 27437 :=
  localPrefix000302.append block000303

end JSP848.FullPrimeCount
