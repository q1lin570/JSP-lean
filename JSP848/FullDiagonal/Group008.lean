import JSP848.CertificateInput
import JSP848.DiagonalChunks

set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0

namespace JSP848.FullDiagonal

open CertificateInput

noncomputable def entries000128 : List DiagonalCertificateEntry :=
  diagonalChunk% "../../certificates/33554432-v1/diagonal-000128.json" 33554432 2097152

theorem length000128 : entries000128.length = 16384 := by decide +kernel
theorem checked000128 : checkDiagonalEntries 8388613 entries000128 = true := by
  decide +kernel

noncomputable def block000128 : CheckedDiagonalBlock 8388613 16384 :=
  ⟨entries000128, length000128, checked000128⟩

noncomputable def entries000129 : List DiagonalCertificateEntry :=
  diagonalChunk% "../../certificates/33554432-v1/diagonal-000129.json" 33554432 2113536

theorem length000129 : entries000129.length = 16384 := by decide +kernel
theorem checked000129 : checkDiagonalEntries 8454149 entries000129 = true := by
  decide +kernel

noncomputable def block000129 : CheckedDiagonalBlock 8454149 16384 :=
  ⟨entries000129, length000129, checked000129⟩

noncomputable def entries000130 : List DiagonalCertificateEntry :=
  diagonalChunk% "../../certificates/33554432-v1/diagonal-000130.json" 33554432 2129920

theorem length000130 : entries000130.length = 16384 := by decide +kernel
theorem checked000130 : checkDiagonalEntries 8519685 entries000130 = true := by
  decide +kernel

noncomputable def block000130 : CheckedDiagonalBlock 8519685 16384 :=
  ⟨entries000130, length000130, checked000130⟩

noncomputable def entries000131 : List DiagonalCertificateEntry :=
  diagonalChunk% "../../certificates/33554432-v1/diagonal-000131.json" 33554432 2146304

theorem length000131 : entries000131.length = 16384 := by decide +kernel
theorem checked000131 : checkDiagonalEntries 8585221 entries000131 = true := by
  decide +kernel

noncomputable def block000131 : CheckedDiagonalBlock 8585221 16384 :=
  ⟨entries000131, length000131, checked000131⟩

noncomputable def entries000132 : List DiagonalCertificateEntry :=
  diagonalChunk% "../../certificates/33554432-v1/diagonal-000132.json" 33554432 2162688

theorem length000132 : entries000132.length = 16384 := by decide +kernel
theorem checked000132 : checkDiagonalEntries 8650757 entries000132 = true := by
  decide +kernel

noncomputable def block000132 : CheckedDiagonalBlock 8650757 16384 :=
  ⟨entries000132, length000132, checked000132⟩

noncomputable def entries000133 : List DiagonalCertificateEntry :=
  diagonalChunk% "../../certificates/33554432-v1/diagonal-000133.json" 33554432 2179072

theorem length000133 : entries000133.length = 16384 := by decide +kernel
theorem checked000133 : checkDiagonalEntries 8716293 entries000133 = true := by
  decide +kernel

noncomputable def block000133 : CheckedDiagonalBlock 8716293 16384 :=
  ⟨entries000133, length000133, checked000133⟩

noncomputable def entries000134 : List DiagonalCertificateEntry :=
  diagonalChunk% "../../certificates/33554432-v1/diagonal-000134.json" 33554432 2195456

theorem length000134 : entries000134.length = 16384 := by decide +kernel
theorem checked000134 : checkDiagonalEntries 8781829 entries000134 = true := by
  decide +kernel

noncomputable def block000134 : CheckedDiagonalBlock 8781829 16384 :=
  ⟨entries000134, length000134, checked000134⟩

noncomputable def entries000135 : List DiagonalCertificateEntry :=
  diagonalChunk% "../../certificates/33554432-v1/diagonal-000135.json" 33554432 2211840

theorem length000135 : entries000135.length = 16384 := by decide +kernel
theorem checked000135 : checkDiagonalEntries 8847365 entries000135 = true := by
  decide +kernel

noncomputable def block000135 : CheckedDiagonalBlock 8847365 16384 :=
  ⟨entries000135, length000135, checked000135⟩

