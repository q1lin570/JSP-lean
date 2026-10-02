import JSP848.PrimeCountInput

set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0

namespace JSP848.FullPrimeCount

open PrimeCountInput

noncomputable def hints000112 : List Nat :=
  primeHintChunk% "../../certificates/prime-count33554432-v1/counts-000112.json" 33554432 45652 91307 2

theorem length000112 : hints000112.length = 713 := by decide +kernel
theorem checked000112 : checkPrimeHints 91307 2 hints000112 = true := by decide +kernel
theorem counted000112 : hints000112.count 0 <= 128 := by decide +kernel

noncomputable def block000112 : CheckedPrimeCountBlock 91307 2 713 128 :=
  ⟨hints000112, length000112, checked000112, counted000112⟩

noncomputable def localPrefix000112 : CheckedPrimeCountBlock 91307 2 713 128 :=
  block000112

noncomputable def hints000113 : List Nat :=
  primeHintChunk% "../../certificates/prime-count33554432-v1/counts-000113.json" 33554432 46365 92733 2

theorem length000113 : hints000113.length = 724 := by decide +kernel
theorem checked000113 : checkPrimeHints 92733 2 hints000113 = true := by decide +kernel
theorem counted000113 : hints000113.count 0 <= 127 := by decide +kernel

noncomputable def block000113 : CheckedPrimeCountBlock 92733 2 724 127 :=
  ⟨hints000113, length000113, checked000113, counted000113⟩

noncomputable def localPrefix000113 : CheckedPrimeCountBlock 91307 2 1437 255 :=
  localPrefix000112.append block000113

noncomputable def hints000114 : List Nat :=
  primeHintChunk% "../../certificates/prime-count33554432-v1/counts-000114.json" 33554432 47089 94181 2

theorem length000114 : hints000114.length = 735 := by decide +kernel
theorem checked000114 : checkPrimeHints 94181 2 hints000114 = true := by decide +kernel
theorem counted000114 : hints000114.count 0 <= 135 := by decide +kernel

noncomputable def block000114 : CheckedPrimeCountBlock 94181 2 735 135 :=
  ⟨hints000114, length000114, checked000114, counted000114⟩

noncomputable def localPrefix000114 : CheckedPrimeCountBlock 91307 2 2172 390 :=
  localPrefix000113.append block000114

noncomputable def hints000115 : List Nat :=
  primeHintChunk% "../../certificates/prime-count33554432-v1/counts-000115.json" 33554432 47824 95651 2

theorem length000115 : hints000115.length = 747 := by decide +kernel
theorem checked000115 : checkPrimeHints 95651 2 hints000115 = true := by decide +kernel
theorem counted000115 : hints000115.count 0 <= 126 := by decide +kernel

noncomputable def block000115 : CheckedPrimeCountBlock 95651 2 747 126 :=
  ⟨hints000115, length000115, checked000115, counted000115⟩

noncomputable def localPrefix000115 : CheckedPrimeCountBlock 91307 2 2919 516 :=
  localPrefix000114.append block000115

noncomputable def hints000116 : List Nat :=
  primeHintChunk% "../../certificates/prime-count33554432-v1/counts-000116.json" 33554432 48571 97145 2

theorem length000116 : hints000116.length = 758 := by decide +kernel
theorem checked000116 : checkPrimeHints 97145 2 hints000116 = true := by decide +kernel
theorem counted000116 : hints000116.count 0 <= 125 := by decide +kernel

noncomputable def block000116 : CheckedPrimeCountBlock 97145 2 758 125 :=
  ⟨hints000116, length000116, checked000116, counted000116⟩

noncomputable def localPrefix000116 : CheckedPrimeCountBlock 91307 2 3677 641 :=
  localPrefix000115.append block000116

noncomputable def hints000117 : List Nat :=
  primeHintChunk% "../../certificates/prime-count33554432-v1/counts-000117.json" 33554432 49329 98661 2

