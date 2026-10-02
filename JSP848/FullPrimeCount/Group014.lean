import JSP848.PrimeCountInput

set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0

namespace JSP848.FullPrimeCount

open PrimeCountInput

noncomputable def hints000224 : List Nat :=
  primeHintChunk% "../../certificates/prime-count33554432-v1/counts-000224.json" 33554432 259031 518065 2

theorem length000224 : hints000224.length = 3112 := by decide +kernel
theorem checked000224 : checkPrimeHints 518065 2 hints000224 = true := by decide +kernel
theorem counted000224 : hints000224.count 0 <= 479 := by decide +kernel

noncomputable def block000224 : CheckedPrimeCountBlock 518065 2 3112 479 :=
  ⟨hints000224, length000224, checked000224, counted000224⟩

noncomputable def localPrefix000224 : CheckedPrimeCountBlock 518065 2 3112 479 :=
  block000224

noncomputable def hints000225 : List Nat :=
  primeHintChunk% "../../certificates/prime-count33554432-v1/counts-000225.json" 33554432 262143 524289 2

theorem length000225 : hints000225.length = 4096 := by decide +kernel
theorem checked000225 : checkPrimeHints 524289 2 hints000225 = true := by decide +kernel
theorem counted000225 : hints000225.count 0 <= 621 := by decide +kernel

noncomputable def block000225 : CheckedPrimeCountBlock 524289 2 4096 621 :=
  ⟨hints000225, length000225, checked000225, counted000225⟩

noncomputable def localPrefix000225 : CheckedPrimeCountBlock 518065 2 7208 1100 :=
  localPrefix000224.append block000225

noncomputable def hints000226 : List Nat :=
  primeHintChunk% "../../certificates/prime-count33554432-v1/counts-000226.json" 33554432 266239 532481 2

theorem length000226 : hints000226.length = 4160 := by decide +kernel
theorem checked000226 : checkPrimeHints 532481 2 hints000226 = true := by decide +kernel
theorem counted000226 : hints000226.count 0 <= 623 := by decide +kernel

noncomputable def block000226 : CheckedPrimeCountBlock 532481 2 4160 623 :=
  ⟨hints000226, length000226, checked000226, counted000226⟩

noncomputable def localPrefix000226 : CheckedPrimeCountBlock 518065 2 11368 1723 :=
  localPrefix000225.append block000226

noncomputable def hints000227 : List Nat :=
  primeHintChunk% "../../certificates/prime-count33554432-v1/counts-000227.json" 33554432 270399 540801 2

theorem length000227 : hints000227.length = 4225 := by decide +kernel
theorem checked000227 : checkPrimeHints 540801 2 hints000227 = true := by decide +kernel
theorem counted000227 : hints000227.count 0 <= 632 := by decide +kernel

noncomputable def block000227 : CheckedPrimeCountBlock 540801 2 4225 632 :=
  ⟨hints000227, length000227, checked000227, counted000227⟩

noncomputable def localPrefix000227 : CheckedPrimeCountBlock 518065 2 15593 2355 :=
  localPrefix000226.append block000227

noncomputable def hints000228 : List Nat :=
  primeHintChunk% "../../certificates/prime-count33554432-v1/counts-000228.json" 33554432 274624 549251 2

theorem length000228 : hints000228.length = 4291 := by decide +kernel
theorem checked000228 : checkPrimeHints 549251 2 hints000228 = true := by decide +kernel
theorem counted000228 : hints000228.count 0 <= 646 := by decide +kernel

noncomputable def block000228 : CheckedPrimeCountBlock 549251 2 4291 646 :=
  ⟨hints000228, length000228, checked000228, counted000228⟩

noncomputable def localPrefix000228 : CheckedPrimeCountBlock 518065 2 19884 3001 :=
  localPrefix000227.append block000228

noncomputable def hints000229 : List Nat :=
  primeHintChunk% "../../certificates/prime-count33554432-v1/counts-000229.json" 33554432 278915 557833 2

