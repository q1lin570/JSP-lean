import JSP848.PrimeCountInput

set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0

namespace JSP848.FullPrimeCount

open PrimeCountInput

noncomputable def hints000912 : List Nat :=
  primeHintChunk% "../../certificates/prime-count33554432-v1/counts-000912.json" 33554432 10829823 21659649 2

theorem length000912 : hints000912.length = 16384 := by decide +kernel
theorem checked000912 : checkPrimeHints 21659649 2 hints000912 = true := by decide +kernel
theorem counted000912 : hints000912.count 0 <= 1956 := by decide +kernel

noncomputable def block000912 : CheckedPrimeCountBlock 21659649 2 16384 1956 :=
  ⟨hints000912, length000912, checked000912, counted000912⟩

noncomputable def localPrefix000912 : CheckedPrimeCountBlock 21659649 2 16384 1956 :=
  block000912

noncomputable def hints000913 : List Nat :=
  primeHintChunk% "../../certificates/prime-count33554432-v1/counts-000913.json" 33554432 10846207 21692417 2

theorem length000913 : hints000913.length = 16384 := by decide +kernel
theorem checked000913 : checkPrimeHints 21692417 2 hints000913 = true := by decide +kernel
theorem counted000913 : hints000913.count 0 <= 1950 := by decide +kernel

noncomputable def block000913 : CheckedPrimeCountBlock 21692417 2 16384 1950 :=
  ⟨hints000913, length000913, checked000913, counted000913⟩

noncomputable def localPrefix000913 : CheckedPrimeCountBlock 21659649 2 32768 3906 :=
  localPrefix000912.append block000913

noncomputable def hints000914 : List Nat :=
  primeHintChunk% "../../certificates/prime-count33554432-v1/counts-000914.json" 33554432 10862591 21725185 2

theorem length000914 : hints000914.length = 16384 := by decide +kernel
theorem checked000914 : checkPrimeHints 21725185 2 hints000914 = true := by decide +kernel
theorem counted000914 : hints000914.count 0 <= 1938 := by decide +kernel

noncomputable def block000914 : CheckedPrimeCountBlock 21725185 2 16384 1938 :=
  ⟨hints000914, length000914, checked000914, counted000914⟩

noncomputable def localPrefix000914 : CheckedPrimeCountBlock 21659649 2 49152 5844 :=
  localPrefix000913.append block000914

noncomputable def hints000915 : List Nat :=
  primeHintChunk% "../../certificates/prime-count33554432-v1/counts-000915.json" 33554432 10878975 21757953 2

theorem length000915 : hints000915.length = 16384 := by decide +kernel
theorem checked000915 : checkPrimeHints 21757953 2 hints000915 = true := by decide +kernel
theorem counted000915 : hints000915.count 0 <= 1968 := by decide +kernel

noncomputable def block000915 : CheckedPrimeCountBlock 21757953 2 16384 1968 :=
  ⟨hints000915, length000915, checked000915, counted000915⟩

noncomputable def localPrefix000915 : CheckedPrimeCountBlock 21659649 2 65536 7812 :=
  localPrefix000914.append block000915

noncomputable def hints000916 : List Nat :=
  primeHintChunk% "../../certificates/prime-count33554432-v1/counts-000916.json" 33554432 10895359 21790721 2

theorem length000916 : hints000916.length = 16384 := by decide +kernel
theorem checked000916 : checkPrimeHints 21790721 2 hints000916 = true := by decide +kernel
theorem counted000916 : hints000916.count 0 <= 1922 := by decide +kernel

noncomputable def block000916 : CheckedPrimeCountBlock 21790721 2 16384 1922 :=
  ⟨hints000916, length000916, checked000916, counted000916⟩

noncomputable def localPrefix000916 : CheckedPrimeCountBlock 21659649 2 81920 9734 :=
  localPrefix000915.append block000916

noncomputable def hints000917 : List Nat :=
  primeHintChunk% "../../certificates/prime-count33554432-v1/counts-000917.json" 33554432 10911743 21823489 2

