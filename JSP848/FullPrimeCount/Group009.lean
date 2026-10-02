import JSP848.PrimeCountInput

set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0

namespace JSP848.FullPrimeCount

open PrimeCountInput

noncomputable def hints000144 : List Nat :=
  primeHintChunk% "../../certificates/prime-count33554432-v1/counts-000144.json" 33554432 74957 149917 2

theorem length000144 : hints000144.length = 1171 := by decide +kernel
theorem checked000144 : checkPrimeHints 149917 2 hints000144 = true := by decide +kernel
theorem counted000144 : hints000144.count 0 <= 204 := by decide +kernel

noncomputable def block000144 : CheckedPrimeCountBlock 149917 2 1171 204 :=
  ⟨hints000144, length000144, checked000144, counted000144⟩

noncomputable def localPrefix000144 : CheckedPrimeCountBlock 149917 2 1171 204 :=
  block000144

noncomputable def hints000145 : List Nat :=
  primeHintChunk% "../../certificates/prime-count33554432-v1/counts-000145.json" 33554432 76128 152259 2

theorem length000145 : hints000145.length = 1189 := by decide +kernel
theorem checked000145 : checkPrimeHints 152259 2 hints000145 = true := by decide +kernel
theorem counted000145 : hints000145.count 0 <= 196 := by decide +kernel

noncomputable def block000145 : CheckedPrimeCountBlock 152259 2 1189 196 :=
  ⟨hints000145, length000145, checked000145, counted000145⟩

noncomputable def localPrefix000145 : CheckedPrimeCountBlock 149917 2 2360 400 :=
  localPrefix000144.append block000145

noncomputable def hints000146 : List Nat :=
  primeHintChunk% "../../certificates/prime-count33554432-v1/counts-000146.json" 33554432 77317 154637 2

theorem length000146 : hints000146.length = 1208 := by decide +kernel
theorem checked000146 : checkPrimeHints 154637 2 hints000146 = true := by decide +kernel
theorem counted000146 : hints000146.count 0 <= 197 := by decide +kernel

noncomputable def block000146 : CheckedPrimeCountBlock 154637 2 1208 197 :=
  ⟨hints000146, length000146, checked000146, counted000146⟩

noncomputable def localPrefix000146 : CheckedPrimeCountBlock 149917 2 3568 597 :=
  localPrefix000145.append block000146

noncomputable def hints000147 : List Nat :=
  primeHintChunk% "../../certificates/prime-count33554432-v1/counts-000147.json" 33554432 78525 157053 2

theorem length000147 : hints000147.length = 1226 := by decide +kernel
theorem checked000147 : checkPrimeHints 157053 2 hints000147 = true := by decide +kernel
theorem counted000147 : hints000147.count 0 <= 201 := by decide +kernel

noncomputable def block000147 : CheckedPrimeCountBlock 157053 2 1226 201 :=
  ⟨hints000147, length000147, checked000147, counted000147⟩

noncomputable def localPrefix000147 : CheckedPrimeCountBlock 149917 2 4794 798 :=
  localPrefix000146.append block000147

noncomputable def hints000148 : List Nat :=
  primeHintChunk% "../../certificates/prime-count33554432-v1/counts-000148.json" 33554432 79751 159505 2

theorem length000148 : hints000148.length = 1246 := by decide +kernel
theorem checked000148 : checkPrimeHints 159505 2 hints000148 = true := by decide +kernel
theorem counted000148 : hints000148.count 0 <= 211 := by decide +kernel

noncomputable def block000148 : CheckedPrimeCountBlock 159505 2 1246 211 :=
  ⟨hints000148, length000148, checked000148, counted000148⟩

noncomputable def localPrefix000148 : CheckedPrimeCountBlock 149917 2 6040 1009 :=
  localPrefix000147.append block000148

noncomputable def hints000149 : List Nat :=
  primeHintChunk% "../../certificates/prime-count33554432-v1/counts-000149.json" 33554432 80997 161997 2

