import JSP848.CertificateInput
import JSP848.DiagonalChunks

set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0

namespace JSP848.FullDiagonal

open CertificateInput

noncomputable def entries000192 : List DiagonalCertificateEntry :=
  diagonalChunk% "../../certificates/33554432-v1/diagonal-000192.json" 33554432 3145728

theorem length000192 : entries000192.length = 16384 := by decide +kernel
theorem checked000192 : checkDiagonalEntries 12582917 entries000192 = true := by
  decide +kernel

noncomputable def block000192 : CheckedDiagonalBlock 12582917 16384 :=
  ⟨entries000192, length000192, checked000192⟩

noncomputable def entries000193 : List DiagonalCertificateEntry :=
  diagonalChunk% "../../certificates/33554432-v1/diagonal-000193.json" 33554432 3162112

theorem length000193 : entries000193.length = 16384 := by decide +kernel
theorem checked000193 : checkDiagonalEntries 12648453 entries000193 = true := by
  decide +kernel

noncomputable def block000193 : CheckedDiagonalBlock 12648453 16384 :=
  ⟨entries000193, length000193, checked000193⟩

noncomputable def entries000194 : List DiagonalCertificateEntry :=
  diagonalChunk% "../../certificates/33554432-v1/diagonal-000194.json" 33554432 3178496

theorem length000194 : entries000194.length = 16384 := by decide +kernel
theorem checked000194 : checkDiagonalEntries 12713989 entries000194 = true := by
  decide +kernel

noncomputable def block000194 : CheckedDiagonalBlock 12713989 16384 :=
  ⟨entries000194, length000194, checked000194⟩

noncomputable def entries000195 : List DiagonalCertificateEntry :=
  diagonalChunk% "../../certificates/33554432-v1/diagonal-000195.json" 33554432 3194880

theorem length000195 : entries000195.length = 16384 := by decide +kernel
theorem checked000195 : checkDiagonalEntries 12779525 entries000195 = true := by
  decide +kernel

noncomputable def block000195 : CheckedDiagonalBlock 12779525 16384 :=
  ⟨entries000195, length000195, checked000195⟩

noncomputable def entries000196 : List DiagonalCertificateEntry :=
  diagonalChunk% "../../certificates/33554432-v1/diagonal-000196.json" 33554432 3211264

theorem length000196 : entries000196.length = 16384 := by decide +kernel
theorem checked000196 : checkDiagonalEntries 12845061 entries000196 = true := by
  decide +kernel

noncomputable def block000196 : CheckedDiagonalBlock 12845061 16384 :=
  ⟨entries000196, length000196, checked000196⟩

noncomputable def entries000197 : List DiagonalCertificateEntry :=
  diagonalChunk% "../../certificates/33554432-v1/diagonal-000197.json" 33554432 3227648

theorem length000197 : entries000197.length = 16384 := by decide +kernel
theorem checked000197 : checkDiagonalEntries 12910597 entries000197 = true := by
  decide +kernel

noncomputable def block000197 : CheckedDiagonalBlock 12910597 16384 :=
  ⟨entries000197, length000197, checked000197⟩

noncomputable def entries000198 : List DiagonalCertificateEntry :=
  diagonalChunk% "../../certificates/33554432-v1/diagonal-000198.json" 33554432 3244032

theorem length000198 : entries000198.length = 16384 := by decide +kernel
theorem checked000198 : checkDiagonalEntries 12976133 entries000198 = true := by
  decide +kernel

noncomputable def block000198 : CheckedDiagonalBlock 12976133 16384 :=
  ⟨entries000198, length000198, checked000198⟩

noncomputable def entries000199 : List DiagonalCertificateEntry :=
  diagonalChunk% "../../certificates/33554432-v1/diagonal-000199.json" 33554432 3260416

theorem length000199 : entries000199.length = 16384 := by decide +kernel
theorem checked000199 : checkDiagonalEntries 13041669 entries000199 = true := by
  decide +kernel

noncomputable def block000199 : CheckedDiagonalBlock 13041669 16384 :=
  ⟨entries000199, length000199, checked000199⟩

noncomputable def entries000200 : List DiagonalCertificateEntry :=
  diagonalChunk% "../../certificates/33554432-v1/diagonal-000200.json" 33554432 3276800

