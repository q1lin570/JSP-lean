import JSP848.PrimeCountInput

set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0

namespace JSP848.FullPrimeCount

open PrimeCountInput

noncomputable def hints000704 : List Nat :=
  primeHintChunk% "../../certificates/prime-count33554432-v1/counts-000704.json" 33554432 7421951 14843905 2

theorem length000704 : hints000704.length = 16384 := by decide +kernel
theorem checked000704 : checkPrimeHints 14843905 2 hints000704 = true := by decide +kernel
theorem counted000704 : hints000704.count 0 <= 1968 := by decide +kernel

noncomputable def block000704 : CheckedPrimeCountBlock 14843905 2 16384 1968 :=
  ⟨hints000704, length000704, checked000704, counted000704⟩

noncomputable def localPrefix000704 : CheckedPrimeCountBlock 14843905 2 16384 1968 :=
  block000704

noncomputable def hints000705 : List Nat :=
  primeHintChunk% "../../certificates/prime-count33554432-v1/counts-000705.json" 33554432 7438335 14876673 2

theorem length000705 : hints000705.length = 16384 := by decide +kernel
theorem checked000705 : checkPrimeHints 14876673 2 hints000705 = true := by decide +kernel
theorem counted000705 : hints000705.count 0 <= 1949 := by decide +kernel

noncomputable def block000705 : CheckedPrimeCountBlock 14876673 2 16384 1949 :=
  ⟨hints000705, length000705, checked000705, counted000705⟩

noncomputable def localPrefix000705 : CheckedPrimeCountBlock 14843905 2 32768 3917 :=
  localPrefix000704.append block000705

noncomputable def hints000706 : List Nat :=
  primeHintChunk% "../../certificates/prime-count33554432-v1/counts-000706.json" 33554432 7454719 14909441 2

theorem length000706 : hints000706.length = 16384 := by decide +kernel
theorem checked000706 : checkPrimeHints 14909441 2 hints000706 = true := by decide +kernel
theorem counted000706 : hints000706.count 0 <= 1980 := by decide +kernel

noncomputable def block000706 : CheckedPrimeCountBlock 14909441 2 16384 1980 :=
  ⟨hints000706, length000706, checked000706, counted000706⟩

noncomputable def localPrefix000706 : CheckedPrimeCountBlock 14843905 2 49152 5897 :=
  localPrefix000705.append block000706

noncomputable def hints000707 : List Nat :=
  primeHintChunk% "../../certificates/prime-count33554432-v1/counts-000707.json" 33554432 7471103 14942209 2

theorem length000707 : hints000707.length = 16384 := by decide +kernel
theorem checked000707 : checkPrimeHints 14942209 2 hints000707 = true := by decide +kernel
theorem counted000707 : hints000707.count 0 <= 1966 := by decide +kernel

noncomputable def block000707 : CheckedPrimeCountBlock 14942209 2 16384 1966 :=
  ⟨hints000707, length000707, checked000707, counted000707⟩

noncomputable def localPrefix000707 : CheckedPrimeCountBlock 14843905 2 65536 7863 :=
  localPrefix000706.append block000707

noncomputable def hints000708 : List Nat :=
  primeHintChunk% "../../certificates/prime-count33554432-v1/counts-000708.json" 33554432 7487487 14974977 2

theorem length000708 : hints000708.length = 16384 := by decide +kernel
theorem checked000708 : checkPrimeHints 14974977 2 hints000708 = true := by decide +kernel
theorem counted000708 : hints000708.count 0 <= 1977 := by decide +kernel

noncomputable def block000708 : CheckedPrimeCountBlock 14974977 2 16384 1977 :=
  ⟨hints000708, length000708, checked000708, counted000708⟩

noncomputable def localPrefix000708 : CheckedPrimeCountBlock 14843905 2 81920 9840 :=
  localPrefix000707.append block000708

noncomputable def hints000709 : List Nat :=
  primeHintChunk% "../../certificates/prime-count33554432-v1/counts-000709.json" 33554432 7503871 15007745 2

