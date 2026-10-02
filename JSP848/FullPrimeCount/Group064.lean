import JSP848.PrimeCountInput

set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0

namespace JSP848.FullPrimeCount

open PrimeCountInput

noncomputable def hints001024 : List Nat :=
  primeHintChunk% "../../certificates/prime-count33554432-v1/counts-001024.json" 33554432 12664831 25329665 2

theorem length001024 : hints001024.length = 16384 := by decide +kernel
theorem checked001024 : checkPrimeHints 25329665 2 hints001024 = true := by decide +kernel
theorem counted001024 : hints001024.count 0 <= 1900 := by decide +kernel

noncomputable def block001024 : CheckedPrimeCountBlock 25329665 2 16384 1900 :=
  ⟨hints001024, length001024, checked001024, counted001024⟩

noncomputable def localPrefix001024 : CheckedPrimeCountBlock 25329665 2 16384 1900 :=
  block001024

noncomputable def hints001025 : List Nat :=
  primeHintChunk% "../../certificates/prime-count33554432-v1/counts-001025.json" 33554432 12681215 25362433 2

theorem length001025 : hints001025.length = 16384 := by decide +kernel
theorem checked001025 : checkPrimeHints 25362433 2 hints001025 = true := by decide +kernel
theorem counted001025 : hints001025.count 0 <= 1933 := by decide +kernel

noncomputable def block001025 : CheckedPrimeCountBlock 25362433 2 16384 1933 :=
  ⟨hints001025, length001025, checked001025, counted001025⟩

noncomputable def localPrefix001025 : CheckedPrimeCountBlock 25329665 2 32768 3833 :=
  localPrefix001024.append block001025

noncomputable def hints001026 : List Nat :=
  primeHintChunk% "../../certificates/prime-count33554432-v1/counts-001026.json" 33554432 12697599 25395201 2

theorem length001026 : hints001026.length = 16384 := by decide +kernel
theorem checked001026 : checkPrimeHints 25395201 2 hints001026 = true := by decide +kernel
theorem counted001026 : hints001026.count 0 <= 1887 := by decide +kernel

noncomputable def block001026 : CheckedPrimeCountBlock 25395201 2 16384 1887 :=
  ⟨hints001026, length001026, checked001026, counted001026⟩

noncomputable def localPrefix001026 : CheckedPrimeCountBlock 25329665 2 49152 5720 :=
  localPrefix001025.append block001026

noncomputable def hints001027 : List Nat :=
  primeHintChunk% "../../certificates/prime-count33554432-v1/counts-001027.json" 33554432 12713983 25427969 2

theorem length001027 : hints001027.length = 16384 := by decide +kernel
theorem checked001027 : checkPrimeHints 25427969 2 hints001027 = true := by decide +kernel
theorem counted001027 : hints001027.count 0 <= 1943 := by decide +kernel

noncomputable def block001027 : CheckedPrimeCountBlock 25427969 2 16384 1943 :=
  ⟨hints001027, length001027, checked001027, counted001027⟩

noncomputable def localPrefix001027 : CheckedPrimeCountBlock 25329665 2 65536 7663 :=
  localPrefix001026.append block001027

noncomputable def hints001028 : List Nat :=
  primeHintChunk% "../../certificates/prime-count33554432-v1/counts-001028.json" 33554432 12730367 25460737 2

theorem length001028 : hints001028.length = 16384 := by decide +kernel
theorem checked001028 : checkPrimeHints 25460737 2 hints001028 = true := by decide +kernel
theorem counted001028 : hints001028.count 0 <= 1936 := by decide +kernel

noncomputable def block001028 : CheckedPrimeCountBlock 25460737 2 16384 1936 :=
  ⟨hints001028, length001028, checked001028, counted001028⟩

noncomputable def localPrefix001028 : CheckedPrimeCountBlock 25329665 2 81920 9599 :=
  localPrefix001027.append block001028

noncomputable def hints001029 : List Nat :=
  primeHintChunk% "../../certificates/prime-count33554432-v1/counts-001029.json" 33554432 12746751 25493505 2

