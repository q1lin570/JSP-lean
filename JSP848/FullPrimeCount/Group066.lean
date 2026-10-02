import JSP848.PrimeCountInput

set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0

namespace JSP848.FullPrimeCount

open PrimeCountInput

noncomputable def hints001056 : List Nat :=
  primeHintChunk% "../../certificates/prime-count33554432-v1/counts-001056.json" 33554432 13189119 26378241 2

theorem length001056 : hints001056.length = 16384 := by decide +kernel
theorem checked001056 : checkPrimeHints 26378241 2 hints001056 = true := by decide +kernel
theorem counted001056 : hints001056.count 0 <= 1964 := by decide +kernel

noncomputable def block001056 : CheckedPrimeCountBlock 26378241 2 16384 1964 :=
  ⟨hints001056, length001056, checked001056, counted001056⟩

noncomputable def localPrefix001056 : CheckedPrimeCountBlock 26378241 2 16384 1964 :=
  block001056

noncomputable def hints001057 : List Nat :=
  primeHintChunk% "../../certificates/prime-count33554432-v1/counts-001057.json" 33554432 13205503 26411009 2

theorem length001057 : hints001057.length = 16384 := by decide +kernel
theorem checked001057 : checkPrimeHints 26411009 2 hints001057 = true := by decide +kernel
theorem counted001057 : hints001057.count 0 <= 1897 := by decide +kernel

noncomputable def block001057 : CheckedPrimeCountBlock 26411009 2 16384 1897 :=
  ⟨hints001057, length001057, checked001057, counted001057⟩

noncomputable def localPrefix001057 : CheckedPrimeCountBlock 26378241 2 32768 3861 :=
  localPrefix001056.append block001057

noncomputable def hints001058 : List Nat :=
  primeHintChunk% "../../certificates/prime-count33554432-v1/counts-001058.json" 33554432 13221887 26443777 2

theorem length001058 : hints001058.length = 16384 := by decide +kernel
theorem checked001058 : checkPrimeHints 26443777 2 hints001058 = true := by decide +kernel
theorem counted001058 : hints001058.count 0 <= 1944 := by decide +kernel

noncomputable def block001058 : CheckedPrimeCountBlock 26443777 2 16384 1944 :=
  ⟨hints001058, length001058, checked001058, counted001058⟩

noncomputable def localPrefix001058 : CheckedPrimeCountBlock 26378241 2 49152 5805 :=
  localPrefix001057.append block001058

noncomputable def hints001059 : List Nat :=
  primeHintChunk% "../../certificates/prime-count33554432-v1/counts-001059.json" 33554432 13238271 26476545 2

theorem length001059 : hints001059.length = 16384 := by decide +kernel
theorem checked001059 : checkPrimeHints 26476545 2 hints001059 = true := by decide +kernel
theorem counted001059 : hints001059.count 0 <= 1946 := by decide +kernel

noncomputable def block001059 : CheckedPrimeCountBlock 26476545 2 16384 1946 :=
  ⟨hints001059, length001059, checked001059, counted001059⟩

noncomputable def localPrefix001059 : CheckedPrimeCountBlock 26378241 2 65536 7751 :=
  localPrefix001058.append block001059

noncomputable def hints001060 : List Nat :=
  primeHintChunk% "../../certificates/prime-count33554432-v1/counts-001060.json" 33554432 13254655 26509313 2

theorem length001060 : hints001060.length = 16384 := by decide +kernel
theorem checked001060 : checkPrimeHints 26509313 2 hints001060 = true := by decide +kernel
theorem counted001060 : hints001060.count 0 <= 1913 := by decide +kernel

noncomputable def block001060 : CheckedPrimeCountBlock 26509313 2 16384 1913 :=
  ⟨hints001060, length001060, checked001060, counted001060⟩

noncomputable def localPrefix001060 : CheckedPrimeCountBlock 26378241 2 81920 9664 :=
  localPrefix001059.append block001060

noncomputable def hints001061 : List Nat :=
  primeHintChunk% "../../certificates/prime-count33554432-v1/counts-001061.json" 33554432 13271039 26542081 2

