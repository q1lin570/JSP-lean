import JSP848.PrimeCountInput

set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0

namespace JSP848.FullPrimeCount

open PrimeCountInput

noncomputable def hints000928 : List Nat :=
  primeHintChunk% "../../certificates/prime-count33554432-v1/counts-000928.json" 33554432 11091967 22183937 2

theorem length000928 : hints000928.length = 16384 := by decide +kernel
theorem checked000928 : checkPrimeHints 22183937 2 hints000928 = true := by decide +kernel
theorem counted000928 : hints000928.count 0 <= 1886 := by decide +kernel

noncomputable def block000928 : CheckedPrimeCountBlock 22183937 2 16384 1886 :=
  ⟨hints000928, length000928, checked000928, counted000928⟩

noncomputable def localPrefix000928 : CheckedPrimeCountBlock 22183937 2 16384 1886 :=
  block000928

noncomputable def hints000929 : List Nat :=
  primeHintChunk% "../../certificates/prime-count33554432-v1/counts-000929.json" 33554432 11108351 22216705 2

theorem length000929 : hints000929.length = 16384 := by decide +kernel
theorem checked000929 : checkPrimeHints 22216705 2 hints000929 = true := by decide +kernel
theorem counted000929 : hints000929.count 0 <= 1912 := by decide +kernel

noncomputable def block000929 : CheckedPrimeCountBlock 22216705 2 16384 1912 :=
  ⟨hints000929, length000929, checked000929, counted000929⟩

noncomputable def localPrefix000929 : CheckedPrimeCountBlock 22183937 2 32768 3798 :=
  localPrefix000928.append block000929

noncomputable def hints000930 : List Nat :=
  primeHintChunk% "../../certificates/prime-count33554432-v1/counts-000930.json" 33554432 11124735 22249473 2

theorem length000930 : hints000930.length = 16384 := by decide +kernel
theorem checked000930 : checkPrimeHints 22249473 2 hints000930 = true := by decide +kernel
theorem counted000930 : hints000930.count 0 <= 1942 := by decide +kernel

noncomputable def block000930 : CheckedPrimeCountBlock 22249473 2 16384 1942 :=
  ⟨hints000930, length000930, checked000930, counted000930⟩

noncomputable def localPrefix000930 : CheckedPrimeCountBlock 22183937 2 49152 5740 :=
  localPrefix000929.append block000930

noncomputable def hints000931 : List Nat :=
  primeHintChunk% "../../certificates/prime-count33554432-v1/counts-000931.json" 33554432 11141119 22282241 2

theorem length000931 : hints000931.length = 16384 := by decide +kernel
theorem checked000931 : checkPrimeHints 22282241 2 hints000931 = true := by decide +kernel
theorem counted000931 : hints000931.count 0 <= 1927 := by decide +kernel

noncomputable def block000931 : CheckedPrimeCountBlock 22282241 2 16384 1927 :=
  ⟨hints000931, length000931, checked000931, counted000931⟩

noncomputable def localPrefix000931 : CheckedPrimeCountBlock 22183937 2 65536 7667 :=
  localPrefix000930.append block000931

noncomputable def hints000932 : List Nat :=
  primeHintChunk% "../../certificates/prime-count33554432-v1/counts-000932.json" 33554432 11157503 22315009 2

theorem length000932 : hints000932.length = 16384 := by decide +kernel
theorem checked000932 : checkPrimeHints 22315009 2 hints000932 = true := by decide +kernel
theorem counted000932 : hints000932.count 0 <= 1923 := by decide +kernel

noncomputable def block000932 : CheckedPrimeCountBlock 22315009 2 16384 1923 :=
  ⟨hints000932, length000932, checked000932, counted000932⟩

noncomputable def localPrefix000932 : CheckedPrimeCountBlock 22183937 2 81920 9590 :=
  localPrefix000931.append block000932

noncomputable def hints000933 : List Nat :=
  primeHintChunk% "../../certificates/prime-count33554432-v1/counts-000933.json" 33554432 11173887 22347777 2

