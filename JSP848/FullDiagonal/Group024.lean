import JSP848.CertificateInput
import JSP848.DiagonalChunks

set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0

namespace JSP848.FullDiagonal

open CertificateInput

noncomputable def entries000384 : List DiagonalCertificateEntry :=
  diagonalChunk% "../../certificates/33554432-v1/diagonal-000384.json" 33554432 6291456

theorem length000384 : entries000384.length = 16384 := by decide +kernel
theorem checked000384 : checkDiagonalEntries 25165829 entries000384 = true := by
  decide +kernel

noncomputable def block000384 : CheckedDiagonalBlock 25165829 16384 :=
  ⟨entries000384, length000384, checked000384⟩

noncomputable def entries000385 : List DiagonalCertificateEntry :=
  diagonalChunk% "../../certificates/33554432-v1/diagonal-000385.json" 33554432 6307840

theorem length000385 : entries000385.length = 16384 := by decide +kernel
theorem checked000385 : checkDiagonalEntries 25231365 entries000385 = true := by
  decide +kernel

noncomputable def block000385 : CheckedDiagonalBlock 25231365 16384 :=
  ⟨entries000385, length000385, checked000385⟩

noncomputable def entries000386 : List DiagonalCertificateEntry :=
  diagonalChunk% "../../certificates/33554432-v1/diagonal-000386.json" 33554432 6324224

theorem length000386 : entries000386.length = 16384 := by decide +kernel
theorem checked000386 : checkDiagonalEntries 25296901 entries000386 = true := by
  decide +kernel

noncomputable def block000386 : CheckedDiagonalBlock 25296901 16384 :=
  ⟨entries000386, length000386, checked000386⟩

noncomputable def entries000387 : List DiagonalCertificateEntry :=
  diagonalChunk% "../../certificates/33554432-v1/diagonal-000387.json" 33554432 6340608

theorem length000387 : entries000387.length = 16384 := by decide +kernel
theorem checked000387 : checkDiagonalEntries 25362437 entries000387 = true := by
  decide +kernel

noncomputable def block000387 : CheckedDiagonalBlock 25362437 16384 :=
  ⟨entries000387, length000387, checked000387⟩

noncomputable def entries000388 : List DiagonalCertificateEntry :=
  diagonalChunk% "../../certificates/33554432-v1/diagonal-000388.json" 33554432 6356992

theorem length000388 : entries000388.length = 16384 := by decide +kernel
theorem checked000388 : checkDiagonalEntries 25427973 entries000388 = true := by
  decide +kernel

noncomputable def block000388 : CheckedDiagonalBlock 25427973 16384 :=
  ⟨entries000388, length000388, checked000388⟩

noncomputable def entries000389 : List DiagonalCertificateEntry :=
  diagonalChunk% "../../certificates/33554432-v1/diagonal-000389.json" 33554432 6373376

theorem length000389 : entries000389.length = 16384 := by decide +kernel
theorem checked000389 : checkDiagonalEntries 25493509 entries000389 = true := by
  decide +kernel

noncomputable def block000389 : CheckedDiagonalBlock 25493509 16384 :=
  ⟨entries000389, length000389, checked000389⟩

noncomputable def entries000390 : List DiagonalCertificateEntry :=
  diagonalChunk% "../../certificates/33554432-v1/diagonal-000390.json" 33554432 6389760

theorem length000390 : entries000390.length = 16384 := by decide +kernel
theorem checked000390 : checkDiagonalEntries 25559045 entries000390 = true := by
  decide +kernel

noncomputable def block000390 : CheckedDiagonalBlock 25559045 16384 :=
  ⟨entries000390, length000390, checked000390⟩

noncomputable def entries000391 : List DiagonalCertificateEntry :=
  diagonalChunk% "../../certificates/33554432-v1/diagonal-000391.json" 33554432 6406144

theorem length000391 : entries000391.length = 16384 := by decide +kernel
theorem checked000391 : checkDiagonalEntries 25624581 entries000391 = true := by
  decide +kernel

noncomputable def block000391 : CheckedDiagonalBlock 25624581 16384 :=
  ⟨entries000391, length000391, checked000391⟩

