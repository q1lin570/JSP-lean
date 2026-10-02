import JSP848.PrimeCountInput

set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0

namespace JSP848.FullPrimeCount

open PrimeCountInput

noncomputable def hints000736 : List Nat :=
  primeHintChunk% "../../certificates/prime-count33554432-v1/counts-000736.json" 33554432 7946239 15892481 2

theorem length000736 : hints000736.length = 16384 := by decide +kernel
theorem checked000736 : checkPrimeHints 15892481 2 hints000736 = true := by decide +kernel
theorem counted000736 : hints000736.count 0 <= 1971 := by decide +kernel

noncomputable def block000736 : CheckedPrimeCountBlock 15892481 2 16384 1971 :=
  ⟨hints000736, length000736, checked000736, counted000736⟩

noncomputable def localPrefix000736 : CheckedPrimeCountBlock 15892481 2 16384 1971 :=
  block000736

noncomputable def hints000737 : List Nat :=
  primeHintChunk% "../../certificates/prime-count33554432-v1/counts-000737.json" 33554432 7962623 15925249 2

theorem length000737 : hints000737.length = 16384 := by decide +kernel
theorem checked000737 : checkPrimeHints 15925249 2 hints000737 = true := by decide +kernel
theorem counted000737 : hints000737.count 0 <= 1966 := by decide +kernel

noncomputable def block000737 : CheckedPrimeCountBlock 15925249 2 16384 1966 :=
  ⟨hints000737, length000737, checked000737, counted000737⟩

noncomputable def localPrefix000737 : CheckedPrimeCountBlock 15892481 2 32768 3937 :=
  localPrefix000736.append block000737

noncomputable def hints000738 : List Nat :=
  primeHintChunk% "../../certificates/prime-count33554432-v1/counts-000738.json" 33554432 7979007 15958017 2

theorem length000738 : hints000738.length = 16384 := by decide +kernel
theorem checked000738 : checkPrimeHints 15958017 2 hints000738 = true := by decide +kernel
theorem counted000738 : hints000738.count 0 <= 1980 := by decide +kernel

noncomputable def block000738 : CheckedPrimeCountBlock 15958017 2 16384 1980 :=
  ⟨hints000738, length000738, checked000738, counted000738⟩

noncomputable def localPrefix000738 : CheckedPrimeCountBlock 15892481 2 49152 5917 :=
  localPrefix000737.append block000738

noncomputable def hints000739 : List Nat :=
  primeHintChunk% "../../certificates/prime-count33554432-v1/counts-000739.json" 33554432 7995391 15990785 2

theorem length000739 : hints000739.length = 16384 := by decide +kernel
theorem checked000739 : checkPrimeHints 15990785 2 hints000739 = true := by decide +kernel
theorem counted000739 : hints000739.count 0 <= 1963 := by decide +kernel

noncomputable def block000739 : CheckedPrimeCountBlock 15990785 2 16384 1963 :=
  ⟨hints000739, length000739, checked000739, counted000739⟩

noncomputable def localPrefix000739 : CheckedPrimeCountBlock 15892481 2 65536 7880 :=
  localPrefix000738.append block000739

noncomputable def hints000740 : List Nat :=
  primeHintChunk% "../../certificates/prime-count33554432-v1/counts-000740.json" 33554432 8011775 16023553 2

theorem length000740 : hints000740.length = 16384 := by decide +kernel
theorem checked000740 : checkPrimeHints 16023553 2 hints000740 = true := by decide +kernel
theorem counted000740 : hints000740.count 0 <= 1943 := by decide +kernel

noncomputable def block000740 : CheckedPrimeCountBlock 16023553 2 16384 1943 :=
  ⟨hints000740, length000740, checked000740, counted000740⟩

noncomputable def localPrefix000740 : CheckedPrimeCountBlock 15892481 2 81920 9823 :=
  localPrefix000739.append block000740

noncomputable def hints000741 : List Nat :=
  primeHintChunk% "../../certificates/prime-count33554432-v1/counts-000741.json" 33554432 8028159 16056321 2

