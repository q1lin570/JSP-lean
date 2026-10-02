import JSP848.PrimeCountInput

set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0

namespace JSP848.FullPrimeCount

open PrimeCountInput

noncomputable def hints000208 : List Nat :=
  primeHintChunk% "../../certificates/prime-count33554432-v1/counts-000208.json" 33554432 202130 404263 2

theorem length000208 : hints000208.length = 3158 := by decide +kernel
theorem checked000208 : checkPrimeHints 404263 2 hints000208 = true := by decide +kernel
theorem counted000208 : hints000208.count 0 <= 485 := by decide +kernel

noncomputable def block000208 : CheckedPrimeCountBlock 404263 2 3158 485 :=
  ⟨hints000208, length000208, checked000208, counted000208⟩

noncomputable def localPrefix000208 : CheckedPrimeCountBlock 404263 2 3158 485 :=
  block000208

noncomputable def hints000209 : List Nat :=
  primeHintChunk% "../../certificates/prime-count33554432-v1/counts-000209.json" 33554432 205288 410579 2

theorem length000209 : hints000209.length = 3207 := by decide +kernel
theorem checked000209 : checkPrimeHints 410579 2 hints000209 = true := by decide +kernel
theorem counted000209 : hints000209.count 0 <= 490 := by decide +kernel

noncomputable def block000209 : CheckedPrimeCountBlock 410579 2 3207 490 :=
  ⟨hints000209, length000209, checked000209, counted000209⟩

noncomputable def localPrefix000209 : CheckedPrimeCountBlock 404263 2 6365 975 :=
  localPrefix000208.append block000209

noncomputable def hints000210 : List Nat :=
  primeHintChunk% "../../certificates/prime-count33554432-v1/counts-000210.json" 33554432 208495 416993 2

theorem length000210 : hints000210.length = 3257 := by decide +kernel
theorem checked000210 : checkPrimeHints 416993 2 hints000210 = true := by decide +kernel
theorem counted000210 : hints000210.count 0 <= 514 := by decide +kernel

noncomputable def block000210 : CheckedPrimeCountBlock 416993 2 3257 514 :=
  ⟨hints000210, length000210, checked000210, counted000210⟩

noncomputable def localPrefix000210 : CheckedPrimeCountBlock 404263 2 9622 1489 :=
  localPrefix000209.append block000210

noncomputable def hints000211 : List Nat :=
  primeHintChunk% "../../certificates/prime-count33554432-v1/counts-000211.json" 33554432 211752 423507 2

theorem length000211 : hints000211.length = 3308 := by decide +kernel
theorem checked000211 : checkPrimeHints 423507 2 hints000211 = true := by decide +kernel
theorem counted000211 : hints000211.count 0 <= 510 := by decide +kernel

noncomputable def block000211 : CheckedPrimeCountBlock 423507 2 3308 510 :=
  ⟨hints000211, length000211, checked000211, counted000211⟩

noncomputable def localPrefix000211 : CheckedPrimeCountBlock 404263 2 12930 1999 :=
  localPrefix000210.append block000211

noncomputable def hints000212 : List Nat :=
  primeHintChunk% "../../certificates/prime-count33554432-v1/counts-000212.json" 33554432 215060 430123 2

theorem length000212 : hints000212.length = 3360 := by decide +kernel
theorem checked000212 : checkPrimeHints 430123 2 hints000212 = true := by decide +kernel
theorem counted000212 : hints000212.count 0 <= 538 := by decide +kernel

noncomputable def block000212 : CheckedPrimeCountBlock 430123 2 3360 538 :=
  ⟨hints000212, length000212, checked000212, counted000212⟩

noncomputable def localPrefix000212 : CheckedPrimeCountBlock 404263 2 16290 2537 :=
  localPrefix000211.append block000212

noncomputable def hints000213 : List Nat :=
  primeHintChunk% "../../certificates/prime-count33554432-v1/counts-000213.json" 33554432 218420 436843 2

