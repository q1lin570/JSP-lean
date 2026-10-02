import JSP848.PrimeCountInput

set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0

namespace JSP848.FullPrimeCount

open PrimeCountInput

noncomputable def hints001264 : List Nat :=
  primeHintChunk% "../../certificates/prime-count33554432-v1/counts-001264.json" 33554432 16596991 33193985 2

theorem length001264 : hints001264.length = 16384 := by decide +kernel
theorem checked001264 : checkPrimeHints 33193985 2 hints001264 = true := by decide +kernel
theorem counted001264 : hints001264.count 0 <= 1871 := by decide +kernel

noncomputable def block001264 : CheckedPrimeCountBlock 33193985 2 16384 1871 :=
  ⟨hints001264, length001264, checked001264, counted001264⟩

noncomputable def localPrefix001264 : CheckedPrimeCountBlock 33193985 2 16384 1871 :=
  block001264

noncomputable def hints001265 : List Nat :=
  primeHintChunk% "../../certificates/prime-count33554432-v1/counts-001265.json" 33554432 16613375 33226753 2

theorem length001265 : hints001265.length = 16384 := by decide +kernel
theorem checked001265 : checkPrimeHints 33226753 2 hints001265 = true := by decide +kernel
theorem counted001265 : hints001265.count 0 <= 1927 := by decide +kernel

noncomputable def block001265 : CheckedPrimeCountBlock 33226753 2 16384 1927 :=
  ⟨hints001265, length001265, checked001265, counted001265⟩

noncomputable def localPrefix001265 : CheckedPrimeCountBlock 33193985 2 32768 3798 :=
  localPrefix001264.append block001265

noncomputable def hints001266 : List Nat :=
  primeHintChunk% "../../certificates/prime-count33554432-v1/counts-001266.json" 33554432 16629759 33259521 2

theorem length001266 : hints001266.length = 16384 := by decide +kernel
theorem checked001266 : checkPrimeHints 33259521 2 hints001266 = true := by decide +kernel
theorem counted001266 : hints001266.count 0 <= 1906 := by decide +kernel

noncomputable def block001266 : CheckedPrimeCountBlock 33259521 2 16384 1906 :=
  ⟨hints001266, length001266, checked001266, counted001266⟩

noncomputable def localPrefix001266 : CheckedPrimeCountBlock 33193985 2 49152 5704 :=
  localPrefix001265.append block001266

noncomputable def hints001267 : List Nat :=
  primeHintChunk% "../../certificates/prime-count33554432-v1/counts-001267.json" 33554432 16646143 33292289 2

theorem length001267 : hints001267.length = 16384 := by decide +kernel
theorem checked001267 : checkPrimeHints 33292289 2 hints001267 = true := by decide +kernel
theorem counted001267 : hints001267.count 0 <= 1884 := by decide +kernel

noncomputable def block001267 : CheckedPrimeCountBlock 33292289 2 16384 1884 :=
  ⟨hints001267, length001267, checked001267, counted001267⟩

noncomputable def localPrefix001267 : CheckedPrimeCountBlock 33193985 2 65536 7588 :=
  localPrefix001266.append block001267

noncomputable def hints001268 : List Nat :=
  primeHintChunk% "../../certificates/prime-count33554432-v1/counts-001268.json" 33554432 16662527 33325057 2

theorem length001268 : hints001268.length = 16384 := by decide +kernel
theorem checked001268 : checkPrimeHints 33325057 2 hints001268 = true := by decide +kernel
theorem counted001268 : hints001268.count 0 <= 1898 := by decide +kernel

noncomputable def block001268 : CheckedPrimeCountBlock 33325057 2 16384 1898 :=
  ⟨hints001268, length001268, checked001268, counted001268⟩

noncomputable def localPrefix001268 : CheckedPrimeCountBlock 33193985 2 81920 9486 :=
  localPrefix001267.append block001268

noncomputable def hints001269 : List Nat :=
  primeHintChunk% "../../certificates/prime-count33554432-v1/counts-001269.json" 33554432 16678911 33357825 2

theorem length001269 : hints001269.length = 16384 := by decide +kernel
theorem checked001269 : checkPrimeHints 33357825 2 hints001269 = true := by decide +kernel
theorem counted001269 : hints001269.count 0 <= 1928 := by decide +kernel

