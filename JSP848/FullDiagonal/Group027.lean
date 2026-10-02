import JSP848.CertificateInput
import JSP848.DiagonalChunks

set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0

namespace JSP848.FullDiagonal

open CertificateInput

noncomputable def entries000432 : List DiagonalCertificateEntry :=
  diagonalChunk% "../../certificates/33554432-v1/diagonal-000432.json" 33554432 7077888

theorem length000432 : entries000432.length = 16384 := by decide +kernel
theorem checked000432 : checkDiagonalEntries 28311557 entries000432 = true := by
  decide +kernel

noncomputable def block000432 : CheckedDiagonalBlock 28311557 16384 :=
  ⟨entries000432, length000432, checked000432⟩

noncomputable def entries000433 : List DiagonalCertificateEntry :=
  diagonalChunk% "../../certificates/33554432-v1/diagonal-000433.json" 33554432 7094272

theorem length000433 : entries000433.length = 16384 := by decide +kernel
theorem checked000433 : checkDiagonalEntries 28377093 entries000433 = true := by
  decide +kernel

noncomputable def block000433 : CheckedDiagonalBlock 28377093 16384 :=
  ⟨entries000433, length000433, checked000433⟩

noncomputable def entries000434 : List DiagonalCertificateEntry :=
  diagonalChunk% "../../certificates/33554432-v1/diagonal-000434.json" 33554432 7110656

theorem length000434 : entries000434.length = 16384 := by decide +kernel
theorem checked000434 : checkDiagonalEntries 28442629 entries000434 = true := by
  decide +kernel

noncomputable def block000434 : CheckedDiagonalBlock 28442629 16384 :=
  ⟨entries000434, length000434, checked000434⟩

noncomputable def entries000435 : List DiagonalCertificateEntry :=
  diagonalChunk% "../../certificates/33554432-v1/diagonal-000435.json" 33554432 7127040

theorem length000435 : entries000435.length = 16384 := by decide +kernel
theorem checked000435 : checkDiagonalEntries 28508165 entries000435 = true := by
  decide +kernel

noncomputable def block000435 : CheckedDiagonalBlock 28508165 16384 :=
  ⟨entries000435, length000435, checked000435⟩

noncomputable def entries000436 : List DiagonalCertificateEntry :=
  diagonalChunk% "../../certificates/33554432-v1/diagonal-000436.json" 33554432 7143424

theorem length000436 : entries000436.length = 16384 := by decide +kernel
theorem checked000436 : checkDiagonalEntries 28573701 entries000436 = true := by
  decide +kernel

noncomputable def block000436 : CheckedDiagonalBlock 28573701 16384 :=
  ⟨entries000436, length000436, checked000436⟩

noncomputable def entries000437 : List DiagonalCertificateEntry :=
  diagonalChunk% "../../certificates/33554432-v1/diagonal-000437.json" 33554432 7159808

theorem length000437 : entries000437.length = 16384 := by decide +kernel
theorem checked000437 : checkDiagonalEntries 28639237 entries000437 = true := by
  decide +kernel

noncomputable def block000437 : CheckedDiagonalBlock 28639237 16384 :=
  ⟨entries000437, length000437, checked000437⟩

noncomputable def entries000438 : List DiagonalCertificateEntry :=
  diagonalChunk% "../../certificates/33554432-v1/diagonal-000438.json" 33554432 7176192

theorem length000438 : entries000438.length = 16384 := by decide +kernel
theorem checked000438 : checkDiagonalEntries 28704773 entries000438 = true := by
  decide +kernel

noncomputable def block000438 : CheckedDiagonalBlock 28704773 16384 :=
  ⟨entries000438, length000438, checked000438⟩

noncomputable def entries000439 : List DiagonalCertificateEntry :=
  diagonalChunk% "../../certificates/33554432-v1/diagonal-000439.json" 33554432 7192576

theorem length000439 : entries000439.length = 16384 := by decide +kernel
theorem checked000439 : checkDiagonalEntries 28770309 entries000439 = true := by
  decide +kernel

noncomputable def block000439 : CheckedDiagonalBlock 28770309 16384 :=
  ⟨entries000439, length000439, checked000439⟩

