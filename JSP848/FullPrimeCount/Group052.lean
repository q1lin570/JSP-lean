import JSP848.PrimeCountInput

set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0

namespace JSP848.FullPrimeCount

open PrimeCountInput

noncomputable def hints000832 : List Nat :=
  primeHintChunk% "../../certificates/prime-count33554432-v1/counts-000832.json" 33554432 9519103 19038209 2

theorem length000832 : hints000832.length = 16384 := by decide +kernel
theorem checked000832 : checkPrimeHints 19038209 2 hints000832 = true := by decide +kernel
theorem counted000832 : hints000832.count 0 <= 1937 := by decide +kernel

noncomputable def block000832 : CheckedPrimeCountBlock 19038209 2 16384 1937 :=
  ⟨hints000832, length000832, checked000832, counted000832⟩

noncomputable def localPrefix000832 : CheckedPrimeCountBlock 19038209 2 16384 1937 :=
  block000832

noncomputable def hints000833 : List Nat :=
  primeHintChunk% "../../certificates/prime-count33554432-v1/counts-000833.json" 33554432 9535487 19070977 2

theorem length000833 : hints000833.length = 16384 := by decide +kernel
theorem checked000833 : checkPrimeHints 19070977 2 hints000833 = true := by decide +kernel
theorem counted000833 : hints000833.count 0 <= 1946 := by decide +kernel

noncomputable def block000833 : CheckedPrimeCountBlock 19070977 2 16384 1946 :=
  ⟨hints000833, length000833, checked000833, counted000833⟩

noncomputable def localPrefix000833 : CheckedPrimeCountBlock 19038209 2 32768 3883 :=
  localPrefix000832.append block000833

noncomputable def hints000834 : List Nat :=
  primeHintChunk% "../../certificates/prime-count33554432-v1/counts-000834.json" 33554432 9551871 19103745 2

theorem length000834 : hints000834.length = 16384 := by decide +kernel
theorem checked000834 : checkPrimeHints 19103745 2 hints000834 = true := by decide +kernel
theorem counted000834 : hints000834.count 0 <= 1978 := by decide +kernel

noncomputable def block000834 : CheckedPrimeCountBlock 19103745 2 16384 1978 :=
  ⟨hints000834, length000834, checked000834, counted000834⟩

noncomputable def localPrefix000834 : CheckedPrimeCountBlock 19038209 2 49152 5861 :=
  localPrefix000833.append block000834

noncomputable def hints000835 : List Nat :=
  primeHintChunk% "../../certificates/prime-count33554432-v1/counts-000835.json" 33554432 9568255 19136513 2

theorem length000835 : hints000835.length = 16384 := by decide +kernel
theorem checked000835 : checkPrimeHints 19136513 2 hints000835 = true := by decide +kernel
theorem counted000835 : hints000835.count 0 <= 1946 := by decide +kernel

noncomputable def block000835 : CheckedPrimeCountBlock 19136513 2 16384 1946 :=
  ⟨hints000835, length000835, checked000835, counted000835⟩

noncomputable def localPrefix000835 : CheckedPrimeCountBlock 19038209 2 65536 7807 :=
  localPrefix000834.append block000835

noncomputable def hints000836 : List Nat :=
  primeHintChunk% "../../certificates/prime-count33554432-v1/counts-000836.json" 33554432 9584639 19169281 2

theorem length000836 : hints000836.length = 16384 := by decide +kernel
theorem checked000836 : checkPrimeHints 19169281 2 hints000836 = true := by decide +kernel
theorem counted000836 : hints000836.count 0 <= 1965 := by decide +kernel

noncomputable def block000836 : CheckedPrimeCountBlock 19169281 2 16384 1965 :=
  ⟨hints000836, length000836, checked000836, counted000836⟩

noncomputable def localPrefix000836 : CheckedPrimeCountBlock 19038209 2 81920 9772 :=
  localPrefix000835.append block000836

noncomputable def hints000837 : List Nat :=
  primeHintChunk% "../../certificates/prime-count33554432-v1/counts-000837.json" 33554432 9601023 19202049 2