theorem length000117 : hints000117.length = 770 := by decide +kernel
theorem checked000117 : checkPrimeHints 98661 2 hints000117 = true := by decide +kernel
theorem counted000117 : hints000117.count 0 <= 136 := by decide +kernel

noncomputable def block000117 : CheckedPrimeCountBlock 98661 2 770 136 :=
  ⟨hints000117, length000117, checked000117, counted000117⟩

noncomputable def localPrefix000117 : CheckedPrimeCountBlock 91307 2 4447 777 :=
  localPrefix000116.append block000117

noncomputable def hints000118 : List Nat :=
  primeHintChunk% "../../certificates/prime-count33554432-v1/counts-000118.json" 33554432 50099 100201 2

theorem length000118 : hints000118.length = 782 := by decide +kernel
theorem checked000118 : checkPrimeHints 100201 2 hints000118 = true := by decide +kernel
theorem counted000118 : hints000118.count 0 <= 138 := by decide +kernel

noncomputable def block000118 : CheckedPrimeCountBlock 100201 2 782 138 :=
  ⟨hints000118, length000118, checked000118, counted000118⟩

noncomputable def localPrefix000118 : CheckedPrimeCountBlock 91307 2 5229 915 :=
  localPrefix000117.append block000118

noncomputable def hints000119 : List Nat :=
  primeHintChunk% "../../certificates/prime-count33554432-v1/counts-000119.json" 33554432 50881 101765 2

theorem length000119 : hints000119.length = 795 := by decide +kernel
theorem checked000119 : checkPrimeHints 101765 2 hints000119 = true := by decide +kernel
theorem counted000119 : hints000119.count 0 <= 133 := by decide +kernel

noncomputable def block000119 : CheckedPrimeCountBlock 101765 2 795 133 :=
  ⟨hints000119, length000119, checked000119, counted000119⟩

noncomputable def localPrefix000119 : CheckedPrimeCountBlock 91307 2 6024 1048 :=
  localPrefix000118.append block000119

noncomputable def hints000120 : List Nat :=
  primeHintChunk% "../../certificates/prime-count33554432-v1/counts-000120.json" 33554432 51676 103355 2

theorem length000120 : hints000120.length = 807 := by decide +kernel
theorem checked000120 : checkPrimeHints 103355 2 hints000120 = true := by decide +kernel
theorem counted000120 : hints000120.count 0 <= 143 := by decide +kernel

noncomputable def block000120 : CheckedPrimeCountBlock 103355 2 807 143 :=
  ⟨hints000120, length000120, checked000120, counted000120⟩

noncomputable def localPrefix000120 : CheckedPrimeCountBlock 91307 2 6831 1191 :=
  localPrefix000119.append block000120

noncomputable def hints000121 : List Nat :=
  primeHintChunk% "../../certificates/prime-count33554432-v1/counts-000121.json" 33554432 52483 104969 2

theorem length000121 : hints000121.length = 820 := by decide +kernel
theorem checked000121 : checkPrimeHints 104969 2 hints000121 = true := by decide +kernel
theorem counted000121 : hints000121.count 0 <= 136 := by decide +kernel

noncomputable def block000121 : CheckedPrimeCountBlock 104969 2 820 136 :=
  ⟨hints000121, length000121, checked000121, counted000121⟩

noncomputable def localPrefix000121 : CheckedPrimeCountBlock 91307 2 7651 1327 :=
  localPrefix000120.append block000121

noncomputable def hints000122 : List Nat :=
  primeHintChunk% "../../certificates/prime-count33554432-v1/counts-000122.json" 33554432 53303 106609 2

theorem length000122 : hints000122.length = 832 := by decide +kernel
theorem checked000122 : checkPrimeHints 106609 2 hints000122 = true := by decide +kernel
theorem counted000122 : hints000122.count 0 <= 144 := by decide +kernel