theorem length000200 : entries000200.length = 16384 := by decide +kernel
theorem checked000200 : checkDiagonalEntries 13107205 entries000200 = true := by
  decide +kernel

noncomputable def block000200 : CheckedDiagonalBlock 13107205 16384 :=
  ⟨entries000200, length000200, checked000200⟩

noncomputable def entries000201 : List DiagonalCertificateEntry :=
  diagonalChunk% "../../certificates/33554432-v1/diagonal-000201.json" 33554432 3293184

theorem length000201 : entries000201.length = 16384 := by decide +kernel
theorem checked000201 : checkDiagonalEntries 13172741 entries000201 = true := by
  decide +kernel

noncomputable def block000201 : CheckedDiagonalBlock 13172741 16384 :=
  ⟨entries000201, length000201, checked000201⟩

noncomputable def entries000202 : List DiagonalCertificateEntry :=
  diagonalChunk% "../../certificates/33554432-v1/diagonal-000202.json" 33554432 3309568

theorem length000202 : entries000202.length = 16384 := by decide +kernel
theorem checked000202 : checkDiagonalEntries 13238277 entries000202 = true := by
  decide +kernel

noncomputable def block000202 : CheckedDiagonalBlock 13238277 16384 :=
  ⟨entries000202, length000202, checked000202⟩

noncomputable def entries000203 : List DiagonalCertificateEntry :=
  diagonalChunk% "../../certificates/33554432-v1/diagonal-000203.json" 33554432 3325952

theorem length000203 : entries000203.length = 16384 := by decide +kernel
theorem checked000203 : checkDiagonalEntries 13303813 entries000203 = true := by
  decide +kernel

noncomputable def block000203 : CheckedDiagonalBlock 13303813 16384 :=
  ⟨entries000203, length000203, checked000203⟩

noncomputable def entries000204 : List DiagonalCertificateEntry :=
  diagonalChunk% "../../certificates/33554432-v1/diagonal-000204.json" 33554432 3342336

theorem length000204 : entries000204.length = 16384 := by decide +kernel
theorem checked000204 : checkDiagonalEntries 13369349 entries000204 = true := by
  decide +kernel

noncomputable def block000204 : CheckedDiagonalBlock 13369349 16384 :=
  ⟨entries000204, length000204, checked000204⟩

noncomputable def entries000205 : List DiagonalCertificateEntry :=
  diagonalChunk% "../../certificates/33554432-v1/diagonal-000205.json" 33554432 3358720

theorem length000205 : entries000205.length = 16384 := by decide +kernel
theorem checked000205 : checkDiagonalEntries 13434885 entries000205 = true := by
  decide +kernel

noncomputable def block000205 : CheckedDiagonalBlock 13434885 16384 :=
  ⟨entries000205, length000205, checked000205⟩

noncomputable def entries000206 : List DiagonalCertificateEntry :=
  diagonalChunk% "../../certificates/33554432-v1/diagonal-000206.json" 33554432 3375104

theorem length000206 : entries000206.length = 16384 := by decide +kernel
theorem checked000206 : checkDiagonalEntries 13500421 entries000206 = true := by
  decide +kernel

noncomputable def block000206 : CheckedDiagonalBlock 13500421 16384 :=
  ⟨entries000206, length000206, checked000206⟩

noncomputable def entries000207 : List DiagonalCertificateEntry :=
  diagonalChunk% "../../certificates/33554432-v1/diagonal-000207.json" 33554432 3391488

theorem length000207 : entries000207.length = 16384 := by decide +kernel
theorem checked000207 : checkDiagonalEntries 13565957 entries000207 = true := by
  decide +kernel

noncomputable def block000207 : CheckedDiagonalBlock 13565957 16384 :=
  ⟨entries000207, length000207, checked000207⟩

noncomputable def group012 : CheckedDiagonalBlock 12582917 262144 :=
  (((((((((((((((block000192.append block000193).append block000194).append block000195).append block000196).append block000197).append block000198).append block000199).append block000200).append block000201).append block000202).append block000203).append block000204).append block000205).append block000206).append block000207)

end JSP848.FullDiagonal