theorem length000709 : hints000709.length = 16384 := by decide +kernel
theorem checked000709 : checkPrimeHints 15007745 2 hints000709 = true := by decide +kernel
theorem counted000709 : hints000709.count 0 <= 1995 := by decide +kernel

noncomputable def block000709 : CheckedPrimeCountBlock 15007745 2 16384 1995 :=
  ⟨hints000709, length000709, checked000709, counted000709⟩

noncomputable def localPrefix000709 : CheckedPrimeCountBlock 14843905 2 98304 11835 :=
  localPrefix000708.append block000709

noncomputable def hints000710 : List Nat :=
  primeHintChunk% "../../certificates/prime-count33554432-v1/counts-000710.json" 33554432 7520255 15040513 2

theorem length000710 : hints000710.length = 16384 := by decide +kernel
theorem checked000710 : checkPrimeHints 15040513 2 hints000710 = true := by decide +kernel
theorem counted000710 : hints000710.count 0 <= 1961 := by decide +kernel

noncomputable def block000710 : CheckedPrimeCountBlock 15040513 2 16384 1961 :=
  ⟨hints000710, length000710, checked000710, counted000710⟩

noncomputable def localPrefix000710 : CheckedPrimeCountBlock 14843905 2 114688 13796 :=
  localPrefix000709.append block000710

noncomputable def hints000711 : List Nat :=
  primeHintChunk% "../../certificates/prime-count33554432-v1/counts-000711.json" 33554432 7536639 15073281 2

theorem length000711 : hints000711.length = 16384 := by decide +kernel
theorem checked000711 : checkPrimeHints 15073281 2 hints000711 = true := by decide +kernel
theorem counted000711 : hints000711.count 0 <= 1988 := by decide +kernel

noncomputable def block000711 : CheckedPrimeCountBlock 15073281 2 16384 1988 :=
  ⟨hints000711, length000711, checked000711, counted000711⟩

noncomputable def localPrefix000711 : CheckedPrimeCountBlock 14843905 2 131072 15784 :=
  localPrefix000710.append block000711

noncomputable def hints000712 : List Nat :=
  primeHintChunk% "../../certificates/prime-count33554432-v1/counts-000712.json" 33554432 7553023 15106049 2

theorem length000712 : hints000712.length = 16384 := by decide +kernel
theorem checked000712 : checkPrimeHints 15106049 2 hints000712 = true := by decide +kernel
theorem counted000712 : hints000712.count 0 <= 1980 := by decide +kernel

noncomputable def block000712 : CheckedPrimeCountBlock 15106049 2 16384 1980 :=
  ⟨hints000712, length000712, checked000712, counted000712⟩

noncomputable def localPrefix000712 : CheckedPrimeCountBlock 14843905 2 147456 17764 :=
  localPrefix000711.append block000712

noncomputable def hints000713 : List Nat :=
  primeHintChunk% "../../certificates/prime-count33554432-v1/counts-000713.json" 33554432 7569407 15138817 2

theorem length000713 : hints000713.length = 16384 := by decide +kernel
theorem checked000713 : checkPrimeHints 15138817 2 hints000713 = true := by decide +kernel
theorem counted000713 : hints000713.count 0 <= 2003 := by decide +kernel

noncomputable def block000713 : CheckedPrimeCountBlock 15138817 2 16384 2003 :=
  ⟨hints000713, length000713, checked000713, counted000713⟩

noncomputable def localPrefix000713 : CheckedPrimeCountBlock 14843905 2 163840 19767 :=
  localPrefix000712.append block000713

noncomputable def hints000714 : List Nat :=
  primeHintChunk% "../../certificates/prime-count33554432-v1/counts-000714.json" 33554432 7585791 15171585 2

theorem length000714 : hints000714.length = 16384 := by decide +kernel
theorem checked000714 : checkPrimeHints 15171585 2 hints000714 = true := by decide +kernel
theorem counted000714 : hints000714.count 0 <= 1929 := by decide +kernel