noncomputable def block000122 : CheckedPrimeCountBlock 106609 2 832 144 :=
  ⟨hints000122, length000122, checked000122, counted000122⟩

noncomputable def localPrefix000122 : CheckedPrimeCountBlock 91307 2 8483 1471 :=
  localPrefix000121.append block000122

noncomputable def hints000123 : List Nat :=
  primeHintChunk% "../../certificates/prime-count33554432-v1/counts-000123.json" 33554432 54135 108273 2

theorem length000123 : hints000123.length = 845 := by decide +kernel
theorem checked000123 : checkPrimeHints 108273 2 hints000123 = true := by decide +kernel
theorem counted000123 : hints000123.count 0 <= 151 := by decide +kernel

noncomputable def block000123 : CheckedPrimeCountBlock 108273 2 845 151 :=
  ⟨hints000123, length000123, checked000123, counted000123⟩

noncomputable def localPrefix000123 : CheckedPrimeCountBlock 91307 2 9328 1622 :=
  localPrefix000122.append block000123

noncomputable def hints000124 : List Nat :=
  primeHintChunk% "../../certificates/prime-count33554432-v1/counts-000124.json" 33554432 54980 109963 2

theorem length000124 : hints000124.length = 859 := by decide +kernel
theorem checked000124 : checkPrimeHints 109963 2 hints000124 = true := by decide +kernel
theorem counted000124 : hints000124.count 0 <= 139 := by decide +kernel

noncomputable def block000124 : CheckedPrimeCountBlock 109963 2 859 139 :=
  ⟨hints000124, length000124, checked000124, counted000124⟩

noncomputable def localPrefix000124 : CheckedPrimeCountBlock 91307 2 10187 1761 :=
  localPrefix000123.append block000124

noncomputable def hints000125 : List Nat :=
  primeHintChunk% "../../certificates/prime-count33554432-v1/counts-000125.json" 33554432 55839 111681 2

theorem length000125 : hints000125.length = 872 := by decide +kernel
theorem checked000125 : checkPrimeHints 111681 2 hints000125 = true := by decide +kernel
theorem counted000125 : hints000125.count 0 <= 154 := by decide +kernel

noncomputable def block000125 : CheckedPrimeCountBlock 111681 2 872 154 :=
  ⟨hints000125, length000125, checked000125, counted000125⟩

noncomputable def localPrefix000125 : CheckedPrimeCountBlock 91307 2 11059 1915 :=
  localPrefix000124.append block000125

noncomputable def hints000126 : List Nat :=
  primeHintChunk% "../../certificates/prime-count33554432-v1/counts-000126.json" 33554432 56711 113425 2

theorem length000126 : hints000126.length = 886 := by decide +kernel
theorem checked000126 : checkPrimeHints 113425 2 hints000126 = true := by decide +kernel
theorem counted000126 : hints000126.count 0 <= 143 := by decide +kernel

noncomputable def block000126 : CheckedPrimeCountBlock 113425 2 886 143 :=
  ⟨hints000126, length000126, checked000126, counted000126⟩

noncomputable def localPrefix000126 : CheckedPrimeCountBlock 91307 2 11945 2058 :=
  localPrefix000125.append block000126

noncomputable def hints000127 : List Nat :=
  primeHintChunk% "../../certificates/prime-count33554432-v1/counts-000127.json" 33554432 57597 115197 2

theorem length000127 : hints000127.length = 899 := by decide +kernel
theorem checked000127 : checkPrimeHints 115197 2 hints000127 = true := by decide +kernel
theorem counted000127 : hints000127.count 0 <= 157 := by decide +kernel

noncomputable def block000127 : CheckedPrimeCountBlock 115197 2 899 157 :=
  ⟨hints000127, length000127, checked000127, counted000127⟩

noncomputable def localPrefix000127 : CheckedPrimeCountBlock 91307 2 12844 2215 :=
  localPrefix000126.append block000127

end JSP848.FullPrimeCount
