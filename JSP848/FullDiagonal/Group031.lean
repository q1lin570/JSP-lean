import JSP848.CertificateInput
import JSP848.DiagonalChunks

set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0

namespace JSP848.FullDiagonal

open CertificateInput

noncomputable def entries000496 : List DiagonalCertificateEntry :=
  diagonalChunk% "../../certificates/33554432-v1/diagonal-000496.json" 33554432 8126464

theorem length000496 : entries000496.length = 16384 := by decide +kernel
theorem checked000496 : checkDiagonalEntries 32505861 entries000496 = true := by
  decide +kernel

noncomputable def block000496 : CheckedDiagonalBlock 32505861 16384 :=
  ⟨entries000496, length000496, checked000496⟩

noncomputable def entries000497 : List DiagonalCertificateEntry :=
  diagonalChunk% "../../certificates/33554432-v1/diagonal-000497.json" 33554432 8142848

theorem length000497 : entries000497.length = 16384 := by decide +kernel
theorem checked000497 : checkDiagonalEntries 32571397 entries000497 = true := by
  decide +kernel

noncomputable def block000497 : CheckedDiagonalBlock 32571397 16384 :=
  ⟨entries000497, length000497, checked000497⟩

noncomputable def entries000498 : List DiagonalCertificateEntry :=
  diagonalChunk% "../../certificates/33554432-v1/diagonal-000498.json" 33554432 8159232

theorem length000498 : entries000498.length = 16384 := by decide +kernel
theorem checked000498 : checkDiagonalEntries 32636933 entries000498 = true := by
  decide +kernel

noncomputable def block000498 : CheckedDiagonalBlock 32636933 16384 :=
  ⟨entries000498, length000498, checked000498⟩

noncomputable def entries000499 : List DiagonalCertificateEntry :=
  diagonalChunk% "../../certificates/33554432-v1/diagonal-000499.json" 33554432 8175616

theorem length000499 : entries000499.length = 16384 := by decide +kernel
theorem checked000499 : checkDiagonalEntries 32702469 entries000499 = true := by
  decide +kernel

noncomputable def block000499 : CheckedDiagonalBlock 32702469 16384 :=
  ⟨entries000499, length000499, checked000499⟩

noncomputable def entries000500 : List DiagonalCertificateEntry :=
  diagonalChunk% "../../certificates/33554432-v1/diagonal-000500.json" 33554432 8192000

theorem length000500 : entries000500.length = 16384 := by decide +kernel
theorem checked000500 : checkDiagonalEntries 32768005 entries000500 = true := by
  decide +kernel

noncomputable def block000500 : CheckedDiagonalBlock 32768005 16384 :=
  ⟨entries000500, length000500, checked000500⟩

noncomputable def entries000501 : List DiagonalCertificateEntry :=
  diagonalChunk% "../../certificates/33554432-v1/diagonal-000501.json" 33554432 8208384

theorem length000501 : entries000501.length = 16384 := by decide +kernel
theorem checked000501 : checkDiagonalEntries 32833541 entries000501 = true := by
  decide +kernel

noncomputable def block000501 : CheckedDiagonalBlock 32833541 16384 :=
  ⟨entries000501, length000501, checked000501⟩

noncomputable def entries000502 : List DiagonalCertificateEntry :=
  diagonalChunk% "../../certificates/33554432-v1/diagonal-000502.json" 33554432 8224768

theorem length000502 : entries000502.length = 16384 := by decide +kernel
theorem checked000502 : checkDiagonalEntries 32899077 entries000502 = true := by
  decide +kernel

noncomputable def block000502 : CheckedDiagonalBlock 32899077 16384 :=
  ⟨entries000502, length000502, checked000502⟩

noncomputable def entries000503 : List DiagonalCertificateEntry :=
  diagonalChunk% "../../certificates/33554432-v1/diagonal-000503.json" 33554432 8241152

theorem length000503 : entries000503.length = 16384 := by decide +kernel
theorem checked000503 : checkDiagonalEntries 32964613 entries000503 = true := by
  decide +kernel

noncomputable def block000503 : CheckedDiagonalBlock 32964613 16384 :=
  ⟨entries000503, length000503, checked000503⟩

