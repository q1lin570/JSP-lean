import JSP848.CertificateInput
import JSP848.DiagonalChunks

set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0

namespace JSP848.FullDiagonal

open CertificateInput

noncomputable def entries000144 : List DiagonalCertificateEntry :=
  diagonalChunk% "../../certificates/33554432-v1/diagonal-000144.json" 33554432 2359296

theorem length000144 : entries000144.length = 16384 := by decide +kernel
theorem checked000144 : checkDiagonalEntries 9437189 entries000144 = true := by
  decide +kernel

noncomputable def block000144 : CheckedDiagonalBlock 9437189 16384 :=
  ⟨entries000144, length000144, checked000144⟩

noncomputable def entries000145 : List DiagonalCertificateEntry :=
  diagonalChunk% "../../certificates/33554432-v1/diagonal-000145.json" 33554432 2375680

theorem length000145 : entries000145.length = 16384 := by decide +kernel
theorem checked000145 : checkDiagonalEntries 9502725 entries000145 = true := by
  decide +kernel

noncomputable def block000145 : CheckedDiagonalBlock 9502725 16384 :=
  ⟨entries000145, length000145, checked000145⟩

noncomputable def entries000146 : List DiagonalCertificateEntry :=
  diagonalChunk% "../../certificates/33554432-v1/diagonal-000146.json" 33554432 2392064

theorem length000146 : entries000146.length = 16384 := by decide +kernel
theorem checked000146 : checkDiagonalEntries 9568261 entries000146 = true := by
  decide +kernel

noncomputable def block000146 : CheckedDiagonalBlock 9568261 16384 :=
  ⟨entries000146, length000146, checked000146⟩

noncomputable def entries000147 : List DiagonalCertificateEntry :=
  diagonalChunk% "../../certificates/33554432-v1/diagonal-000147.json" 33554432 2408448

theorem length000147 : entries000147.length = 16384 := by decide +kernel
theorem checked000147 : checkDiagonalEntries 9633797 entries000147 = true := by
  decide +kernel

noncomputable def block000147 : CheckedDiagonalBlock 9633797 16384 :=
  ⟨entries000147, length000147, checked000147⟩

noncomputable def entries000148 : List DiagonalCertificateEntry :=
  diagonalChunk% "../../certificates/33554432-v1/diagonal-000148.json" 33554432 2424832

theorem length000148 : entries000148.length = 16384 := by decide +kernel
theorem checked000148 : checkDiagonalEntries 9699333 entries000148 = true := by
  decide +kernel

noncomputable def block000148 : CheckedDiagonalBlock 9699333 16384 :=
  ⟨entries000148, length000148, checked000148⟩

noncomputable def entries000149 : List DiagonalCertificateEntry :=
  diagonalChunk% "../../certificates/33554432-v1/diagonal-000149.json" 33554432 2441216

theorem length000149 : entries000149.length = 16384 := by decide +kernel
theorem checked000149 : checkDiagonalEntries 9764869 entries000149 = true := by
  decide +kernel

noncomputable def block000149 : CheckedDiagonalBlock 9764869 16384 :=
  ⟨entries000149, length000149, checked000149⟩

noncomputable def entries000150 : List DiagonalCertificateEntry :=
  diagonalChunk% "../../certificates/33554432-v1/diagonal-000150.json" 33554432 2457600

theorem length000150 : entries000150.length = 16384 := by decide +kernel
theorem checked000150 : checkDiagonalEntries 9830405 entries000150 = true := by
  decide +kernel

noncomputable def block000150 : CheckedDiagonalBlock 9830405 16384 :=
  ⟨entries000150, length000150, checked000150⟩

noncomputable def entries000151 : List DiagonalCertificateEntry :=
  diagonalChunk% "../../certificates/33554432-v1/diagonal-000151.json" 33554432 2473984

theorem length000151 : entries000151.length = 16384 := by decide +kernel
theorem checked000151 : checkDiagonalEntries 9895941 entries000151 = true := by
  decide +kernel

noncomputable def block000151 : CheckedDiagonalBlock 9895941 16384 :=
  ⟨entries000151, length000151, checked000151⟩

