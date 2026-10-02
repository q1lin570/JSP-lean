import JSP848.CertificateInput
import JSP848.DiagonalChunks

set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0

namespace JSP848.FullDiagonal

open CertificateInput

noncomputable def entries000320 : List DiagonalCertificateEntry :=
  diagonalChunk% "../../certificates/33554432-v1/diagonal-000320.json" 33554432 5242880

theorem length000320 : entries000320.length = 16384 := by decide +kernel
theorem checked000320 : checkDiagonalEntries 20971525 entries000320 = true := by
  decide +kernel

noncomputable def block000320 : CheckedDiagonalBlock 20971525 16384 :=
  ⟨entries000320, length000320, checked000320⟩

noncomputable def entries000321 : List DiagonalCertificateEntry :=
  diagonalChunk% "../../certificates/33554432-v1/diagonal-000321.json" 33554432 5259264

theorem length000321 : entries000321.length = 16384 := by decide +kernel
theorem checked000321 : checkDiagonalEntries 21037061 entries000321 = true := by
  decide +kernel

noncomputable def block000321 : CheckedDiagonalBlock 21037061 16384 :=
  ⟨entries000321, length000321, checked000321⟩

noncomputable def entries000322 : List DiagonalCertificateEntry :=
  diagonalChunk% "../../certificates/33554432-v1/diagonal-000322.json" 33554432 5275648

theorem length000322 : entries000322.length = 16384 := by decide +kernel
theorem checked000322 : checkDiagonalEntries 21102597 entries000322 = true := by
  decide +kernel

noncomputable def block000322 : CheckedDiagonalBlock 21102597 16384 :=
  ⟨entries000322, length000322, checked000322⟩

noncomputable def entries000323 : List DiagonalCertificateEntry :=
  diagonalChunk% "../../certificates/33554432-v1/diagonal-000323.json" 33554432 5292032

theorem length000323 : entries000323.length = 16384 := by decide +kernel
theorem checked000323 : checkDiagonalEntries 21168133 entries000323 = true := by
  decide +kernel

noncomputable def block000323 : CheckedDiagonalBlock 21168133 16384 :=
  ⟨entries000323, length000323, checked000323⟩

noncomputable def entries000324 : List DiagonalCertificateEntry :=
  diagonalChunk% "../../certificates/33554432-v1/diagonal-000324.json" 33554432 5308416

theorem length000324 : entries000324.length = 16384 := by decide +kernel
theorem checked000324 : checkDiagonalEntries 21233669 entries000324 = true := by
  decide +kernel

noncomputable def block000324 : CheckedDiagonalBlock 21233669 16384 :=
  ⟨entries000324, length000324, checked000324⟩

noncomputable def entries000325 : List DiagonalCertificateEntry :=
  diagonalChunk% "../../certificates/33554432-v1/diagonal-000325.json" 33554432 5324800

theorem length000325 : entries000325.length = 16384 := by decide +kernel
theorem checked000325 : checkDiagonalEntries 21299205 entries000325 = true := by
  decide +kernel

noncomputable def block000325 : CheckedDiagonalBlock 21299205 16384 :=
  ⟨entries000325, length000325, checked000325⟩

noncomputable def entries000326 : List DiagonalCertificateEntry :=
  diagonalChunk% "../../certificates/33554432-v1/diagonal-000326.json" 33554432 5341184

theorem length000326 : entries000326.length = 16384 := by decide +kernel
theorem checked000326 : checkDiagonalEntries 21364741 entries000326 = true := by
  decide +kernel

noncomputable def block000326 : CheckedDiagonalBlock 21364741 16384 :=
  ⟨entries000326, length000326, checked000326⟩

noncomputable def entries000327 : List DiagonalCertificateEntry :=
  diagonalChunk% "../../certificates/33554432-v1/diagonal-000327.json" 33554432 5357568

theorem length000327 : entries000327.length = 16384 := by decide +kernel
theorem checked000327 : checkDiagonalEntries 21430277 entries000327 = true := by
  decide +kernel

noncomputable def block000327 : CheckedDiagonalBlock 21430277 16384 :=
  ⟨entries000327, length000327, checked000327⟩

