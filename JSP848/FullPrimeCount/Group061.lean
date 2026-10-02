import JSP848.PrimeCountInput

set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0

namespace JSP848.FullPrimeCount

open PrimeCountInput

noncomputable def hints000976 : List Nat :=
  primeHintChunk% "../../certificates/prime-count33554432-v1/counts-000976.json" 33554432 11878399 23756801 2

theorem length000976 : hints000976.length = 16384 := by decide +kernel
theorem checked000976 : checkPrimeHints 23756801 2 hints000976 = true := by decide +kernel
theorem counted000976 : hints000976.count 0 <= 1937 := by decide +kernel

noncomputable def block000976 : CheckedPrimeCountBlock 23756801 2 16384 1937 :=
  ⟨hints000976, length000976, checked000976, counted000976⟩

noncomputable def localPrefix000976 : CheckedPrimeCountBlock 23756801 2 16384 1937 :=
  block000976

noncomputable def hints000977 : List Nat :=
  primeHintChunk% "../../certificates/prime-count33554432-v1/counts-000977.json" 33554432 11894783 23789569 2

theorem length000977 : hints000977.length = 16384 := by decide +kernel
theorem checked000977 : checkPrimeHints 23789569 2 hints000977 = true := by decide +kernel
theorem counted000977 : hints000977.count 0 <= 1931 := by decide +kernel

noncomputable def block000977 : CheckedPrimeCountBlock 23789569 2 16384 1931 :=
  ⟨hints000977, length000977, checked000977, counted000977⟩

noncomputable def localPrefix000977 : CheckedPrimeCountBlock 23756801 2 32768 3868 :=
  localPrefix000976.append block000977

noncomputable def hints000978 : List Nat :=
  primeHintChunk% "../../certificates/prime-count33554432-v1/counts-000978.json" 33554432 11911167 23822337 2

theorem length000978 : hints000978.length = 16384 := by decide +kernel
theorem checked000978 : checkPrimeHints 23822337 2 hints000978 = true := by decide +kernel
theorem counted000978 : hints000978.count 0 <= 1877 := by decide +kernel

noncomputable def block000978 : CheckedPrimeCountBlock 23822337 2 16384 1877 :=
  ⟨hints000978, length000978, checked000978, counted000978⟩

noncomputable def localPrefix000978 : CheckedPrimeCountBlock 23756801 2 49152 5745 :=
  localPrefix000977.append block000978

noncomputable def hints000979 : List Nat :=
  primeHintChunk% "../../certificates/prime-count33554432-v1/counts-000979.json" 33554432 11927551 23855105 2

theorem length000979 : hints000979.length = 16384 := by decide +kernel
theorem checked000979 : checkPrimeHints 23855105 2 hints000979 = true := by decide +kernel
theorem counted000979 : hints000979.count 0 <= 1943 := by decide +kernel

noncomputable def block000979 : CheckedPrimeCountBlock 23855105 2 16384 1943 :=
  ⟨hints000979, length000979, checked000979, counted000979⟩

noncomputable def localPrefix000979 : CheckedPrimeCountBlock 23756801 2 65536 7688 :=
  localPrefix000978.append block000979

noncomputable def hints000980 : List Nat :=
  primeHintChunk% "../../certificates/prime-count33554432-v1/counts-000980.json" 33554432 11943935 23887873 2

theorem length000980 : hints000980.length = 16384 := by decide +kernel
theorem checked000980 : checkPrimeHints 23887873 2 hints000980 = true := by decide +kernel
theorem counted000980 : hints000980.count 0 <= 1970 := by decide +kernel

noncomputable def block000980 : CheckedPrimeCountBlock 23887873 2 16384 1970 :=
  ⟨hints000980, length000980, checked000980, counted000980⟩

noncomputable def localPrefix000980 : CheckedPrimeCountBlock 23756801 2 81920 9658 :=
  localPrefix000979.append block000980

noncomputable def hints000981 : List Nat :=
  primeHintChunk% "../../certificates/prime-count33554432-v1/counts-000981.json" 33554432 11960319 23920641 2