noncomputable def entries000504 : List DiagonalCertificateEntry :=
  diagonalChunk% "../../certificates/33554432-v1/diagonal-000504.json" 33554432 8257536

theorem length000504 : entries000504.length = 16384 := by decide +kernel
theorem checked000504 : checkDiagonalEntries 33030149 entries000504 = true := by
  decide +kernel

noncomputable def block000504 : CheckedDiagonalBlock 33030149 16384 :=
  ⟨entries000504, length000504, checked000504⟩

noncomputable def entries000505 : List DiagonalCertificateEntry :=
  diagonalChunk% "../../certificates/33554432-v1/diagonal-000505.json" 33554432 8273920

theorem length000505 : entries000505.length = 16384 := by decide +kernel
theorem checked000505 : checkDiagonalEntries 33095685 entries000505 = true := by
  decide +kernel

noncomputable def block000505 : CheckedDiagonalBlock 33095685 16384 :=
  ⟨entries000505, length000505, checked000505⟩

noncomputable def entries000506 : List DiagonalCertificateEntry :=
  diagonalChunk% "../../certificates/33554432-v1/diagonal-000506.json" 33554432 8290304

theorem length000506 : entries000506.length = 16384 := by decide +kernel
theorem checked000506 : checkDiagonalEntries 33161221 entries000506 = true := by
  decide +kernel

noncomputable def block000506 : CheckedDiagonalBlock 33161221 16384 :=
  ⟨entries000506, length000506, checked000506⟩

noncomputable def entries000507 : List DiagonalCertificateEntry :=
  diagonalChunk% "../../certificates/33554432-v1/diagonal-000507.json" 33554432 8306688

theorem length000507 : entries000507.length = 16384 := by decide +kernel
theorem checked000507 : checkDiagonalEntries 33226757 entries000507 = true := by
  decide +kernel

noncomputable def block000507 : CheckedDiagonalBlock 33226757 16384 :=
  ⟨entries000507, length000507, checked000507⟩

noncomputable def entries000508 : List DiagonalCertificateEntry :=
  diagonalChunk% "../../certificates/33554432-v1/diagonal-000508.json" 33554432 8323072

theorem length000508 : entries000508.length = 16384 := by decide +kernel
theorem checked000508 : checkDiagonalEntries 33292293 entries000508 = true := by
  decide +kernel

noncomputable def block000508 : CheckedDiagonalBlock 33292293 16384 :=
  ⟨entries000508, length000508, checked000508⟩

noncomputable def entries000509 : List DiagonalCertificateEntry :=
  diagonalChunk% "../../certificates/33554432-v1/diagonal-000509.json" 33554432 8339456

theorem length000509 : entries000509.length = 16384 := by decide +kernel
theorem checked000509 : checkDiagonalEntries 33357829 entries000509 = true := by
  decide +kernel

noncomputable def block000509 : CheckedDiagonalBlock 33357829 16384 :=
  ⟨entries000509, length000509, checked000509⟩

noncomputable def entries000510 : List DiagonalCertificateEntry :=
  diagonalChunk% "../../certificates/33554432-v1/diagonal-000510.json" 33554432 8355840

theorem length000510 : entries000510.length = 16384 := by decide +kernel
theorem checked000510 : checkDiagonalEntries 33423365 entries000510 = true := by
  decide +kernel

noncomputable def block000510 : CheckedDiagonalBlock 33423365 16384 :=
  ⟨entries000510, length000510, checked000510⟩

noncomputable def entries000511 : List DiagonalCertificateEntry :=
  diagonalChunk% "../../certificates/33554432-v1/diagonal-000511.json" 33554432 8372224

theorem length000511 : entries000511.length = 16383 := by decide +kernel
theorem checked000511 : checkDiagonalEntries 33488901 entries000511 = true := by
  decide +kernel

noncomputable def block000511 : CheckedDiagonalBlock 33488901 16383 :=
  ⟨entries000511, length000511, checked000511⟩

noncomputable def group031 : CheckedDiagonalBlock 32505861 262143 :=
  (((((((((((((((block000496.append block000497).append block000498).append block000499).append block000500).append block000501).append block000502).append block000503).append block000504).append block000505).append block000506).append block000507).append block000508).append block000509).append block000510).append block000511)

end JSP848.FullDiagonal
