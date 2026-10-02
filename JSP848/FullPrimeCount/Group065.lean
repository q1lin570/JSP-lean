import JSP848.PrimeCountInput

set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0

namespace JSP848.FullPrimeCount

open PrimeCountInput

noncomputable def hints001040 : List Nat :=
  primeHintChunk% "../../certificates/prime-count33554432-v1/counts-001040.json" 33554432 12926975 25853953 2

theorem length001040 : hints001040.length = 16384 := by decide +kernel
theorem checked001040 : checkPrimeHints 25853953 2 hints001040 = true := by decide +kernel
theorem counted001040 : hints001040.count 0 <= 1917 := by decide +kernel

noncomputable def block001040 : CheckedPrimeCountBlock 25853953 2 16384 1917 :=
  ⟨hints001040, length001040, checked001040, counted001040⟩

noncomputable def localPrefix001040 : CheckedPrimeCountBlock 25853953 2 16384 1917 :=
  block001040

noncomputable def hints001041 : List Nat :=
  primeHintChunk% "../../certificates/prime-count33554432-v1/counts-001041.json" 33554432 12943359 25886721 2

theorem length001041 : hints001041.length = 16384 := by decide +kernel
theorem checked001041 : checkPrimeHints 25886721 2 hints001041 = true := by decide +kernel
theorem counted001041 : hints001041.count 0 <= 1904 := by decide +kernel

noncomputable def block001041 : CheckedPrimeCountBlock 25886721 2 16384 1904 :=
  ⟨hints001041, length001041, checked001041, counted001041⟩

noncomputable def localPrefix001041 : CheckedPrimeCountBlock 25853953 2 32768 3821 :=
  localPrefix001040.append block001041

noncomputable def hints001042 : List Nat :=
  primeHintChunk% "../../certificates/prime-count33554432-v1/counts-001042.json" 33554432 12959743 25919489 2

theorem length001042 : hints001042.length = 16384 := by decide +kernel
theorem checked001042 : checkPrimeHints 25919489 2 hints001042 = true := by decide +kernel
theorem counted001042 : hints001042.count 0 <= 1927 := by decide +kernel

noncomputable def block001042 : CheckedPrimeCountBlock 25919489 2 16384 1927 :=
  ⟨hints001042, length001042, checked001042, counted001042⟩

noncomputable def localPrefix001042 : CheckedPrimeCountBlock 25853953 2 49152 5748 :=
  localPrefix001041.append block001042

noncomputable def hints001043 : List Nat :=
  primeHintChunk% "../../certificates/prime-count33554432-v1/counts-001043.json" 33554432 12976127 25952257 2

theorem length001043 : hints001043.length = 16384 := by decide +kernel
theorem checked001043 : checkPrimeHints 25952257 2 hints001043 = true := by decide +kernel
theorem counted001043 : hints001043.count 0 <= 1938 := by decide +kernel

noncomputable def block001043 : CheckedPrimeCountBlock 25952257 2 16384 1938 :=
  ⟨hints001043, length001043, checked001043, counted001043⟩

noncomputable def localPrefix001043 : CheckedPrimeCountBlock 25853953 2 65536 7686 :=
  localPrefix001042.append block001043

noncomputable def hints001044 : List Nat :=
  primeHintChunk% "../../certificates/prime-count33554432-v1/counts-001044.json" 33554432 12992511 25985025 2

theorem length001044 : hints001044.length = 16384 := by decide +kernel
theorem checked001044 : checkPrimeHints 25985025 2 hints001044 = true := by decide +kernel
theorem counted001044 : hints001044.count 0 <= 1907 := by decide +kernel

noncomputable def block001044 : CheckedPrimeCountBlock 25985025 2 16384 1907 :=
  ⟨hints001044, length001044, checked001044, counted001044⟩

noncomputable def localPrefix001044 : CheckedPrimeCountBlock 25853953 2 81920 9593 :=
  localPrefix001043.append block001044

noncomputable def hints001045 : List Nat :=
  primeHintChunk% "../../certificates/prime-count33554432-v1/counts-001045.json" 33554432 13008895 26017793 2

