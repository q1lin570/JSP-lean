import JSP848.PrimeCountInput

set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0

namespace JSP848.FullPrimeCount

open PrimeCountInput

noncomputable def hints000880 : List Nat :=
  primeHintChunk% "../../certificates/prime-count33554432-v1/counts-000880.json" 33554432 10305535 20611073 2

theorem length000880 : hints000880.length = 16384 := by decide +kernel
theorem checked000880 : checkPrimeHints 20611073 2 hints000880 = true := by decide +kernel
theorem counted000880 : hints000880.count 0 <= 1950 := by decide +kernel

noncomputable def block000880 : CheckedPrimeCountBlock 20611073 2 16384 1950 :=
  ⟨hints000880, length000880, checked000880, counted000880⟩

noncomputable def localPrefix000880 : CheckedPrimeCountBlock 20611073 2 16384 1950 :=
  block000880

noncomputable def hints000881 : List Nat :=
  primeHintChunk% "../../certificates/prime-count33554432-v1/counts-000881.json" 33554432 10321919 20643841 2

theorem length000881 : hints000881.length = 16384 := by decide +kernel
theorem checked000881 : checkPrimeHints 20643841 2 hints000881 = true := by decide +kernel
theorem counted000881 : hints000881.count 0 <= 1952 := by decide +kernel

noncomputable def block000881 : CheckedPrimeCountBlock 20643841 2 16384 1952 :=
  ⟨hints000881, length000881, checked000881, counted000881⟩

noncomputable def localPrefix000881 : CheckedPrimeCountBlock 20611073 2 32768 3902 :=
  localPrefix000880.append block000881

noncomputable def hints000882 : List Nat :=
  primeHintChunk% "../../certificates/prime-count33554432-v1/counts-000882.json" 33554432 10338303 20676609 2

theorem length000882 : hints000882.length = 16384 := by decide +kernel
theorem checked000882 : checkPrimeHints 20676609 2 hints000882 = true := by decide +kernel
theorem counted000882 : hints000882.count 0 <= 1993 := by decide +kernel

noncomputable def block000882 : CheckedPrimeCountBlock 20676609 2 16384 1993 :=
  ⟨hints000882, length000882, checked000882, counted000882⟩

noncomputable def localPrefix000882 : CheckedPrimeCountBlock 20611073 2 49152 5895 :=
  localPrefix000881.append block000882

noncomputable def hints000883 : List Nat :=
  primeHintChunk% "../../certificates/prime-count33554432-v1/counts-000883.json" 33554432 10354687 20709377 2

theorem length000883 : hints000883.length = 16384 := by decide +kernel
theorem checked000883 : checkPrimeHints 20709377 2 hints000883 = true := by decide +kernel
theorem counted000883 : hints000883.count 0 <= 1951 := by decide +kernel

noncomputable def block000883 : CheckedPrimeCountBlock 20709377 2 16384 1951 :=
  ⟨hints000883, length000883, checked000883, counted000883⟩

noncomputable def localPrefix000883 : CheckedPrimeCountBlock 20611073 2 65536 7846 :=
  localPrefix000882.append block000883

noncomputable def hints000884 : List Nat :=
  primeHintChunk% "../../certificates/prime-count33554432-v1/counts-000884.json" 33554432 10371071 20742145 2

theorem length000884 : hints000884.length = 16384 := by decide +kernel
theorem checked000884 : checkPrimeHints 20742145 2 hints000884 = true := by decide +kernel
theorem counted000884 : hints000884.count 0 <= 1934 := by decide +kernel

noncomputable def block000884 : CheckedPrimeCountBlock 20742145 2 16384 1934 :=
  ⟨hints000884, length000884, checked000884, counted000884⟩

noncomputable def localPrefix000884 : CheckedPrimeCountBlock 20611073 2 81920 9780 :=
  localPrefix000883.append block000884

noncomputable def hints000885 : List Nat :=
  primeHintChunk% "../../certificates/prime-count33554432-v1/counts-000885.json" 33554432 10387455 20774913 2