theorem length000837 : hints000837.length = 16384 := by decide +kernel
theorem checked000837 : checkPrimeHints 19202049 2 hints000837 = true := by decide +kernel
theorem counted000837 : hints000837.count 0 <= 1910 := by decide +kernel

noncomputable def block000837 : CheckedPrimeCountBlock 19202049 2 16384 1910 :=
  ⟨hints000837, length000837, checked000837, counted000837⟩

noncomputable def localPrefix000837 : CheckedPrimeCountBlock 19038209 2 98304 11682 :=
  localPrefix000836.append block000837

noncomputable def hints000838 : List Nat :=
  primeHintChunk% "../../certificates/prime-count33554432-v1/counts-000838.json" 33554432 9617407 19234817 2

theorem length000838 : hints000838.length = 16384 := by decide +kernel
theorem checked000838 : checkPrimeHints 19234817 2 hints000838 = true := by decide +kernel
theorem counted000838 : hints000838.count 0 <= 1962 := by decide +kernel

noncomputable def block000838 : CheckedPrimeCountBlock 19234817 2 16384 1962 :=
  ⟨hints000838, length000838, checked000838, counted000838⟩

noncomputable def localPrefix000838 : CheckedPrimeCountBlock 19038209 2 114688 13644 :=
  localPrefix000837.append block000838

noncomputable def hints000839 : List Nat :=
  primeHintChunk% "../../certificates/prime-count33554432-v1/counts-000839.json" 33554432 9633791 19267585 2

theorem length000839 : hints000839.length = 16384 := by decide +kernel
theorem checked000839 : checkPrimeHints 19267585 2 hints000839 = true := by decide +kernel
theorem counted000839 : hints000839.count 0 <= 1935 := by decide +kernel

noncomputable def block000839 : CheckedPrimeCountBlock 19267585 2 16384 1935 :=
  ⟨hints000839, length000839, checked000839, counted000839⟩

noncomputable def localPrefix000839 : CheckedPrimeCountBlock 19038209 2 131072 15579 :=
  localPrefix000838.append block000839

noncomputable def hints000840 : List Nat :=
  primeHintChunk% "../../certificates/prime-count33554432-v1/counts-000840.json" 33554432 9650175 19300353 2

theorem length000840 : hints000840.length = 16384 := by decide +kernel
theorem checked000840 : checkPrimeHints 19300353 2 hints000840 = true := by decide +kernel
theorem counted000840 : hints000840.count 0 <= 1997 := by decide +kernel

noncomputable def block000840 : CheckedPrimeCountBlock 19300353 2 16384 1997 :=
  ⟨hints000840, length000840, checked000840, counted000840⟩

noncomputable def localPrefix000840 : CheckedPrimeCountBlock 19038209 2 147456 17576 :=
  localPrefix000839.append block000840

noncomputable def hints000841 : List Nat :=
  primeHintChunk% "../../certificates/prime-count33554432-v1/counts-000841.json" 33554432 9666559 19333121 2

theorem length000841 : hints000841.length = 16384 := by decide +kernel
theorem checked000841 : checkPrimeHints 19333121 2 hints000841 = true := by decide +kernel
theorem counted000841 : hints000841.count 0 <= 1950 := by decide +kernel

noncomputable def block000841 : CheckedPrimeCountBlock 19333121 2 16384 1950 :=
  ⟨hints000841, length000841, checked000841, counted000841⟩

noncomputable def localPrefix000841 : CheckedPrimeCountBlock 19038209 2 163840 19526 :=
  localPrefix000840.append block000841

noncomputable def hints000842 : List Nat :=
  primeHintChunk% "../../certificates/prime-count33554432-v1/counts-000842.json" 33554432 9682943 19365889 2

theorem length000842 : hints000842.length = 16384 := by decide +kernel
theorem checked000842 : checkPrimeHints 19365889 2 hints000842 = true := by decide +kernel
theorem counted000842 : hints000842.count 0 <= 1960 := by decide +kernel

