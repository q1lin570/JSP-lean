import JSP848.PrimeCountInput

set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0

namespace JSP848.FullPrimeCount

open PrimeCountInput

noncomputable def hints000784 : List Nat :=
  primeHintChunk% "../../certificates/prime-count33554432-v1/counts-000784.json" 33554432 8732671 17465345 2

theorem length000784 : hints000784.length = 16384 := by decide +kernel
theorem checked000784 : checkPrimeHints 17465345 2 hints000784 = true := by decide +kernel
theorem counted000784 : hints000784.count 0 <= 2018 := by decide +kernel

noncomputable def block000784 : CheckedPrimeCountBlock 17465345 2 16384 2018 :=
  ⟨hints000784, length000784, checked000784, counted000784⟩

noncomputable def localPrefix000784 : CheckedPrimeCountBlock 17465345 2 16384 2018 :=
  block000784

noncomputable def hints000785 : List Nat :=
  primeHintChunk% "../../certificates/prime-count33554432-v1/counts-000785.json" 33554432 8749055 17498113 2

theorem length000785 : hints000785.length = 16384 := by decide +kernel
theorem checked000785 : checkPrimeHints 17498113 2 hints000785 = true := by decide +kernel
theorem counted000785 : hints000785.count 0 <= 1969 := by decide +kernel

noncomputable def block000785 : CheckedPrimeCountBlock 17498113 2 16384 1969 :=
  ⟨hints000785, length000785, checked000785, counted000785⟩

noncomputable def localPrefix000785 : CheckedPrimeCountBlock 17465345 2 32768 3987 :=
  localPrefix000784.append block000785

noncomputable def hints000786 : List Nat :=
  primeHintChunk% "../../certificates/prime-count33554432-v1/counts-000786.json" 33554432 8765439 17530881 2

theorem length000786 : hints000786.length = 16384 := by decide +kernel
theorem checked000786 : checkPrimeHints 17530881 2 hints000786 = true := by decide +kernel
theorem counted000786 : hints000786.count 0 <= 1969 := by decide +kernel

noncomputable def block000786 : CheckedPrimeCountBlock 17530881 2 16384 1969 :=
  ⟨hints000786, length000786, checked000786, counted000786⟩

noncomputable def localPrefix000786 : CheckedPrimeCountBlock 17465345 2 49152 5956 :=
  localPrefix000785.append block000786

noncomputable def hints000787 : List Nat :=
  primeHintChunk% "../../certificates/prime-count33554432-v1/counts-000787.json" 33554432 8781823 17563649 2

theorem length000787 : hints000787.length = 16384 := by decide +kernel
theorem checked000787 : checkPrimeHints 17563649 2 hints000787 = true := by decide +kernel
theorem counted000787 : hints000787.count 0 <= 1983 := by decide +kernel

noncomputable def block000787 : CheckedPrimeCountBlock 17563649 2 16384 1983 :=
  ⟨hints000787, length000787, checked000787, counted000787⟩

noncomputable def localPrefix000787 : CheckedPrimeCountBlock 17465345 2 65536 7939 :=
  localPrefix000786.append block000787

noncomputable def hints000788 : List Nat :=
  primeHintChunk% "../../certificates/prime-count33554432-v1/counts-000788.json" 33554432 8798207 17596417 2

theorem length000788 : hints000788.length = 16384 := by decide +kernel
theorem checked000788 : checkPrimeHints 17596417 2 hints000788 = true := by decide +kernel
theorem counted000788 : hints000788.count 0 <= 1950 := by decide +kernel

noncomputable def block000788 : CheckedPrimeCountBlock 17596417 2 16384 1950 :=
  ⟨hints000788, length000788, checked000788, counted000788⟩

noncomputable def localPrefix000788 : CheckedPrimeCountBlock 17465345 2 81920 9889 :=
  localPrefix000787.append block000788

noncomputable def hints000789 : List Nat :=
  primeHintChunk% "../../certificates/prime-count33554432-v1/counts-000789.json" 33554432 8814591 17629185 2

