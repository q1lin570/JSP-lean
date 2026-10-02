import JSP848.PrimeCountInput

set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0

namespace JSP848.FullPrimeCount

open PrimeCountInput

noncomputable def hints000944 : List Nat :=
  primeHintChunk% "../../certificates/prime-count33554432-v1/counts-000944.json" 33554432 11354111 22708225 2

theorem length000944 : hints000944.length = 16384 := by decide +kernel
theorem checked000944 : checkPrimeHints 22708225 2 hints000944 = true := by decide +kernel
theorem counted000944 : hints000944.count 0 <= 1950 := by decide +kernel

noncomputable def block000944 : CheckedPrimeCountBlock 22708225 2 16384 1950 :=
  ⟨hints000944, length000944, checked000944, counted000944⟩

noncomputable def localPrefix000944 : CheckedPrimeCountBlock 22708225 2 16384 1950 :=
  block000944

noncomputable def hints000945 : List Nat :=
  primeHintChunk% "../../certificates/prime-count33554432-v1/counts-000945.json" 33554432 11370495 22740993 2

theorem length000945 : hints000945.length = 16384 := by decide +kernel
theorem checked000945 : checkPrimeHints 22740993 2 hints000945 = true := by decide +kernel
theorem counted000945 : hints000945.count 0 <= 1913 := by decide +kernel

noncomputable def block000945 : CheckedPrimeCountBlock 22740993 2 16384 1913 :=
  ⟨hints000945, length000945, checked000945, counted000945⟩

noncomputable def localPrefix000945 : CheckedPrimeCountBlock 22708225 2 32768 3863 :=
  localPrefix000944.append block000945

noncomputable def hints000946 : List Nat :=
  primeHintChunk% "../../certificates/prime-count33554432-v1/counts-000946.json" 33554432 11386879 22773761 2

theorem length000946 : hints000946.length = 16384 := by decide +kernel
theorem checked000946 : checkPrimeHints 22773761 2 hints000946 = true := by decide +kernel
theorem counted000946 : hints000946.count 0 <= 1912 := by decide +kernel

noncomputable def block000946 : CheckedPrimeCountBlock 22773761 2 16384 1912 :=
  ⟨hints000946, length000946, checked000946, counted000946⟩

noncomputable def localPrefix000946 : CheckedPrimeCountBlock 22708225 2 49152 5775 :=
  localPrefix000945.append block000946

noncomputable def hints000947 : List Nat :=
  primeHintChunk% "../../certificates/prime-count33554432-v1/counts-000947.json" 33554432 11403263 22806529 2

theorem length000947 : hints000947.length = 16384 := by decide +kernel
theorem checked000947 : checkPrimeHints 22806529 2 hints000947 = true := by decide +kernel
theorem counted000947 : hints000947.count 0 <= 1913 := by decide +kernel

noncomputable def block000947 : CheckedPrimeCountBlock 22806529 2 16384 1913 :=
  ⟨hints000947, length000947, checked000947, counted000947⟩

noncomputable def localPrefix000947 : CheckedPrimeCountBlock 22708225 2 65536 7688 :=
  localPrefix000946.append block000947

noncomputable def hints000948 : List Nat :=
  primeHintChunk% "../../certificates/prime-count33554432-v1/counts-000948.json" 33554432 11419647 22839297 2

theorem length000948 : hints000948.length = 16384 := by decide +kernel
theorem checked000948 : checkPrimeHints 22839297 2 hints000948 = true := by decide +kernel
theorem counted000948 : hints000948.count 0 <= 1977 := by decide +kernel

noncomputable def block000948 : CheckedPrimeCountBlock 22839297 2 16384 1977 :=
  ⟨hints000948, length000948, checked000948, counted000948⟩

noncomputable def localPrefix000948 : CheckedPrimeCountBlock 22708225 2 81920 9665 :=
  localPrefix000947.append block000948

noncomputable def hints000949 : List Nat :=
  primeHintChunk% "../../certificates/prime-count33554432-v1/counts-000949.json" 33554432 11436031 22872065 2

