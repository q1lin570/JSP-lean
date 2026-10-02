import JSP848.CertificateInput
import JSP848.DiagonalChunks

set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0

namespace JSP848.FullDiagonal

open CertificateInput

noncomputable def entries000176 : List DiagonalCertificateEntry :=
  diagonalChunk% "../../certificates/33554432-v1/diagonal-000176.json" 33554432 2883584

theorem length000176 : entries000176.length = 16384 := by decide +kernel
theorem checked000176 : checkDiagonalEntries 11534341 entries000176 = true := by
  decide +kernel

noncomputable def block000176 : CheckedDiagonalBlock 11534341 16384 :=
  ⟨entries000176, length000176, checked000176⟩

noncomputable def entries000177 : List DiagonalCertificateEntry :=
  diagonalChunk% "../../certificates/33554432-v1/diagonal-000177.json" 33554432 2899968

theorem length000177 : entries000177.length = 16384 := by decide +kernel
theorem checked000177 : checkDiagonalEntries 11599877 entries000177 = true := by
  decide +kernel

noncomputable def block000177 : CheckedDiagonalBlock 11599877 16384 :=
  ⟨entries000177, length000177, checked000177⟩

noncomputable def entries000178 : List DiagonalCertificateEntry :=
  diagonalChunk% "../../certificates/33554432-v1/diagonal-000178.json" 33554432 2916352

theorem length000178 : entries000178.length = 16384 := by decide +kernel
theorem checked000178 : checkDiagonalEntries 11665413 entries000178 = true := by
  decide +kernel

noncomputable def block000178 : CheckedDiagonalBlock 11665413 16384 :=
  ⟨entries000178, length000178, checked000178⟩

noncomputable def entries000179 : List DiagonalCertificateEntry :=
  diagonalChunk% "../../certificates/33554432-v1/diagonal-000179.json" 33554432 2932736

theorem length000179 : entries000179.length = 16384 := by decide +kernel
theorem checked000179 : checkDiagonalEntries 11730949 entries000179 = true := by
  decide +kernel

noncomputable def block000179 : CheckedDiagonalBlock 11730949 16384 :=
  ⟨entries000179, length000179, checked000179⟩

noncomputable def entries000180 : List DiagonalCertificateEntry :=
  diagonalChunk% "../../certificates/33554432-v1/diagonal-000180.json" 33554432 2949120

theorem length000180 : entries000180.length = 16384 := by decide +kernel
theorem checked000180 : checkDiagonalEntries 11796485 entries000180 = true := by
  decide +kernel

noncomputable def block000180 : CheckedDiagonalBlock 11796485 16384 :=
  ⟨entries000180, length000180, checked000180⟩

noncomputable def entries000181 : List DiagonalCertificateEntry :=
  diagonalChunk% "../../certificates/33554432-v1/diagonal-000181.json" 33554432 2965504

theorem length000181 : entries000181.length = 16384 := by decide +kernel
theorem checked000181 : checkDiagonalEntries 11862021 entries000181 = true := by
  decide +kernel

noncomputable def block000181 : CheckedDiagonalBlock 11862021 16384 :=
  ⟨entries000181, length000181, checked000181⟩

noncomputable def entries000182 : List DiagonalCertificateEntry :=
  diagonalChunk% "../../certificates/33554432-v1/diagonal-000182.json" 33554432 2981888

theorem length000182 : entries000182.length = 16384 := by decide +kernel
theorem checked000182 : checkDiagonalEntries 11927557 entries000182 = true := by
  decide +kernel

noncomputable def block000182 : CheckedDiagonalBlock 11927557 16384 :=
  ⟨entries000182, length000182, checked000182⟩

noncomputable def entries000183 : List DiagonalCertificateEntry :=
  diagonalChunk% "../../certificates/33554432-v1/diagonal-000183.json" 33554432 2998272

theorem length000183 : entries000183.length = 16384 := by decide +kernel
theorem checked000183 : checkDiagonalEntries 11993093 entries000183 = true := by
  decide +kernel

noncomputable def block000183 : CheckedDiagonalBlock 11993093 16384 :=
  ⟨entries000183, length000183, checked000183⟩

