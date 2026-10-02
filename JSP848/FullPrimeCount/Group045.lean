import JSP848.PrimeCountInput

set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0

namespace JSP848.FullPrimeCount

open PrimeCountInput

noncomputable def hints000720 : List Nat :=
  primeHintChunk% "../../certificates/prime-count33554432-v1/counts-000720.json" 33554432 7684095 15368193 2

theorem length000720 : hints000720.length = 16384 := by decide +kernel
theorem checked000720 : checkPrimeHints 15368193 2 hints000720 = true := by decide +kernel
theorem counted000720 : hints000720.count 0 <= 1904 := by decide +kernel

noncomputable def block000720 : CheckedPrimeCountBlock 15368193 2 16384 1904 :=
  ⟨hints000720, length000720, checked000720, counted000720⟩

noncomputable def localPrefix000720 : CheckedPrimeCountBlock 15368193 2 16384 1904 :=
  block000720

noncomputable def hints000721 : List Nat :=
  primeHintChunk% "../../certificates/prime-count33554432-v1/counts-000721.json" 33554432 7700479 15400961 2

theorem length000721 : hints000721.length = 16384 := by decide +kernel
theorem checked000721 : checkPrimeHints 15400961 2 hints000721 = true := by decide +kernel
theorem counted000721 : hints000721.count 0 <= 1973 := by decide +kernel

noncomputable def block000721 : CheckedPrimeCountBlock 15400961 2 16384 1973 :=
  ⟨hints000721, length000721, checked000721, counted000721⟩

noncomputable def localPrefix000721 : CheckedPrimeCountBlock 15368193 2 32768 3877 :=
  localPrefix000720.append block000721

noncomputable def hints000722 : List Nat :=
  primeHintChunk% "../../certificates/prime-count33554432-v1/counts-000722.json" 33554432 7716863 15433729 2

theorem length000722 : hints000722.length = 16384 := by decide +kernel
theorem checked000722 : checkPrimeHints 15433729 2 hints000722 = true := by decide +kernel
theorem counted000722 : hints000722.count 0 <= 1978 := by decide +kernel

noncomputable def block000722 : CheckedPrimeCountBlock 15433729 2 16384 1978 :=
  ⟨hints000722, length000722, checked000722, counted000722⟩

noncomputable def localPrefix000722 : CheckedPrimeCountBlock 15368193 2 49152 5855 :=
  localPrefix000721.append block000722

noncomputable def hints000723 : List Nat :=
  primeHintChunk% "../../certificates/prime-count33554432-v1/counts-000723.json" 33554432 7733247 15466497 2

theorem length000723 : hints000723.length = 16384 := by decide +kernel
theorem checked000723 : checkPrimeHints 15466497 2 hints000723 = true := by decide +kernel
theorem counted000723 : hints000723.count 0 <= 1971 := by decide +kernel

noncomputable def block000723 : CheckedPrimeCountBlock 15466497 2 16384 1971 :=
  ⟨hints000723, length000723, checked000723, counted000723⟩

noncomputable def localPrefix000723 : CheckedPrimeCountBlock 15368193 2 65536 7826 :=
  localPrefix000722.append block000723

noncomputable def hints000724 : List Nat :=
  primeHintChunk% "../../certificates/prime-count33554432-v1/counts-000724.json" 33554432 7749631 15499265 2

theorem length000724 : hints000724.length = 16384 := by decide +kernel
theorem checked000724 : checkPrimeHints 15499265 2 hints000724 = true := by decide +kernel
theorem counted000724 : hints000724.count 0 <= 2020 := by decide +kernel

noncomputable def block000724 : CheckedPrimeCountBlock 15499265 2 16384 2020 :=
  ⟨hints000724, length000724, checked000724, counted000724⟩

noncomputable def localPrefix000724 : CheckedPrimeCountBlock 15368193 2 81920 9846 :=
  localPrefix000723.append block000724

noncomputable def hints000725 : List Nat :=
  primeHintChunk% "../../certificates/prime-count33554432-v1/counts-000725.json" 33554432 7766015 15532033 2