theorem length000789 : hints000789.length = 16384 := by decide +kernel
theorem checked000789 : checkPrimeHints 17629185 2 hints000789 = true := by decide +kernel
theorem counted000789 : hints000789.count 0 <= 1951 := by decide +kernel

noncomputable def block000789 : CheckedPrimeCountBlock 17629185 2 16384 1951 :=
  ⟨hints000789, length000789, checked000789, counted000789⟩

noncomputable def localPrefix000789 : CheckedPrimeCountBlock 17465345 2 98304 11840 :=
  localPrefix000788.append block000789

noncomputable def hints000790 : List Nat :=
  primeHintChunk% "../../certificates/prime-count33554432-v1/counts-000790.json" 33554432 8830975 17661953 2

theorem length000790 : hints000790.length = 16384 := by decide +kernel
theorem checked000790 : checkPrimeHints 17661953 2 hints000790 = true := by decide +kernel
theorem counted000790 : hints000790.count 0 <= 1956 := by decide +kernel

noncomputable def block000790 : CheckedPrimeCountBlock 17661953 2 16384 1956 :=
  ⟨hints000790, length000790, checked000790, counted000790⟩

noncomputable def localPrefix000790 : CheckedPrimeCountBlock 17465345 2 114688 13796 :=
  localPrefix000789.append block000790

noncomputable def hints000791 : List Nat :=
  primeHintChunk% "../../certificates/prime-count33554432-v1/counts-000791.json" 33554432 8847359 17694721 2

theorem length000791 : hints000791.length = 16384 := by decide +kernel
theorem checked000791 : checkPrimeHints 17694721 2 hints000791 = true := by decide +kernel
theorem counted000791 : hints000791.count 0 <= 1945 := by decide +kernel

noncomputable def block000791 : CheckedPrimeCountBlock 17694721 2 16384 1945 :=
  ⟨hints000791, length000791, checked000791, counted000791⟩

noncomputable def localPrefix000791 : CheckedPrimeCountBlock 17465345 2 131072 15741 :=
  localPrefix000790.append block000791

noncomputable def hints000792 : List Nat :=
  primeHintChunk% "../../certificates/prime-count33554432-v1/counts-000792.json" 33554432 8863743 17727489 2

theorem length000792 : hints000792.length = 16384 := by decide +kernel
theorem checked000792 : checkPrimeHints 17727489 2 hints000792 = true := by decide +kernel
theorem counted000792 : hints000792.count 0 <= 1938 := by decide +kernel

noncomputable def block000792 : CheckedPrimeCountBlock 17727489 2 16384 1938 :=
  ⟨hints000792, length000792, checked000792, counted000792⟩

noncomputable def localPrefix000792 : CheckedPrimeCountBlock 17465345 2 147456 17679 :=
  localPrefix000791.append block000792

noncomputable def hints000793 : List Nat :=
  primeHintChunk% "../../certificates/prime-count33554432-v1/counts-000793.json" 33554432 8880127 17760257 2

theorem length000793 : hints000793.length = 16384 := by decide +kernel
theorem checked000793 : checkPrimeHints 17760257 2 hints000793 = true := by decide +kernel
theorem counted000793 : hints000793.count 0 <= 1999 := by decide +kernel

noncomputable def block000793 : CheckedPrimeCountBlock 17760257 2 16384 1999 :=
  ⟨hints000793, length000793, checked000793, counted000793⟩

noncomputable def localPrefix000793 : CheckedPrimeCountBlock 17465345 2 163840 19678 :=
  localPrefix000792.append block000793

noncomputable def hints000794 : List Nat :=
  primeHintChunk% "../../certificates/prime-count33554432-v1/counts-000794.json" 33554432 8896511 17793025 2

theorem length000794 : hints000794.length = 16384 := by decide +kernel
theorem checked000794 : checkPrimeHints 17793025 2 hints000794 = true := by decide +kernel
theorem counted000794 : hints000794.count 0 <= 1948 := by decide +kernel

