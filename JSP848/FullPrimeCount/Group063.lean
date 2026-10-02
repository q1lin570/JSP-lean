import JSP848.PrimeCountInput

set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0

namespace JSP848.FullPrimeCount

open PrimeCountInput

noncomputable def hints001008 : List Nat :=
  primeHintChunk% "../../certificates/prime-count33554432-v1/counts-001008.json" 33554432 12402687 24805377 2

theorem length001008 : hints001008.length = 16384 := by decide +kernel
theorem checked001008 : checkPrimeHints 24805377 2 hints001008 = true := by decide +kernel
theorem counted001008 : hints001008.count 0 <= 1908 := by decide +kernel

noncomputable def block001008 : CheckedPrimeCountBlock 24805377 2 16384 1908 :=
  ⟨hints001008, length001008, checked001008, counted001008⟩

noncomputable def localPrefix001008 : CheckedPrimeCountBlock 24805377 2 16384 1908 :=
  block001008

noncomputable def hints001009 : List Nat :=
  primeHintChunk% "../../certificates/prime-count33554432-v1/counts-001009.json" 33554432 12419071 24838145 2

theorem length001009 : hints001009.length = 16384 := by decide +kernel
theorem checked001009 : checkPrimeHints 24838145 2 hints001009 = true := by decide +kernel
theorem counted001009 : hints001009.count 0 <= 1933 := by decide +kernel

noncomputable def block001009 : CheckedPrimeCountBlock 24838145 2 16384 1933 :=
  ⟨hints001009, length001009, checked001009, counted001009⟩

noncomputable def localPrefix001009 : CheckedPrimeCountBlock 24805377 2 32768 3841 :=
  localPrefix001008.append block001009

noncomputable def hints001010 : List Nat :=
  primeHintChunk% "../../certificates/prime-count33554432-v1/counts-001010.json" 33554432 12435455 24870913 2

theorem length001010 : hints001010.length = 16384 := by decide +kernel
theorem checked001010 : checkPrimeHints 24870913 2 hints001010 = true := by decide +kernel
theorem counted001010 : hints001010.count 0 <= 1921 := by decide +kernel

noncomputable def block001010 : CheckedPrimeCountBlock 24870913 2 16384 1921 :=
  ⟨hints001010, length001010, checked001010, counted001010⟩

noncomputable def localPrefix001010 : CheckedPrimeCountBlock 24805377 2 49152 5762 :=
  localPrefix001009.append block001010

noncomputable def hints001011 : List Nat :=
  primeHintChunk% "../../certificates/prime-count33554432-v1/counts-001011.json" 33554432 12451839 24903681 2

theorem length001011 : hints001011.length = 16384 := by decide +kernel
theorem checked001011 : checkPrimeHints 24903681 2 hints001011 = true := by decide +kernel
theorem counted001011 : hints001011.count 0 <= 1890 := by decide +kernel

noncomputable def block001011 : CheckedPrimeCountBlock 24903681 2 16384 1890 :=
  ⟨hints001011, length001011, checked001011, counted001011⟩

noncomputable def localPrefix001011 : CheckedPrimeCountBlock 24805377 2 65536 7652 :=
  localPrefix001010.append block001011

noncomputable def hints001012 : List Nat :=
  primeHintChunk% "../../certificates/prime-count33554432-v1/counts-001012.json" 33554432 12468223 24936449 2

theorem length001012 : hints001012.length = 16384 := by decide +kernel
theorem checked001012 : checkPrimeHints 24936449 2 hints001012 = true := by decide +kernel
theorem counted001012 : hints001012.count 0 <= 1935 := by decide +kernel

noncomputable def block001012 : CheckedPrimeCountBlock 24936449 2 16384 1935 :=
  ⟨hints001012, length001012, checked001012, counted001012⟩

noncomputable def localPrefix001012 : CheckedPrimeCountBlock 24805377 2 81920 9587 :=
  localPrefix001011.append block001012

noncomputable def hints001013 : List Nat :=
  primeHintChunk% "../../certificates/prime-count33554432-v1/counts-001013.json" 33554432 12484607 24969217 2