noncomputable def entries000328 : List DiagonalCertificateEntry :=
  diagonalChunk% "../../certificates/33554432-v1/diagonal-000328.json" 33554432 5373952

theorem length000328 : entries000328.length = 16384 := by decide +kernel
theorem checked000328 : checkDiagonalEntries 21495813 entries000328 = true := by
  decide +kernel

noncomputable def block000328 : CheckedDiagonalBlock 21495813 16384 :=
  ⟨entries000328, length000328, checked000328⟩

noncomputable def entries000329 : List DiagonalCertificateEntry :=
  diagonalChunk% "../../certificates/33554432-v1/diagonal-000329.json" 33554432 5390336

theorem length000329 : entries000329.length = 16384 := by decide +kernel
theorem checked000329 : checkDiagonalEntries 21561349 entries000329 = true := by
  decide +kernel

noncomputable def block000329 : CheckedDiagonalBlock 21561349 16384 :=
  ⟨entries000329, length000329, checked000329⟩

noncomputable def entries000330 : List DiagonalCertificateEntry :=
  diagonalChunk% "../../certificates/33554432-v1/diagonal-000330.json" 33554432 5406720

theorem length000330 : entries000330.length = 16384 := by decide +kernel
theorem checked000330 : checkDiagonalEntries 21626885 entries000330 = true := by
  decide +kernel

noncomputable def block000330 : CheckedDiagonalBlock 21626885 16384 :=
  ⟨entries000330, length000330, checked000330⟩

noncomputable def entries000331 : List DiagonalCertificateEntry :=
  diagonalChunk% "../../certificates/33554432-v1/diagonal-000331.json" 33554432 5423104

theorem length000331 : entries000331.length = 16384 := by decide +kernel
theorem checked000331 : checkDiagonalEntries 21692421 entries000331 = true := by
  decide +kernel

noncomputable def block000331 : CheckedDiagonalBlock 21692421 16384 :=
  ⟨entries000331, length000331, checked000331⟩

noncomputable def entries000332 : List DiagonalCertificateEntry :=
  diagonalChunk% "../../certificates/33554432-v1/diagonal-000332.json" 33554432 5439488

theorem length000332 : entries000332.length = 16384 := by decide +kernel
theorem checked000332 : checkDiagonalEntries 21757957 entries000332 = true := by
  decide +kernel

noncomputable def block000332 : CheckedDiagonalBlock 21757957 16384 :=
  ⟨entries000332, length000332, checked000332⟩

noncomputable def entries000333 : List DiagonalCertificateEntry :=
  diagonalChunk% "../../certificates/33554432-v1/diagonal-000333.json" 33554432 5455872

theorem length000333 : entries000333.length = 16384 := by decide +kernel
theorem checked000333 : checkDiagonalEntries 21823493 entries000333 = true := by
  decide +kernel

noncomputable def block000333 : CheckedDiagonalBlock 21823493 16384 :=
  ⟨entries000333, length000333, checked000333⟩

noncomputable def entries000334 : List DiagonalCertificateEntry :=
  diagonalChunk% "../../certificates/33554432-v1/diagonal-000334.json" 33554432 5472256

theorem length000334 : entries000334.length = 16384 := by decide +kernel
theorem checked000334 : checkDiagonalEntries 21889029 entries000334 = true := by
  decide +kernel

noncomputable def block000334 : CheckedDiagonalBlock 21889029 16384 :=
  ⟨entries000334, length000334, checked000334⟩

noncomputable def entries000335 : List DiagonalCertificateEntry :=
  diagonalChunk% "../../certificates/33554432-v1/diagonal-000335.json" 33554432 5488640

theorem length000335 : entries000335.length = 16384 := by decide +kernel
theorem checked000335 : checkDiagonalEntries 21954565 entries000335 = true := by
  decide +kernel

noncomputable def block000335 : CheckedDiagonalBlock 21954565 16384 :=
  ⟨entries000335, length000335, checked000335⟩

noncomputable def group020 : CheckedDiagonalBlock 20971525 262144 :=
  (((((((((((((((block000320.append block000321).append block000322).append block000323).append block000324).append block000325).append block000326).append block000327).append block000328).append block000329).append block000330).append block000331).append block000332).append block000333).append block000334).append block000335)

end JSP848.FullDiagonal