noncomputable def block001269 : CheckedPrimeCountBlock 33357825 2 16384 1928 :=
  ⟨hints001269, length001269, checked001269, counted001269⟩

noncomputable def localPrefix001269 : CheckedPrimeCountBlock 33193985 2 98304 11414 :=
  localPrefix001268.append block001269

noncomputable def hints001270 : List Nat :=
  primeHintChunk% "../../certificates/prime-count33554432-v1/counts-001270.json" 33554432 16695295 33390593 2

theorem length001270 : hints001270.length = 16384 := by decide +kernel
theorem checked001270 : checkPrimeHints 33390593 2 hints001270 = true := by decide +kernel
theorem counted001270 : hints001270.count 0 <= 1889 := by decide +kernel

noncomputable def block001270 : CheckedPrimeCountBlock 33390593 2 16384 1889 :=
  ⟨hints001270, length001270, checked001270, counted001270⟩

noncomputable def localPrefix001270 : CheckedPrimeCountBlock 33193985 2 114688 13303 :=
  localPrefix001269.append block001270

noncomputable def hints001271 : List Nat :=
  primeHintChunk% "../../certificates/prime-count33554432-v1/counts-001271.json" 33554432 16711679 33423361 2

theorem length001271 : hints001271.length = 16384 := by decide +kernel
theorem checked001271 : checkPrimeHints 33423361 2 hints001271 = true := by decide +kernel
theorem counted001271 : hints001271.count 0 <= 1899 := by decide +kernel

noncomputable def block001271 : CheckedPrimeCountBlock 33423361 2 16384 1899 :=
  ⟨hints001271, length001271, checked001271, counted001271⟩

noncomputable def localPrefix001271 : CheckedPrimeCountBlock 33193985 2 131072 15202 :=
  localPrefix001270.append block001271

noncomputable def hints001272 : List Nat :=
  primeHintChunk% "../../certificates/prime-count33554432-v1/counts-001272.json" 33554432 16728063 33456129 2

theorem length001272 : hints001272.length = 16384 := by decide +kernel
theorem checked001272 : checkPrimeHints 33456129 2 hints001272 = true := by decide +kernel
theorem counted001272 : hints001272.count 0 <= 1899 := by decide +kernel

noncomputable def block001272 : CheckedPrimeCountBlock 33456129 2 16384 1899 :=
  ⟨hints001272, length001272, checked001272, counted001272⟩

noncomputable def localPrefix001272 : CheckedPrimeCountBlock 33193985 2 147456 17101 :=
  localPrefix001271.append block001272

noncomputable def hints001273 : List Nat :=
  primeHintChunk% "../../certificates/prime-count33554432-v1/counts-001273.json" 33554432 16744447 33488897 2

theorem length001273 : hints001273.length = 16384 := by decide +kernel
theorem checked001273 : checkPrimeHints 33488897 2 hints001273 = true := by decide +kernel
theorem counted001273 : hints001273.count 0 <= 1842 := by decide +kernel

noncomputable def block001273 : CheckedPrimeCountBlock 33488897 2 16384 1842 :=
  ⟨hints001273, length001273, checked001273, counted001273⟩

noncomputable def localPrefix001273 : CheckedPrimeCountBlock 33193985 2 163840 18943 :=
  localPrefix001272.append block001273

noncomputable def hints001274 : List Nat :=
  primeHintChunk% "../../certificates/prime-count33554432-v1/counts-001274.json" 33554432 16760831 33521665 2

theorem length001274 : hints001274.length = 16384 := by decide +kernel
theorem checked001274 : checkPrimeHints 33521665 2 hints001274 = true := by decide +kernel
theorem counted001274 : hints001274.count 0 <= 1890 := by decide +kernel

noncomputable def block001274 : CheckedPrimeCountBlock 33521665 2 16384 1890 :=
  ⟨hints001274, length001274, checked001274, counted001274⟩

noncomputable def localPrefix001274 : CheckedPrimeCountBlock 33193985 2 180224 20833 :=
  localPrefix001273.append block001274

end JSP848.FullPrimeCount
