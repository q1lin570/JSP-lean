import JSP848.PrimeCountInput

set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0

namespace JSP848.FullPrimeCount

open PrimeCountInput

noncomputable def hints000992 : List Nat :=
  primeHintChunk% "../../certificates/prime-count33554432-v1/counts-000992.json" 33554432 12140543 24281089 2

theorem length000992 : hints000992.length = 16384 := by decide +kernel
theorem checked000992 : checkPrimeHints 24281089 2 hints000992 = true := by decide +kernel
theorem counted000992 : hints000992.count 0 <= 1948 := by decide +kernel

noncomputable def block000992 : CheckedPrimeCountBlock 24281089 2 16384 1948 :=
  ⟨hints000992, length000992, checked000992, counted000992⟩

noncomputable def localPrefix000992 : CheckedPrimeCountBlock 24281089 2 16384 1948 :=
  block000992

noncomputable def hints000993 : List Nat :=
  primeHintChunk% "../../certificates/prime-count33554432-v1/counts-000993.json" 33554432 12156927 24313857 2

theorem length000993 : hints000993.length = 16384 := by decide +kernel
theorem checked000993 : checkPrimeHints 24313857 2 hints000993 = true := by decide +kernel
theorem counted000993 : hints000993.count 0 <= 1907 := by decide +kernel

noncomputable def block000993 : CheckedPrimeCountBlock 24313857 2 16384 1907 :=
  ⟨hints000993, length000993, checked000993, counted000993⟩

noncomputable def localPrefix000993 : CheckedPrimeCountBlock 24281089 2 32768 3855 :=
  localPrefix000992.append block000993

noncomputable def hints000994 : List Nat :=
  primeHintChunk% "../../certificates/prime-count33554432-v1/counts-000994.json" 33554432 12173311 24346625 2

theorem length000994 : hints000994.length = 16384 := by decide +kernel
theorem checked000994 : checkPrimeHints 24346625 2 hints000994 = true := by decide +kernel
theorem counted000994 : hints000994.count 0 <= 1937 := by decide +kernel

noncomputable def block000994 : CheckedPrimeCountBlock 24346625 2 16384 1937 :=
  ⟨hints000994, length000994, checked000994, counted000994⟩

noncomputable def localPrefix000994 : CheckedPrimeCountBlock 24281089 2 49152 5792 :=
  localPrefix000993.append block000994

noncomputable def hints000995 : List Nat :=
  primeHintChunk% "../../certificates/prime-count33554432-v1/counts-000995.json" 33554432 12189695 24379393 2

theorem length000995 : hints000995.length = 16384 := by decide +kernel
theorem checked000995 : checkPrimeHints 24379393 2 hints000995 = true := by decide +kernel
theorem counted000995 : hints000995.count 0 <= 1952 := by decide +kernel

noncomputable def block000995 : CheckedPrimeCountBlock 24379393 2 16384 1952 :=
  ⟨hints000995, length000995, checked000995, counted000995⟩

noncomputable def localPrefix000995 : CheckedPrimeCountBlock 24281089 2 65536 7744 :=
  localPrefix000994.append block000995

noncomputable def hints000996 : List Nat :=
  primeHintChunk% "../../certificates/prime-count33554432-v1/counts-000996.json" 33554432 12206079 24412161 2

theorem length000996 : hints000996.length = 16384 := by decide +kernel
theorem checked000996 : checkPrimeHints 24412161 2 hints000996 = true := by decide +kernel
theorem counted000996 : hints000996.count 0 <= 1910 := by decide +kernel

noncomputable def block000996 : CheckedPrimeCountBlock 24412161 2 16384 1910 :=
  ⟨hints000996, length000996, checked000996, counted000996⟩

noncomputable def localPrefix000996 : CheckedPrimeCountBlock 24281089 2 81920 9654 :=
  localPrefix000995.append block000996

noncomputable def hints000997 : List Nat :=
  primeHintChunk% "../../certificates/prime-count33554432-v1/counts-000997.json" 33554432 12222463 24444929 2

