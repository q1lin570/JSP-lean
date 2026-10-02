import JSP848.PrimeCountInput

set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0

namespace JSP848.FullPrimeCount

open PrimeCountInput

noncomputable def hints000848 : List Nat :=
  primeHintChunk% "../../certificates/prime-count33554432-v1/counts-000848.json" 33554432 9781247 19562497 2

theorem length000848 : hints000848.length = 16384 := by decide +kernel
theorem checked000848 : checkPrimeHints 19562497 2 hints000848 = true := by decide +kernel
theorem counted000848 : hints000848.count 0 <= 1919 := by decide +kernel

noncomputable def block000848 : CheckedPrimeCountBlock 19562497 2 16384 1919 :=
  ⟨hints000848, length000848, checked000848, counted000848⟩

noncomputable def localPrefix000848 : CheckedPrimeCountBlock 19562497 2 16384 1919 :=
  block000848

noncomputable def hints000849 : List Nat :=
  primeHintChunk% "../../certificates/prime-count33554432-v1/counts-000849.json" 33554432 9797631 19595265 2

theorem length000849 : hints000849.length = 16384 := by decide +kernel
theorem checked000849 : checkPrimeHints 19595265 2 hints000849 = true := by decide +kernel
theorem counted000849 : hints000849.count 0 <= 1997 := by decide +kernel

noncomputable def block000849 : CheckedPrimeCountBlock 19595265 2 16384 1997 :=
  ⟨hints000849, length000849, checked000849, counted000849⟩

noncomputable def localPrefix000849 : CheckedPrimeCountBlock 19562497 2 32768 3916 :=
  localPrefix000848.append block000849

noncomputable def hints000850 : List Nat :=
  primeHintChunk% "../../certificates/prime-count33554432-v1/counts-000850.json" 33554432 9814015 19628033 2

theorem length000850 : hints000850.length = 16384 := by decide +kernel
theorem checked000850 : checkPrimeHints 19628033 2 hints000850 = true := by decide +kernel
theorem counted000850 : hints000850.count 0 <= 1919 := by decide +kernel

noncomputable def block000850 : CheckedPrimeCountBlock 19628033 2 16384 1919 :=
  ⟨hints000850, length000850, checked000850, counted000850⟩

noncomputable def localPrefix000850 : CheckedPrimeCountBlock 19562497 2 49152 5835 :=
  localPrefix000849.append block000850

noncomputable def hints000851 : List Nat :=
  primeHintChunk% "../../certificates/prime-count33554432-v1/counts-000851.json" 33554432 9830399 19660801 2

theorem length000851 : hints000851.length = 16384 := by decide +kernel
theorem checked000851 : checkPrimeHints 19660801 2 hints000851 = true := by decide +kernel
theorem counted000851 : hints000851.count 0 <= 1949 := by decide +kernel

noncomputable def block000851 : CheckedPrimeCountBlock 19660801 2 16384 1949 :=
  ⟨hints000851, length000851, checked000851, counted000851⟩

noncomputable def localPrefix000851 : CheckedPrimeCountBlock 19562497 2 65536 7784 :=
  localPrefix000850.append block000851

noncomputable def hints000852 : List Nat :=
  primeHintChunk% "../../certificates/prime-count33554432-v1/counts-000852.json" 33554432 9846783 19693569 2

theorem length000852 : hints000852.length = 16384 := by decide +kernel
theorem checked000852 : checkPrimeHints 19693569 2 hints000852 = true := by decide +kernel
theorem counted000852 : hints000852.count 0 <= 1967 := by decide +kernel

noncomputable def block000852 : CheckedPrimeCountBlock 19693569 2 16384 1967 :=
  ⟨hints000852, length000852, checked000852, counted000852⟩

noncomputable def localPrefix000852 : CheckedPrimeCountBlock 19562497 2 81920 9751 :=
  localPrefix000851.append block000852

noncomputable def hints000853 : List Nat :=
  primeHintChunk% "../../certificates/prime-count33554432-v1/counts-000853.json" 33554432 9863167 19726337 2