noncomputable def entries000152 : List DiagonalCertificateEntry :=
  diagonalChunk% "../../certificates/33554432-v1/diagonal-000152.json" 33554432 2490368

theorem length000152 : entries000152.length = 16384 := by decide +kernel
theorem checked000152 : checkDiagonalEntries 9961477 entries000152 = true := by
  decide +kernel

noncomputable def block000152 : CheckedDiagonalBlock 9961477 16384 :=
  ⟨entries000152, length000152, checked000152⟩

noncomputable def entries000153 : List DiagonalCertificateEntry :=
  diagonalChunk% "../../certificates/33554432-v1/diagonal-000153.json" 33554432 2506752

theorem length000153 : entries000153.length = 16384 := by decide +kernel
theorem checked000153 : checkDiagonalEntries 10027013 entries000153 = true := by
  decide +kernel

noncomputable def block000153 : CheckedDiagonalBlock 10027013 16384 :=
  ⟨entries000153, length000153, checked000153⟩

noncomputable def entries000154 : List DiagonalCertificateEntry :=
  diagonalChunk% "../../certificates/33554432-v1/diagonal-000154.json" 33554432 2523136

theorem length000154 : entries000154.length = 16384 := by decide +kernel
theorem checked000154 : checkDiagonalEntries 10092549 entries000154 = true := by
  decide +kernel

noncomputable def block000154 : CheckedDiagonalBlock 10092549 16384 :=
  ⟨entries000154, length000154, checked000154⟩

noncomputable def entries000155 : List DiagonalCertificateEntry :=
  diagonalChunk% "../../certificates/33554432-v1/diagonal-000155.json" 33554432 2539520

theorem length000155 : entries000155.length = 16384 := by decide +kernel
theorem checked000155 : checkDiagonalEntries 10158085 entries000155 = true := by
  decide +kernel

noncomputable def block000155 : CheckedDiagonalBlock 10158085 16384 :=
  ⟨entries000155, length000155, checked000155⟩

noncomputable def entries000156 : List DiagonalCertificateEntry :=
  diagonalChunk% "../../certificates/33554432-v1/diagonal-000156.json" 33554432 2555904

theorem length000156 : entries000156.length = 16384 := by decide +kernel
theorem checked000156 : checkDiagonalEntries 10223621 entries000156 = true := by
  decide +kernel

noncomputable def block000156 : CheckedDiagonalBlock 10223621 16384 :=
  ⟨entries000156, length000156, checked000156⟩

noncomputable def entries000157 : List DiagonalCertificateEntry :=
  diagonalChunk% "../../certificates/33554432-v1/diagonal-000157.json" 33554432 2572288

theorem length000157 : entries000157.length = 16384 := by decide +kernel
theorem checked000157 : checkDiagonalEntries 10289157 entries000157 = true := by
  decide +kernel

noncomputable def block000157 : CheckedDiagonalBlock 10289157 16384 :=
  ⟨entries000157, length000157, checked000157⟩

noncomputable def entries000158 : List DiagonalCertificateEntry :=
  diagonalChunk% "../../certificates/33554432-v1/diagonal-000158.json" 33554432 2588672

theorem length000158 : entries000158.length = 16384 := by decide +kernel
theorem checked000158 : checkDiagonalEntries 10354693 entries000158 = true := by
  decide +kernel

noncomputable def block000158 : CheckedDiagonalBlock 10354693 16384 :=
  ⟨entries000158, length000158, checked000158⟩

noncomputable def entries000159 : List DiagonalCertificateEntry :=
  diagonalChunk% "../../certificates/33554432-v1/diagonal-000159.json" 33554432 2605056

theorem length000159 : entries000159.length = 16384 := by decide +kernel
theorem checked000159 : checkDiagonalEntries 10420229 entries000159 = true := by
  decide +kernel

noncomputable def block000159 : CheckedDiagonalBlock 10420229 16384 :=
  ⟨entries000159, length000159, checked000159⟩

noncomputable def group009 : CheckedDiagonalBlock 9437189 262144 :=
  (((((((((((((((block000144.append block000145).append block000146).append block000147).append block000148).append block000149).append block000150).append block000151).append block000152).append block000153).append block000154).append block000155).append block000156).append block000157).append block000158).append block000159)

end JSP848.FullDiagonal
