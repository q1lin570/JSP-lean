import JSP848.PrimeCountInput

set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0

namespace JSP848.FullPrimeCount

open PrimeCountInput

noncomputable def hints000608 : List Nat :=
  primeHintChunk% "../../certificates/prime-count33554432-v1/counts-000608.json" 33554432 5849087 11698177 2

theorem length000608 : hints000608.length = 16384 := by decide +kernel
theorem checked000608 : checkPrimeHints 11698177 2 hints000608 = true := by decide +kernel
theorem counted000608 : hints000608.count 0 <= 2000 := by decide +kernel

noncomputable def block000608 : CheckedPrimeCountBlock 11698177 2 16384 2000 :=
  ⟨hints000608, length000608, checked000608, counted000608⟩

noncomputable def localPrefix000608 : CheckedPrimeCountBlock 11698177 2 16384 2000 :=
  block000608

noncomputable def hints000609 : List Nat :=
  primeHintChunk% "../../certificates/prime-count33554432-v1/counts-000609.json" 33554432 5865471 11730945 2

theorem length000609 : hints000609.length = 16384 := by decide +kernel
theorem checked000609 : checkPrimeHints 11730945 2 hints000609 = true := by decide +kernel
theorem counted000609 : hints000609.count 0 <= 2011 := by decide +kernel

noncomputable def block000609 : CheckedPrimeCountBlock 11730945 2 16384 2011 :=
  ⟨hints000609, length000609, checked000609, counted000609⟩

noncomputable def localPrefix000609 : CheckedPrimeCountBlock 11698177 2 32768 4011 :=
  localPrefix000608.append block000609

noncomputable def hints000610 : List Nat :=
  primeHintChunk% "../../certificates/prime-count33554432-v1/counts-000610.json" 33554432 5881855 11763713 2

theorem length000610 : hints000610.length = 16384 := by decide +kernel
theorem checked000610 : checkPrimeHints 11763713 2 hints000610 = true := by decide +kernel
theorem counted000610 : hints000610.count 0 <= 2021 := by decide +kernel

noncomputable def block000610 : CheckedPrimeCountBlock 11763713 2 16384 2021 :=
  ⟨hints000610, length000610, checked000610, counted000610⟩

noncomputable def localPrefix000610 : CheckedPrimeCountBlock 11698177 2 49152 6032 :=
  localPrefix000609.append block000610

noncomputable def hints000611 : List Nat :=
  primeHintChunk% "../../certificates/prime-count33554432-v1/counts-000611.json" 33554432 5898239 11796481 2

theorem length000611 : hints000611.length = 16384 := by decide +kernel
theorem checked000611 : checkPrimeHints 11796481 2 hints000611 = true := by decide +kernel
theorem counted000611 : hints000611.count 0 <= 2029 := by decide +kernel

noncomputable def block000611 : CheckedPrimeCountBlock 11796481 2 16384 2029 :=
  ⟨hints000611, length000611, checked000611, counted000611⟩

noncomputable def localPrefix000611 : CheckedPrimeCountBlock 11698177 2 65536 8061 :=
  localPrefix000610.append block000611

noncomputable def hints000612 : List Nat :=
  primeHintChunk% "../../certificates/prime-count33554432-v1/counts-000612.json" 33554432 5914623 11829249 2

theorem length000612 : hints000612.length = 16384 := by decide +kernel
theorem checked000612 : checkPrimeHints 11829249 2 hints000612 = true := by decide +kernel
theorem counted000612 : hints000612.count 0 <= 1985 := by decide +kernel

noncomputable def block000612 : CheckedPrimeCountBlock 11829249 2 16384 1985 :=
  ⟨hints000612, length000612, checked000612, counted000612⟩

noncomputable def localPrefix000612 : CheckedPrimeCountBlock 11698177 2 81920 10046 :=
  localPrefix000611.append block000612

noncomputable def hints000613 : List Nat :=
  primeHintChunk% "../../certificates/prime-count33554432-v1/counts-000613.json" 33554432 5931007 11862017 2