theorem length000933 : hints000933.length = 16384 := by decide +kernel
theorem checked000933 : checkPrimeHints 22347777 2 hints000933 = true := by decide +kernel
theorem counted000933 : hints000933.count 0 <= 1926 := by decide +kernel

noncomputable def block000933 : CheckedPrimeCountBlock 22347777 2 16384 1926 :=
  ⟨hints000933, length000933, checked000933, counted000933⟩

noncomputable def localPrefix000933 : CheckedPrimeCountBlock 22183937 2 98304 11516 :=
  localPrefix000932.append block000933

noncomputable def hints000934 : List Nat :=
  primeHintChunk% "../../certificates/prime-count33554432-v1/counts-000934.json" 33554432 11190271 22380545 2

theorem length000934 : hints000934.length = 16384 := by decide +kernel
theorem checked000934 : checkPrimeHints 22380545 2 hints000934 = true := by decide +kernel
theorem counted000934 : hints000934.count 0 <= 1938 := by decide +kernel

noncomputable def block000934 : CheckedPrimeCountBlock 22380545 2 16384 1938 :=
  ⟨hints000934, length000934, checked000934, counted000934⟩

noncomputable def localPrefix000934 : CheckedPrimeCountBlock 22183937 2 114688 13454 :=
  localPrefix000933.append block000934

noncomputable def hints000935 : List Nat :=
  primeHintChunk% "../../certificates/prime-count33554432-v1/counts-000935.json" 33554432 11206655 22413313 2

theorem length000935 : hints000935.length = 16384 := by decide +kernel
theorem checked000935 : checkPrimeHints 22413313 2 hints000935 = true := by decide +kernel
theorem counted000935 : hints000935.count 0 <= 1897 := by decide +kernel

noncomputable def block000935 : CheckedPrimeCountBlock 22413313 2 16384 1897 :=
  ⟨hints000935, length000935, checked000935, counted000935⟩

noncomputable def localPrefix000935 : CheckedPrimeCountBlock 22183937 2 131072 15351 :=
  localPrefix000934.append block000935

noncomputable def hints000936 : List Nat :=
  primeHintChunk% "../../certificates/prime-count33554432-v1/counts-000936.json" 33554432 11223039 22446081 2

theorem length000936 : hints000936.length = 16384 := by decide +kernel
theorem checked000936 : checkPrimeHints 22446081 2 hints000936 = true := by decide +kernel
theorem counted000936 : hints000936.count 0 <= 1945 := by decide +kernel

noncomputable def block000936 : CheckedPrimeCountBlock 22446081 2 16384 1945 :=
  ⟨hints000936, length000936, checked000936, counted000936⟩

noncomputable def localPrefix000936 : CheckedPrimeCountBlock 22183937 2 147456 17296 :=
  localPrefix000935.append block000936

noncomputable def hints000937 : List Nat :=
  primeHintChunk% "../../certificates/prime-count33554432-v1/counts-000937.json" 33554432 11239423 22478849 2

theorem length000937 : hints000937.length = 16384 := by decide +kernel
theorem checked000937 : checkPrimeHints 22478849 2 hints000937 = true := by decide +kernel
theorem counted000937 : hints000937.count 0 <= 1922 := by decide +kernel

noncomputable def block000937 : CheckedPrimeCountBlock 22478849 2 16384 1922 :=
  ⟨hints000937, length000937, checked000937, counted000937⟩

noncomputable def localPrefix000937 : CheckedPrimeCountBlock 22183937 2 163840 19218 :=
  localPrefix000936.append block000937

noncomputable def hints000938 : List Nat :=
  primeHintChunk% "../../certificates/prime-count33554432-v1/counts-000938.json" 33554432 11255807 22511617 2

theorem length000938 : hints000938.length = 16384 := by decide +kernel
theorem checked000938 : checkPrimeHints 22511617 2 hints000938 = true := by decide +kernel
theorem counted000938 : hints000938.count 0 <= 1967 := by decide +kernel