theorem length001045 : hints001045.length = 16384 := by decide +kernel
theorem checked001045 : checkPrimeHints 26017793 2 hints001045 = true := by decide +kernel
theorem counted001045 : hints001045.count 0 <= 1913 := by decide +kernel

noncomputable def block001045 : CheckedPrimeCountBlock 26017793 2 16384 1913 :=
  ⟨hints001045, length001045, checked001045, counted001045⟩

noncomputable def localPrefix001045 : CheckedPrimeCountBlock 25853953 2 98304 11506 :=
  localPrefix001044.append block001045

noncomputable def hints001046 : List Nat :=
  primeHintChunk% "../../certificates/prime-count33554432-v1/counts-001046.json" 33554432 13025279 26050561 2

theorem length001046 : hints001046.length = 16384 := by decide +kernel
theorem checked001046 : checkPrimeHints 26050561 2 hints001046 = true := by decide +kernel
theorem counted001046 : hints001046.count 0 <= 1902 := by decide +kernel

noncomputable def block001046 : CheckedPrimeCountBlock 26050561 2 16384 1902 :=
  ⟨hints001046, length001046, checked001046, counted001046⟩

noncomputable def localPrefix001046 : CheckedPrimeCountBlock 25853953 2 114688 13408 :=
  localPrefix001045.append block001046

noncomputable def hints001047 : List Nat :=
  primeHintChunk% "../../certificates/prime-count33554432-v1/counts-001047.json" 33554432 13041663 26083329 2

theorem length001047 : hints001047.length = 16384 := by decide +kernel
theorem checked001047 : checkPrimeHints 26083329 2 hints001047 = true := by decide +kernel
theorem counted001047 : hints001047.count 0 <= 1920 := by decide +kernel

noncomputable def block001047 : CheckedPrimeCountBlock 26083329 2 16384 1920 :=
  ⟨hints001047, length001047, checked001047, counted001047⟩

noncomputable def localPrefix001047 : CheckedPrimeCountBlock 25853953 2 131072 15328 :=
  localPrefix001046.append block001047

noncomputable def hints001048 : List Nat :=
  primeHintChunk% "../../certificates/prime-count33554432-v1/counts-001048.json" 33554432 13058047 26116097 2

theorem length001048 : hints001048.length = 16384 := by decide +kernel
theorem checked001048 : checkPrimeHints 26116097 2 hints001048 = true := by decide +kernel
theorem counted001048 : hints001048.count 0 <= 1943 := by decide +kernel

noncomputable def block001048 : CheckedPrimeCountBlock 26116097 2 16384 1943 :=
  ⟨hints001048, length001048, checked001048, counted001048⟩

noncomputable def localPrefix001048 : CheckedPrimeCountBlock 25853953 2 147456 17271 :=
  localPrefix001047.append block001048

noncomputable def hints001049 : List Nat :=
  primeHintChunk% "../../certificates/prime-count33554432-v1/counts-001049.json" 33554432 13074431 26148865 2

theorem length001049 : hints001049.length = 16384 := by decide +kernel
theorem checked001049 : checkPrimeHints 26148865 2 hints001049 = true := by decide +kernel
theorem counted001049 : hints001049.count 0 <= 1911 := by decide +kernel

noncomputable def block001049 : CheckedPrimeCountBlock 26148865 2 16384 1911 :=
  ⟨hints001049, length001049, checked001049, counted001049⟩

noncomputable def localPrefix001049 : CheckedPrimeCountBlock 25853953 2 163840 19182 :=
  localPrefix001048.append block001049

noncomputable def hints001050 : List Nat :=
  primeHintChunk% "../../certificates/prime-count33554432-v1/counts-001050.json" 33554432 13090815 26181633 2

theorem length001050 : hints001050.length = 16384 := by decide +kernel
theorem checked001050 : checkPrimeHints 26181633 2 hints001050 = true := by decide +kernel
theorem counted001050 : hints001050.count 0 <= 1899 := by decide +kernel