theorem length000725 : hints000725.length = 16384 := by decide +kernel
theorem checked000725 : checkPrimeHints 15532033 2 hints000725 = true := by decide +kernel
theorem counted000725 : hints000725.count 0 <= 2015 := by decide +kernel

noncomputable def block000725 : CheckedPrimeCountBlock 15532033 2 16384 2015 :=
  ⟨hints000725, length000725, checked000725, counted000725⟩

noncomputable def localPrefix000725 : CheckedPrimeCountBlock 15368193 2 98304 11861 :=
  localPrefix000724.append block000725

noncomputable def hints000726 : List Nat :=
  primeHintChunk% "../../certificates/prime-count33554432-v1/counts-000726.json" 33554432 7782399 15564801 2

theorem length000726 : hints000726.length = 16384 := by decide +kernel
theorem checked000726 : checkPrimeHints 15564801 2 hints000726 = true := by decide +kernel
theorem counted000726 : hints000726.count 0 <= 1994 := by decide +kernel

noncomputable def block000726 : CheckedPrimeCountBlock 15564801 2 16384 1994 :=
  ⟨hints000726, length000726, checked000726, counted000726⟩

noncomputable def localPrefix000726 : CheckedPrimeCountBlock 15368193 2 114688 13855 :=
  localPrefix000725.append block000726

noncomputable def hints000727 : List Nat :=
  primeHintChunk% "../../certificates/prime-count33554432-v1/counts-000727.json" 33554432 7798783 15597569 2

theorem length000727 : hints000727.length = 16384 := by decide +kernel
theorem checked000727 : checkPrimeHints 15597569 2 hints000727 = true := by decide +kernel
theorem counted000727 : hints000727.count 0 <= 1964 := by decide +kernel

noncomputable def block000727 : CheckedPrimeCountBlock 15597569 2 16384 1964 :=
  ⟨hints000727, length000727, checked000727, counted000727⟩

noncomputable def localPrefix000727 : CheckedPrimeCountBlock 15368193 2 131072 15819 :=
  localPrefix000726.append block000727

noncomputable def hints000728 : List Nat :=
  primeHintChunk% "../../certificates/prime-count33554432-v1/counts-000728.json" 33554432 7815167 15630337 2

theorem length000728 : hints000728.length = 16384 := by decide +kernel
theorem checked000728 : checkPrimeHints 15630337 2 hints000728 = true := by decide +kernel
theorem counted000728 : hints000728.count 0 <= 1973 := by decide +kernel

noncomputable def block000728 : CheckedPrimeCountBlock 15630337 2 16384 1973 :=
  ⟨hints000728, length000728, checked000728, counted000728⟩

noncomputable def localPrefix000728 : CheckedPrimeCountBlock 15368193 2 147456 17792 :=
  localPrefix000727.append block000728

noncomputable def hints000729 : List Nat :=
  primeHintChunk% "../../certificates/prime-count33554432-v1/counts-000729.json" 33554432 7831551 15663105 2

theorem length000729 : hints000729.length = 16384 := by decide +kernel
theorem checked000729 : checkPrimeHints 15663105 2 hints000729 = true := by decide +kernel
theorem counted000729 : hints000729.count 0 <= 1977 := by decide +kernel

noncomputable def block000729 : CheckedPrimeCountBlock 15663105 2 16384 1977 :=
  ⟨hints000729, length000729, checked000729, counted000729⟩

noncomputable def localPrefix000729 : CheckedPrimeCountBlock 15368193 2 163840 19769 :=
  localPrefix000728.append block000729

noncomputable def hints000730 : List Nat :=
  primeHintChunk% "../../certificates/prime-count33554432-v1/counts-000730.json" 33554432 7847935 15695873 2

theorem length000730 : hints000730.length = 16384 := by decide +kernel
theorem checked000730 : checkPrimeHints 15695873 2 hints000730 = true := by decide +kernel
theorem counted000730 : hints000730.count 0 <= 1979 := by decide +kernel