theorem length000613 : hints000613.length = 16384 := by decide +kernel
theorem checked000613 : checkPrimeHints 11862017 2 hints000613 = true := by decide +kernel
theorem counted000613 : hints000613.count 0 <= 2012 := by decide +kernel

noncomputable def block000613 : CheckedPrimeCountBlock 11862017 2 16384 2012 :=
  ⟨hints000613, length000613, checked000613, counted000613⟩

noncomputable def localPrefix000613 : CheckedPrimeCountBlock 11698177 2 98304 12058 :=
  localPrefix000612.append block000613

noncomputable def hints000614 : List Nat :=
  primeHintChunk% "../../certificates/prime-count33554432-v1/counts-000614.json" 33554432 5947391 11894785 2

theorem length000614 : hints000614.length = 16384 := by decide +kernel
theorem checked000614 : checkPrimeHints 11894785 2 hints000614 = true := by decide +kernel
theorem counted000614 : hints000614.count 0 <= 2043 := by decide +kernel

noncomputable def block000614 : CheckedPrimeCountBlock 11894785 2 16384 2043 :=
  ⟨hints000614, length000614, checked000614, counted000614⟩

noncomputable def localPrefix000614 : CheckedPrimeCountBlock 11698177 2 114688 14101 :=
  localPrefix000613.append block000614

noncomputable def hints000615 : List Nat :=
  primeHintChunk% "../../certificates/prime-count33554432-v1/counts-000615.json" 33554432 5963775 11927553 2

theorem length000615 : hints000615.length = 16384 := by decide +kernel
theorem checked000615 : checkPrimeHints 11927553 2 hints000615 = true := by decide +kernel
theorem counted000615 : hints000615.count 0 <= 2029 := by decide +kernel

noncomputable def block000615 : CheckedPrimeCountBlock 11927553 2 16384 2029 :=
  ⟨hints000615, length000615, checked000615, counted000615⟩

noncomputable def localPrefix000615 : CheckedPrimeCountBlock 11698177 2 131072 16130 :=
  localPrefix000614.append block000615

noncomputable def hints000616 : List Nat :=
  primeHintChunk% "../../certificates/prime-count33554432-v1/counts-000616.json" 33554432 5980159 11960321 2

theorem length000616 : hints000616.length = 16384 := by decide +kernel
theorem checked000616 : checkPrimeHints 11960321 2 hints000616 = true := by decide +kernel
theorem counted000616 : hints000616.count 0 <= 1996 := by decide +kernel

noncomputable def block000616 : CheckedPrimeCountBlock 11960321 2 16384 1996 :=
  ⟨hints000616, length000616, checked000616, counted000616⟩

noncomputable def localPrefix000616 : CheckedPrimeCountBlock 11698177 2 147456 18126 :=
  localPrefix000615.append block000616

noncomputable def hints000617 : List Nat :=
  primeHintChunk% "../../certificates/prime-count33554432-v1/counts-000617.json" 33554432 5996543 11993089 2

theorem length000617 : hints000617.length = 16384 := by decide +kernel
theorem checked000617 : checkPrimeHints 11993089 2 hints000617 = true := by decide +kernel
theorem counted000617 : hints000617.count 0 <= 1992 := by decide +kernel

noncomputable def block000617 : CheckedPrimeCountBlock 11993089 2 16384 1992 :=
  ⟨hints000617, length000617, checked000617, counted000617⟩

noncomputable def localPrefix000617 : CheckedPrimeCountBlock 11698177 2 163840 20118 :=
  localPrefix000616.append block000617

noncomputable def hints000618 : List Nat :=
  primeHintChunk% "../../certificates/prime-count33554432-v1/counts-000618.json" 33554432 6012927 12025857 2

theorem length000618 : hints000618.length = 16384 := by decide +kernel
theorem checked000618 : checkPrimeHints 12025857 2 hints000618 = true := by decide +kernel
theorem counted000618 : hints000618.count 0 <= 2017 := by decide +kernel