theorem length001013 : hints001013.length = 16384 := by decide +kernel
theorem checked001013 : checkPrimeHints 24969217 2 hints001013 = true := by decide +kernel
theorem counted001013 : hints001013.count 0 <= 1932 := by decide +kernel

noncomputable def block001013 : CheckedPrimeCountBlock 24969217 2 16384 1932 :=
  ⟨hints001013, length001013, checked001013, counted001013⟩

noncomputable def localPrefix001013 : CheckedPrimeCountBlock 24805377 2 98304 11519 :=
  localPrefix001012.append block001013

noncomputable def hints001014 : List Nat :=
  primeHintChunk% "../../certificates/prime-count33554432-v1/counts-001014.json" 33554432 12500991 25001985 2

theorem length001014 : hints001014.length = 16384 := by decide +kernel
theorem checked001014 : checkPrimeHints 25001985 2 hints001014 = true := by decide +kernel
theorem counted001014 : hints001014.count 0 <= 1914 := by decide +kernel

noncomputable def block001014 : CheckedPrimeCountBlock 25001985 2 16384 1914 :=
  ⟨hints001014, length001014, checked001014, counted001014⟩

noncomputable def localPrefix001014 : CheckedPrimeCountBlock 24805377 2 114688 13433 :=
  localPrefix001013.append block001014

noncomputable def hints001015 : List Nat :=
  primeHintChunk% "../../certificates/prime-count33554432-v1/counts-001015.json" 33554432 12517375 25034753 2

theorem length001015 : hints001015.length = 16384 := by decide +kernel
theorem checked001015 : checkPrimeHints 25034753 2 hints001015 = true := by decide +kernel
theorem counted001015 : hints001015.count 0 <= 1925 := by decide +kernel

noncomputable def block001015 : CheckedPrimeCountBlock 25034753 2 16384 1925 :=
  ⟨hints001015, length001015, checked001015, counted001015⟩

noncomputable def localPrefix001015 : CheckedPrimeCountBlock 24805377 2 131072 15358 :=
  localPrefix001014.append block001015

noncomputable def hints001016 : List Nat :=
  primeHintChunk% "../../certificates/prime-count33554432-v1/counts-001016.json" 33554432 12533759 25067521 2

theorem length001016 : hints001016.length = 16384 := by decide +kernel
theorem checked001016 : checkPrimeHints 25067521 2 hints001016 = true := by decide +kernel
theorem counted001016 : hints001016.count 0 <= 1933 := by decide +kernel

noncomputable def block001016 : CheckedPrimeCountBlock 25067521 2 16384 1933 :=
  ⟨hints001016, length001016, checked001016, counted001016⟩

noncomputable def localPrefix001016 : CheckedPrimeCountBlock 24805377 2 147456 17291 :=
  localPrefix001015.append block001016

noncomputable def hints001017 : List Nat :=
  primeHintChunk% "../../certificates/prime-count33554432-v1/counts-001017.json" 33554432 12550143 25100289 2

theorem length001017 : hints001017.length = 16384 := by decide +kernel
theorem checked001017 : checkPrimeHints 25100289 2 hints001017 = true := by decide +kernel
theorem counted001017 : hints001017.count 0 <= 1963 := by decide +kernel

noncomputable def block001017 : CheckedPrimeCountBlock 25100289 2 16384 1963 :=
  ⟨hints001017, length001017, checked001017, counted001017⟩

noncomputable def localPrefix001017 : CheckedPrimeCountBlock 24805377 2 163840 19254 :=
  localPrefix001016.append block001017

noncomputable def hints001018 : List Nat :=
  primeHintChunk% "../../certificates/prime-count33554432-v1/counts-001018.json" 33554432 12566527 25133057 2

theorem length001018 : hints001018.length = 16384 := by decide +kernel
theorem checked001018 : checkPrimeHints 25133057 2 hints001018 = true := by decide +kernel
theorem counted001018 : hints001018.count 0 <= 1865 := by decide +kernel