theorem length001029 : hints001029.length = 16384 := by decide +kernel
theorem checked001029 : checkPrimeHints 25493505 2 hints001029 = true := by decide +kernel
theorem counted001029 : hints001029.count 0 <= 1896 := by decide +kernel

noncomputable def block001029 : CheckedPrimeCountBlock 25493505 2 16384 1896 :=
  ⟨hints001029, length001029, checked001029, counted001029⟩

noncomputable def localPrefix001029 : CheckedPrimeCountBlock 25329665 2 98304 11495 :=
  localPrefix001028.append block001029

noncomputable def hints001030 : List Nat :=
  primeHintChunk% "../../certificates/prime-count33554432-v1/counts-001030.json" 33554432 12763135 25526273 2

theorem length001030 : hints001030.length = 16384 := by decide +kernel
theorem checked001030 : checkPrimeHints 25526273 2 hints001030 = true := by decide +kernel
theorem counted001030 : hints001030.count 0 <= 1940 := by decide +kernel

noncomputable def block001030 : CheckedPrimeCountBlock 25526273 2 16384 1940 :=
  ⟨hints001030, length001030, checked001030, counted001030⟩

noncomputable def localPrefix001030 : CheckedPrimeCountBlock 25329665 2 114688 13435 :=
  localPrefix001029.append block001030

noncomputable def hints001031 : List Nat :=
  primeHintChunk% "../../certificates/prime-count33554432-v1/counts-001031.json" 33554432 12779519 25559041 2

theorem length001031 : hints001031.length = 16384 := by decide +kernel
theorem checked001031 : checkPrimeHints 25559041 2 hints001031 = true := by decide +kernel
theorem counted001031 : hints001031.count 0 <= 1929 := by decide +kernel

noncomputable def block001031 : CheckedPrimeCountBlock 25559041 2 16384 1929 :=
  ⟨hints001031, length001031, checked001031, counted001031⟩

noncomputable def localPrefix001031 : CheckedPrimeCountBlock 25329665 2 131072 15364 :=
  localPrefix001030.append block001031

noncomputable def hints001032 : List Nat :=
  primeHintChunk% "../../certificates/prime-count33554432-v1/counts-001032.json" 33554432 12795903 25591809 2

theorem length001032 : hints001032.length = 16384 := by decide +kernel
theorem checked001032 : checkPrimeHints 25591809 2 hints001032 = true := by decide +kernel
theorem counted001032 : hints001032.count 0 <= 1904 := by decide +kernel

noncomputable def block001032 : CheckedPrimeCountBlock 25591809 2 16384 1904 :=
  ⟨hints001032, length001032, checked001032, counted001032⟩

noncomputable def localPrefix001032 : CheckedPrimeCountBlock 25329665 2 147456 17268 :=
  localPrefix001031.append block001032

noncomputable def hints001033 : List Nat :=
  primeHintChunk% "../../certificates/prime-count33554432-v1/counts-001033.json" 33554432 12812287 25624577 2

theorem length001033 : hints001033.length = 16384 := by decide +kernel
theorem checked001033 : checkPrimeHints 25624577 2 hints001033 = true := by decide +kernel
theorem counted001033 : hints001033.count 0 <= 1938 := by decide +kernel

noncomputable def block001033 : CheckedPrimeCountBlock 25624577 2 16384 1938 :=
  ⟨hints001033, length001033, checked001033, counted001033⟩

noncomputable def localPrefix001033 : CheckedPrimeCountBlock 25329665 2 163840 19206 :=
  localPrefix001032.append block001033

noncomputable def hints001034 : List Nat :=
  primeHintChunk% "../../certificates/prime-count33554432-v1/counts-001034.json" 33554432 12828671 25657345 2

theorem length001034 : hints001034.length = 16384 := by decide +kernel
theorem checked001034 : checkPrimeHints 25657345 2 hints001034 = true := by decide +kernel
theorem counted001034 : hints001034.count 0 <= 1901 := by decide +kernel