theorem length000949 : hints000949.length = 16384 := by decide +kernel
theorem checked000949 : checkPrimeHints 22872065 2 hints000949 = true := by decide +kernel
theorem counted000949 : hints000949.count 0 <= 1942 := by decide +kernel

noncomputable def block000949 : CheckedPrimeCountBlock 22872065 2 16384 1942 :=
  ⟨hints000949, length000949, checked000949, counted000949⟩

noncomputable def localPrefix000949 : CheckedPrimeCountBlock 22708225 2 98304 11607 :=
  localPrefix000948.append block000949

noncomputable def hints000950 : List Nat :=
  primeHintChunk% "../../certificates/prime-count33554432-v1/counts-000950.json" 33554432 11452415 22904833 2

theorem length000950 : hints000950.length = 16384 := by decide +kernel
theorem checked000950 : checkPrimeHints 22904833 2 hints000950 = true := by decide +kernel
theorem counted000950 : hints000950.count 0 <= 1947 := by decide +kernel

noncomputable def block000950 : CheckedPrimeCountBlock 22904833 2 16384 1947 :=
  ⟨hints000950, length000950, checked000950, counted000950⟩

noncomputable def localPrefix000950 : CheckedPrimeCountBlock 22708225 2 114688 13554 :=
  localPrefix000949.append block000950

noncomputable def hints000951 : List Nat :=
  primeHintChunk% "../../certificates/prime-count33554432-v1/counts-000951.json" 33554432 11468799 22937601 2

theorem length000951 : hints000951.length = 16384 := by decide +kernel
theorem checked000951 : checkPrimeHints 22937601 2 hints000951 = true := by decide +kernel
theorem counted000951 : hints000951.count 0 <= 1914 := by decide +kernel

noncomputable def block000951 : CheckedPrimeCountBlock 22937601 2 16384 1914 :=
  ⟨hints000951, length000951, checked000951, counted000951⟩

noncomputable def localPrefix000951 : CheckedPrimeCountBlock 22708225 2 131072 15468 :=
  localPrefix000950.append block000951

noncomputable def hints000952 : List Nat :=
  primeHintChunk% "../../certificates/prime-count33554432-v1/counts-000952.json" 33554432 11485183 22970369 2

theorem length000952 : hints000952.length = 16384 := by decide +kernel
theorem checked000952 : checkPrimeHints 22970369 2 hints000952 = true := by decide +kernel
theorem counted000952 : hints000952.count 0 <= 1942 := by decide +kernel

noncomputable def block000952 : CheckedPrimeCountBlock 22970369 2 16384 1942 :=
  ⟨hints000952, length000952, checked000952, counted000952⟩

noncomputable def localPrefix000952 : CheckedPrimeCountBlock 22708225 2 147456 17410 :=
  localPrefix000951.append block000952

noncomputable def hints000953 : List Nat :=
  primeHintChunk% "../../certificates/prime-count33554432-v1/counts-000953.json" 33554432 11501567 23003137 2

theorem length000953 : hints000953.length = 16384 := by decide +kernel
theorem checked000953 : checkPrimeHints 23003137 2 hints000953 = true := by decide +kernel
theorem counted000953 : hints000953.count 0 <= 1965 := by decide +kernel

noncomputable def block000953 : CheckedPrimeCountBlock 23003137 2 16384 1965 :=
  ⟨hints000953, length000953, checked000953, counted000953⟩

noncomputable def localPrefix000953 : CheckedPrimeCountBlock 22708225 2 163840 19375 :=
  localPrefix000952.append block000953

noncomputable def hints000954 : List Nat :=
  primeHintChunk% "../../certificates/prime-count33554432-v1/counts-000954.json" 33554432 11517951 23035905 2

theorem length000954 : hints000954.length = 16384 := by decide +kernel
theorem checked000954 : checkPrimeHints 23035905 2 hints000954 = true := by decide +kernel
theorem counted000954 : hints000954.count 0 <= 1928 := by decide +kernel