theorem length000981 : hints000981.length = 16384 := by decide +kernel
theorem checked000981 : checkPrimeHints 23920641 2 hints000981 = true := by decide +kernel
theorem counted000981 : hints000981.count 0 <= 1908 := by decide +kernel

noncomputable def block000981 : CheckedPrimeCountBlock 23920641 2 16384 1908 :=
  ⟨hints000981, length000981, checked000981, counted000981⟩

noncomputable def localPrefix000981 : CheckedPrimeCountBlock 23756801 2 98304 11566 :=
  localPrefix000980.append block000981

noncomputable def hints000982 : List Nat :=
  primeHintChunk% "../../certificates/prime-count33554432-v1/counts-000982.json" 33554432 11976703 23953409 2

theorem length000982 : hints000982.length = 16384 := by decide +kernel
theorem checked000982 : checkPrimeHints 23953409 2 hints000982 = true := by decide +kernel
theorem counted000982 : hints000982.count 0 <= 1924 := by decide +kernel

noncomputable def block000982 : CheckedPrimeCountBlock 23953409 2 16384 1924 :=
  ⟨hints000982, length000982, checked000982, counted000982⟩

noncomputable def localPrefix000982 : CheckedPrimeCountBlock 23756801 2 114688 13490 :=
  localPrefix000981.append block000982

noncomputable def hints000983 : List Nat :=
  primeHintChunk% "../../certificates/prime-count33554432-v1/counts-000983.json" 33554432 11993087 23986177 2

theorem length000983 : hints000983.length = 16384 := by decide +kernel
theorem checked000983 : checkPrimeHints 23986177 2 hints000983 = true := by decide +kernel
theorem counted000983 : hints000983.count 0 <= 1947 := by decide +kernel

noncomputable def block000983 : CheckedPrimeCountBlock 23986177 2 16384 1947 :=
  ⟨hints000983, length000983, checked000983, counted000983⟩

noncomputable def localPrefix000983 : CheckedPrimeCountBlock 23756801 2 131072 15437 :=
  localPrefix000982.append block000983

noncomputable def hints000984 : List Nat :=
  primeHintChunk% "../../certificates/prime-count33554432-v1/counts-000984.json" 33554432 12009471 24018945 2

theorem length000984 : hints000984.length = 16384 := by decide +kernel
theorem checked000984 : checkPrimeHints 24018945 2 hints000984 = true := by decide +kernel
theorem counted000984 : hints000984.count 0 <= 1934 := by decide +kernel

noncomputable def block000984 : CheckedPrimeCountBlock 24018945 2 16384 1934 :=
  ⟨hints000984, length000984, checked000984, counted000984⟩

noncomputable def localPrefix000984 : CheckedPrimeCountBlock 23756801 2 147456 17371 :=
  localPrefix000983.append block000984

noncomputable def hints000985 : List Nat :=
  primeHintChunk% "../../certificates/prime-count33554432-v1/counts-000985.json" 33554432 12025855 24051713 2

theorem length000985 : hints000985.length = 16384 := by decide +kernel
theorem checked000985 : checkPrimeHints 24051713 2 hints000985 = true := by decide +kernel
theorem counted000985 : hints000985.count 0 <= 1935 := by decide +kernel

noncomputable def block000985 : CheckedPrimeCountBlock 24051713 2 16384 1935 :=
  ⟨hints000985, length000985, checked000985, counted000985⟩

noncomputable def localPrefix000985 : CheckedPrimeCountBlock 23756801 2 163840 19306 :=
  localPrefix000984.append block000985

noncomputable def hints000986 : List Nat :=
  primeHintChunk% "../../certificates/prime-count33554432-v1/counts-000986.json" 33554432 12042239 24084481 2

theorem length000986 : hints000986.length = 16384 := by decide +kernel
theorem checked000986 : checkPrimeHints 24084481 2 hints000986 = true := by decide +kernel
theorem counted000986 : hints000986.count 0 <= 1910 := by decide +kernel