noncomputable def block001034 : CheckedPrimeCountBlock 25657345 2 16384 1901 :=
  ⟨hints001034, length001034, checked001034, counted001034⟩

noncomputable def localPrefix001034 : CheckedPrimeCountBlock 25329665 2 180224 21107 :=
  localPrefix001033.append block001034

noncomputable def hints001035 : List Nat :=
  primeHintChunk% "../../certificates/prime-count33554432-v1/counts-001035.json" 33554432 12845055 25690113 2

theorem length001035 : hints001035.length = 16384 := by decide +kernel
theorem checked001035 : checkPrimeHints 25690113 2 hints001035 = true := by decide +kernel
theorem counted001035 : hints001035.count 0 <= 1954 := by decide +kernel

noncomputable def block001035 : CheckedPrimeCountBlock 25690113 2 16384 1954 :=
  ⟨hints001035, length001035, checked001035, counted001035⟩

noncomputable def localPrefix001035 : CheckedPrimeCountBlock 25329665 2 196608 23061 :=
  localPrefix001034.append block001035

noncomputable def hints001036 : List Nat :=
  primeHintChunk% "../../certificates/prime-count33554432-v1/counts-001036.json" 33554432 12861439 25722881 2

theorem length001036 : hints001036.length = 16384 := by decide +kernel
theorem checked001036 : checkPrimeHints 25722881 2 hints001036 = true := by decide +kernel
theorem counted001036 : hints001036.count 0 <= 1900 := by decide +kernel

noncomputable def block001036 : CheckedPrimeCountBlock 25722881 2 16384 1900 :=
  ⟨hints001036, length001036, checked001036, counted001036⟩

noncomputable def localPrefix001036 : CheckedPrimeCountBlock 25329665 2 212992 24961 :=
  localPrefix001035.append block001036

noncomputable def hints001037 : List Nat :=
  primeHintChunk% "../../certificates/prime-count33554432-v1/counts-001037.json" 33554432 12877823 25755649 2

theorem length001037 : hints001037.length = 16384 := by decide +kernel
theorem checked001037 : checkPrimeHints 25755649 2 hints001037 = true := by decide +kernel
theorem counted001037 : hints001037.count 0 <= 1922 := by decide +kernel

noncomputable def block001037 : CheckedPrimeCountBlock 25755649 2 16384 1922 :=
  ⟨hints001037, length001037, checked001037, counted001037⟩

noncomputable def localPrefix001037 : CheckedPrimeCountBlock 25329665 2 229376 26883 :=
  localPrefix001036.append block001037

noncomputable def hints001038 : List Nat :=
  primeHintChunk% "../../certificates/prime-count33554432-v1/counts-001038.json" 33554432 12894207 25788417 2

theorem length001038 : hints001038.length = 16384 := by decide +kernel
theorem checked001038 : checkPrimeHints 25788417 2 hints001038 = true := by decide +kernel
theorem counted001038 : hints001038.count 0 <= 1948 := by decide +kernel

noncomputable def block001038 : CheckedPrimeCountBlock 25788417 2 16384 1948 :=
  ⟨hints001038, length001038, checked001038, counted001038⟩

noncomputable def localPrefix001038 : CheckedPrimeCountBlock 25329665 2 245760 28831 :=
  localPrefix001037.append block001038

noncomputable def hints001039 : List Nat :=
  primeHintChunk% "../../certificates/prime-count33554432-v1/counts-001039.json" 33554432 12910591 25821185 2

theorem length001039 : hints001039.length = 16384 := by decide +kernel
theorem checked001039 : checkPrimeHints 25821185 2 hints001039 = true := by decide +kernel
theorem counted001039 : hints001039.count 0 <= 1939 := by decide +kernel

noncomputable def block001039 : CheckedPrimeCountBlock 25821185 2 16384 1939 :=
  ⟨hints001039, length001039, checked001039, counted001039⟩

noncomputable def localPrefix001039 : CheckedPrimeCountBlock 25329665 2 262144 30770 :=
  localPrefix001038.append block001039

end JSP848.FullPrimeCount