noncomputable def entries000392 : List DiagonalCertificateEntry :=
  diagonalChunk% "../../certificates/33554432-v1/diagonal-000392.json" 33554432 6422528

theorem length000392 : entries000392.length = 16384 := by decide +kernel
theorem checked000392 : checkDiagonalEntries 25690117 entries000392 = true := by
  decide +kernel

noncomputable def block000392 : CheckedDiagonalBlock 25690117 16384 :=
  ⟨entries000392, length000392, checked000392⟩

noncomputable def entries000393 : List DiagonalCertificateEntry :=
  diagonalChunk% "../../certificates/33554432-v1/diagonal-000393.json" 33554432 6438912

theorem length000393 : entries000393.length = 16384 := by decide +kernel
theorem checked000393 : checkDiagonalEntries 25755653 entries000393 = true := by
  decide +kernel

noncomputable def block000393 : CheckedDiagonalBlock 25755653 16384 :=
  ⟨entries000393, length000393, checked000393⟩

noncomputable def entries000394 : List DiagonalCertificateEntry :=
  diagonalChunk% "../../certificates/33554432-v1/diagonal-000394.json" 33554432 6455296

theorem length000394 : entries000394.length = 16384 := by decide +kernel
theorem checked000394 : checkDiagonalEntries 25821189 entries000394 = true := by
  decide +kernel

noncomputable def block000394 : CheckedDiagonalBlock 25821189 16384 :=
  ⟨entries000394, length000394, checked000394⟩

noncomputable def entries000395 : List DiagonalCertificateEntry :=
  diagonalChunk% "../../certificates/33554432-v1/diagonal-000395.json" 33554432 6471680

theorem length000395 : entries000395.length = 16384 := by decide +kernel
theorem checked000395 : checkDiagonalEntries 25886725 entries000395 = true := by
  decide +kernel

noncomputable def block000395 : CheckedDiagonalBlock 25886725 16384 :=
  ⟨entries000395, length000395, checked000395⟩

noncomputable def entries000396 : List DiagonalCertificateEntry :=
  diagonalChunk% "../../certificates/33554432-v1/diagonal-000396.json" 33554432 6488064

theorem length000396 : entries000396.length = 16384 := by decide +kernel
theorem checked000396 : checkDiagonalEntries 25952261 entries000396 = true := by
  decide +kernel

noncomputable def block000396 : CheckedDiagonalBlock 25952261 16384 :=
  ⟨entries000396, length000396, checked000396⟩

noncomputable def entries000397 : List DiagonalCertificateEntry :=
  diagonalChunk% "../../certificates/33554432-v1/diagonal-000397.json" 33554432 6504448

theorem length000397 : entries000397.length = 16384 := by decide +kernel
theorem checked000397 : checkDiagonalEntries 26017797 entries000397 = true := by
  decide +kernel

noncomputable def block000397 : CheckedDiagonalBlock 26017797 16384 :=
  ⟨entries000397, length000397, checked000397⟩

noncomputable def entries000398 : List DiagonalCertificateEntry :=
  diagonalChunk% "../../certificates/33554432-v1/diagonal-000398.json" 33554432 6520832

theorem length000398 : entries000398.length = 16384 := by decide +kernel
theorem checked000398 : checkDiagonalEntries 26083333 entries000398 = true := by
  decide +kernel

noncomputable def block000398 : CheckedDiagonalBlock 26083333 16384 :=
  ⟨entries000398, length000398, checked000398⟩

noncomputable def entries000399 : List DiagonalCertificateEntry :=
  diagonalChunk% "../../certificates/33554432-v1/diagonal-000399.json" 33554432 6537216

theorem length000399 : entries000399.length = 16384 := by decide +kernel
theorem checked000399 : checkDiagonalEntries 26148869 entries000399 = true := by
  decide +kernel

noncomputable def block000399 : CheckedDiagonalBlock 26148869 16384 :=
  ⟨entries000399, length000399, checked000399⟩

noncomputable def group024 : CheckedDiagonalBlock 25165829 262144 :=
  (((((((((((((((block000384.append block000385).append block000386).append block000387).append block000388).append block000389).append block000390).append block000391).append block000392).append block000393).append block000394).append block000395).append block000396).append block000397).append block000398).append block000399)

end JSP848.FullDiagonal