theorem length000997 : hints000997.length = 16384 := by decide +kernel
theorem checked000997 : checkPrimeHints 24444929 2 hints000997 = true := by decide +kernel
theorem counted000997 : hints000997.count 0 <= 1904 := by decide +kernel

noncomputable def block000997 : CheckedPrimeCountBlock 24444929 2 16384 1904 :=
  ⟨hints000997, length000997, checked000997, counted000997⟩

noncomputable def localPrefix000997 : CheckedPrimeCountBlock 24281089 2 98304 11558 :=
  localPrefix000996.append block000997

noncomputable def hints000998 : List Nat :=
  primeHintChunk% "../../certificates/prime-count33554432-v1/counts-000998.json" 33554432 12238847 24477697 2

theorem length000998 : hints000998.length = 16384 := by decide +kernel
theorem checked000998 : checkPrimeHints 24477697 2 hints000998 = true := by decide +kernel
theorem counted000998 : hints000998.count 0 <= 1938 := by decide +kernel

noncomputable def block000998 : CheckedPrimeCountBlock 24477697 2 16384 1938 :=
  ⟨hints000998, length000998, checked000998, counted000998⟩

noncomputable def localPrefix000998 : CheckedPrimeCountBlock 24281089 2 114688 13496 :=
  localPrefix000997.append block000998

noncomputable def hints000999 : List Nat :=
  primeHintChunk% "../../certificates/prime-count33554432-v1/counts-000999.json" 33554432 12255231 24510465 2

theorem length000999 : hints000999.length = 16384 := by decide +kernel
theorem checked000999 : checkPrimeHints 24510465 2 hints000999 = true := by decide +kernel
theorem counted000999 : hints000999.count 0 <= 1922 := by decide +kernel

noncomputable def block000999 : CheckedPrimeCountBlock 24510465 2 16384 1922 :=
  ⟨hints000999, length000999, checked000999, counted000999⟩

noncomputable def localPrefix000999 : CheckedPrimeCountBlock 24281089 2 131072 15418 :=
  localPrefix000998.append block000999

noncomputable def hints001000 : List Nat :=
  primeHintChunk% "../../certificates/prime-count33554432-v1/counts-001000.json" 33554432 12271615 24543233 2

theorem length001000 : hints001000.length = 16384 := by decide +kernel
theorem checked001000 : checkPrimeHints 24543233 2 hints001000 = true := by decide +kernel
theorem counted001000 : hints001000.count 0 <= 1941 := by decide +kernel

noncomputable def block001000 : CheckedPrimeCountBlock 24543233 2 16384 1941 :=
  ⟨hints001000, length001000, checked001000, counted001000⟩

noncomputable def localPrefix001000 : CheckedPrimeCountBlock 24281089 2 147456 17359 :=
  localPrefix000999.append block001000

noncomputable def hints001001 : List Nat :=
  primeHintChunk% "../../certificates/prime-count33554432-v1/counts-001001.json" 33554432 12287999 24576001 2

theorem length001001 : hints001001.length = 16384 := by decide +kernel
theorem checked001001 : checkPrimeHints 24576001 2 hints001001 = true := by decide +kernel
theorem counted001001 : hints001001.count 0 <= 1885 := by decide +kernel

noncomputable def block001001 : CheckedPrimeCountBlock 24576001 2 16384 1885 :=
  ⟨hints001001, length001001, checked001001, counted001001⟩

noncomputable def localPrefix001001 : CheckedPrimeCountBlock 24281089 2 163840 19244 :=
  localPrefix001000.append block001001

noncomputable def hints001002 : List Nat :=
  primeHintChunk% "../../certificates/prime-count33554432-v1/counts-001002.json" 33554432 12304383 24608769 2

theorem length001002 : hints001002.length = 16384 := by decide +kernel
theorem checked001002 : checkPrimeHints 24608769 2 hints001002 = true := by decide +kernel
theorem counted001002 : hints001002.count 0 <= 1929 := by decide +kernel

