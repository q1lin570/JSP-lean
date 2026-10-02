import JSP848.PrimeCountInput

set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0

namespace JSP848.FullPrimeCount

open PrimeCountInput

noncomputable def hints001232 : List Nat :=
  primeHintChunk% "../../certificates/prime-count33554432-v1/counts-001232.json" 33554432 16072703 32145409 2

theorem length001232 : hints001232.length = 16384 := by decide +kernel
theorem checked001232 : checkPrimeHints 32145409 2 hints001232 = true := by decide +kernel
theorem counted001232 : hints001232.count 0 <= 1882 := by decide +kernel

noncomputable def block001232 : CheckedPrimeCountBlock 32145409 2 16384 1882 :=
  ⟨hints001232, length001232, checked001232, counted001232⟩

noncomputable def localPrefix001232 : CheckedPrimeCountBlock 32145409 2 16384 1882 :=
  block001232

noncomputable def hints001233 : List Nat :=
  primeHintChunk% "../../certificates/prime-count33554432-v1/counts-001233.json" 33554432 16089087 32178177 2

theorem length001233 : hints001233.length = 16384 := by decide +kernel
theorem checked001233 : checkPrimeHints 32178177 2 hints001233 = true := by decide +kernel
theorem counted001233 : hints001233.count 0 <= 1871 := by decide +kernel

noncomputable def block001233 : CheckedPrimeCountBlock 32178177 2 16384 1871 :=
  ⟨hints001233, length001233, checked001233, counted001233⟩

noncomputable def localPrefix001233 : CheckedPrimeCountBlock 32145409 2 32768 3753 :=
  localPrefix001232.append block001233

noncomputable def hints001234 : List Nat :=
  primeHintChunk% "../../certificates/prime-count33554432-v1/counts-001234.json" 33554432 16105471 32210945 2

theorem length001234 : hints001234.length = 16384 := by decide +kernel
theorem checked001234 : checkPrimeHints 32210945 2 hints001234 = true := by decide +kernel
theorem counted001234 : hints001234.count 0 <= 1903 := by decide +kernel

noncomputable def block001234 : CheckedPrimeCountBlock 32210945 2 16384 1903 :=
  ⟨hints001234, length001234, checked001234, counted001234⟩

noncomputable def localPrefix001234 : CheckedPrimeCountBlock 32145409 2 49152 5656 :=
  localPrefix001233.append block001234

noncomputable def hints001235 : List Nat :=
  primeHintChunk% "../../certificates/prime-count33554432-v1/counts-001235.json" 33554432 16121855 32243713 2

theorem length001235 : hints001235.length = 16384 := by decide +kernel
theorem checked001235 : checkPrimeHints 32243713 2 hints001235 = true := by decide +kernel
theorem counted001235 : hints001235.count 0 <= 1892 := by decide +kernel

noncomputable def block001235 : CheckedPrimeCountBlock 32243713 2 16384 1892 :=
  ⟨hints001235, length001235, checked001235, counted001235⟩

noncomputable def localPrefix001235 : CheckedPrimeCountBlock 32145409 2 65536 7548 :=
  localPrefix001234.append block001235

noncomputable def hints001236 : List Nat :=
  primeHintChunk% "../../certificates/prime-count33554432-v1/counts-001236.json" 33554432 16138239 32276481 2

theorem length001236 : hints001236.length = 16384 := by decide +kernel
theorem checked001236 : checkPrimeHints 32276481 2 hints001236 = true := by decide +kernel
theorem counted001236 : hints001236.count 0 <= 1916 := by decide +kernel

noncomputable def block001236 : CheckedPrimeCountBlock 32276481 2 16384 1916 :=
  ⟨hints001236, length001236, checked001236, counted001236⟩

noncomputable def localPrefix001236 : CheckedPrimeCountBlock 32145409 2 81920 9464 :=
  localPrefix001235.append block001236

noncomputable def hints001237 : List Nat :=
  primeHintChunk% "../../certificates/prime-count33554432-v1/counts-001237.json" 33554432 16154623 32309249 2