theorem length001061 : hints001061.length = 16384 := by decide +kernel
theorem checked001061 : checkPrimeHints 26542081 2 hints001061 = true := by decide +kernel
theorem counted001061 : hints001061.count 0 <= 1928 := by decide +kernel

noncomputable def block001061 : CheckedPrimeCountBlock 26542081 2 16384 1928 :=
  ⟨hints001061, length001061, checked001061, counted001061⟩

noncomputable def localPrefix001061 : CheckedPrimeCountBlock 26378241 2 98304 11592 :=
  localPrefix001060.append block001061

noncomputable def hints001062 : List Nat :=
  primeHintChunk% "../../certificates/prime-count33554432-v1/counts-001062.json" 33554432 13287423 26574849 2

theorem length001062 : hints001062.length = 16384 := by decide +kernel
theorem checked001062 : checkPrimeHints 26574849 2 hints001062 = true := by decide +kernel
theorem counted001062 : hints001062.count 0 <= 1907 := by decide +kernel

noncomputable def block001062 : CheckedPrimeCountBlock 26574849 2 16384 1907 :=
  ⟨hints001062, length001062, checked001062, counted001062⟩

noncomputable def localPrefix001062 : CheckedPrimeCountBlock 26378241 2 114688 13499 :=
  localPrefix001061.append block001062

noncomputable def hints001063 : List Nat :=
  primeHintChunk% "../../certificates/prime-count33554432-v1/counts-001063.json" 33554432 13303807 26607617 2

theorem length001063 : hints001063.length = 16384 := by decide +kernel
theorem checked001063 : checkPrimeHints 26607617 2 hints001063 = true := by decide +kernel
theorem counted001063 : hints001063.count 0 <= 1922 := by decide +kernel

noncomputable def block001063 : CheckedPrimeCountBlock 26607617 2 16384 1922 :=
  ⟨hints001063, length001063, checked001063, counted001063⟩

noncomputable def localPrefix001063 : CheckedPrimeCountBlock 26378241 2 131072 15421 :=
  localPrefix001062.append block001063

noncomputable def hints001064 : List Nat :=
  primeHintChunk% "../../certificates/prime-count33554432-v1/counts-001064.json" 33554432 13320191 26640385 2

theorem length001064 : hints001064.length = 16384 := by decide +kernel
theorem checked001064 : checkPrimeHints 26640385 2 hints001064 = true := by decide +kernel
theorem counted001064 : hints001064.count 0 <= 1934 := by decide +kernel

noncomputable def block001064 : CheckedPrimeCountBlock 26640385 2 16384 1934 :=
  ⟨hints001064, length001064, checked001064, counted001064⟩

noncomputable def localPrefix001064 : CheckedPrimeCountBlock 26378241 2 147456 17355 :=
  localPrefix001063.append block001064

noncomputable def hints001065 : List Nat :=
  primeHintChunk% "../../certificates/prime-count33554432-v1/counts-001065.json" 33554432 13336575 26673153 2

theorem length001065 : hints001065.length = 16384 := by decide +kernel
theorem checked001065 : checkPrimeHints 26673153 2 hints001065 = true := by decide +kernel
theorem counted001065 : hints001065.count 0 <= 1882 := by decide +kernel

noncomputable def block001065 : CheckedPrimeCountBlock 26673153 2 16384 1882 :=
  ⟨hints001065, length001065, checked001065, counted001065⟩

noncomputable def localPrefix001065 : CheckedPrimeCountBlock 26378241 2 163840 19237 :=
  localPrefix001064.append block001065

noncomputable def hints001066 : List Nat :=
  primeHintChunk% "../../certificates/prime-count33554432-v1/counts-001066.json" 33554432 13352959 26705921 2

theorem length001066 : hints001066.length = 16384 := by decide +kernel
theorem checked001066 : checkPrimeHints 26705921 2 hints001066 = true := by decide +kernel
theorem counted001066 : hints001066.count 0 <= 1922 := by decide +kernel