theorem length000885 : hints000885.length = 16384 := by decide +kernel
theorem checked000885 : checkPrimeHints 20774913 2 hints000885 = true := by decide +kernel
theorem counted000885 : hints000885.count 0 <= 1946 := by decide +kernel

noncomputable def block000885 : CheckedPrimeCountBlock 20774913 2 16384 1946 :=
  ⟨hints000885, length000885, checked000885, counted000885⟩

noncomputable def localPrefix000885 : CheckedPrimeCountBlock 20611073 2 98304 11726 :=
  localPrefix000884.append block000885

noncomputable def hints000886 : List Nat :=
  primeHintChunk% "../../certificates/prime-count33554432-v1/counts-000886.json" 33554432 10403839 20807681 2

theorem length000886 : hints000886.length = 16384 := by decide +kernel
theorem checked000886 : checkPrimeHints 20807681 2 hints000886 = true := by decide +kernel
theorem counted000886 : hints000886.count 0 <= 1905 := by decide +kernel

noncomputable def block000886 : CheckedPrimeCountBlock 20807681 2 16384 1905 :=
  ⟨hints000886, length000886, checked000886, counted000886⟩

noncomputable def localPrefix000886 : CheckedPrimeCountBlock 20611073 2 114688 13631 :=
  localPrefix000885.append block000886

noncomputable def hints000887 : List Nat :=
  primeHintChunk% "../../certificates/prime-count33554432-v1/counts-000887.json" 33554432 10420223 20840449 2

theorem length000887 : hints000887.length = 16384 := by decide +kernel
theorem checked000887 : checkPrimeHints 20840449 2 hints000887 = true := by decide +kernel
theorem counted000887 : hints000887.count 0 <= 1963 := by decide +kernel

noncomputable def block000887 : CheckedPrimeCountBlock 20840449 2 16384 1963 :=
  ⟨hints000887, length000887, checked000887, counted000887⟩

noncomputable def localPrefix000887 : CheckedPrimeCountBlock 20611073 2 131072 15594 :=
  localPrefix000886.append block000887

noncomputable def hints000888 : List Nat :=
  primeHintChunk% "../../certificates/prime-count33554432-v1/counts-000888.json" 33554432 10436607 20873217 2

theorem length000888 : hints000888.length = 16384 := by decide +kernel
theorem checked000888 : checkPrimeHints 20873217 2 hints000888 = true := by decide +kernel
theorem counted000888 : hints000888.count 0 <= 1945 := by decide +kernel

noncomputable def block000888 : CheckedPrimeCountBlock 20873217 2 16384 1945 :=
  ⟨hints000888, length000888, checked000888, counted000888⟩

noncomputable def localPrefix000888 : CheckedPrimeCountBlock 20611073 2 147456 17539 :=
  localPrefix000887.append block000888

noncomputable def hints000889 : List Nat :=
  primeHintChunk% "../../certificates/prime-count33554432-v1/counts-000889.json" 33554432 10452991 20905985 2

theorem length000889 : hints000889.length = 16384 := by decide +kernel
theorem checked000889 : checkPrimeHints 20905985 2 hints000889 = true := by decide +kernel
theorem counted000889 : hints000889.count 0 <= 1934 := by decide +kernel

noncomputable def block000889 : CheckedPrimeCountBlock 20905985 2 16384 1934 :=
  ⟨hints000889, length000889, checked000889, counted000889⟩

noncomputable def localPrefix000889 : CheckedPrimeCountBlock 20611073 2 163840 19473 :=
  localPrefix000888.append block000889

noncomputable def hints000890 : List Nat :=
  primeHintChunk% "../../certificates/prime-count33554432-v1/counts-000890.json" 33554432 10469375 20938753 2

theorem length000890 : hints000890.length = 16384 := by decide +kernel
theorem checked000890 : checkPrimeHints 20938753 2 hints000890 = true := by decide +kernel
theorem counted000890 : hints000890.count 0 <= 1906 := by decide +kernel

