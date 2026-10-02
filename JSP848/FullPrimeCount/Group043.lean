import JSP848.PrimeCountInput

set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0

namespace JSP848.FullPrimeCount

open PrimeCountInput

noncomputable def hints000688 : List Nat :=
  primeHintChunk% "../../certificates/prime-count33554432-v1/counts-000688.json" 33554432 7159807 14319617 2

theorem length000688 : hints000688.length = 16384 := by decide +kernel
theorem checked000688 : checkPrimeHints 14319617 2 hints000688 = true := by decide +kernel
theorem counted000688 : hints000688.count 0 <= 1994 := by decide +kernel

noncomputable def block000688 : CheckedPrimeCountBlock 14319617 2 16384 1994 :=
  ⟨hints000688, length000688, checked000688, counted000688⟩

noncomputable def localPrefix000688 : CheckedPrimeCountBlock 14319617 2 16384 1994 :=
  block000688

noncomputable def hints000689 : List Nat :=
  primeHintChunk% "../../certificates/prime-count33554432-v1/counts-000689.json" 33554432 7176191 14352385 2

theorem length000689 : hints000689.length = 16384 := by decide +kernel
theorem checked000689 : checkPrimeHints 14352385 2 hints000689 = true := by decide +kernel
theorem counted000689 : hints000689.count 0 <= 2026 := by decide +kernel

noncomputable def block000689 : CheckedPrimeCountBlock 14352385 2 16384 2026 :=
  ⟨hints000689, length000689, checked000689, counted000689⟩

noncomputable def localPrefix000689 : CheckedPrimeCountBlock 14319617 2 32768 4020 :=
  localPrefix000688.append block000689

noncomputable def hints000690 : List Nat :=
  primeHintChunk% "../../certificates/prime-count33554432-v1/counts-000690.json" 33554432 7192575 14385153 2

theorem length000690 : hints000690.length = 16384 := by decide +kernel
theorem checked000690 : checkPrimeHints 14385153 2 hints000690 = true := by decide +kernel
theorem counted000690 : hints000690.count 0 <= 1992 := by decide +kernel

noncomputable def block000690 : CheckedPrimeCountBlock 14385153 2 16384 1992 :=
  ⟨hints000690, length000690, checked000690, counted000690⟩

noncomputable def localPrefix000690 : CheckedPrimeCountBlock 14319617 2 49152 6012 :=
  localPrefix000689.append block000690

noncomputable def hints000691 : List Nat :=
  primeHintChunk% "../../certificates/prime-count33554432-v1/counts-000691.json" 33554432 7208959 14417921 2

theorem length000691 : hints000691.length = 16384 := by decide +kernel
theorem checked000691 : checkPrimeHints 14417921 2 hints000691 = true := by decide +kernel
theorem counted000691 : hints000691.count 0 <= 1974 := by decide +kernel

noncomputable def block000691 : CheckedPrimeCountBlock 14417921 2 16384 1974 :=
  ⟨hints000691, length000691, checked000691, counted000691⟩

noncomputable def localPrefix000691 : CheckedPrimeCountBlock 14319617 2 65536 7986 :=
  localPrefix000690.append block000691

noncomputable def hints000692 : List Nat :=
  primeHintChunk% "../../certificates/prime-count33554432-v1/counts-000692.json" 33554432 7225343 14450689 2

theorem length000692 : hints000692.length = 16384 := by decide +kernel
theorem checked000692 : checkPrimeHints 14450689 2 hints000692 = true := by decide +kernel
theorem counted000692 : hints000692.count 0 <= 2000 := by decide +kernel

noncomputable def block000692 : CheckedPrimeCountBlock 14450689 2 16384 2000 :=
  ⟨hints000692, length000692, checked000692, counted000692⟩

noncomputable def localPrefix000692 : CheckedPrimeCountBlock 14319617 2 81920 9986 :=
  localPrefix000691.append block000692

noncomputable def hints000693 : List Nat :=
  primeHintChunk% "../../certificates/prime-count33554432-v1/counts-000693.json" 33554432 7241727 14483457 2