theorem length000741 : hints000741.length = 16384 := by decide +kernel
theorem checked000741 : checkPrimeHints 16056321 2 hints000741 = true := by decide +kernel
theorem counted000741 : hints000741.count 0 <= 1996 := by decide +kernel

noncomputable def block000741 : CheckedPrimeCountBlock 16056321 2 16384 1996 :=
  ⟨hints000741, length000741, checked000741, counted000741⟩

noncomputable def localPrefix000741 : CheckedPrimeCountBlock 15892481 2 98304 11819 :=
  localPrefix000740.append block000741

noncomputable def hints000742 : List Nat :=
  primeHintChunk% "../../certificates/prime-count33554432-v1/counts-000742.json" 33554432 8044543 16089089 2

theorem length000742 : hints000742.length = 16384 := by decide +kernel
theorem checked000742 : checkPrimeHints 16089089 2 hints000742 = true := by decide +kernel
theorem counted000742 : hints000742.count 0 <= 1969 := by decide +kernel

noncomputable def block000742 : CheckedPrimeCountBlock 16089089 2 16384 1969 :=
  ⟨hints000742, length000742, checked000742, counted000742⟩

noncomputable def localPrefix000742 : CheckedPrimeCountBlock 15892481 2 114688 13788 :=
  localPrefix000741.append block000742

noncomputable def hints000743 : List Nat :=
  primeHintChunk% "../../certificates/prime-count33554432-v1/counts-000743.json" 33554432 8060927 16121857 2

theorem length000743 : hints000743.length = 16384 := by decide +kernel
theorem checked000743 : checkPrimeHints 16121857 2 hints000743 = true := by decide +kernel
theorem counted000743 : hints000743.count 0 <= 1968 := by decide +kernel

noncomputable def block000743 : CheckedPrimeCountBlock 16121857 2 16384 1968 :=
  ⟨hints000743, length000743, checked000743, counted000743⟩

noncomputable def localPrefix000743 : CheckedPrimeCountBlock 15892481 2 131072 15756 :=
  localPrefix000742.append block000743

noncomputable def hints000744 : List Nat :=
  primeHintChunk% "../../certificates/prime-count33554432-v1/counts-000744.json" 33554432 8077311 16154625 2

theorem length000744 : hints000744.length = 16384 := by decide +kernel
theorem checked000744 : checkPrimeHints 16154625 2 hints000744 = true := by decide +kernel
theorem counted000744 : hints000744.count 0 <= 1935 := by decide +kernel

noncomputable def block000744 : CheckedPrimeCountBlock 16154625 2 16384 1935 :=
  ⟨hints000744, length000744, checked000744, counted000744⟩

noncomputable def localPrefix000744 : CheckedPrimeCountBlock 15892481 2 147456 17691 :=
  localPrefix000743.append block000744

noncomputable def hints000745 : List Nat :=
  primeHintChunk% "../../certificates/prime-count33554432-v1/counts-000745.json" 33554432 8093695 16187393 2

theorem length000745 : hints000745.length = 16384 := by decide +kernel
theorem checked000745 : checkPrimeHints 16187393 2 hints000745 = true := by decide +kernel
theorem counted000745 : hints000745.count 0 <= 2020 := by decide +kernel

noncomputable def block000745 : CheckedPrimeCountBlock 16187393 2 16384 2020 :=
  ⟨hints000745, length000745, checked000745, counted000745⟩

noncomputable def localPrefix000745 : CheckedPrimeCountBlock 15892481 2 163840 19711 :=
  localPrefix000744.append block000745

noncomputable def hints000746 : List Nat :=
  primeHintChunk% "../../certificates/prime-count33554432-v1/counts-000746.json" 33554432 8110079 16220161 2

theorem length000746 : hints000746.length = 16384 := by decide +kernel
theorem checked000746 : checkPrimeHints 16220161 2 hints000746 = true := by decide +kernel
theorem counted000746 : hints000746.count 0 <= 1963 := by decide +kernel