theorem length000213 : hints000213.length = 3412 := by decide +kernel
theorem checked000213 : checkPrimeHints 436843 2 hints000213 = true := by decide +kernel
theorem counted000213 : hints000213.count 0 <= 526 := by decide +kernel

noncomputable def block000213 : CheckedPrimeCountBlock 436843 2 3412 526 :=
  ⟨hints000213, length000213, checked000213, counted000213⟩

noncomputable def localPrefix000213 : CheckedPrimeCountBlock 404263 2 19702 3063 :=
  localPrefix000212.append block000213

noncomputable def hints000214 : List Nat :=
  primeHintChunk% "../../certificates/prime-count33554432-v1/counts-000214.json" 33554432 221832 443667 2

theorem length000214 : hints000214.length = 3466 := by decide +kernel
theorem checked000214 : checkPrimeHints 443667 2 hints000214 = true := by decide +kernel
theorem counted000214 : hints000214.count 0 <= 524 := by decide +kernel

noncomputable def block000214 : CheckedPrimeCountBlock 443667 2 3466 524 :=
  ⟨hints000214, length000214, checked000214, counted000214⟩

noncomputable def localPrefix000214 : CheckedPrimeCountBlock 404263 2 23168 3587 :=
  localPrefix000213.append block000214

noncomputable def hints000215 : List Nat :=
  primeHintChunk% "../../certificates/prime-count33554432-v1/counts-000215.json" 33554432 225298 450599 2

theorem length000215 : hints000215.length = 3520 := by decide +kernel
theorem checked000215 : checkPrimeHints 450599 2 hints000215 = true := by decide +kernel
theorem counted000215 : hints000215.count 0 <= 530 := by decide +kernel

noncomputable def block000215 : CheckedPrimeCountBlock 450599 2 3520 530 :=
  ⟨hints000215, length000215, checked000215, counted000215⟩

noncomputable def localPrefix000215 : CheckedPrimeCountBlock 404263 2 26688 4117 :=
  localPrefix000214.append block000215

noncomputable def hints000216 : List Nat :=
  primeHintChunk% "../../certificates/prime-count33554432-v1/counts-000216.json" 33554432 228818 457639 2

theorem length000216 : hints000216.length = 3575 := by decide +kernel
theorem checked000216 : checkPrimeHints 457639 2 hints000216 = true := by decide +kernel
theorem counted000216 : hints000216.count 0 <= 529 := by decide +kernel

noncomputable def block000216 : CheckedPrimeCountBlock 457639 2 3575 529 :=
  ⟨hints000216, length000216, checked000216, counted000216⟩

noncomputable def localPrefix000216 : CheckedPrimeCountBlock 404263 2 30263 4646 :=
  localPrefix000215.append block000216

noncomputable def hints000217 : List Nat :=
  primeHintChunk% "../../certificates/prime-count33554432-v1/counts-000217.json" 33554432 232393 464789 2

theorem length000217 : hints000217.length = 3631 := by decide +kernel
theorem checked000217 : checkPrimeHints 464789 2 hints000217 = true := by decide +kernel
theorem counted000217 : hints000217.count 0 <= 571 := by decide +kernel

noncomputable def block000217 : CheckedPrimeCountBlock 464789 2 3631 571 :=
  ⟨hints000217, length000217, checked000217, counted000217⟩

noncomputable def localPrefix000217 : CheckedPrimeCountBlock 404263 2 33894 5217 :=
  localPrefix000216.append block000217

noncomputable def hints000218 : List Nat :=
  primeHintChunk% "../../certificates/prime-count33554432-v1/counts-000218.json" 33554432 236024 472051 2

theorem length000218 : hints000218.length = 3687 := by decide +kernel
theorem checked000218 : checkPrimeHints 472051 2 hints000218 = true := by decide +kernel
theorem counted000218 : hints000218.count 0 <= 573 := by decide +kernel