theorem length000693 : hints000693.length = 16384 := by decide +kernel
theorem checked000693 : checkPrimeHints 14483457 2 hints000693 = true := by decide +kernel
theorem counted000693 : hints000693.count 0 <= 1948 := by decide +kernel

noncomputable def block000693 : CheckedPrimeCountBlock 14483457 2 16384 1948 :=
  ⟨hints000693, length000693, checked000693, counted000693⟩

noncomputable def localPrefix000693 : CheckedPrimeCountBlock 14319617 2 98304 11934 :=
  localPrefix000692.append block000693

noncomputable def hints000694 : List Nat :=
  primeHintChunk% "../../certificates/prime-count33554432-v1/counts-000694.json" 33554432 7258111 14516225 2

theorem length000694 : hints000694.length = 16384 := by decide +kernel
theorem checked000694 : checkPrimeHints 14516225 2 hints000694 = true := by decide +kernel
theorem counted000694 : hints000694.count 0 <= 1983 := by decide +kernel

noncomputable def block000694 : CheckedPrimeCountBlock 14516225 2 16384 1983 :=
  ⟨hints000694, length000694, checked000694, counted000694⟩

noncomputable def localPrefix000694 : CheckedPrimeCountBlock 14319617 2 114688 13917 :=
  localPrefix000693.append block000694

noncomputable def hints000695 : List Nat :=
  primeHintChunk% "../../certificates/prime-count33554432-v1/counts-000695.json" 33554432 7274495 14548993 2

theorem length000695 : hints000695.length = 16384 := by decide +kernel
theorem checked000695 : checkPrimeHints 14548993 2 hints000695 = true := by decide +kernel
theorem counted000695 : hints000695.count 0 <= 2021 := by decide +kernel

noncomputable def block000695 : CheckedPrimeCountBlock 14548993 2 16384 2021 :=
  ⟨hints000695, length000695, checked000695, counted000695⟩

noncomputable def localPrefix000695 : CheckedPrimeCountBlock 14319617 2 131072 15938 :=
  localPrefix000694.append block000695

noncomputable def hints000696 : List Nat :=
  primeHintChunk% "../../certificates/prime-count33554432-v1/counts-000696.json" 33554432 7290879 14581761 2

theorem length000696 : hints000696.length = 16384 := by decide +kernel
theorem checked000696 : checkPrimeHints 14581761 2 hints000696 = true := by decide +kernel
theorem counted000696 : hints000696.count 0 <= 1967 := by decide +kernel

noncomputable def block000696 : CheckedPrimeCountBlock 14581761 2 16384 1967 :=
  ⟨hints000696, length000696, checked000696, counted000696⟩

noncomputable def localPrefix000696 : CheckedPrimeCountBlock 14319617 2 147456 17905 :=
  localPrefix000695.append block000696

noncomputable def hints000697 : List Nat :=
  primeHintChunk% "../../certificates/prime-count33554432-v1/counts-000697.json" 33554432 7307263 14614529 2

theorem length000697 : hints000697.length = 16384 := by decide +kernel
theorem checked000697 : checkPrimeHints 14614529 2 hints000697 = true := by decide +kernel
theorem counted000697 : hints000697.count 0 <= 1950 := by decide +kernel

noncomputable def block000697 : CheckedPrimeCountBlock 14614529 2 16384 1950 :=
  ⟨hints000697, length000697, checked000697, counted000697⟩

noncomputable def localPrefix000697 : CheckedPrimeCountBlock 14319617 2 163840 19855 :=
  localPrefix000696.append block000697

noncomputable def hints000698 : List Nat :=
  primeHintChunk% "../../certificates/prime-count33554432-v1/counts-000698.json" 33554432 7323647 14647297 2

theorem length000698 : hints000698.length = 16384 := by decide +kernel
theorem checked000698 : checkPrimeHints 14647297 2 hints000698 = true := by decide +kernel
theorem counted000698 : hints000698.count 0 <= 1996 := by decide +kernel