noncomputable def block000746 : CheckedPrimeCountBlock 16220161 2 16384 1963 :=
  ⟨hints000746, length000746, checked000746, counted000746⟩

noncomputable def localPrefix000746 : CheckedPrimeCountBlock 15892481 2 180224 21674 :=
  localPrefix000745.append block000746

noncomputable def hints000747 : List Nat :=
  primeHintChunk% "../../certificates/prime-count33554432-v1/counts-000747.json" 33554432 8126463 16252929 2

theorem length000747 : hints000747.length = 16384 := by decide +kernel
theorem checked000747 : checkPrimeHints 16252929 2 hints000747 = true := by decide +kernel
theorem counted000747 : hints000747.count 0 <= 1975 := by decide +kernel

noncomputable def block000747 : CheckedPrimeCountBlock 16252929 2 16384 1975 :=
  ⟨hints000747, length000747, checked000747, counted000747⟩

noncomputable def localPrefix000747 : CheckedPrimeCountBlock 15892481 2 196608 23649 :=
  localPrefix000746.append block000747

noncomputable def hints000748 : List Nat :=
  primeHintChunk% "../../certificates/prime-count33554432-v1/counts-000748.json" 33554432 8142847 16285697 2

theorem length000748 : hints000748.length = 16384 := by decide +kernel
theorem checked000748 : checkPrimeHints 16285697 2 hints000748 = true := by decide +kernel
theorem counted000748 : hints000748.count 0 <= 1984 := by decide +kernel

noncomputable def block000748 : CheckedPrimeCountBlock 16285697 2 16384 1984 :=
  ⟨hints000748, length000748, checked000748, counted000748⟩

noncomputable def localPrefix000748 : CheckedPrimeCountBlock 15892481 2 212992 25633 :=
  localPrefix000747.append block000748

noncomputable def hints000749 : List Nat :=
  primeHintChunk% "../../certificates/prime-count33554432-v1/counts-000749.json" 33554432 8159231 16318465 2

theorem length000749 : hints000749.length = 16384 := by decide +kernel
theorem checked000749 : checkPrimeHints 16318465 2 hints000749 = true := by decide +kernel
theorem counted000749 : hints000749.count 0 <= 1936 := by decide +kernel

noncomputable def block000749 : CheckedPrimeCountBlock 16318465 2 16384 1936 :=
  ⟨hints000749, length000749, checked000749, counted000749⟩

noncomputable def localPrefix000749 : CheckedPrimeCountBlock 15892481 2 229376 27569 :=
  localPrefix000748.append block000749

noncomputable def hints000750 : List Nat :=
  primeHintChunk% "../../certificates/prime-count33554432-v1/counts-000750.json" 33554432 8175615 16351233 2

theorem length000750 : hints000750.length = 16384 := by decide +kernel
theorem checked000750 : checkPrimeHints 16351233 2 hints000750 = true := by decide +kernel
theorem counted000750 : hints000750.count 0 <= 1953 := by decide +kernel

noncomputable def block000750 : CheckedPrimeCountBlock 16351233 2 16384 1953 :=
  ⟨hints000750, length000750, checked000750, counted000750⟩

noncomputable def localPrefix000750 : CheckedPrimeCountBlock 15892481 2 245760 29522 :=
  localPrefix000749.append block000750

noncomputable def hints000751 : List Nat :=
  primeHintChunk% "../../certificates/prime-count33554432-v1/counts-000751.json" 33554432 8191999 16384001 2

theorem length000751 : hints000751.length = 16384 := by decide +kernel
theorem checked000751 : checkPrimeHints 16384001 2 hints000751 = true := by decide +kernel
theorem counted000751 : hints000751.count 0 <= 1985 := by decide +kernel

noncomputable def block000751 : CheckedPrimeCountBlock 16384001 2 16384 1985 :=
  ⟨hints000751, length000751, checked000751, counted000751⟩

noncomputable def localPrefix000751 : CheckedPrimeCountBlock 15892481 2 262144 31507 :=
  localPrefix000750.append block000751

end JSP848.FullPrimeCount