theorem length000917 : hints000917.length = 16384 := by decide +kernel
theorem checked000917 : checkPrimeHints 21823489 2 hints000917 = true := by decide +kernel
theorem counted000917 : hints000917.count 0 <= 1950 := by decide +kernel

noncomputable def block000917 : CheckedPrimeCountBlock 21823489 2 16384 1950 :=
  ⟨hints000917, length000917, checked000917, counted000917⟩

noncomputable def localPrefix000917 : CheckedPrimeCountBlock 21659649 2 98304 11684 :=
  localPrefix000916.append block000917

noncomputable def hints000918 : List Nat :=
  primeHintChunk% "../../certificates/prime-count33554432-v1/counts-000918.json" 33554432 10928127 21856257 2

theorem length000918 : hints000918.length = 16384 := by decide +kernel
theorem checked000918 : checkPrimeHints 21856257 2 hints000918 = true := by decide +kernel
theorem counted000918 : hints000918.count 0 <= 1962 := by decide +kernel

noncomputable def block000918 : CheckedPrimeCountBlock 21856257 2 16384 1962 :=
  ⟨hints000918, length000918, checked000918, counted000918⟩

noncomputable def localPrefix000918 : CheckedPrimeCountBlock 21659649 2 114688 13646 :=
  localPrefix000917.append block000918

noncomputable def hints000919 : List Nat :=
  primeHintChunk% "../../certificates/prime-count33554432-v1/counts-000919.json" 33554432 10944511 21889025 2

theorem length000919 : hints000919.length = 16384 := by decide +kernel
theorem checked000919 : checkPrimeHints 21889025 2 hints000919 = true := by decide +kernel
theorem counted000919 : hints000919.count 0 <= 1929 := by decide +kernel

noncomputable def block000919 : CheckedPrimeCountBlock 21889025 2 16384 1929 :=
  ⟨hints000919, length000919, checked000919, counted000919⟩

noncomputable def localPrefix000919 : CheckedPrimeCountBlock 21659649 2 131072 15575 :=
  localPrefix000918.append block000919

noncomputable def hints000920 : List Nat :=
  primeHintChunk% "../../certificates/prime-count33554432-v1/counts-000920.json" 33554432 10960895 21921793 2

theorem length000920 : hints000920.length = 16384 := by decide +kernel
theorem checked000920 : checkPrimeHints 21921793 2 hints000920 = true := by decide +kernel
theorem counted000920 : hints000920.count 0 <= 1984 := by decide +kernel

noncomputable def block000920 : CheckedPrimeCountBlock 21921793 2 16384 1984 :=
  ⟨hints000920, length000920, checked000920, counted000920⟩

noncomputable def localPrefix000920 : CheckedPrimeCountBlock 21659649 2 147456 17559 :=
  localPrefix000919.append block000920

noncomputable def hints000921 : List Nat :=
  primeHintChunk% "../../certificates/prime-count33554432-v1/counts-000921.json" 33554432 10977279 21954561 2

theorem length000921 : hints000921.length = 16384 := by decide +kernel
theorem checked000921 : checkPrimeHints 21954561 2 hints000921 = true := by decide +kernel
theorem counted000921 : hints000921.count 0 <= 1925 := by decide +kernel

noncomputable def block000921 : CheckedPrimeCountBlock 21954561 2 16384 1925 :=
  ⟨hints000921, length000921, checked000921, counted000921⟩

noncomputable def localPrefix000921 : CheckedPrimeCountBlock 21659649 2 163840 19484 :=
  localPrefix000920.append block000921

noncomputable def hints000922 : List Nat :=
  primeHintChunk% "../../certificates/prime-count33554432-v1/counts-000922.json" 33554432 10993663 21987329 2

theorem length000922 : hints000922.length = 16384 := by decide +kernel
theorem checked000922 : checkPrimeHints 21987329 2 hints000922 = true := by decide +kernel
theorem counted000922 : hints000922.count 0 <= 1926 := by decide +kernel