noncomputable def entries000184 : List DiagonalCertificateEntry :=
  diagonalChunk% "../../certificates/33554432-v1/diagonal-000184.json" 33554432 3014656

theorem length000184 : entries000184.length = 16384 := by decide +kernel
theorem checked000184 : checkDiagonalEntries 12058629 entries000184 = true := by
  decide +kernel

noncomputable def block000184 : CheckedDiagonalBlock 12058629 16384 :=
  ⟨entries000184, length000184, checked000184⟩

noncomputable def entries000185 : List DiagonalCertificateEntry :=
  diagonalChunk% "../../certificates/33554432-v1/diagonal-000185.json" 33554432 3031040

theorem length000185 : entries000185.length = 16384 := by decide +kernel
theorem checked000185 : checkDiagonalEntries 12124165 entries000185 = true := by
  decide +kernel

noncomputable def block000185 : CheckedDiagonalBlock 12124165 16384 :=
  ⟨entries000185, length000185, checked000185⟩

noncomputable def entries000186 : List DiagonalCertificateEntry :=
  diagonalChunk% "../../certificates/33554432-v1/diagonal-000186.json" 33554432 3047424

theorem length000186 : entries000186.length = 16384 := by decide +kernel
theorem checked000186 : checkDiagonalEntries 12189701 entries000186 = true := by
  decide +kernel

noncomputable def block000186 : CheckedDiagonalBlock 12189701 16384 :=
  ⟨entries000186, length000186, checked000186⟩

noncomputable def entries000187 : List DiagonalCertificateEntry :=
  diagonalChunk% "../../certificates/33554432-v1/diagonal-000187.json" 33554432 3063808

theorem length000187 : entries000187.length = 16384 := by decide +kernel
theorem checked000187 : checkDiagonalEntries 12255237 entries000187 = true := by
  decide +kernel

noncomputable def block000187 : CheckedDiagonalBlock 12255237 16384 :=
  ⟨entries000187, length000187, checked000187⟩

noncomputable def entries000188 : List DiagonalCertificateEntry :=
  diagonalChunk% "../../certificates/33554432-v1/diagonal-000188.json" 33554432 3080192

theorem length000188 : entries000188.length = 16384 := by decide +kernel
theorem checked000188 : checkDiagonalEntries 12320773 entries000188 = true := by
  decide +kernel

noncomputable def block000188 : CheckedDiagonalBlock 12320773 16384 :=
  ⟨entries000188, length000188, checked000188⟩

noncomputable def entries000189 : List DiagonalCertificateEntry :=
  diagonalChunk% "../../certificates/33554432-v1/diagonal-000189.json" 33554432 3096576

theorem length000189 : entries000189.length = 16384 := by decide +kernel
theorem checked000189 : checkDiagonalEntries 12386309 entries000189 = true := by
  decide +kernel

noncomputable def block000189 : CheckedDiagonalBlock 12386309 16384 :=
  ⟨entries000189, length000189, checked000189⟩

noncomputable def entries000190 : List DiagonalCertificateEntry :=
  diagonalChunk% "../../certificates/33554432-v1/diagonal-000190.json" 33554432 3112960

theorem length000190 : entries000190.length = 16384 := by decide +kernel
theorem checked000190 : checkDiagonalEntries 12451845 entries000190 = true := by
  decide +kernel

noncomputable def block000190 : CheckedDiagonalBlock 12451845 16384 :=
  ⟨entries000190, length000190, checked000190⟩

noncomputable def entries000191 : List DiagonalCertificateEntry :=
  diagonalChunk% "../../certificates/33554432-v1/diagonal-000191.json" 33554432 3129344

theorem length000191 : entries000191.length = 16384 := by decide +kernel
theorem checked000191 : checkDiagonalEntries 12517381 entries000191 = true := by
  decide +kernel

noncomputable def block000191 : CheckedDiagonalBlock 12517381 16384 :=
  ⟨entries000191, length000191, checked000191⟩

noncomputable def group011 : CheckedDiagonalBlock 11534341 262144 :=
  (((((((((((((((block000176.append block000177).append block000178).append block000179).append block000180).append block000181).append block000182).append block000183).append block000184).append block000185).append block000186).append block000187).append block000188).append block000189).append block000190).append block000191)

end JSP848.FullDiagonal