theorem length000853 : hints000853.length = 16384 := by decide +kernel
theorem checked000853 : checkPrimeHints 19726337 2 hints000853 = true := by decide +kernel
theorem counted000853 : hints000853.count 0 <= 1960 := by decide +kernel

noncomputable def block000853 : CheckedPrimeCountBlock 19726337 2 16384 1960 :=
  ⟨hints000853, length000853, checked000853, counted000853⟩

noncomputable def localPrefix000853 : CheckedPrimeCountBlock 19562497 2 98304 11711 :=
  localPrefix000852.append block000853

noncomputable def hints000854 : List Nat :=
  primeHintChunk% "../../certificates/prime-count33554432-v1/counts-000854.json" 33554432 9879551 19759105 2

theorem length000854 : hints000854.length = 16384 := by decide +kernel
theorem checked000854 : checkPrimeHints 19759105 2 hints000854 = true := by decide +kernel
theorem counted000854 : hints000854.count 0 <= 1966 := by decide +kernel

noncomputable def block000854 : CheckedPrimeCountBlock 19759105 2 16384 1966 :=
  ⟨hints000854, length000854, checked000854, counted000854⟩

noncomputable def localPrefix000854 : CheckedPrimeCountBlock 19562497 2 114688 13677 :=
  localPrefix000853.append block000854

noncomputable def hints000855 : List Nat :=
  primeHintChunk% "../../certificates/prime-count33554432-v1/counts-000855.json" 33554432 9895935 19791873 2

theorem length000855 : hints000855.length = 16384 := by decide +kernel
theorem checked000855 : checkPrimeHints 19791873 2 hints000855 = true := by decide +kernel
theorem counted000855 : hints000855.count 0 <= 1973 := by decide +kernel

noncomputable def block000855 : CheckedPrimeCountBlock 19791873 2 16384 1973 :=
  ⟨hints000855, length000855, checked000855, counted000855⟩

noncomputable def localPrefix000855 : CheckedPrimeCountBlock 19562497 2 131072 15650 :=
  localPrefix000854.append block000855

noncomputable def hints000856 : List Nat :=
  primeHintChunk% "../../certificates/prime-count33554432-v1/counts-000856.json" 33554432 9912319 19824641 2

theorem length000856 : hints000856.length = 16384 := by decide +kernel
theorem checked000856 : checkPrimeHints 19824641 2 hints000856 = true := by decide +kernel
theorem counted000856 : hints000856.count 0 <= 1953 := by decide +kernel

noncomputable def block000856 : CheckedPrimeCountBlock 19824641 2 16384 1953 :=
  ⟨hints000856, length000856, checked000856, counted000856⟩

noncomputable def localPrefix000856 : CheckedPrimeCountBlock 19562497 2 147456 17603 :=
  localPrefix000855.append block000856

noncomputable def hints000857 : List Nat :=
  primeHintChunk% "../../certificates/prime-count33554432-v1/counts-000857.json" 33554432 9928703 19857409 2

theorem length000857 : hints000857.length = 16384 := by decide +kernel
theorem checked000857 : checkPrimeHints 19857409 2 hints000857 = true := by decide +kernel
theorem counted000857 : hints000857.count 0 <= 1952 := by decide +kernel

noncomputable def block000857 : CheckedPrimeCountBlock 19857409 2 16384 1952 :=
  ⟨hints000857, length000857, checked000857, counted000857⟩

noncomputable def localPrefix000857 : CheckedPrimeCountBlock 19562497 2 163840 19555 :=
  localPrefix000856.append block000857

noncomputable def hints000858 : List Nat :=
  primeHintChunk% "../../certificates/prime-count33554432-v1/counts-000858.json" 33554432 9945087 19890177 2

theorem length000858 : hints000858.length = 16384 := by decide +kernel
theorem checked000858 : checkPrimeHints 19890177 2 hints000858 = true := by decide +kernel
theorem counted000858 : hints000858.count 0 <= 1948 := by decide +kernel