noncomputable def block001018 : CheckedPrimeCountBlock 25133057 2 16384 1865 :=
  ⟨hints001018, length001018, checked001018, counted001018⟩

noncomputable def localPrefix001018 : CheckedPrimeCountBlock 24805377 2 180224 21119 :=
  localPrefix001017.append block001018

noncomputable def hints001019 : List Nat :=
  primeHintChunk% "../../certificates/prime-count33554432-v1/counts-001019.json" 33554432 12582911 25165825 2

theorem length001019 : hints001019.length = 16384 := by decide +kernel
theorem checked001019 : checkPrimeHints 25165825 2 hints001019 = true := by decide +kernel
theorem counted001019 : hints001019.count 0 <= 1909 := by decide +kernel

noncomputable def block001019 : CheckedPrimeCountBlock 25165825 2 16384 1909 :=
  ⟨hints001019, length001019, checked001019, counted001019⟩

noncomputable def localPrefix001019 : CheckedPrimeCountBlock 24805377 2 196608 23028 :=
  localPrefix001018.append block001019

noncomputable def hints001020 : List Nat :=
  primeHintChunk% "../../certificates/prime-count33554432-v1/counts-001020.json" 33554432 12599295 25198593 2

theorem length001020 : hints001020.length = 16384 := by decide +kernel
theorem checked001020 : checkPrimeHints 25198593 2 hints001020 = true := by decide +kernel
theorem counted001020 : hints001020.count 0 <= 1885 := by decide +kernel

noncomputable def block001020 : CheckedPrimeCountBlock 25198593 2 16384 1885 :=
  ⟨hints001020, length001020, checked001020, counted001020⟩

noncomputable def localPrefix001020 : CheckedPrimeCountBlock 24805377 2 212992 24913 :=
  localPrefix001019.append block001020

noncomputable def hints001021 : List Nat :=
  primeHintChunk% "../../certificates/prime-count33554432-v1/counts-001021.json" 33554432 12615679 25231361 2

theorem length001021 : hints001021.length = 16384 := by decide +kernel
theorem checked001021 : checkPrimeHints 25231361 2 hints001021 = true := by decide +kernel
theorem counted001021 : hints001021.count 0 <= 1893 := by decide +kernel

noncomputable def block001021 : CheckedPrimeCountBlock 25231361 2 16384 1893 :=
  ⟨hints001021, length001021, checked001021, counted001021⟩

noncomputable def localPrefix001021 : CheckedPrimeCountBlock 24805377 2 229376 26806 :=
  localPrefix001020.append block001021

noncomputable def hints001022 : List Nat :=
  primeHintChunk% "../../certificates/prime-count33554432-v1/counts-001022.json" 33554432 12632063 25264129 2

theorem length001022 : hints001022.length = 16384 := by decide +kernel
theorem checked001022 : checkPrimeHints 25264129 2 hints001022 = true := by decide +kernel
theorem counted001022 : hints001022.count 0 <= 1896 := by decide +kernel

noncomputable def block001022 : CheckedPrimeCountBlock 25264129 2 16384 1896 :=
  ⟨hints001022, length001022, checked001022, counted001022⟩

noncomputable def localPrefix001022 : CheckedPrimeCountBlock 24805377 2 245760 28702 :=
  localPrefix001021.append block001022

noncomputable def hints001023 : List Nat :=
  primeHintChunk% "../../certificates/prime-count33554432-v1/counts-001023.json" 33554432 12648447 25296897 2

theorem length001023 : hints001023.length = 16384 := by decide +kernel
theorem checked001023 : checkPrimeHints 25296897 2 hints001023 = true := by decide +kernel
theorem counted001023 : hints001023.count 0 <= 1959 := by decide +kernel

noncomputable def block001023 : CheckedPrimeCountBlock 25296897 2 16384 1959 :=
  ⟨hints001023, length001023, checked001023, counted001023⟩

noncomputable def localPrefix001023 : CheckedPrimeCountBlock 24805377 2 262144 30661 :=
  localPrefix001022.append block001023

end JSP848.FullPrimeCount