noncomputable def block001050 : CheckedPrimeCountBlock 26181633 2 16384 1899 :=
  ⟨hints001050, length001050, checked001050, counted001050⟩

noncomputable def localPrefix001050 : CheckedPrimeCountBlock 25853953 2 180224 21081 :=
  localPrefix001049.append block001050

noncomputable def hints001051 : List Nat :=
  primeHintChunk% "../../certificates/prime-count33554432-v1/counts-001051.json" 33554432 13107199 26214401 2

theorem length001051 : hints001051.length = 16384 := by decide +kernel
theorem checked001051 : checkPrimeHints 26214401 2 hints001051 = true := by decide +kernel
theorem counted001051 : hints001051.count 0 <= 1906 := by decide +kernel

noncomputable def block001051 : CheckedPrimeCountBlock 26214401 2 16384 1906 :=
  ⟨hints001051, length001051, checked001051, counted001051⟩

noncomputable def localPrefix001051 : CheckedPrimeCountBlock 25853953 2 196608 22987 :=
  localPrefix001050.append block001051

noncomputable def hints001052 : List Nat :=
  primeHintChunk% "../../certificates/prime-count33554432-v1/counts-001052.json" 33554432 13123583 26247169 2

theorem length001052 : hints001052.length = 16384 := by decide +kernel
theorem checked001052 : checkPrimeHints 26247169 2 hints001052 = true := by decide +kernel
theorem counted001052 : hints001052.count 0 <= 1911 := by decide +kernel

noncomputable def block001052 : CheckedPrimeCountBlock 26247169 2 16384 1911 :=
  ⟨hints001052, length001052, checked001052, counted001052⟩

noncomputable def localPrefix001052 : CheckedPrimeCountBlock 25853953 2 212992 24898 :=
  localPrefix001051.append block001052

noncomputable def hints001053 : List Nat :=
  primeHintChunk% "../../certificates/prime-count33554432-v1/counts-001053.json" 33554432 13139967 26279937 2

theorem length001053 : hints001053.length = 16384 := by decide +kernel
theorem checked001053 : checkPrimeHints 26279937 2 hints001053 = true := by decide +kernel
theorem counted001053 : hints001053.count 0 <= 1914 := by decide +kernel

noncomputable def block001053 : CheckedPrimeCountBlock 26279937 2 16384 1914 :=
  ⟨hints001053, length001053, checked001053, counted001053⟩

noncomputable def localPrefix001053 : CheckedPrimeCountBlock 25853953 2 229376 26812 :=
  localPrefix001052.append block001053

noncomputable def hints001054 : List Nat :=
  primeHintChunk% "../../certificates/prime-count33554432-v1/counts-001054.json" 33554432 13156351 26312705 2

theorem length001054 : hints001054.length = 16384 := by decide +kernel
theorem checked001054 : checkPrimeHints 26312705 2 hints001054 = true := by decide +kernel
theorem counted001054 : hints001054.count 0 <= 1914 := by decide +kernel

noncomputable def block001054 : CheckedPrimeCountBlock 26312705 2 16384 1914 :=
  ⟨hints001054, length001054, checked001054, counted001054⟩

noncomputable def localPrefix001054 : CheckedPrimeCountBlock 25853953 2 245760 28726 :=
  localPrefix001053.append block001054

noncomputable def hints001055 : List Nat :=
  primeHintChunk% "../../certificates/prime-count33554432-v1/counts-001055.json" 33554432 13172735 26345473 2

theorem length001055 : hints001055.length = 16384 := by decide +kernel
theorem checked001055 : checkPrimeHints 26345473 2 hints001055 = true := by decide +kernel
theorem counted001055 : hints001055.count 0 <= 1918 := by decide +kernel

noncomputable def block001055 : CheckedPrimeCountBlock 26345473 2 16384 1918 :=
  ⟨hints001055, length001055, checked001055, counted001055⟩

noncomputable def localPrefix001055 : CheckedPrimeCountBlock 25853953 2 262144 30644 :=
  localPrefix001054.append block001055

end JSP848.FullPrimeCount