theorem length001237 : hints001237.length = 16384 := by decide +kernel
theorem checked001237 : checkPrimeHints 32309249 2 hints001237 = true := by decide +kernel
theorem counted001237 : hints001237.count 0 <= 1891 := by decide +kernel

noncomputable def block001237 : CheckedPrimeCountBlock 32309249 2 16384 1891 :=
  ⟨hints001237, length001237, checked001237, counted001237⟩

noncomputable def localPrefix001237 : CheckedPrimeCountBlock 32145409 2 98304 11355 :=
  localPrefix001236.append block001237

noncomputable def hints001238 : List Nat :=
  primeHintChunk% "../../certificates/prime-count33554432-v1/counts-001238.json" 33554432 16171007 32342017 2

theorem length001238 : hints001238.length = 16384 := by decide +kernel
theorem checked001238 : checkPrimeHints 32342017 2 hints001238 = true := by decide +kernel
theorem counted001238 : hints001238.count 0 <= 1905 := by decide +kernel

noncomputable def block001238 : CheckedPrimeCountBlock 32342017 2 16384 1905 :=
  ⟨hints001238, length001238, checked001238, counted001238⟩

noncomputable def localPrefix001238 : CheckedPrimeCountBlock 32145409 2 114688 13260 :=
  localPrefix001237.append block001238

noncomputable def hints001239 : List Nat :=
  primeHintChunk% "../../certificates/prime-count33554432-v1/counts-001239.json" 33554432 16187391 32374785 2

theorem length001239 : hints001239.length = 16384 := by decide +kernel
theorem checked001239 : checkPrimeHints 32374785 2 hints001239 = true := by decide +kernel
theorem counted001239 : hints001239.count 0 <= 1884 := by decide +kernel

noncomputable def block001239 : CheckedPrimeCountBlock 32374785 2 16384 1884 :=
  ⟨hints001239, length001239, checked001239, counted001239⟩

noncomputable def localPrefix001239 : CheckedPrimeCountBlock 32145409 2 131072 15144 :=
  localPrefix001238.append block001239

noncomputable def hints001240 : List Nat :=
  primeHintChunk% "../../certificates/prime-count33554432-v1/counts-001240.json" 33554432 16203775 32407553 2

theorem length001240 : hints001240.length = 16384 := by decide +kernel
theorem checked001240 : checkPrimeHints 32407553 2 hints001240 = true := by decide +kernel
theorem counted001240 : hints001240.count 0 <= 1874 := by decide +kernel

noncomputable def block001240 : CheckedPrimeCountBlock 32407553 2 16384 1874 :=
  ⟨hints001240, length001240, checked001240, counted001240⟩

noncomputable def localPrefix001240 : CheckedPrimeCountBlock 32145409 2 147456 17018 :=
  localPrefix001239.append block001240

noncomputable def hints001241 : List Nat :=
  primeHintChunk% "../../certificates/prime-count33554432-v1/counts-001241.json" 33554432 16220159 32440321 2

theorem length001241 : hints001241.length = 16384 := by decide +kernel
theorem checked001241 : checkPrimeHints 32440321 2 hints001241 = true := by decide +kernel
theorem counted001241 : hints001241.count 0 <= 1927 := by decide +kernel

noncomputable def block001241 : CheckedPrimeCountBlock 32440321 2 16384 1927 :=
  ⟨hints001241, length001241, checked001241, counted001241⟩

noncomputable def localPrefix001241 : CheckedPrimeCountBlock 32145409 2 163840 18945 :=
  localPrefix001240.append block001241

noncomputable def hints001242 : List Nat :=
  primeHintChunk% "../../certificates/prime-count33554432-v1/counts-001242.json" 33554432 16236543 32473089 2

theorem length001242 : hints001242.length = 16384 := by decide +kernel
theorem checked001242 : checkPrimeHints 32473089 2 hints001242 = true := by decide +kernel
theorem counted001242 : hints001242.count 0 <= 1912 := by decide +kernel