noncomputable def block000730 : CheckedPrimeCountBlock 15695873 2 16384 1979 :=
  ⟨hints000730, length000730, checked000730, counted000730⟩

noncomputable def localPrefix000730 : CheckedPrimeCountBlock 15368193 2 180224 21748 :=
  localPrefix000729.append block000730

noncomputable def hints000731 : List Nat :=
  primeHintChunk% "../../certificates/prime-count33554432-v1/counts-000731.json" 33554432 7864319 15728641 2

theorem length000731 : hints000731.length = 16384 := by decide +kernel
theorem checked000731 : checkPrimeHints 15728641 2 hints000731 = true := by decide +kernel
theorem counted000731 : hints000731.count 0 <= 1986 := by decide +kernel

noncomputable def block000731 : CheckedPrimeCountBlock 15728641 2 16384 1986 :=
  ⟨hints000731, length000731, checked000731, counted000731⟩

noncomputable def localPrefix000731 : CheckedPrimeCountBlock 15368193 2 196608 23734 :=
  localPrefix000730.append block000731

noncomputable def hints000732 : List Nat :=
  primeHintChunk% "../../certificates/prime-count33554432-v1/counts-000732.json" 33554432 7880703 15761409 2

theorem length000732 : hints000732.length = 16384 := by decide +kernel
theorem checked000732 : checkPrimeHints 15761409 2 hints000732 = true := by decide +kernel
theorem counted000732 : hints000732.count 0 <= 1950 := by decide +kernel

noncomputable def block000732 : CheckedPrimeCountBlock 15761409 2 16384 1950 :=
  ⟨hints000732, length000732, checked000732, counted000732⟩

noncomputable def localPrefix000732 : CheckedPrimeCountBlock 15368193 2 212992 25684 :=
  localPrefix000731.append block000732

noncomputable def hints000733 : List Nat :=
  primeHintChunk% "../../certificates/prime-count33554432-v1/counts-000733.json" 33554432 7897087 15794177 2

theorem length000733 : hints000733.length = 16384 := by decide +kernel
theorem checked000733 : checkPrimeHints 15794177 2 hints000733 = true := by decide +kernel
theorem counted000733 : hints000733.count 0 <= 1975 := by decide +kernel

noncomputable def block000733 : CheckedPrimeCountBlock 15794177 2 16384 1975 :=
  ⟨hints000733, length000733, checked000733, counted000733⟩

noncomputable def localPrefix000733 : CheckedPrimeCountBlock 15368193 2 229376 27659 :=
  localPrefix000732.append block000733

noncomputable def hints000734 : List Nat :=
  primeHintChunk% "../../certificates/prime-count33554432-v1/counts-000734.json" 33554432 7913471 15826945 2

theorem length000734 : hints000734.length = 16384 := by decide +kernel
theorem checked000734 : checkPrimeHints 15826945 2 hints000734 = true := by decide +kernel
theorem counted000734 : hints000734.count 0 <= 2017 := by decide +kernel

noncomputable def block000734 : CheckedPrimeCountBlock 15826945 2 16384 2017 :=
  ⟨hints000734, length000734, checked000734, counted000734⟩

noncomputable def localPrefix000734 : CheckedPrimeCountBlock 15368193 2 245760 29676 :=
  localPrefix000733.append block000734

noncomputable def hints000735 : List Nat :=
  primeHintChunk% "../../certificates/prime-count33554432-v1/counts-000735.json" 33554432 7929855 15859713 2

theorem length000735 : hints000735.length = 16384 := by decide +kernel
theorem checked000735 : checkPrimeHints 15859713 2 hints000735 = true := by decide +kernel
theorem counted000735 : hints000735.count 0 <= 1989 := by decide +kernel

noncomputable def block000735 : CheckedPrimeCountBlock 15859713 2 16384 1989 :=
  ⟨hints000735, length000735, checked000735, counted000735⟩

noncomputable def localPrefix000735 : CheckedPrimeCountBlock 15368193 2 262144 31665 :=
  localPrefix000734.append block000735

end JSP848.FullPrimeCount