noncomputable def block000986 : CheckedPrimeCountBlock 24084481 2 16384 1910 :=
  ⟨hints000986, length000986, checked000986, counted000986⟩

noncomputable def localPrefix000986 : CheckedPrimeCountBlock 23756801 2 180224 21216 :=
  localPrefix000985.append block000986

noncomputable def hints000987 : List Nat :=
  primeHintChunk% "../../certificates/prime-count33554432-v1/counts-000987.json" 33554432 12058623 24117249 2

theorem length000987 : hints000987.length = 16384 := by decide +kernel
theorem checked000987 : checkPrimeHints 24117249 2 hints000987 = true := by decide +kernel
theorem counted000987 : hints000987.count 0 <= 1914 := by decide +kernel

noncomputable def block000987 : CheckedPrimeCountBlock 24117249 2 16384 1914 :=
  ⟨hints000987, length000987, checked000987, counted000987⟩

noncomputable def localPrefix000987 : CheckedPrimeCountBlock 23756801 2 196608 23130 :=
  localPrefix000986.append block000987

noncomputable def hints000988 : List Nat :=
  primeHintChunk% "../../certificates/prime-count33554432-v1/counts-000988.json" 33554432 12075007 24150017 2

theorem length000988 : hints000988.length = 16384 := by decide +kernel
theorem checked000988 : checkPrimeHints 24150017 2 hints000988 = true := by decide +kernel
theorem counted000988 : hints000988.count 0 <= 1949 := by decide +kernel

noncomputable def block000988 : CheckedPrimeCountBlock 24150017 2 16384 1949 :=
  ⟨hints000988, length000988, checked000988, counted000988⟩

noncomputable def localPrefix000988 : CheckedPrimeCountBlock 23756801 2 212992 25079 :=
  localPrefix000987.append block000988

noncomputable def hints000989 : List Nat :=
  primeHintChunk% "../../certificates/prime-count33554432-v1/counts-000989.json" 33554432 12091391 24182785 2

theorem length000989 : hints000989.length = 16384 := by decide +kernel
theorem checked000989 : checkPrimeHints 24182785 2 hints000989 = true := by decide +kernel
theorem counted000989 : hints000989.count 0 <= 1920 := by decide +kernel

noncomputable def block000989 : CheckedPrimeCountBlock 24182785 2 16384 1920 :=
  ⟨hints000989, length000989, checked000989, counted000989⟩

noncomputable def localPrefix000989 : CheckedPrimeCountBlock 23756801 2 229376 26999 :=
  localPrefix000988.append block000989

noncomputable def hints000990 : List Nat :=
  primeHintChunk% "../../certificates/prime-count33554432-v1/counts-000990.json" 33554432 12107775 24215553 2

theorem length000990 : hints000990.length = 16384 := by decide +kernel
theorem checked000990 : checkPrimeHints 24215553 2 hints000990 = true := by decide +kernel
theorem counted000990 : hints000990.count 0 <= 1946 := by decide +kernel

noncomputable def block000990 : CheckedPrimeCountBlock 24215553 2 16384 1946 :=
  ⟨hints000990, length000990, checked000990, counted000990⟩

noncomputable def localPrefix000990 : CheckedPrimeCountBlock 23756801 2 245760 28945 :=
  localPrefix000989.append block000990

noncomputable def hints000991 : List Nat :=
  primeHintChunk% "../../certificates/prime-count33554432-v1/counts-000991.json" 33554432 12124159 24248321 2

theorem length000991 : hints000991.length = 16384 := by decide +kernel
theorem checked000991 : checkPrimeHints 24248321 2 hints000991 = true := by decide +kernel
theorem counted000991 : hints000991.count 0 <= 1954 := by decide +kernel

noncomputable def block000991 : CheckedPrimeCountBlock 24248321 2 16384 1954 :=
  ⟨hints000991, length000991, checked000991, counted000991⟩

noncomputable def localPrefix000991 : CheckedPrimeCountBlock 23756801 2 262144 30899 :=
  localPrefix000990.append block000991

end JSP848.FullPrimeCount
