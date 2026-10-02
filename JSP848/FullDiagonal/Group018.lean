import JSP848.CertificateInput
import JSP848.DiagonalChunks

set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0

namespace JSP848.FullDiagonal

open CertificateInput

noncomputable def entries000288 : List DiagonalCertificateEntry :=
  diagonalChunk% "../../certificates/33554432-v1/diagonal-000288.json" 33554432 4718592

theorem length000288 : entries000288.length = 16384 := by decide +kernel
theorem checked000288 : checkDiagonalEntries 18874373 entries000288 = true := by
  decide +kernel

noncomputable def block000288 : CheckedDiagonalBlock 18874373 16384 :=
  ⟨entries000288, length000288, checked000288⟩

noncomputable def entries000289 : List DiagonalCertificateEntry :=
  diagonalChunk% "../../certificates/33554432-v1/diagonal-000289.json" 33554432 4734976

theorem length000289 : entries000289.length = 16384 := by decide +kernel
theorem checked000289 : checkDiagonalEntries 18939909 entries000289 = true := by
  decide +kernel

noncomputable def block000289 : CheckedDiagonalBlock 18939909 16384 :=
  ⟨entries000289, length000289, checked000289⟩

noncomputable def entries000290 : List DiagonalCertificateEntry :=
  diagonalChunk% "../../certificates/33554432-v1/diagonal-000290.json" 33554432 4751360

theorem length000290 : entries000290.length = 16384 := by decide +kernel
theorem checked000290 : checkDiagonalEntries 19005445 entries000290 = true := by
  decide +kernel

noncomputable def block000290 : CheckedDiagonalBlock 19005445 16384 :=
  ⟨entries000290, length000290, checked000290⟩

noncomputable def entries000291 : List DiagonalCertificateEntry :=
  diagonalChunk% "../../certificates/33554432-v1/diagonal-000291.json" 33554432 4767744

theorem length000291 : entries000291.length = 16384 := by decide +kernel
theorem checked000291 : checkDiagonalEntries 19070981 entries000291 = true := by
  decide +kernel

noncomputable def block000291 : CheckedDiagonalBlock 19070981 16384 :=
  ⟨entries000291, length000291, checked000291⟩

noncomputable def entries000292 : List DiagonalCertificateEntry :=
  diagonalChunk% "../../certificates/33554432-v1/diagonal-000292.json" 33554432 4784128

theorem length000292 : entries000292.length = 16384 := by decide +kernel
theorem checked000292 : checkDiagonalEntries 19136517 entries000292 = true := by
  decide +kernel

noncomputable def block000292 : CheckedDiagonalBlock 19136517 16384 :=
  ⟨entries000292, length000292, checked000292⟩

noncomputable def entries000293 : List DiagonalCertificateEntry :=
  diagonalChunk% "../../certificates/33554432-v1/diagonal-000293.json" 33554432 4800512

theorem length000293 : entries000293.length = 16384 := by decide +kernel
theorem checked000293 : checkDiagonalEntries 19202053 entries000293 = true := by
  decide +kernel

noncomputable def block000293 : CheckedDiagonalBlock 19202053 16384 :=
  ⟨entries000293, length000293, checked000293⟩

noncomputable def entries000294 : List DiagonalCertificateEntry :=
  diagonalChunk% "../../certificates/33554432-v1/diagonal-000294.json" 33554432 4816896

theorem length000294 : entries000294.length = 16384 := by decide +kernel
theorem checked000294 : checkDiagonalEntries 19267589 entries000294 = true := by
  decide +kernel

noncomputable def block000294 : CheckedDiagonalBlock 19267589 16384 :=
  ⟨entries000294, length000294, checked000294⟩

noncomputable def entries000295 : List DiagonalCertificateEntry :=
  diagonalChunk% "../../certificates/33554432-v1/diagonal-000295.json" 33554432 4833280

theorem length000295 : entries000295.length = 16384 := by decide +kernel
theorem checked000295 : checkDiagonalEntries 19333125 entries000295 = true := by
  decide +kernel

noncomputable def block000295 : CheckedDiagonalBlock 19333125 16384 :=
  ⟨entries000295, length000295, checked000295⟩