noncomputable def block000794 : CheckedPrimeCountBlock 17793025 2 16384 1948 :=
  ⟨hints000794, length000794, checked000794, counted000794⟩

noncomputable def localPrefix000794 : CheckedPrimeCountBlock 17465345 2 180224 21626 :=
  localPrefix000793.append block000794

noncomputable def hints000795 : List Nat :=
  primeHintChunk% "../../certificates/prime-count33554432-v1/counts-000795.json" 33554432 8912895 17825793 2

theorem length000795 : hints000795.length = 16384 := by decide +kernel
theorem checked000795 : checkPrimeHints 17825793 2 hints000795 = true := by decide +kernel
theorem counted000795 : hints000795.count 0 <= 1919 := by decide +kernel

noncomputable def block000795 : CheckedPrimeCountBlock 17825793 2 16384 1919 :=
  ⟨hints000795, length000795, checked000795, counted000795⟩

noncomputable def localPrefix000795 : CheckedPrimeCountBlock 17465345 2 196608 23545 :=
  localPrefix000794.append block000795

noncomputable def hints000796 : List Nat :=
  primeHintChunk% "../../certificates/prime-count33554432-v1/counts-000796.json" 33554432 8929279 17858561 2

theorem length000796 : hints000796.length = 16384 := by decide +kernel
theorem checked000796 : checkPrimeHints 17858561 2 hints000796 = true := by decide +kernel
theorem counted000796 : hints000796.count 0 <= 1977 := by decide +kernel

noncomputable def block000796 : CheckedPrimeCountBlock 17858561 2 16384 1977 :=
  ⟨hints000796, length000796, checked000796, counted000796⟩

noncomputable def localPrefix000796 : CheckedPrimeCountBlock 17465345 2 212992 25522 :=
  localPrefix000795.append block000796

noncomputable def hints000797 : List Nat :=
  primeHintChunk% "../../certificates/prime-count33554432-v1/counts-000797.json" 33554432 8945663 17891329 2

theorem length000797 : hints000797.length = 16384 := by decide +kernel
theorem checked000797 : checkPrimeHints 17891329 2 hints000797 = true := by decide +kernel
theorem counted000797 : hints000797.count 0 <= 1960 := by decide +kernel

noncomputable def block000797 : CheckedPrimeCountBlock 17891329 2 16384 1960 :=
  ⟨hints000797, length000797, checked000797, counted000797⟩

noncomputable def localPrefix000797 : CheckedPrimeCountBlock 17465345 2 229376 27482 :=
  localPrefix000796.append block000797

noncomputable def hints000798 : List Nat :=
  primeHintChunk% "../../certificates/prime-count33554432-v1/counts-000798.json" 33554432 8962047 17924097 2

theorem length000798 : hints000798.length = 16384 := by decide +kernel
theorem checked000798 : checkPrimeHints 17924097 2 hints000798 = true := by decide +kernel
theorem counted000798 : hints000798.count 0 <= 2016 := by decide +kernel

noncomputable def block000798 : CheckedPrimeCountBlock 17924097 2 16384 2016 :=
  ⟨hints000798, length000798, checked000798, counted000798⟩

noncomputable def localPrefix000798 : CheckedPrimeCountBlock 17465345 2 245760 29498 :=
  localPrefix000797.append block000798

noncomputable def hints000799 : List Nat :=
  primeHintChunk% "../../certificates/prime-count33554432-v1/counts-000799.json" 33554432 8978431 17956865 2

theorem length000799 : hints000799.length = 16384 := by decide +kernel
theorem checked000799 : checkPrimeHints 17956865 2 hints000799 = true := by decide +kernel
theorem counted000799 : hints000799.count 0 <= 1998 := by decide +kernel

noncomputable def block000799 : CheckedPrimeCountBlock 17956865 2 16384 1998 :=
  ⟨hints000799, length000799, checked000799, counted000799⟩

noncomputable def localPrefix000799 : CheckedPrimeCountBlock 17465345 2 262144 31496 :=
  localPrefix000798.append block000799

end JSP848.FullPrimeCount