noncomputable def entries000136 : List DiagonalCertificateEntry :=
  diagonalChunk% "../../certificates/33554432-v1/diagonal-000136.json" 33554432 2228224

theorem length000136 : entries000136.length = 16384 := by decide +kernel
theorem checked000136 : checkDiagonalEntries 8912901 entries000136 = true := by
  decide +kernel

noncomputable def block000136 : CheckedDiagonalBlock 8912901 16384 :=
  ⟨entries000136, length000136, checked000136⟩

noncomputable def entries000137 : List DiagonalCertificateEntry :=
  diagonalChunk% "../../certificates/33554432-v1/diagonal-000137.json" 33554432 2244608

theorem length000137 : entries000137.length = 16384 := by decide +kernel
theorem checked000137 : checkDiagonalEntries 8978437 entries000137 = true := by
  decide +kernel

noncomputable def block000137 : CheckedDiagonalBlock 8978437 16384 :=
  ⟨entries000137, length000137, checked000137⟩

noncomputable def entries000138 : List DiagonalCertificateEntry :=
  diagonalChunk% "../../certificates/33554432-v1/diagonal-000138.json" 33554432 2260992

theorem length000138 : entries000138.length = 16384 := by decide +kernel
theorem checked000138 : checkDiagonalEntries 9043973 entries000138 = true := by
  decide +kernel

noncomputable def block000138 : CheckedDiagonalBlock 9043973 16384 :=
  ⟨entries000138, length000138, checked000138⟩

noncomputable def entries000139 : List DiagonalCertificateEntry :=
  diagonalChunk% "../../certificates/33554432-v1/diagonal-000139.json" 33554432 2277376

theorem length000139 : entries000139.length = 16384 := by decide +kernel
theorem checked000139 : checkDiagonalEntries 9109509 entries000139 = true := by
  decide +kernel

noncomputable def block000139 : CheckedDiagonalBlock 9109509 16384 :=
  ⟨entries000139, length000139, checked000139⟩

noncomputable def entries000140 : List DiagonalCertificateEntry :=
  diagonalChunk% "../../certificates/33554432-v1/diagonal-000140.json" 33554432 2293760

theorem length000140 : entries000140.length = 16384 := by decide +kernel
theorem checked000140 : checkDiagonalEntries 9175045 entries000140 = true := by
  decide +kernel

noncomputable def block000140 : CheckedDiagonalBlock 9175045 16384 :=
  ⟨entries000140, length000140, checked000140⟩

noncomputable def entries000141 : List DiagonalCertificateEntry :=
  diagonalChunk% "../../certificates/33554432-v1/diagonal-000141.json" 33554432 2310144

theorem length000141 : entries000141.length = 16384 := by decide +kernel
theorem checked000141 : checkDiagonalEntries 9240581 entries000141 = true := by
  decide +kernel

noncomputable def block000141 : CheckedDiagonalBlock 9240581 16384 :=
  ⟨entries000141, length000141, checked000141⟩

noncomputable def entries000142 : List DiagonalCertificateEntry :=
  diagonalChunk% "../../certificates/33554432-v1/diagonal-000142.json" 33554432 2326528

theorem length000142 : entries000142.length = 16384 := by decide +kernel
theorem checked000142 : checkDiagonalEntries 9306117 entries000142 = true := by
  decide +kernel

noncomputable def block000142 : CheckedDiagonalBlock 9306117 16384 :=
  ⟨entries000142, length000142, checked000142⟩

noncomputable def entries000143 : List DiagonalCertificateEntry :=
  diagonalChunk% "../../certificates/33554432-v1/diagonal-000143.json" 33554432 2342912

theorem length000143 : entries000143.length = 16384 := by decide +kernel
theorem checked000143 : checkDiagonalEntries 9371653 entries000143 = true := by
  decide +kernel

noncomputable def block000143 : CheckedDiagonalBlock 9371653 16384 :=
  ⟨entries000143, length000143, checked000143⟩

noncomputable def group008 : CheckedDiagonalBlock 8388613 262144 :=
  (((((((((((((((block000128.append block000129).append block000130).append block000131).append block000132).append block000133).append block000134).append block000135).append block000136).append block000137).append block000138).append block000139).append block000140).append block000141).append block000142).append block000143)

end JSP848.FullDiagonal
