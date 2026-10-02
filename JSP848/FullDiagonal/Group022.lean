import JSP848.CertificateInput
import JSP848.DiagonalChunks

set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0

namespace JSP848.FullDiagonal

open CertificateInput

noncomputable def entries000352 : List DiagonalCertificateEntry :=
  diagonalChunk% "../../certificates/33554432-v1/diagonal-000352.json" 33554432 5767168

theorem length000352 : entries000352.length = 16384 := by decide +kernel
theorem checked000352 : checkDiagonalEntries 23068677 entries000352 = true := by
  decide +kernel

noncomputable def block000352 : CheckedDiagonalBlock 23068677 16384 :=
  ⟨entries000352, length000352, checked000352⟩

noncomputable def entries000353 : List DiagonalCertificateEntry :=
  diagonalChunk% "../../certificates/33554432-v1/diagonal-000353.json" 33554432 5783552

theorem length000353 : entries000353.length = 16384 := by decide +kernel
theorem checked000353 : checkDiagonalEntries 23134213 entries000353 = true := by
  decide +kernel

noncomputable def block000353 : CheckedDiagonalBlock 23134213 16384 :=
  ⟨entries000353, length000353, checked000353⟩

noncomputable def entries000354 : List DiagonalCertificateEntry :=
  diagonalChunk% "../../certificates/33554432-v1/diagonal-000354.json" 33554432 5799936

theorem length000354 : entries000354.length = 16384 := by decide +kernel
theorem checked000354 : checkDiagonalEntries 23199749 entries000354 = true := by
  decide +kernel

noncomputable def block000354 : CheckedDiagonalBlock 23199749 16384 :=
  ⟨entries000354, length000354, checked000354⟩

noncomputable def entries000355 : List DiagonalCertificateEntry :=
  diagonalChunk% "../../certificates/33554432-v1/diagonal-000355.json" 33554432 5816320

theorem length000355 : entries000355.length = 16384 := by decide +kernel
theorem checked000355 : checkDiagonalEntries 23265285 entries000355 = true := by
  decide +kernel

noncomputable def block000355 : CheckedDiagonalBlock 23265285 16384 :=
  ⟨entries000355, length000355, checked000355⟩

noncomputable def entries000356 : List DiagonalCertificateEntry :=
  diagonalChunk% "../../certificates/33554432-v1/diagonal-000356.json" 33554432 5832704

theorem length000356 : entries000356.length = 16384 := by decide +kernel
theorem checked000356 : checkDiagonalEntries 23330821 entries000356 = true := by
  decide +kernel

noncomputable def block000356 : CheckedDiagonalBlock 23330821 16384 :=
  ⟨entries000356, length000356, checked000356⟩

noncomputable def entries000357 : List DiagonalCertificateEntry :=
  diagonalChunk% "../../certificates/33554432-v1/diagonal-000357.json" 33554432 5849088

theorem length000357 : entries000357.length = 16384 := by decide +kernel
theorem checked000357 : checkDiagonalEntries 23396357 entries000357 = true := by
  decide +kernel

noncomputable def block000357 : CheckedDiagonalBlock 23396357 16384 :=
  ⟨entries000357, length000357, checked000357⟩

noncomputable def entries000358 : List DiagonalCertificateEntry :=
  diagonalChunk% "../../certificates/33554432-v1/diagonal-000358.json" 33554432 5865472

theorem length000358 : entries000358.length = 16384 := by decide +kernel
theorem checked000358 : checkDiagonalEntries 23461893 entries000358 = true := by
  decide +kernel

noncomputable def block000358 : CheckedDiagonalBlock 23461893 16384 :=
  ⟨entries000358, length000358, checked000358⟩

noncomputable def entries000359 : List DiagonalCertificateEntry :=
  diagonalChunk% "../../certificates/33554432-v1/diagonal-000359.json" 33554432 5881856

theorem length000359 : entries000359.length = 16384 := by decide +kernel
theorem checked000359 : checkDiagonalEntries 23527429 entries000359 = true := by
  decide +kernel

noncomputable def block000359 : CheckedDiagonalBlock 23527429 16384 :=
  ⟨entries000359, length000359, checked000359⟩