theorem length000229 : hints000229.length = 4358 := by decide +kernel
theorem checked000229 : checkPrimeHints 557833 2 hints000229 = true := by decide +kernel
theorem counted000229 : hints000229.count 0 <= 649 := by decide +kernel

noncomputable def block000229 : CheckedPrimeCountBlock 557833 2 4358 649 :=
  ⟨hints000229, length000229, checked000229, counted000229⟩

noncomputable def localPrefix000229 : CheckedPrimeCountBlock 518065 2 24242 3650 :=
  localPrefix000228.append block000229

noncomputable def hints000230 : List Nat :=
  primeHintChunk% "../../certificates/prime-count33554432-v1/counts-000230.json" 33554432 283273 566549 2

theorem length000230 : hints000230.length = 4426 := by decide +kernel
theorem checked000230 : checkPrimeHints 566549 2 hints000230 = true := by decide +kernel
theorem counted000230 : hints000230.count 0 <= 671 := by decide +kernel

noncomputable def block000230 : CheckedPrimeCountBlock 566549 2 4426 671 :=
  ⟨hints000230, length000230, checked000230, counted000230⟩

noncomputable def localPrefix000230 : CheckedPrimeCountBlock 518065 2 28668 4321 :=
  localPrefix000229.append block000230

noncomputable def hints000231 : List Nat :=
  primeHintChunk% "../../certificates/prime-count33554432-v1/counts-000231.json" 33554432 287699 575401 2

theorem length000231 : hints000231.length = 4495 := by decide +kernel
theorem checked000231 : checkPrimeHints 575401 2 hints000231 = true := by decide +kernel
theorem counted000231 : hints000231.count 0 <= 682 := by decide +kernel

noncomputable def block000231 : CheckedPrimeCountBlock 575401 2 4495 682 :=
  ⟨hints000231, length000231, checked000231, counted000231⟩

noncomputable def localPrefix000231 : CheckedPrimeCountBlock 518065 2 33163 5003 :=
  localPrefix000230.append block000231

noncomputable def hints000232 : List Nat :=
  primeHintChunk% "../../certificates/prime-count33554432-v1/counts-000232.json" 33554432 292194 584391 2

theorem length000232 : hints000232.length = 4565 := by decide +kernel
theorem checked000232 : checkPrimeHints 584391 2 hints000232 = true := by decide +kernel
theorem counted000232 : hints000232.count 0 <= 702 := by decide +kernel

noncomputable def block000232 : CheckedPrimeCountBlock 584391 2 4565 702 :=
  ⟨hints000232, length000232, checked000232, counted000232⟩

noncomputable def localPrefix000232 : CheckedPrimeCountBlock 518065 2 37728 5705 :=
  localPrefix000231.append block000232

noncomputable def hints000233 : List Nat :=
  primeHintChunk% "../../certificates/prime-count33554432-v1/counts-000233.json" 33554432 296759 593521 2

theorem length000233 : hints000233.length = 4636 := by decide +kernel
theorem checked000233 : checkPrimeHints 593521 2 hints000233 = true := by decide +kernel
theorem counted000233 : hints000233.count 0 <= 698 := by decide +kernel

noncomputable def block000233 : CheckedPrimeCountBlock 593521 2 4636 698 :=
  ⟨hints000233, length000233, checked000233, counted000233⟩

noncomputable def localPrefix000233 : CheckedPrimeCountBlock 518065 2 42364 6403 :=
  localPrefix000232.append block000233

noncomputable def hints000234 : List Nat :=
  primeHintChunk% "../../certificates/prime-count33554432-v1/counts-000234.json" 33554432 301395 602793 2

theorem length000234 : hints000234.length = 4709 := by decide +kernel
theorem checked000234 : checkPrimeHints 602793 2 hints000234 = true := by decide +kernel
theorem counted000234 : hints000234.count 0 <= 711 := by decide +kernel