noncomputable def block000922 : CheckedPrimeCountBlock 21987329 2 16384 1926 :=
  ⟨hints000922, length000922, checked000922, counted000922⟩

noncomputable def localPrefix000922 : CheckedPrimeCountBlock 21659649 2 180224 21410 :=
  localPrefix000921.append block000922

noncomputable def hints000923 : List Nat :=
  primeHintChunk% "../../certificates/prime-count33554432-v1/counts-000923.json" 33554432 11010047 22020097 2

theorem length000923 : hints000923.length = 16384 := by decide +kernel
theorem checked000923 : checkPrimeHints 22020097 2 hints000923 = true := by decide +kernel
theorem counted000923 : hints000923.count 0 <= 2008 := by decide +kernel

noncomputable def block000923 : CheckedPrimeCountBlock 22020097 2 16384 2008 :=
  ⟨hints000923, length000923, checked000923, counted000923⟩

noncomputable def localPrefix000923 : CheckedPrimeCountBlock 21659649 2 196608 23418 :=
  localPrefix000922.append block000923

noncomputable def hints000924 : List Nat :=
  primeHintChunk% "../../certificates/prime-count33554432-v1/counts-000924.json" 33554432 11026431 22052865 2

theorem length000924 : hints000924.length = 16384 := by decide +kernel
theorem checked000924 : checkPrimeHints 22052865 2 hints000924 = true := by decide +kernel
theorem counted000924 : hints000924.count 0 <= 1876 := by decide +kernel

noncomputable def block000924 : CheckedPrimeCountBlock 22052865 2 16384 1876 :=
  ⟨hints000924, length000924, checked000924, counted000924⟩

noncomputable def localPrefix000924 : CheckedPrimeCountBlock 21659649 2 212992 25294 :=
  localPrefix000923.append block000924

noncomputable def hints000925 : List Nat :=
  primeHintChunk% "../../certificates/prime-count33554432-v1/counts-000925.json" 33554432 11042815 22085633 2

theorem length000925 : hints000925.length = 16384 := by decide +kernel
theorem checked000925 : checkPrimeHints 22085633 2 hints000925 = true := by decide +kernel
theorem counted000925 : hints000925.count 0 <= 1904 := by decide +kernel

noncomputable def block000925 : CheckedPrimeCountBlock 22085633 2 16384 1904 :=
  ⟨hints000925, length000925, checked000925, counted000925⟩

noncomputable def localPrefix000925 : CheckedPrimeCountBlock 21659649 2 229376 27198 :=
  localPrefix000924.append block000925

noncomputable def hints000926 : List Nat :=
  primeHintChunk% "../../certificates/prime-count33554432-v1/counts-000926.json" 33554432 11059199 22118401 2

theorem length000926 : hints000926.length = 16384 := by decide +kernel
theorem checked000926 : checkPrimeHints 22118401 2 hints000926 = true := by decide +kernel
theorem counted000926 : hints000926.count 0 <= 1934 := by decide +kernel

noncomputable def block000926 : CheckedPrimeCountBlock 22118401 2 16384 1934 :=
  ⟨hints000926, length000926, checked000926, counted000926⟩

noncomputable def localPrefix000926 : CheckedPrimeCountBlock 21659649 2 245760 29132 :=
  localPrefix000925.append block000926

noncomputable def hints000927 : List Nat :=
  primeHintChunk% "../../certificates/prime-count33554432-v1/counts-000927.json" 33554432 11075583 22151169 2

theorem length000927 : hints000927.length = 16384 := by decide +kernel
theorem checked000927 : checkPrimeHints 22151169 2 hints000927 = true := by decide +kernel
theorem counted000927 : hints000927.count 0 <= 1938 := by decide +kernel

noncomputable def block000927 : CheckedPrimeCountBlock 22151169 2 16384 1938 :=
  ⟨hints000927, length000927, checked000927, counted000927⟩

noncomputable def localPrefix000927 : CheckedPrimeCountBlock 21659649 2 262144 31070 :=
  localPrefix000926.append block000927

end JSP848.FullPrimeCount