noncomputable def block000618 : CheckedPrimeCountBlock 12025857 2 16384 2017 :=
  ⟨hints000618, length000618, checked000618, counted000618⟩

noncomputable def localPrefix000618 : CheckedPrimeCountBlock 11698177 2 180224 22135 :=
  localPrefix000617.append block000618

noncomputable def hints000619 : List Nat :=
  primeHintChunk% "../../certificates/prime-count33554432-v1/counts-000619.json" 33554432 6029311 12058625 2

theorem length000619 : hints000619.length = 16384 := by decide +kernel
theorem checked000619 : checkPrimeHints 12058625 2 hints000619 = true := by decide +kernel
theorem counted000619 : hints000619.count 0 <= 1998 := by decide +kernel

noncomputable def block000619 : CheckedPrimeCountBlock 12058625 2 16384 1998 :=
  ⟨hints000619, length000619, checked000619, counted000619⟩

noncomputable def localPrefix000619 : CheckedPrimeCountBlock 11698177 2 196608 24133 :=
  localPrefix000618.append block000619

noncomputable def hints000620 : List Nat :=
  primeHintChunk% "../../certificates/prime-count33554432-v1/counts-000620.json" 33554432 6045695 12091393 2

theorem length000620 : hints000620.length = 16384 := by decide +kernel
theorem checked000620 : checkPrimeHints 12091393 2 hints000620 = true := by decide +kernel
theorem counted000620 : hints000620.count 0 <= 2002 := by decide +kernel

noncomputable def block000620 : CheckedPrimeCountBlock 12091393 2 16384 2002 :=
  ⟨hints000620, length000620, checked000620, counted000620⟩

noncomputable def localPrefix000620 : CheckedPrimeCountBlock 11698177 2 212992 26135 :=
  localPrefix000619.append block000620

noncomputable def hints000621 : List Nat :=
  primeHintChunk% "../../certificates/prime-count33554432-v1/counts-000621.json" 33554432 6062079 12124161 2

theorem length000621 : hints000621.length = 16384 := by decide +kernel
theorem checked000621 : checkPrimeHints 12124161 2 hints000621 = true := by decide +kernel
theorem counted000621 : hints000621.count 0 <= 2020 := by decide +kernel

noncomputable def block000621 : CheckedPrimeCountBlock 12124161 2 16384 2020 :=
  ⟨hints000621, length000621, checked000621, counted000621⟩

noncomputable def localPrefix000621 : CheckedPrimeCountBlock 11698177 2 229376 28155 :=
  localPrefix000620.append block000621

noncomputable def hints000622 : List Nat :=
  primeHintChunk% "../../certificates/prime-count33554432-v1/counts-000622.json" 33554432 6078463 12156929 2

theorem length000622 : hints000622.length = 16384 := by decide +kernel
theorem checked000622 : checkPrimeHints 12156929 2 hints000622 = true := by decide +kernel
theorem counted000622 : hints000622.count 0 <= 1986 := by decide +kernel

noncomputable def block000622 : CheckedPrimeCountBlock 12156929 2 16384 1986 :=
  ⟨hints000622, length000622, checked000622, counted000622⟩

noncomputable def localPrefix000622 : CheckedPrimeCountBlock 11698177 2 245760 30141 :=
  localPrefix000621.append block000622

noncomputable def hints000623 : List Nat :=
  primeHintChunk% "../../certificates/prime-count33554432-v1/counts-000623.json" 33554432 6094847 12189697 2

theorem length000623 : hints000623.length = 16384 := by decide +kernel
theorem checked000623 : checkPrimeHints 12189697 2 hints000623 = true := by decide +kernel
theorem counted000623 : hints000623.count 0 <= 2006 := by decide +kernel

noncomputable def block000623 : CheckedPrimeCountBlock 12189697 2 16384 2006 :=
  ⟨hints000623, length000623, checked000623, counted000623⟩

noncomputable def localPrefix000623 : CheckedPrimeCountBlock 11698177 2 262144 32147 :=
  localPrefix000622.append block000623

end JSP848.FullPrimeCount