noncomputable def block001066 : CheckedPrimeCountBlock 26705921 2 16384 1922 :=
  ⟨hints001066, length001066, checked001066, counted001066⟩

noncomputable def localPrefix001066 : CheckedPrimeCountBlock 26378241 2 180224 21159 :=
  localPrefix001065.append block001066

noncomputable def hints001067 : List Nat :=
  primeHintChunk% "../../certificates/prime-count33554432-v1/counts-001067.json" 33554432 13369343 26738689 2

theorem length001067 : hints001067.length = 16384 := by decide +kernel
theorem checked001067 : checkPrimeHints 26738689 2 hints001067 = true := by decide +kernel
theorem counted001067 : hints001067.count 0 <= 1891 := by decide +kernel

noncomputable def block001067 : CheckedPrimeCountBlock 26738689 2 16384 1891 :=
  ⟨hints001067, length001067, checked001067, counted001067⟩

noncomputable def localPrefix001067 : CheckedPrimeCountBlock 26378241 2 196608 23050 :=
  localPrefix001066.append block001067

noncomputable def hints001068 : List Nat :=
  primeHintChunk% "../../certificates/prime-count33554432-v1/counts-001068.json" 33554432 13385727 26771457 2

theorem length001068 : hints001068.length = 16384 := by decide +kernel
theorem checked001068 : checkPrimeHints 26771457 2 hints001068 = true := by decide +kernel
theorem counted001068 : hints001068.count 0 <= 1908 := by decide +kernel

noncomputable def block001068 : CheckedPrimeCountBlock 26771457 2 16384 1908 :=
  ⟨hints001068, length001068, checked001068, counted001068⟩

noncomputable def localPrefix001068 : CheckedPrimeCountBlock 26378241 2 212992 24958 :=
  localPrefix001067.append block001068

noncomputable def hints001069 : List Nat :=
  primeHintChunk% "../../certificates/prime-count33554432-v1/counts-001069.json" 33554432 13402111 26804225 2

theorem length001069 : hints001069.length = 16384 := by decide +kernel
theorem checked001069 : checkPrimeHints 26804225 2 hints001069 = true := by decide +kernel
theorem counted001069 : hints001069.count 0 <= 1911 := by decide +kernel

noncomputable def block001069 : CheckedPrimeCountBlock 26804225 2 16384 1911 :=
  ⟨hints001069, length001069, checked001069, counted001069⟩

noncomputable def localPrefix001069 : CheckedPrimeCountBlock 26378241 2 229376 26869 :=
  localPrefix001068.append block001069

noncomputable def hints001070 : List Nat :=
  primeHintChunk% "../../certificates/prime-count33554432-v1/counts-001070.json" 33554432 13418495 26836993 2

theorem length001070 : hints001070.length = 16384 := by decide +kernel
theorem checked001070 : checkPrimeHints 26836993 2 hints001070 = true := by decide +kernel
theorem counted001070 : hints001070.count 0 <= 1923 := by decide +kernel

noncomputable def block001070 : CheckedPrimeCountBlock 26836993 2 16384 1923 :=
  ⟨hints001070, length001070, checked001070, counted001070⟩

noncomputable def localPrefix001070 : CheckedPrimeCountBlock 26378241 2 245760 28792 :=
  localPrefix001069.append block001070

noncomputable def hints001071 : List Nat :=
  primeHintChunk% "../../certificates/prime-count33554432-v1/counts-001071.json" 33554432 13434879 26869761 2

theorem length001071 : hints001071.length = 16384 := by decide +kernel
theorem checked001071 : checkPrimeHints 26869761 2 hints001071 = true := by decide +kernel
theorem counted001071 : hints001071.count 0 <= 1932 := by decide +kernel

noncomputable def block001071 : CheckedPrimeCountBlock 26869761 2 16384 1932 :=
  ⟨hints001071, length001071, checked001071, counted001071⟩

noncomputable def localPrefix001071 : CheckedPrimeCountBlock 26378241 2 262144 30724 :=
  localPrefix001070.append block001071

end JSP848.FullPrimeCount
