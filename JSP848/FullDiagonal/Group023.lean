import JSP848.CertificateInput
import JSP848.DiagonalChunks

set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0

namespace JSP848.FullDiagonal

open CertificateInput

noncomputable def entries000368 : List DiagonalCertificateEntry :=
  diagonalChunk% "../../certificates/33554432-v1/diagonal-000368.json" 33554432 6029312

theorem length000368 : entries000368.length = 16384 := by decide +kernel
theorem checked000368 : checkDiagonalEntries 24117253 entries000368 = true := by
  decide +kernel

noncomputable def block000368 : CheckedDiagonalBlock 24117253 16384 :=
  ⟨entries000368, length000368, checked000368⟩

noncomputable def entries000369 : List DiagonalCertificateEntry :=
  diagonalChunk% "../../certificates/33554432-v1/diagonal-000369.json" 33554432 6045696

theorem length000369 : entries000369.length = 16384 := by decide +kernel
theorem checked000369 : checkDiagonalEntries 24182789 entries000369 = true := by
  decide +kernel

noncomputable def block000369 : CheckedDiagonalBlock 24182789 16384 :=
  ⟨entries000369, length000369, checked000369⟩

noncomputable def entries000370 : List DiagonalCertificateEntry :=
  diagonalChunk% "../../certificates/33554432-v1/diagonal-000370.json" 33554432 6062080

theorem length000370 : entries000370.length = 16384 := by decide +kernel
theorem checked000370 : checkDiagonalEntries 24248325 entries000370 = true := by
  decide +kernel

noncomputable def block000370 : CheckedDiagonalBlock 24248325 16384 :=
  ⟨entries000370, length000370, checked000370⟩

noncomputable def entries000371 : List DiagonalCertificateEntry :=
  diagonalChunk% "../../certificates/33554432-v1/diagonal-000371.json" 33554432 6078464

theorem length000371 : entries000371.length = 16384 := by decide +kernel
theorem checked000371 : checkDiagonalEntries 24313861 entries000371 = true := by
  decide +kernel

noncomputable def block000371 : CheckedDiagonalBlock 24313861 16384 :=
  ⟨entries000371, length000371, checked000371⟩

noncomputable def entries000372 : List DiagonalCertificateEntry :=
  diagonalChunk% "../../certificates/33554432-v1/diagonal-000372.json" 33554432 6094848

theorem length000372 : entries000372.length = 16384 := by decide +kernel
theorem checked000372 : checkDiagonalEntries 24379397 entries000372 = true := by
  decide +kernel

noncomputable def block000372 : CheckedDiagonalBlock 24379397 16384 :=
  ⟨entries000372, length000372, checked000372⟩

noncomputable def entries000373 : List DiagonalCertificateEntry :=
  diagonalChunk% "../../certificates/33554432-v1/diagonal-000373.json" 33554432 6111232

theorem length000373 : entries000373.length = 16384 := by decide +kernel
theorem checked000373 : checkDiagonalEntries 24444933 entries000373 = true := by
  decide +kernel

noncomputable def block000373 : CheckedDiagonalBlock 24444933 16384 :=
  ⟨entries000373, length000373, checked000373⟩

noncomputable def entries000374 : List DiagonalCertificateEntry :=
  diagonalChunk% "../../certificates/33554432-v1/diagonal-000374.json" 33554432 6127616

theorem length000374 : entries000374.length = 16384 := by decide +kernel
theorem checked000374 : checkDiagonalEntries 24510469 entries000374 = true := by
  decide +kernel

noncomputable def block000374 : CheckedDiagonalBlock 24510469 16384 :=
  ⟨entries000374, length000374, checked000374⟩

noncomputable def entries000375 : List DiagonalCertificateEntry :=
  diagonalChunk% "../../certificates/33554432-v1/diagonal-000375.json" 33554432 6144000

theorem length000375 : entries000375.length = 16384 := by decide +kernel
theorem checked000375 : checkDiagonalEntries 24576005 entries000375 = true := by
  decide +kernel

noncomputable def block000375 : CheckedDiagonalBlock 24576005 16384 :=
  ⟨entries000375, length000375, checked000375⟩