theorem length000149 : hints000149.length = 1265 := by decide +kernel
theorem checked000149 : checkPrimeHints 161997 2 hints000149 = true := by decide +kernel
theorem counted000149 : hints000149.count 0 <= 210 := by decide +kernel

noncomputable def block000149 : CheckedPrimeCountBlock 161997 2 1265 210 :=
  ⟨hints000149, length000149, checked000149, counted000149⟩

noncomputable def localPrefix000149 : CheckedPrimeCountBlock 149917 2 7305 1219 :=
  localPrefix000148.append block000149

noncomputable def hints000150 : List Nat :=
  primeHintChunk% "../../certificates/prime-count33554432-v1/counts-000150.json" 33554432 82262 164527 2

theorem length000150 : hints000150.length = 1285 := by decide +kernel
theorem checked000150 : checkPrimeHints 164527 2 hints000150 = true := by decide +kernel
theorem counted000150 : hints000150.count 0 <= 205 := by decide +kernel

noncomputable def block000150 : CheckedPrimeCountBlock 164527 2 1285 205 :=
  ⟨hints000150, length000150, checked000150, counted000150⟩

noncomputable def localPrefix000150 : CheckedPrimeCountBlock 149917 2 8590 1424 :=
  localPrefix000149.append block000150

noncomputable def hints000151 : List Nat :=
  primeHintChunk% "../../certificates/prime-count33554432-v1/counts-000151.json" 33554432 83547 167097 2

theorem length000151 : hints000151.length = 1305 := by decide +kernel
theorem checked000151 : checkPrimeHints 167097 2 hints000151 = true := by decide +kernel
theorem counted000151 : hints000151.count 0 <= 205 := by decide +kernel

noncomputable def block000151 : CheckedPrimeCountBlock 167097 2 1305 205 :=
  ⟨hints000151, length000151, checked000151, counted000151⟩

noncomputable def localPrefix000151 : CheckedPrimeCountBlock 149917 2 9895 1629 :=
  localPrefix000150.append block000151

noncomputable def hints000152 : List Nat :=
  primeHintChunk% "../../certificates/prime-count33554432-v1/counts-000152.json" 33554432 84852 169707 2

theorem length000152 : hints000152.length = 1325 := by decide +kernel
theorem checked000152 : checkPrimeHints 169707 2 hints000152 = true := by decide +kernel
theorem counted000152 : hints000152.count 0 <= 227 := by decide +kernel

noncomputable def block000152 : CheckedPrimeCountBlock 169707 2 1325 227 :=
  ⟨hints000152, length000152, checked000152, counted000152⟩

noncomputable def localPrefix000152 : CheckedPrimeCountBlock 149917 2 11220 1856 :=
  localPrefix000151.append block000152

noncomputable def hints000153 : List Nat :=
  primeHintChunk% "../../certificates/prime-count33554432-v1/counts-000153.json" 33554432 86177 172357 2

theorem length000153 : hints000153.length = 1346 := by decide +kernel
theorem checked000153 : checkPrimeHints 172357 2 hints000153 = true := by decide +kernel
theorem counted000153 : hints000153.count 0 <= 221 := by decide +kernel

noncomputable def block000153 : CheckedPrimeCountBlock 172357 2 1346 221 :=
  ⟨hints000153, length000153, checked000153, counted000153⟩

noncomputable def localPrefix000153 : CheckedPrimeCountBlock 149917 2 12566 2077 :=
  localPrefix000152.append block000153

noncomputable def hints000154 : List Nat :=
  primeHintChunk% "../../certificates/prime-count33554432-v1/counts-000154.json" 33554432 87523 175049 2

theorem length000154 : hints000154.length = 1367 := by decide +kernel
theorem checked000154 : checkPrimeHints 175049 2 hints000154 = true := by decide +kernel
theorem counted000154 : hints000154.count 0 <= 220 := by decide +kernel