noncomputable def block001002 : CheckedPrimeCountBlock 24608769 2 16384 1929 :=
  ⟨hints001002, length001002, checked001002, counted001002⟩

noncomputable def localPrefix001002 : CheckedPrimeCountBlock 24281089 2 180224 21173 :=
  localPrefix001001.append block001002

noncomputable def hints001003 : List Nat :=
  primeHintChunk% "../../certificates/prime-count33554432-v1/counts-001003.json" 33554432 12320767 24641537 2

theorem length001003 : hints001003.length = 16384 := by decide +kernel
theorem checked001003 : checkPrimeHints 24641537 2 hints001003 = true := by decide +kernel
theorem counted001003 : hints001003.count 0 <= 1940 := by decide +kernel

noncomputable def block001003 : CheckedPrimeCountBlock 24641537 2 16384 1940 :=
  ⟨hints001003, length001003, checked001003, counted001003⟩

noncomputable def localPrefix001003 : CheckedPrimeCountBlock 24281089 2 196608 23113 :=
  localPrefix001002.append block001003

noncomputable def hints001004 : List Nat :=
  primeHintChunk% "../../certificates/prime-count33554432-v1/counts-001004.json" 33554432 12337151 24674305 2

theorem length001004 : hints001004.length = 16384 := by decide +kernel
theorem checked001004 : checkPrimeHints 24674305 2 hints001004 = true := by decide +kernel
theorem counted001004 : hints001004.count 0 <= 1963 := by decide +kernel

noncomputable def block001004 : CheckedPrimeCountBlock 24674305 2 16384 1963 :=
  ⟨hints001004, length001004, checked001004, counted001004⟩

noncomputable def localPrefix001004 : CheckedPrimeCountBlock 24281089 2 212992 25076 :=
  localPrefix001003.append block001004

noncomputable def hints001005 : List Nat :=
  primeHintChunk% "../../certificates/prime-count33554432-v1/counts-001005.json" 33554432 12353535 24707073 2

theorem length001005 : hints001005.length = 16384 := by decide +kernel
theorem checked001005 : checkPrimeHints 24707073 2 hints001005 = true := by decide +kernel
theorem counted001005 : hints001005.count 0 <= 1925 := by decide +kernel

noncomputable def block001005 : CheckedPrimeCountBlock 24707073 2 16384 1925 :=
  ⟨hints001005, length001005, checked001005, counted001005⟩

noncomputable def localPrefix001005 : CheckedPrimeCountBlock 24281089 2 229376 27001 :=
  localPrefix001004.append block001005

noncomputable def hints001006 : List Nat :=
  primeHintChunk% "../../certificates/prime-count33554432-v1/counts-001006.json" 33554432 12369919 24739841 2

theorem length001006 : hints001006.length = 16384 := by decide +kernel
theorem checked001006 : checkPrimeHints 24739841 2 hints001006 = true := by decide +kernel
theorem counted001006 : hints001006.count 0 <= 1942 := by decide +kernel

noncomputable def block001006 : CheckedPrimeCountBlock 24739841 2 16384 1942 :=
  ⟨hints001006, length001006, checked001006, counted001006⟩

noncomputable def localPrefix001006 : CheckedPrimeCountBlock 24281089 2 245760 28943 :=
  localPrefix001005.append block001006

noncomputable def hints001007 : List Nat :=
  primeHintChunk% "../../certificates/prime-count33554432-v1/counts-001007.json" 33554432 12386303 24772609 2

theorem length001007 : hints001007.length = 16384 := by decide +kernel
theorem checked001007 : checkPrimeHints 24772609 2 hints001007 = true := by decide +kernel
theorem counted001007 : hints001007.count 0 <= 1894 := by decide +kernel

noncomputable def block001007 : CheckedPrimeCountBlock 24772609 2 16384 1894 :=
  ⟨hints001007, length001007, checked001007, counted001007⟩

noncomputable def localPrefix001007 : CheckedPrimeCountBlock 24281089 2 262144 30837 :=
  localPrefix001006.append block001007

end JSP848.FullPrimeCount