noncomputable def block001242 : CheckedPrimeCountBlock 32473089 2 16384 1912 :=
  ⟨hints001242, length001242, checked001242, counted001242⟩

noncomputable def localPrefix001242 : CheckedPrimeCountBlock 32145409 2 180224 20857 :=
  localPrefix001241.append block001242

noncomputable def hints001243 : List Nat :=
  primeHintChunk% "../../certificates/prime-count33554432-v1/counts-001243.json" 33554432 16252927 32505857 2

theorem length001243 : hints001243.length = 16384 := by decide +kernel
theorem checked001243 : checkPrimeHints 32505857 2 hints001243 = true := by decide +kernel
theorem counted001243 : hints001243.count 0 <= 1903 := by decide +kernel

noncomputable def block001243 : CheckedPrimeCountBlock 32505857 2 16384 1903 :=
  ⟨hints001243, length001243, checked001243, counted001243⟩

noncomputable def localPrefix001243 : CheckedPrimeCountBlock 32145409 2 196608 22760 :=
  localPrefix001242.append block001243

noncomputable def hints001244 : List Nat :=
  primeHintChunk% "../../certificates/prime-count33554432-v1/counts-001244.json" 33554432 16269311 32538625 2

theorem length001244 : hints001244.length = 16384 := by decide +kernel
theorem checked001244 : checkPrimeHints 32538625 2 hints001244 = true := by decide +kernel
theorem counted001244 : hints001244.count 0 <= 1888 := by decide +kernel

noncomputable def block001244 : CheckedPrimeCountBlock 32538625 2 16384 1888 :=
  ⟨hints001244, length001244, checked001244, counted001244⟩

noncomputable def localPrefix001244 : CheckedPrimeCountBlock 32145409 2 212992 24648 :=
  localPrefix001243.append block001244

noncomputable def hints001245 : List Nat :=
  primeHintChunk% "../../certificates/prime-count33554432-v1/counts-001245.json" 33554432 16285695 32571393 2

theorem length001245 : hints001245.length = 16384 := by decide +kernel
theorem checked001245 : checkPrimeHints 32571393 2 hints001245 = true := by decide +kernel
theorem counted001245 : hints001245.count 0 <= 1909 := by decide +kernel

noncomputable def block001245 : CheckedPrimeCountBlock 32571393 2 16384 1909 :=
  ⟨hints001245, length001245, checked001245, counted001245⟩

noncomputable def localPrefix001245 : CheckedPrimeCountBlock 32145409 2 229376 26557 :=
  localPrefix001244.append block001245

noncomputable def hints001246 : List Nat :=
  primeHintChunk% "../../certificates/prime-count33554432-v1/counts-001246.json" 33554432 16302079 32604161 2

theorem length001246 : hints001246.length = 16384 := by decide +kernel
theorem checked001246 : checkPrimeHints 32604161 2 hints001246 = true := by decide +kernel
theorem counted001246 : hints001246.count 0 <= 1901 := by decide +kernel

noncomputable def block001246 : CheckedPrimeCountBlock 32604161 2 16384 1901 :=
  ⟨hints001246, length001246, checked001246, counted001246⟩

noncomputable def localPrefix001246 : CheckedPrimeCountBlock 32145409 2 245760 28458 :=
  localPrefix001245.append block001246

noncomputable def hints001247 : List Nat :=
  primeHintChunk% "../../certificates/prime-count33554432-v1/counts-001247.json" 33554432 16318463 32636929 2

theorem length001247 : hints001247.length = 16384 := by decide +kernel
theorem checked001247 : checkPrimeHints 32636929 2 hints001247 = true := by decide +kernel
theorem counted001247 : hints001247.count 0 <= 1889 := by decide +kernel

noncomputable def block001247 : CheckedPrimeCountBlock 32636929 2 16384 1889 :=
  ⟨hints001247, length001247, checked001247, counted001247⟩

noncomputable def localPrefix001247 : CheckedPrimeCountBlock 32145409 2 262144 30347 :=
  localPrefix001246.append block001247

end JSP848.FullPrimeCount