noncomputable def entries000296 : List DiagonalCertificateEntry :=
  diagonalChunk% "../../certificates/33554432-v1/diagonal-000296.json" 33554432 4849664

theorem length000296 : entries000296.length = 16384 := by decide +kernel
theorem checked000296 : checkDiagonalEntries 19398661 entries000296 = true := by
  decide +kernel

noncomputable def block000296 : CheckedDiagonalBlock 19398661 16384 :=
  ⟨entries000296, length000296, checked000296⟩

noncomputable def entries000297 : List DiagonalCertificateEntry :=
  diagonalChunk% "../../certificates/33554432-v1/diagonal-000297.json" 33554432 4866048

theorem length000297 : entries000297.length = 16384 := by decide +kernel
theorem checked000297 : checkDiagonalEntries 19464197 entries000297 = true := by
  decide +kernel

noncomputable def block000297 : CheckedDiagonalBlock 19464197 16384 :=
  ⟨entries000297, length000297, checked000297⟩

noncomputable def entries000298 : List DiagonalCertificateEntry :=
  diagonalChunk% "../../certificates/33554432-v1/diagonal-000298.json" 33554432 4882432

theorem length000298 : entries000298.length = 16384 := by decide +kernel
theorem checked000298 : checkDiagonalEntries 19529733 entries000298 = true := by
  decide +kernel

noncomputable def block000298 : CheckedDiagonalBlock 19529733 16384 :=
  ⟨entries000298, length000298, checked000298⟩

noncomputable def entries000299 : List DiagonalCertificateEntry :=
  diagonalChunk% "../../certificates/33554432-v1/diagonal-000299.json" 33554432 4898816

theorem length000299 : entries000299.length = 16384 := by decide +kernel
theorem checked000299 : checkDiagonalEntries 19595269 entries000299 = true := by
  decide +kernel

noncomputable def block000299 : CheckedDiagonalBlock 19595269 16384 :=
  ⟨entries000299, length000299, checked000299⟩

noncomputable def entries000300 : List DiagonalCertificateEntry :=
  diagonalChunk% "../../certificates/33554432-v1/diagonal-000300.json" 33554432 4915200

theorem length000300 : entries000300.length = 16384 := by decide +kernel
theorem checked000300 : checkDiagonalEntries 19660805 entries000300 = true := by
  decide +kernel

noncomputable def block000300 : CheckedDiagonalBlock 19660805 16384 :=
  ⟨entries000300, length000300, checked000300⟩

noncomputable def entries000301 : List DiagonalCertificateEntry :=
  diagonalChunk% "../../certificates/33554432-v1/diagonal-000301.json" 33554432 4931584

theorem length000301 : entries000301.length = 16384 := by decide +kernel
theorem checked000301 : checkDiagonalEntries 19726341 entries000301 = true := by
  decide +kernel

noncomputable def block000301 : CheckedDiagonalBlock 19726341 16384 :=
  ⟨entries000301, length000301, checked000301⟩

noncomputable def entries000302 : List DiagonalCertificateEntry :=
  diagonalChunk% "../../certificates/33554432-v1/diagonal-000302.json" 33554432 4947968

theorem length000302 : entries000302.length = 16384 := by decide +kernel
theorem checked000302 : checkDiagonalEntries 19791877 entries000302 = true := by
  decide +kernel

noncomputable def block000302 : CheckedDiagonalBlock 19791877 16384 :=
  ⟨entries000302, length000302, checked000302⟩

noncomputable def entries000303 : List DiagonalCertificateEntry :=
  diagonalChunk% "../../certificates/33554432-v1/diagonal-000303.json" 33554432 4964352

theorem length000303 : entries000303.length = 16384 := by decide +kernel
theorem checked000303 : checkDiagonalEntries 19857413 entries000303 = true := by
  decide +kernel

noncomputable def block000303 : CheckedDiagonalBlock 19857413 16384 :=
  ⟨entries000303, length000303, checked000303⟩

noncomputable def group018 : CheckedDiagonalBlock 18874373 262144 :=
  (((((((((((((((block000288.append block000289).append block000290).append block000291).append block000292).append block000293).append block000294).append block000295).append block000296).append block000297).append block000298).append block000299).append block000300).append block000301).append block000302).append block000303)

end JSP848.FullDiagonal