noncomputable def entries000376 : List DiagonalCertificateEntry :=
  diagonalChunk% "../../certificates/33554432-v1/diagonal-000376.json" 33554432 6160384

theorem length000376 : entries000376.length = 16384 := by decide +kernel
theorem checked000376 : checkDiagonalEntries 24641541 entries000376 = true := by
  decide +kernel

noncomputable def block000376 : CheckedDiagonalBlock 24641541 16384 :=
  ⟨entries000376, length000376, checked000376⟩

noncomputable def entries000377 : List DiagonalCertificateEntry :=
  diagonalChunk% "../../certificates/33554432-v1/diagonal-000377.json" 33554432 6176768

theorem length000377 : entries000377.length = 16384 := by decide +kernel
theorem checked000377 : checkDiagonalEntries 24707077 entries000377 = true := by
  decide +kernel

noncomputable def block000377 : CheckedDiagonalBlock 24707077 16384 :=
  ⟨entries000377, length000377, checked000377⟩

noncomputable def entries000378 : List DiagonalCertificateEntry :=
  diagonalChunk% "../../certificates/33554432-v1/diagonal-000378.json" 33554432 6193152

theorem length000378 : entries000378.length = 16384 := by decide +kernel
theorem checked000378 : checkDiagonalEntries 24772613 entries000378 = true := by
  decide +kernel

noncomputable def block000378 : CheckedDiagonalBlock 24772613 16384 :=
  ⟨entries000378, length000378, checked000378⟩

noncomputable def entries000379 : List DiagonalCertificateEntry :=
  diagonalChunk% "../../certificates/33554432-v1/diagonal-000379.json" 33554432 6209536

theorem length000379 : entries000379.length = 16384 := by decide +kernel
theorem checked000379 : checkDiagonalEntries 24838149 entries000379 = true := by
  decide +kernel

noncomputable def block000379 : CheckedDiagonalBlock 24838149 16384 :=
  ⟨entries000379, length000379, checked000379⟩

noncomputable def entries000380 : List DiagonalCertificateEntry :=
  diagonalChunk% "../../certificates/33554432-v1/diagonal-000380.json" 33554432 6225920

theorem length000380 : entries000380.length = 16384 := by decide +kernel
theorem checked000380 : checkDiagonalEntries 24903685 entries000380 = true := by
  decide +kernel

noncomputable def block000380 : CheckedDiagonalBlock 24903685 16384 :=
  ⟨entries000380, length000380, checked000380⟩

noncomputable def entries000381 : List DiagonalCertificateEntry :=
  diagonalChunk% "../../certificates/33554432-v1/diagonal-000381.json" 33554432 6242304

theorem length000381 : entries000381.length = 16384 := by decide +kernel
theorem checked000381 : checkDiagonalEntries 24969221 entries000381 = true := by
  decide +kernel

noncomputable def block000381 : CheckedDiagonalBlock 24969221 16384 :=
  ⟨entries000381, length000381, checked000381⟩

noncomputable def entries000382 : List DiagonalCertificateEntry :=
  diagonalChunk% "../../certificates/33554432-v1/diagonal-000382.json" 33554432 6258688

theorem length000382 : entries000382.length = 16384 := by decide +kernel
theorem checked000382 : checkDiagonalEntries 25034757 entries000382 = true := by
  decide +kernel

noncomputable def block000382 : CheckedDiagonalBlock 25034757 16384 :=
  ⟨entries000382, length000382, checked000382⟩

noncomputable def entries000383 : List DiagonalCertificateEntry :=
  diagonalChunk% "../../certificates/33554432-v1/diagonal-000383.json" 33554432 6275072

theorem length000383 : entries000383.length = 16384 := by decide +kernel
theorem checked000383 : checkDiagonalEntries 25100293 entries000383 = true := by
  decide +kernel

noncomputable def block000383 : CheckedDiagonalBlock 25100293 16384 :=
  ⟨entries000383, length000383, checked000383⟩

noncomputable def group023 : CheckedDiagonalBlock 24117253 262144 :=
  (((((((((((((((block000368.append block000369).append block000370).append block000371).append block000372).append block000373).append block000374).append block000375).append block000376).append block000377).append block000378).append block000379).append block000380).append block000381).append block000382).append block000383)

end JSP848.FullDiagonal
