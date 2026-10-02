import JSP848.CertificateInput
import JSP848.DiagonalChunks

set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0

namespace JSP848.FullDiagonal

open CertificateInput

noncomputable def entries000224 : List DiagonalCertificateEntry :=
  diagonalChunk% "../../certificates/33554432-v1/diagonal-000224.json" 33554432 3670016

theorem length000224 : entries000224.length = 16384 := by decide +kernel
theorem checked000224 : checkDiagonalEntries 14680069 entries000224 = true := by
  decide +kernel

noncomputable def block000224 : CheckedDiagonalBlock 14680069 16384 :=
  ⟨entries000224, length000224, checked000224⟩

noncomputable def entries000225 : List DiagonalCertificateEntry :=
  diagonalChunk% "../../certificates/33554432-v1/diagonal-000225.json" 33554432 3686400

theorem length000225 : entries000225.length = 16384 := by decide +kernel
theorem checked000225 : checkDiagonalEntries 14745605 entries000225 = true := by
  decide +kernel

noncomputable def block000225 : CheckedDiagonalBlock 14745605 16384 :=
  ⟨entries000225, length000225, checked000225⟩

noncomputable def entries000226 : List DiagonalCertificateEntry :=
  diagonalChunk% "../../certificates/33554432-v1/diagonal-000226.json" 33554432 3702784

theorem length000226 : entries000226.length = 16384 := by decide +kernel
theorem checked000226 : checkDiagonalEntries 14811141 entries000226 = true := by
  decide +kernel

noncomputable def block000226 : CheckedDiagonalBlock 14811141 16384 :=
  ⟨entries000226, length000226, checked000226⟩

noncomputable def entries000227 : List DiagonalCertificateEntry :=
  diagonalChunk% "../../certificates/33554432-v1/diagonal-000227.json" 33554432 3719168

theorem length000227 : entries000227.length = 16384 := by decide +kernel
theorem checked000227 : checkDiagonalEntries 14876677 entries000227 = true := by
  decide +kernel

noncomputable def block000227 : CheckedDiagonalBlock 14876677 16384 :=
  ⟨entries000227, length000227, checked000227⟩

noncomputable def entries000228 : List DiagonalCertificateEntry :=
  diagonalChunk% "../../certificates/33554432-v1/diagonal-000228.json" 33554432 3735552

theorem length000228 : entries000228.length = 16384 := by decide +kernel
theorem checked000228 : checkDiagonalEntries 14942213 entries000228 = true := by
  decide +kernel

noncomputable def block000228 : CheckedDiagonalBlock 14942213 16384 :=
  ⟨entries000228, length000228, checked000228⟩

noncomputable def entries000229 : List DiagonalCertificateEntry :=
  diagonalChunk% "../../certificates/33554432-v1/diagonal-000229.json" 33554432 3751936

theorem length000229 : entries000229.length = 16384 := by decide +kernel
theorem checked000229 : checkDiagonalEntries 15007749 entries000229 = true := by
  decide +kernel

noncomputable def block000229 : CheckedDiagonalBlock 15007749 16384 :=
  ⟨entries000229, length000229, checked000229⟩

noncomputable def entries000230 : List DiagonalCertificateEntry :=
  diagonalChunk% "../../certificates/33554432-v1/diagonal-000230.json" 33554432 3768320

theorem length000230 : entries000230.length = 16384 := by decide +kernel
theorem checked000230 : checkDiagonalEntries 15073285 entries000230 = true := by
  decide +kernel

noncomputable def block000230 : CheckedDiagonalBlock 15073285 16384 :=
  ⟨entries000230, length000230, checked000230⟩

noncomputable def entries000231 : List DiagonalCertificateEntry :=
  diagonalChunk% "../../certificates/33554432-v1/diagonal-000231.json" 33554432 3784704

theorem length000231 : entries000231.length = 16384 := by decide +kernel
theorem checked000231 : checkDiagonalEntries 15138821 entries000231 = true := by
  decide +kernel

noncomputable def block000231 : CheckedDiagonalBlock 15138821 16384 :=
  ⟨entries000231, length000231, checked000231⟩