noncomputable def block000858 : CheckedPrimeCountBlock 19890177 2 16384 1948 :=
  ⟨hints000858, length000858, checked000858, counted000858⟩

noncomputable def localPrefix000858 : CheckedPrimeCountBlock 19562497 2 180224 21503 :=
  localPrefix000857.append block000858

noncomputable def hints000859 : List Nat :=
  primeHintChunk% "../../certificates/prime-count33554432-v1/counts-000859.json" 33554432 9961471 19922945 2

theorem length000859 : hints000859.length = 16384 := by decide +kernel
theorem checked000859 : checkPrimeHints 19922945 2 hints000859 = true := by decide +kernel
theorem counted000859 : hints000859.count 0 <= 1954 := by decide +kernel

noncomputable def block000859 : CheckedPrimeCountBlock 19922945 2 16384 1954 :=
  ⟨hints000859, length000859, checked000859, counted000859⟩

noncomputable def localPrefix000859 : CheckedPrimeCountBlock 19562497 2 196608 23457 :=
  localPrefix000858.append block000859

noncomputable def hints000860 : List Nat :=
  primeHintChunk% "../../certificates/prime-count33554432-v1/counts-000860.json" 33554432 9977855 19955713 2

theorem length000860 : hints000860.length = 16384 := by decide +kernel
theorem checked000860 : checkPrimeHints 19955713 2 hints000860 = true := by decide +kernel
theorem counted000860 : hints000860.count 0 <= 1947 := by decide +kernel

noncomputable def block000860 : CheckedPrimeCountBlock 19955713 2 16384 1947 :=
  ⟨hints000860, length000860, checked000860, counted000860⟩

noncomputable def localPrefix000860 : CheckedPrimeCountBlock 19562497 2 212992 25404 :=
  localPrefix000859.append block000860

noncomputable def hints000861 : List Nat :=
  primeHintChunk% "../../certificates/prime-count33554432-v1/counts-000861.json" 33554432 9994239 19988481 2

theorem length000861 : hints000861.length = 16384 := by decide +kernel
theorem checked000861 : checkPrimeHints 19988481 2 hints000861 = true := by decide +kernel
theorem counted000861 : hints000861.count 0 <= 1961 := by decide +kernel

noncomputable def block000861 : CheckedPrimeCountBlock 19988481 2 16384 1961 :=
  ⟨hints000861, length000861, checked000861, counted000861⟩

noncomputable def localPrefix000861 : CheckedPrimeCountBlock 19562497 2 229376 27365 :=
  localPrefix000860.append block000861

noncomputable def hints000862 : List Nat :=
  primeHintChunk% "../../certificates/prime-count33554432-v1/counts-000862.json" 33554432 10010623 20021249 2

theorem length000862 : hints000862.length = 16384 := by decide +kernel
theorem checked000862 : checkPrimeHints 20021249 2 hints000862 = true := by decide +kernel
theorem counted000862 : hints000862.count 0 <= 1964 := by decide +kernel

noncomputable def block000862 : CheckedPrimeCountBlock 20021249 2 16384 1964 :=
  ⟨hints000862, length000862, checked000862, counted000862⟩

noncomputable def localPrefix000862 : CheckedPrimeCountBlock 19562497 2 245760 29329 :=
  localPrefix000861.append block000862

noncomputable def hints000863 : List Nat :=
  primeHintChunk% "../../certificates/prime-count33554432-v1/counts-000863.json" 33554432 10027007 20054017 2

theorem length000863 : hints000863.length = 16384 := by decide +kernel
theorem checked000863 : checkPrimeHints 20054017 2 hints000863 = true := by decide +kernel
theorem counted000863 : hints000863.count 0 <= 1958 := by decide +kernel

noncomputable def block000863 : CheckedPrimeCountBlock 20054017 2 16384 1958 :=
  ⟨hints000863, length000863, checked000863, counted000863⟩

noncomputable def localPrefix000863 : CheckedPrimeCountBlock 19562497 2 262144 31287 :=
  localPrefix000862.append block000863

end JSP848.FullPrimeCount