noncomputable def block000842 : CheckedPrimeCountBlock 19365889 2 16384 1960 :=
  ⟨hints000842, length000842, checked000842, counted000842⟩

noncomputable def localPrefix000842 : CheckedPrimeCountBlock 19038209 2 180224 21486 :=
  localPrefix000841.append block000842

noncomputable def hints000843 : List Nat :=
  primeHintChunk% "../../certificates/prime-count33554432-v1/counts-000843.json" 33554432 9699327 19398657 2

theorem length000843 : hints000843.length = 16384 := by decide +kernel
theorem checked000843 : checkPrimeHints 19398657 2 hints000843 = true := by decide +kernel
theorem counted000843 : hints000843.count 0 <= 1969 := by decide +kernel

noncomputable def block000843 : CheckedPrimeCountBlock 19398657 2 16384 1969 :=
  ⟨hints000843, length000843, checked000843, counted000843⟩

noncomputable def localPrefix000843 : CheckedPrimeCountBlock 19038209 2 196608 23455 :=
  localPrefix000842.append block000843

noncomputable def hints000844 : List Nat :=
  primeHintChunk% "../../certificates/prime-count33554432-v1/counts-000844.json" 33554432 9715711 19431425 2

theorem length000844 : hints000844.length = 16384 := by decide +kernel
theorem checked000844 : checkPrimeHints 19431425 2 hints000844 = true := by decide +kernel
theorem counted000844 : hints000844.count 0 <= 1979 := by decide +kernel

noncomputable def block000844 : CheckedPrimeCountBlock 19431425 2 16384 1979 :=
  ⟨hints000844, length000844, checked000844, counted000844⟩

noncomputable def localPrefix000844 : CheckedPrimeCountBlock 19038209 2 212992 25434 :=
  localPrefix000843.append block000844

noncomputable def hints000845 : List Nat :=
  primeHintChunk% "../../certificates/prime-count33554432-v1/counts-000845.json" 33554432 9732095 19464193 2

theorem length000845 : hints000845.length = 16384 := by decide +kernel
theorem checked000845 : checkPrimeHints 19464193 2 hints000845 = true := by decide +kernel
theorem counted000845 : hints000845.count 0 <= 1902 := by decide +kernel

noncomputable def block000845 : CheckedPrimeCountBlock 19464193 2 16384 1902 :=
  ⟨hints000845, length000845, checked000845, counted000845⟩

noncomputable def localPrefix000845 : CheckedPrimeCountBlock 19038209 2 229376 27336 :=
  localPrefix000844.append block000845

noncomputable def hints000846 : List Nat :=
  primeHintChunk% "../../certificates/prime-count33554432-v1/counts-000846.json" 33554432 9748479 19496961 2

theorem length000846 : hints000846.length = 16384 := by decide +kernel
theorem checked000846 : checkPrimeHints 19496961 2 hints000846 = true := by decide +kernel
theorem counted000846 : hints000846.count 0 <= 1947 := by decide +kernel

noncomputable def block000846 : CheckedPrimeCountBlock 19496961 2 16384 1947 :=
  ⟨hints000846, length000846, checked000846, counted000846⟩

noncomputable def localPrefix000846 : CheckedPrimeCountBlock 19038209 2 245760 29283 :=
  localPrefix000845.append block000846

noncomputable def hints000847 : List Nat :=
  primeHintChunk% "../../certificates/prime-count33554432-v1/counts-000847.json" 33554432 9764863 19529729 2

theorem length000847 : hints000847.length = 16384 := by decide +kernel
theorem checked000847 : checkPrimeHints 19529729 2 hints000847 = true := by decide +kernel
theorem counted000847 : hints000847.count 0 <= 1913 := by decide +kernel

noncomputable def block000847 : CheckedPrimeCountBlock 19529729 2 16384 1913 :=
  ⟨hints000847, length000847, checked000847, counted000847⟩

noncomputable def localPrefix000847 : CheckedPrimeCountBlock 19038209 2 262144 31196 :=
  localPrefix000846.append block000847

end JSP848.FullPrimeCount