noncomputable def entries000232 : List DiagonalCertificateEntry :=
  diagonalChunk% "../../certificates/33554432-v1/diagonal-000232.json" 33554432 3801088

theorem length000232 : entries000232.length = 16384 := by decide +kernel
theorem checked000232 : checkDiagonalEntries 15204357 entries000232 = true := by
  decide +kernel

noncomputable def block000232 : CheckedDiagonalBlock 15204357 16384 :=
  ⟨entries000232, length000232, checked000232⟩

noncomputable def entries000233 : List DiagonalCertificateEntry :=
  diagonalChunk% "../../certificates/33554432-v1/diagonal-000233.json" 33554432 3817472

theorem length000233 : entries000233.length = 16384 := by decide +kernel
theorem checked000233 : checkDiagonalEntries 15269893 entries000233 = true := by
  decide +kernel

noncomputable def block000233 : CheckedDiagonalBlock 15269893 16384 :=
  ⟨entries000233, length000233, checked000233⟩

noncomputable def entries000234 : List DiagonalCertificateEntry :=
  diagonalChunk% "../../certificates/33554432-v1/diagonal-000234.json" 33554432 3833856

theorem length000234 : entries000234.length = 16384 := by decide +kernel
theorem checked000234 : checkDiagonalEntries 15335429 entries000234 = true := by
  decide +kernel

noncomputable def block000234 : CheckedDiagonalBlock 15335429 16384 :=
  ⟨entries000234, length000234, checked000234⟩

noncomputable def entries000235 : List DiagonalCertificateEntry :=
  diagonalChunk% "../../certificates/33554432-v1/diagonal-000235.json" 33554432 3850240

theorem length000235 : entries000235.length = 16384 := by decide +kernel
theorem checked000235 : checkDiagonalEntries 15400965 entries000235 = true := by
  decide +kernel

noncomputable def block000235 : CheckedDiagonalBlock 15400965 16384 :=
  ⟨entries000235, length000235, checked000235⟩

noncomputable def entries000236 : List DiagonalCertificateEntry :=
  diagonalChunk% "../../certificates/33554432-v1/diagonal-000236.json" 33554432 3866624

theorem length000236 : entries000236.length = 16384 := by decide +kernel
theorem checked000236 : checkDiagonalEntries 15466501 entries000236 = true := by
  decide +kernel

noncomputable def block000236 : CheckedDiagonalBlock 15466501 16384 :=
  ⟨entries000236, length000236, checked000236⟩

noncomputable def entries000237 : List DiagonalCertificateEntry :=
  diagonalChunk% "../../certificates/33554432-v1/diagonal-000237.json" 33554432 3883008

theorem length000237 : entries000237.length = 16384 := by decide +kernel
theorem checked000237 : checkDiagonalEntries 15532037 entries000237 = true := by
  decide +kernel

noncomputable def block000237 : CheckedDiagonalBlock 15532037 16384 :=
  ⟨entries000237, length000237, checked000237⟩

noncomputable def entries000238 : List DiagonalCertificateEntry :=
  diagonalChunk% "../../certificates/33554432-v1/diagonal-000238.json" 33554432 3899392

theorem length000238 : entries000238.length = 16384 := by decide +kernel
theorem checked000238 : checkDiagonalEntries 15597573 entries000238 = true := by
  decide +kernel

noncomputable def block000238 : CheckedDiagonalBlock 15597573 16384 :=
  ⟨entries000238, length000238, checked000238⟩

noncomputable def entries000239 : List DiagonalCertificateEntry :=
  diagonalChunk% "../../certificates/33554432-v1/diagonal-000239.json" 33554432 3915776

theorem length000239 : entries000239.length = 16384 := by decide +kernel
theorem checked000239 : checkDiagonalEntries 15663109 entries000239 = true := by
  decide +kernel

noncomputable def block000239 : CheckedDiagonalBlock 15663109 16384 :=
  ⟨entries000239, length000239, checked000239⟩

noncomputable def group014 : CheckedDiagonalBlock 14680069 262144 :=
  (((((((((((((((block000224.append block000225).append block000226).append block000227).append block000228).append block000229).append block000230).append block000231).append block000232).append block000233).append block000234).append block000235).append block000236).append block000237).append block000238).append block000239)

end JSP848.FullDiagonal