noncomputable def entries000360 : List DiagonalCertificateEntry :=
  diagonalChunk% "../../certificates/33554432-v1/diagonal-000360.json" 33554432 5898240

theorem length000360 : entries000360.length = 16384 := by decide +kernel
theorem checked000360 : checkDiagonalEntries 23592965 entries000360 = true := by
  decide +kernel

noncomputable def block000360 : CheckedDiagonalBlock 23592965 16384 :=
  ⟨entries000360, length000360, checked000360⟩

noncomputable def entries000361 : List DiagonalCertificateEntry :=
  diagonalChunk% "../../certificates/33554432-v1/diagonal-000361.json" 33554432 5914624

theorem length000361 : entries000361.length = 16384 := by decide +kernel
theorem checked000361 : checkDiagonalEntries 23658501 entries000361 = true := by
  decide +kernel

noncomputable def block000361 : CheckedDiagonalBlock 23658501 16384 :=
  ⟨entries000361, length000361, checked000361⟩

noncomputable def entries000362 : List DiagonalCertificateEntry :=
  diagonalChunk% "../../certificates/33554432-v1/diagonal-000362.json" 33554432 5931008

theorem length000362 : entries000362.length = 16384 := by decide +kernel
theorem checked000362 : checkDiagonalEntries 23724037 entries000362 = true := by
  decide +kernel

noncomputable def block000362 : CheckedDiagonalBlock 23724037 16384 :=
  ⟨entries000362, length000362, checked000362⟩

noncomputable def entries000363 : List DiagonalCertificateEntry :=
  diagonalChunk% "../../certificates/33554432-v1/diagonal-000363.json" 33554432 5947392

theorem length000363 : entries000363.length = 16384 := by decide +kernel
theorem checked000363 : checkDiagonalEntries 23789573 entries000363 = true := by
  decide +kernel

noncomputable def block000363 : CheckedDiagonalBlock 23789573 16384 :=
  ⟨entries000363, length000363, checked000363⟩

noncomputable def entries000364 : List DiagonalCertificateEntry :=
  diagonalChunk% "../../certificates/33554432-v1/diagonal-000364.json" 33554432 5963776

theorem length000364 : entries000364.length = 16384 := by decide +kernel
theorem checked000364 : checkDiagonalEntries 23855109 entries000364 = true := by
  decide +kernel

noncomputable def block000364 : CheckedDiagonalBlock 23855109 16384 :=
  ⟨entries000364, length000364, checked000364⟩

noncomputable def entries000365 : List DiagonalCertificateEntry :=
  diagonalChunk% "../../certificates/33554432-v1/diagonal-000365.json" 33554432 5980160

theorem length000365 : entries000365.length = 16384 := by decide +kernel
theorem checked000365 : checkDiagonalEntries 23920645 entries000365 = true := by
  decide +kernel

noncomputable def block000365 : CheckedDiagonalBlock 23920645 16384 :=
  ⟨entries000365, length000365, checked000365⟩

noncomputable def entries000366 : List DiagonalCertificateEntry :=
  diagonalChunk% "../../certificates/33554432-v1/diagonal-000366.json" 33554432 5996544

theorem length000366 : entries000366.length = 16384 := by decide +kernel
theorem checked000366 : checkDiagonalEntries 23986181 entries000366 = true := by
  decide +kernel

noncomputable def block000366 : CheckedDiagonalBlock 23986181 16384 :=
  ⟨entries000366, length000366, checked000366⟩

noncomputable def entries000367 : List DiagonalCertificateEntry :=
  diagonalChunk% "../../certificates/33554432-v1/diagonal-000367.json" 33554432 6012928

theorem length000367 : entries000367.length = 16384 := by decide +kernel
theorem checked000367 : checkDiagonalEntries 24051717 entries000367 = true := by
  decide +kernel

noncomputable def block000367 : CheckedDiagonalBlock 24051717 16384 :=
  ⟨entries000367, length000367, checked000367⟩

noncomputable def group022 : CheckedDiagonalBlock 23068677 262144 :=
  (((((((((((((((block000352.append block000353).append block000354).append block000355).append block000356).append block000357).append block000358).append block000359).append block000360).append block000361).append block000362).append block000363).append block000364).append block000365).append block000366).append block000367)

end JSP848.FullDiagonal