noncomputable def block000234 : CheckedPrimeCountBlock 602793 2 4709 711 :=
  ⟨hints000234, length000234, checked000234, counted000234⟩

noncomputable def localPrefix000234 : CheckedPrimeCountBlock 518065 2 47073 7114 :=
  localPrefix000233.append block000234

noncomputable def hints000235 : List Nat :=
  primeHintChunk% "../../certificates/prime-count33554432-v1/counts-000235.json" 33554432 306104 612211 2

theorem length000235 : hints000235.length = 4782 := by decide +kernel
theorem checked000235 : checkPrimeHints 612211 2 hints000235 = true := by decide +kernel
theorem counted000235 : hints000235.count 0 <= 720 := by decide +kernel

noncomputable def block000235 : CheckedPrimeCountBlock 612211 2 4782 720 :=
  ⟨hints000235, length000235, checked000235, counted000235⟩

noncomputable def localPrefix000235 : CheckedPrimeCountBlock 518065 2 51855 7834 :=
  localPrefix000234.append block000235

noncomputable def hints000236 : List Nat :=
  primeHintChunk% "../../certificates/prime-count33554432-v1/counts-000236.json" 33554432 310886 621775 2

theorem length000236 : hints000236.length = 4857 := by decide +kernel
theorem checked000236 : checkPrimeHints 621775 2 hints000236 = true := by decide +kernel
theorem counted000236 : hints000236.count 0 <= 700 := by decide +kernel

noncomputable def block000236 : CheckedPrimeCountBlock 621775 2 4857 700 :=
  ⟨hints000236, length000236, checked000236, counted000236⟩

noncomputable def localPrefix000236 : CheckedPrimeCountBlock 518065 2 56712 8534 :=
  localPrefix000235.append block000236

noncomputable def hints000237 : List Nat :=
  primeHintChunk% "../../certificates/prime-count33554432-v1/counts-000237.json" 33554432 315743 631489 2

theorem length000237 : hints000237.length = 4933 := by decide +kernel
theorem checked000237 : checkPrimeHints 631489 2 hints000237 = true := by decide +kernel
theorem counted000237 : hints000237.count 0 <= 728 := by decide +kernel

noncomputable def block000237 : CheckedPrimeCountBlock 631489 2 4933 728 :=
  ⟨hints000237, length000237, checked000237, counted000237⟩

noncomputable def localPrefix000237 : CheckedPrimeCountBlock 518065 2 61645 9262 :=
  localPrefix000236.append block000237

noncomputable def hints000238 : List Nat :=
  primeHintChunk% "../../certificates/prime-count33554432-v1/counts-000238.json" 33554432 320676 641355 2

theorem length000238 : hints000238.length = 5010 := by decide +kernel
theorem checked000238 : checkPrimeHints 641355 2 hints000238 = true := by decide +kernel
theorem counted000238 : hints000238.count 0 <= 750 := by decide +kernel

noncomputable def block000238 : CheckedPrimeCountBlock 641355 2 5010 750 :=
  ⟨hints000238, length000238, checked000238, counted000238⟩

noncomputable def localPrefix000238 : CheckedPrimeCountBlock 518065 2 66655 10012 :=
  localPrefix000237.append block000238

noncomputable def hints000239 : List Nat :=
  primeHintChunk% "../../certificates/prime-count33554432-v1/counts-000239.json" 33554432 325686 651375 2

theorem length000239 : hints000239.length = 5088 := by decide +kernel
theorem checked000239 : checkPrimeHints 651375 2 hints000239 = true := by decide +kernel
theorem counted000239 : hints000239.count 0 <= 765 := by decide +kernel

noncomputable def block000239 : CheckedPrimeCountBlock 651375 2 5088 765 :=
  ⟨hints000239, length000239, checked000239, counted000239⟩

noncomputable def localPrefix000239 : CheckedPrimeCountBlock 518065 2 71743 10777 :=
  localPrefix000238.append block000239

end JSP848.FullPrimeCount