noncomputable def block000714 : CheckedPrimeCountBlock 15171585 2 16384 1929 :=
  ⟨hints000714, length000714, checked000714, counted000714⟩

noncomputable def localPrefix000714 : CheckedPrimeCountBlock 14843905 2 180224 21696 :=
  localPrefix000713.append block000714

noncomputable def hints000715 : List Nat :=
  primeHintChunk% "../../certificates/prime-count33554432-v1/counts-000715.json" 33554432 7602175 15204353 2

theorem length000715 : hints000715.length = 16384 := by decide +kernel
theorem checked000715 : checkPrimeHints 15204353 2 hints000715 = true := by decide +kernel
theorem counted000715 : hints000715.count 0 <= 1993 := by decide +kernel

noncomputable def block000715 : CheckedPrimeCountBlock 15204353 2 16384 1993 :=
  ⟨hints000715, length000715, checked000715, counted000715⟩

noncomputable def localPrefix000715 : CheckedPrimeCountBlock 14843905 2 196608 23689 :=
  localPrefix000714.append block000715

noncomputable def hints000716 : List Nat :=
  primeHintChunk% "../../certificates/prime-count33554432-v1/counts-000716.json" 33554432 7618559 15237121 2

theorem length000716 : hints000716.length = 16384 := by decide +kernel
theorem checked000716 : checkPrimeHints 15237121 2 hints000716 = true := by decide +kernel
theorem counted000716 : hints000716.count 0 <= 2004 := by decide +kernel

noncomputable def block000716 : CheckedPrimeCountBlock 15237121 2 16384 2004 :=
  ⟨hints000716, length000716, checked000716, counted000716⟩

noncomputable def localPrefix000716 : CheckedPrimeCountBlock 14843905 2 212992 25693 :=
  localPrefix000715.append block000716

noncomputable def hints000717 : List Nat :=
  primeHintChunk% "../../certificates/prime-count33554432-v1/counts-000717.json" 33554432 7634943 15269889 2

theorem length000717 : hints000717.length = 16384 := by decide +kernel
theorem checked000717 : checkPrimeHints 15269889 2 hints000717 = true := by decide +kernel
theorem counted000717 : hints000717.count 0 <= 1989 := by decide +kernel

noncomputable def block000717 : CheckedPrimeCountBlock 15269889 2 16384 1989 :=
  ⟨hints000717, length000717, checked000717, counted000717⟩

noncomputable def localPrefix000717 : CheckedPrimeCountBlock 14843905 2 229376 27682 :=
  localPrefix000716.append block000717

noncomputable def hints000718 : List Nat :=
  primeHintChunk% "../../certificates/prime-count33554432-v1/counts-000718.json" 33554432 7651327 15302657 2

theorem length000718 : hints000718.length = 16384 := by decide +kernel
theorem checked000718 : checkPrimeHints 15302657 2 hints000718 = true := by decide +kernel
theorem counted000718 : hints000718.count 0 <= 1969 := by decide +kernel

noncomputable def block000718 : CheckedPrimeCountBlock 15302657 2 16384 1969 :=
  ⟨hints000718, length000718, checked000718, counted000718⟩

noncomputable def localPrefix000718 : CheckedPrimeCountBlock 14843905 2 245760 29651 :=
  localPrefix000717.append block000718

noncomputable def hints000719 : List Nat :=
  primeHintChunk% "../../certificates/prime-count33554432-v1/counts-000719.json" 33554432 7667711 15335425 2

theorem length000719 : hints000719.length = 16384 := by decide +kernel
theorem checked000719 : checkPrimeHints 15335425 2 hints000719 = true := by decide +kernel
theorem counted000719 : hints000719.count 0 <= 2001 := by decide +kernel

noncomputable def block000719 : CheckedPrimeCountBlock 15335425 2 16384 2001 :=
  ⟨hints000719, length000719, checked000719, counted000719⟩

noncomputable def localPrefix000719 : CheckedPrimeCountBlock 14843905 2 262144 31652 :=
  localPrefix000718.append block000719

end JSP848.FullPrimeCount