noncomputable def block000890 : CheckedPrimeCountBlock 20938753 2 16384 1906 :=
  ⟨hints000890, length000890, checked000890, counted000890⟩

noncomputable def localPrefix000890 : CheckedPrimeCountBlock 20611073 2 180224 21379 :=
  localPrefix000889.append block000890

noncomputable def hints000891 : List Nat :=
  primeHintChunk% "../../certificates/prime-count33554432-v1/counts-000891.json" 33554432 10485759 20971521 2

theorem length000891 : hints000891.length = 16384 := by decide +kernel
theorem checked000891 : checkPrimeHints 20971521 2 hints000891 = true := by decide +kernel
theorem counted000891 : hints000891.count 0 <= 1974 := by decide +kernel

noncomputable def block000891 : CheckedPrimeCountBlock 20971521 2 16384 1974 :=
  ⟨hints000891, length000891, checked000891, counted000891⟩

noncomputable def localPrefix000891 : CheckedPrimeCountBlock 20611073 2 196608 23353 :=
  localPrefix000890.append block000891

noncomputable def hints000892 : List Nat :=
  primeHintChunk% "../../certificates/prime-count33554432-v1/counts-000892.json" 33554432 10502143 21004289 2

theorem length000892 : hints000892.length = 16384 := by decide +kernel
theorem checked000892 : checkPrimeHints 21004289 2 hints000892 = true := by decide +kernel
theorem counted000892 : hints000892.count 0 <= 1970 := by decide +kernel

noncomputable def block000892 : CheckedPrimeCountBlock 21004289 2 16384 1970 :=
  ⟨hints000892, length000892, checked000892, counted000892⟩

noncomputable def localPrefix000892 : CheckedPrimeCountBlock 20611073 2 212992 25323 :=
  localPrefix000891.append block000892

noncomputable def hints000893 : List Nat :=
  primeHintChunk% "../../certificates/prime-count33554432-v1/counts-000893.json" 33554432 10518527 21037057 2

theorem length000893 : hints000893.length = 16384 := by decide +kernel
theorem checked000893 : checkPrimeHints 21037057 2 hints000893 = true := by decide +kernel
theorem counted000893 : hints000893.count 0 <= 1946 := by decide +kernel

noncomputable def block000893 : CheckedPrimeCountBlock 21037057 2 16384 1946 :=
  ⟨hints000893, length000893, checked000893, counted000893⟩

noncomputable def localPrefix000893 : CheckedPrimeCountBlock 20611073 2 229376 27269 :=
  localPrefix000892.append block000893

noncomputable def hints000894 : List Nat :=
  primeHintChunk% "../../certificates/prime-count33554432-v1/counts-000894.json" 33554432 10534911 21069825 2

theorem length000894 : hints000894.length = 16384 := by decide +kernel
theorem checked000894 : checkPrimeHints 21069825 2 hints000894 = true := by decide +kernel
theorem counted000894 : hints000894.count 0 <= 1921 := by decide +kernel

noncomputable def block000894 : CheckedPrimeCountBlock 21069825 2 16384 1921 :=
  ⟨hints000894, length000894, checked000894, counted000894⟩

noncomputable def localPrefix000894 : CheckedPrimeCountBlock 20611073 2 245760 29190 :=
  localPrefix000893.append block000894

noncomputable def hints000895 : List Nat :=
  primeHintChunk% "../../certificates/prime-count33554432-v1/counts-000895.json" 33554432 10551295 21102593 2

theorem length000895 : hints000895.length = 16384 := by decide +kernel
theorem checked000895 : checkPrimeHints 21102593 2 hints000895 = true := by decide +kernel
theorem counted000895 : hints000895.count 0 <= 1942 := by decide +kernel

noncomputable def block000895 : CheckedPrimeCountBlock 21102593 2 16384 1942 :=
  ⟨hints000895, length000895, checked000895, counted000895⟩

noncomputable def localPrefix000895 : CheckedPrimeCountBlock 20611073 2 262144 31132 :=
  localPrefix000894.append block000895

end JSP848.FullPrimeCount