noncomputable def block000218 : CheckedPrimeCountBlock 472051 2 3687 573 :=
  ⟨hints000218, length000218, checked000218, counted000218⟩

noncomputable def localPrefix000218 : CheckedPrimeCountBlock 404263 2 37581 5790 :=
  localPrefix000217.append block000218

noncomputable def hints000219 : List Nat :=
  primeHintChunk% "../../certificates/prime-count33554432-v1/counts-000219.json" 33554432 239711 479425 2

theorem length000219 : hints000219.length = 3745 := by decide +kernel
theorem checked000219 : checkPrimeHints 479425 2 hints000219 = true := by decide +kernel
theorem counted000219 : hints000219.count 0 <= 556 := by decide +kernel

noncomputable def block000219 : CheckedPrimeCountBlock 479425 2 3745 556 :=
  ⟨hints000219, length000219, checked000219, counted000219⟩

noncomputable def localPrefix000219 : CheckedPrimeCountBlock 404263 2 41326 6346 :=
  localPrefix000218.append block000219

noncomputable def hints000220 : List Nat :=
  primeHintChunk% "../../certificates/prime-count33554432-v1/counts-000220.json" 33554432 243456 486915 2

theorem length000220 : hints000220.length = 3804 := by decide +kernel
theorem checked000220 : checkPrimeHints 486915 2 hints000220 = true := by decide +kernel
theorem counted000220 : hints000220.count 0 <= 590 := by decide +kernel

noncomputable def block000220 : CheckedPrimeCountBlock 486915 2 3804 590 :=
  ⟨hints000220, length000220, checked000220, counted000220⟩

noncomputable def localPrefix000220 : CheckedPrimeCountBlock 404263 2 45130 6936 :=
  localPrefix000219.append block000220

noncomputable def hints000221 : List Nat :=
  primeHintChunk% "../../certificates/prime-count33554432-v1/counts-000221.json" 33554432 247260 494523 2

theorem length000221 : hints000221.length = 3863 := by decide +kernel
theorem checked000221 : checkPrimeHints 494523 2 hints000221 = true := by decide +kernel
theorem counted000221 : hints000221.count 0 <= 600 := by decide +kernel

noncomputable def block000221 : CheckedPrimeCountBlock 494523 2 3863 600 :=
  ⟨hints000221, length000221, checked000221, counted000221⟩

noncomputable def localPrefix000221 : CheckedPrimeCountBlock 404263 2 48993 7536 :=
  localPrefix000220.append block000221

noncomputable def hints000222 : List Nat :=
  primeHintChunk% "../../certificates/prime-count33554432-v1/counts-000222.json" 33554432 251123 502249 2

theorem length000222 : hints000222.length = 3923 := by decide +kernel
theorem checked000222 : checkPrimeHints 502249 2 hints000222 = true := by decide +kernel
theorem counted000222 : hints000222.count 0 <= 592 := by decide +kernel

noncomputable def block000222 : CheckedPrimeCountBlock 502249 2 3923 592 :=
  ⟨hints000222, length000222, checked000222, counted000222⟩

noncomputable def localPrefix000222 : CheckedPrimeCountBlock 404263 2 52916 8128 :=
  localPrefix000221.append block000222

noncomputable def hints000223 : List Nat :=
  primeHintChunk% "../../certificates/prime-count33554432-v1/counts-000223.json" 33554432 255046 510095 2

theorem length000223 : hints000223.length = 3985 := by decide +kernel
theorem checked000223 : checkPrimeHints 510095 2 hints000223 = true := by decide +kernel
theorem counted000223 : hints000223.count 0 <= 610 := by decide +kernel

noncomputable def block000223 : CheckedPrimeCountBlock 510095 2 3985 610 :=
  ⟨hints000223, length000223, checked000223, counted000223⟩

noncomputable def localPrefix000223 : CheckedPrimeCountBlock 404263 2 56901 8738 :=
  localPrefix000222.append block000223

end JSP848.FullPrimeCount