noncomputable def block000954 : CheckedPrimeCountBlock 23035905 2 16384 1928 :=
  ⟨hints000954, length000954, checked000954, counted000954⟩

noncomputable def localPrefix000954 : CheckedPrimeCountBlock 22708225 2 180224 21303 :=
  localPrefix000953.append block000954

noncomputable def hints000955 : List Nat :=
  primeHintChunk% "../../certificates/prime-count33554432-v1/counts-000955.json" 33554432 11534335 23068673 2

theorem length000955 : hints000955.length = 16384 := by decide +kernel
theorem checked000955 : checkPrimeHints 23068673 2 hints000955 = true := by decide +kernel
theorem counted000955 : hints000955.count 0 <= 1905 := by decide +kernel

noncomputable def block000955 : CheckedPrimeCountBlock 23068673 2 16384 1905 :=
  ⟨hints000955, length000955, checked000955, counted000955⟩

noncomputable def localPrefix000955 : CheckedPrimeCountBlock 22708225 2 196608 23208 :=
  localPrefix000954.append block000955

noncomputable def hints000956 : List Nat :=
  primeHintChunk% "../../certificates/prime-count33554432-v1/counts-000956.json" 33554432 11550719 23101441 2

theorem length000956 : hints000956.length = 16384 := by decide +kernel
theorem checked000956 : checkPrimeHints 23101441 2 hints000956 = true := by decide +kernel
theorem counted000956 : hints000956.count 0 <= 1910 := by decide +kernel

noncomputable def block000956 : CheckedPrimeCountBlock 23101441 2 16384 1910 :=
  ⟨hints000956, length000956, checked000956, counted000956⟩

noncomputable def localPrefix000956 : CheckedPrimeCountBlock 22708225 2 212992 25118 :=
  localPrefix000955.append block000956

noncomputable def hints000957 : List Nat :=
  primeHintChunk% "../../certificates/prime-count33554432-v1/counts-000957.json" 33554432 11567103 23134209 2

theorem length000957 : hints000957.length = 16384 := by decide +kernel
theorem checked000957 : checkPrimeHints 23134209 2 hints000957 = true := by decide +kernel
theorem counted000957 : hints000957.count 0 <= 2000 := by decide +kernel

noncomputable def block000957 : CheckedPrimeCountBlock 23134209 2 16384 2000 :=
  ⟨hints000957, length000957, checked000957, counted000957⟩

noncomputable def localPrefix000957 : CheckedPrimeCountBlock 22708225 2 229376 27118 :=
  localPrefix000956.append block000957

noncomputable def hints000958 : List Nat :=
  primeHintChunk% "../../certificates/prime-count33554432-v1/counts-000958.json" 33554432 11583487 23166977 2

theorem length000958 : hints000958.length = 16384 := by decide +kernel
theorem checked000958 : checkPrimeHints 23166977 2 hints000958 = true := by decide +kernel
theorem counted000958 : hints000958.count 0 <= 1873 := by decide +kernel

noncomputable def block000958 : CheckedPrimeCountBlock 23166977 2 16384 1873 :=
  ⟨hints000958, length000958, checked000958, counted000958⟩

noncomputable def localPrefix000958 : CheckedPrimeCountBlock 22708225 2 245760 28991 :=
  localPrefix000957.append block000958

noncomputable def hints000959 : List Nat :=
  primeHintChunk% "../../certificates/prime-count33554432-v1/counts-000959.json" 33554432 11599871 23199745 2

theorem length000959 : hints000959.length = 16384 := by decide +kernel
theorem checked000959 : checkPrimeHints 23199745 2 hints000959 = true := by decide +kernel
theorem counted000959 : hints000959.count 0 <= 1924 := by decide +kernel

noncomputable def block000959 : CheckedPrimeCountBlock 23199745 2 16384 1924 :=
  ⟨hints000959, length000959, checked000959, counted000959⟩

noncomputable def localPrefix000959 : CheckedPrimeCountBlock 22708225 2 262144 30915 :=
  localPrefix000958.append block000959

end JSP848.FullPrimeCount