noncomputable def block000698 : CheckedPrimeCountBlock 14647297 2 16384 1996 :=
  ⟨hints000698, length000698, checked000698, counted000698⟩

noncomputable def localPrefix000698 : CheckedPrimeCountBlock 14319617 2 180224 21851 :=
  localPrefix000697.append block000698

noncomputable def hints000699 : List Nat :=
  primeHintChunk% "../../certificates/prime-count33554432-v1/counts-000699.json" 33554432 7340031 14680065 2

theorem length000699 : hints000699.length = 16384 := by decide +kernel
theorem checked000699 : checkPrimeHints 14680065 2 hints000699 = true := by decide +kernel
theorem counted000699 : hints000699.count 0 <= 1991 := by decide +kernel

noncomputable def block000699 : CheckedPrimeCountBlock 14680065 2 16384 1991 :=
  ⟨hints000699, length000699, checked000699, counted000699⟩

noncomputable def localPrefix000699 : CheckedPrimeCountBlock 14319617 2 196608 23842 :=
  localPrefix000698.append block000699

noncomputable def hints000700 : List Nat :=
  primeHintChunk% "../../certificates/prime-count33554432-v1/counts-000700.json" 33554432 7356415 14712833 2

theorem length000700 : hints000700.length = 16384 := by decide +kernel
theorem checked000700 : checkPrimeHints 14712833 2 hints000700 = true := by decide +kernel
theorem counted000700 : hints000700.count 0 <= 1990 := by decide +kernel

noncomputable def block000700 : CheckedPrimeCountBlock 14712833 2 16384 1990 :=
  ⟨hints000700, length000700, checked000700, counted000700⟩

noncomputable def localPrefix000700 : CheckedPrimeCountBlock 14319617 2 212992 25832 :=
  localPrefix000699.append block000700

noncomputable def hints000701 : List Nat :=
  primeHintChunk% "../../certificates/prime-count33554432-v1/counts-000701.json" 33554432 7372799 14745601 2

theorem length000701 : hints000701.length = 16384 := by decide +kernel
theorem checked000701 : checkPrimeHints 14745601 2 hints000701 = true := by decide +kernel
theorem counted000701 : hints000701.count 0 <= 2024 := by decide +kernel

noncomputable def block000701 : CheckedPrimeCountBlock 14745601 2 16384 2024 :=
  ⟨hints000701, length000701, checked000701, counted000701⟩

noncomputable def localPrefix000701 : CheckedPrimeCountBlock 14319617 2 229376 27856 :=
  localPrefix000700.append block000701

noncomputable def hints000702 : List Nat :=
  primeHintChunk% "../../certificates/prime-count33554432-v1/counts-000702.json" 33554432 7389183 14778369 2

theorem length000702 : hints000702.length = 16384 := by decide +kernel
theorem checked000702 : checkPrimeHints 14778369 2 hints000702 = true := by decide +kernel
theorem counted000702 : hints000702.count 0 <= 1977 := by decide +kernel

noncomputable def block000702 : CheckedPrimeCountBlock 14778369 2 16384 1977 :=
  ⟨hints000702, length000702, checked000702, counted000702⟩

noncomputable def localPrefix000702 : CheckedPrimeCountBlock 14319617 2 245760 29833 :=
  localPrefix000701.append block000702

noncomputable def hints000703 : List Nat :=
  primeHintChunk% "../../certificates/prime-count33554432-v1/counts-000703.json" 33554432 7405567 14811137 2

theorem length000703 : hints000703.length = 16384 := by decide +kernel
theorem checked000703 : checkPrimeHints 14811137 2 hints000703 = true := by decide +kernel
theorem counted000703 : hints000703.count 0 <= 2000 := by decide +kernel

noncomputable def block000703 : CheckedPrimeCountBlock 14811137 2 16384 2000 :=
  ⟨hints000703, length000703, checked000703, counted000703⟩

noncomputable def localPrefix000703 : CheckedPrimeCountBlock 14319617 2 262144 31833 :=
  localPrefix000702.append block000703

end JSP848.FullPrimeCount