noncomputable def block000154 : CheckedPrimeCountBlock 175049 2 1367 220 :=
  ⟨hints000154, length000154, checked000154, counted000154⟩

noncomputable def localPrefix000154 : CheckedPrimeCountBlock 149917 2 13933 2297 :=
  localPrefix000153.append block000154

noncomputable def hints000155 : List Nat :=
  primeHintChunk% "../../certificates/prime-count33554432-v1/counts-000155.json" 33554432 88890 177783 2

theorem length000155 : hints000155.length = 1388 := by decide +kernel
theorem checked000155 : checkPrimeHints 177783 2 hints000155 = true := by decide +kernel
theorem counted000155 : hints000155.count 0 <= 250 := by decide +kernel

noncomputable def block000155 : CheckedPrimeCountBlock 177783 2 1388 250 :=
  ⟨hints000155, length000155, checked000155, counted000155⟩

noncomputable def localPrefix000155 : CheckedPrimeCountBlock 149917 2 15321 2547 :=
  localPrefix000154.append block000155

noncomputable def hints000156 : List Nat :=
  primeHintChunk% "../../certificates/prime-count33554432-v1/counts-000156.json" 33554432 90278 180559 2

theorem length000156 : hints000156.length = 1410 := by decide +kernel
theorem checked000156 : checkPrimeHints 180559 2 hints000156 = true := by decide +kernel
theorem counted000156 : hints000156.count 0 <= 223 := by decide +kernel

noncomputable def block000156 : CheckedPrimeCountBlock 180559 2 1410 223 :=
  ⟨hints000156, length000156, checked000156, counted000156⟩

noncomputable def localPrefix000156 : CheckedPrimeCountBlock 149917 2 16731 2770 :=
  localPrefix000155.append block000156

noncomputable def hints000157 : List Nat :=
  primeHintChunk% "../../certificates/prime-count33554432-v1/counts-000157.json" 33554432 91688 183379 2

theorem length000157 : hints000157.length = 1432 := by decide +kernel
theorem checked000157 : checkPrimeHints 183379 2 hints000157 = true := by decide +kernel
theorem counted000157 : hints000157.count 0 <= 247 := by decide +kernel

noncomputable def block000157 : CheckedPrimeCountBlock 183379 2 1432 247 :=
  ⟨hints000157, length000157, checked000157, counted000157⟩

noncomputable def localPrefix000157 : CheckedPrimeCountBlock 149917 2 18163 3017 :=
  localPrefix000156.append block000157

noncomputable def hints000158 : List Nat :=
  primeHintChunk% "../../certificates/prime-count33554432-v1/counts-000158.json" 33554432 93120 186243 2

theorem length000158 : hints000158.length = 1455 := by decide +kernel
theorem checked000158 : checkPrimeHints 186243 2 hints000158 = true := by decide +kernel
theorem counted000158 : hints000158.count 0 <= 234 := by decide +kernel

noncomputable def block000158 : CheckedPrimeCountBlock 186243 2 1455 234 :=
  ⟨hints000158, length000158, checked000158, counted000158⟩

noncomputable def localPrefix000158 : CheckedPrimeCountBlock 149917 2 19618 3251 :=
  localPrefix000157.append block000158

noncomputable def hints000159 : List Nat :=
  primeHintChunk% "../../certificates/prime-count33554432-v1/counts-000159.json" 33554432 94575 189153 2

theorem length000159 : hints000159.length = 1477 := by decide +kernel
theorem checked000159 : checkPrimeHints 189153 2 hints000159 = true := by decide +kernel
theorem counted000159 : hints000159.count 0 <= 243 := by decide +kernel

noncomputable def block000159 : CheckedPrimeCountBlock 189153 2 1477 243 :=
  ⟨hints000159, length000159, checked000159, counted000159⟩

noncomputable def localPrefix000159 : CheckedPrimeCountBlock 149917 2 21095 3494 :=
  localPrefix000158.append block000159

end JSP848.FullPrimeCount