noncomputable def block000938 : CheckedPrimeCountBlock 22511617 2 16384 1967 :=
  ⟨hints000938, length000938, checked000938, counted000938⟩

noncomputable def localPrefix000938 : CheckedPrimeCountBlock 22183937 2 180224 21185 :=
  localPrefix000937.append block000938

noncomputable def hints000939 : List Nat :=
  primeHintChunk% "../../certificates/prime-count33554432-v1/counts-000939.json" 33554432 11272191 22544385 2

theorem length000939 : hints000939.length = 16384 := by decide +kernel
theorem checked000939 : checkPrimeHints 22544385 2 hints000939 = true := by decide +kernel
theorem counted000939 : hints000939.count 0 <= 1965 := by decide +kernel

noncomputable def block000939 : CheckedPrimeCountBlock 22544385 2 16384 1965 :=
  ⟨hints000939, length000939, checked000939, counted000939⟩

noncomputable def localPrefix000939 : CheckedPrimeCountBlock 22183937 2 196608 23150 :=
  localPrefix000938.append block000939

noncomputable def hints000940 : List Nat :=
  primeHintChunk% "../../certificates/prime-count33554432-v1/counts-000940.json" 33554432 11288575 22577153 2

theorem length000940 : hints000940.length = 16384 := by decide +kernel
theorem checked000940 : checkPrimeHints 22577153 2 hints000940 = true := by decide +kernel
theorem counted000940 : hints000940.count 0 <= 1934 := by decide +kernel

noncomputable def block000940 : CheckedPrimeCountBlock 22577153 2 16384 1934 :=
  ⟨hints000940, length000940, checked000940, counted000940⟩

noncomputable def localPrefix000940 : CheckedPrimeCountBlock 22183937 2 212992 25084 :=
  localPrefix000939.append block000940

noncomputable def hints000941 : List Nat :=
  primeHintChunk% "../../certificates/prime-count33554432-v1/counts-000941.json" 33554432 11304959 22609921 2

theorem length000941 : hints000941.length = 16384 := by decide +kernel
theorem checked000941 : checkPrimeHints 22609921 2 hints000941 = true := by decide +kernel
theorem counted000941 : hints000941.count 0 <= 1932 := by decide +kernel

noncomputable def block000941 : CheckedPrimeCountBlock 22609921 2 16384 1932 :=
  ⟨hints000941, length000941, checked000941, counted000941⟩

noncomputable def localPrefix000941 : CheckedPrimeCountBlock 22183937 2 229376 27016 :=
  localPrefix000940.append block000941

noncomputable def hints000942 : List Nat :=
  primeHintChunk% "../../certificates/prime-count33554432-v1/counts-000942.json" 33554432 11321343 22642689 2

theorem length000942 : hints000942.length = 16384 := by decide +kernel
theorem checked000942 : checkPrimeHints 22642689 2 hints000942 = true := by decide +kernel
theorem counted000942 : hints000942.count 0 <= 1913 := by decide +kernel

noncomputable def block000942 : CheckedPrimeCountBlock 22642689 2 16384 1913 :=
  ⟨hints000942, length000942, checked000942, counted000942⟩

noncomputable def localPrefix000942 : CheckedPrimeCountBlock 22183937 2 245760 28929 :=
  localPrefix000941.append block000942

noncomputable def hints000943 : List Nat :=
  primeHintChunk% "../../certificates/prime-count33554432-v1/counts-000943.json" 33554432 11337727 22675457 2

theorem length000943 : hints000943.length = 16384 := by decide +kernel
theorem checked000943 : checkPrimeHints 22675457 2 hints000943 = true := by decide +kernel
theorem counted000943 : hints000943.count 0 <= 1982 := by decide +kernel

noncomputable def block000943 : CheckedPrimeCountBlock 22675457 2 16384 1982 :=
  ⟨hints000943, length000943, checked000943, counted000943⟩

noncomputable def localPrefix000943 : CheckedPrimeCountBlock 22183937 2 262144 30911 :=
  localPrefix000942.append block000943

end JSP848.FullPrimeCount