noncomputable def entries000440 : List DiagonalCertificateEntry :=
  diagonalChunk% "../../certificates/33554432-v1/diagonal-000440.json" 33554432 7208960

theorem length000440 : entries000440.length = 16384 := by decide +kernel
theorem checked000440 : checkDiagonalEntries 28835845 entries000440 = true := by
  decide +kernel

noncomputable def block000440 : CheckedDiagonalBlock 28835845 16384 :=
  ⟨entries000440, length000440, checked000440⟩

noncomputable def entries000441 : List DiagonalCertificateEntry :=
  diagonalChunk% "../../certificates/33554432-v1/diagonal-000441.json" 33554432 7225344

theorem length000441 : entries000441.length = 16384 := by decide +kernel
theorem checked000441 : checkDiagonalEntries 28901381 entries000441 = true := by
  decide +kernel

noncomputable def block000441 : CheckedDiagonalBlock 28901381 16384 :=
  ⟨entries000441, length000441, checked000441⟩

noncomputable def entries000442 : List DiagonalCertificateEntry :=
  diagonalChunk% "../../certificates/33554432-v1/diagonal-000442.json" 33554432 7241728

theorem length000442 : entries000442.length = 16384 := by decide +kernel
theorem checked000442 : checkDiagonalEntries 28966917 entries000442 = true := by
  decide +kernel

noncomputable def block000442 : CheckedDiagonalBlock 28966917 16384 :=
  ⟨entries000442, length000442, checked000442⟩

noncomputable def entries000443 : List DiagonalCertificateEntry :=
  diagonalChunk% "../../certificates/33554432-v1/diagonal-000443.json" 33554432 7258112

theorem length000443 : entries000443.length = 16384 := by decide +kernel
theorem checked000443 : checkDiagonalEntries 29032453 entries000443 = true := by
  decide +kernel

noncomputable def block000443 : CheckedDiagonalBlock 29032453 16384 :=
  ⟨entries000443, length000443, checked000443⟩

noncomputable def entries000444 : List DiagonalCertificateEntry :=
  diagonalChunk% "../../certificates/33554432-v1/diagonal-000444.json" 33554432 7274496

theorem length000444 : entries000444.length = 16384 := by decide +kernel
theorem checked000444 : checkDiagonalEntries 29097989 entries000444 = true := by
  decide +kernel

noncomputable def block000444 : CheckedDiagonalBlock 29097989 16384 :=
  ⟨entries000444, length000444, checked000444⟩

noncomputable def entries000445 : List DiagonalCertificateEntry :=
  diagonalChunk% "../../certificates/33554432-v1/diagonal-000445.json" 33554432 7290880

theorem length000445 : entries000445.length = 16384 := by decide +kernel
theorem checked000445 : checkDiagonalEntries 29163525 entries000445 = true := by
  decide +kernel

noncomputable def block000445 : CheckedDiagonalBlock 29163525 16384 :=
  ⟨entries000445, length000445, checked000445⟩

noncomputable def entries000446 : List DiagonalCertificateEntry :=
  diagonalChunk% "../../certificates/33554432-v1/diagonal-000446.json" 33554432 7307264

theorem length000446 : entries000446.length = 16384 := by decide +kernel
theorem checked000446 : checkDiagonalEntries 29229061 entries000446 = true := by
  decide +kernel

noncomputable def block000446 : CheckedDiagonalBlock 29229061 16384 :=
  ⟨entries000446, length000446, checked000446⟩

noncomputable def entries000447 : List DiagonalCertificateEntry :=
  diagonalChunk% "../../certificates/33554432-v1/diagonal-000447.json" 33554432 7323648

theorem length000447 : entries000447.length = 16384 := by decide +kernel
theorem checked000447 : checkDiagonalEntries 29294597 entries000447 = true := by
  decide +kernel

noncomputable def block000447 : CheckedDiagonalBlock 29294597 16384 :=
  ⟨entries000447, length000447, checked000447⟩

noncomputable def group027 : CheckedDiagonalBlock 28311557 262144 :=
  (((((((((((((((block000432.append block000433).append block000434).append block000435).append block000436).append block000437).append block000438).append block000439).append block000440).append block000441).append block000442).append block000443).append block000444).append block000445).append block000446).append block000447)

end JSP848.FullDiagonal
