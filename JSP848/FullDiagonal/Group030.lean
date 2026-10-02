import JSP848.CertificateInput
import JSP848.DiagonalChunks

set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0

namespace JSP848.FullDiagonal

open CertificateInput

noncomputable def entries000480 : List DiagonalCertificateEntry :=
  diagonalChunk% "../../certificates/33554432-v1/diagonal-000480.json" 33554432 7864320

theorem length000480 : entries000480.length = 16384 := by decide +kernel
theorem checked000480 : checkDiagonalEntries 31457285 entries000480 = true := by
  decide +kernel

noncomputable def block000480 : CheckedDiagonalBlock 31457285 16384 :=
  ⟨entries000480, length000480, checked000480⟩

noncomputable def entries000481 : List DiagonalCertificateEntry :=
  diagonalChunk% "../../certificates/33554432-v1/diagonal-000481.json" 33554432 7880704

theorem length000481 : entries000481.length = 16384 := by decide +kernel
theorem checked000481 : checkDiagonalEntries 31522821 entries000481 = true := by
  decide +kernel

noncomputable def block000481 : CheckedDiagonalBlock 31522821 16384 :=
  ⟨entries000481, length000481, checked000481⟩

noncomputable def entries000482 : List DiagonalCertificateEntry :=
  diagonalChunk% "../../certificates/33554432-v1/diagonal-000482.json" 33554432 7897088

theorem length000482 : entries000482.length = 16384 := by decide +kernel
theorem checked000482 : checkDiagonalEntries 31588357 entries000482 = true := by
  decide +kernel

noncomputable def block000482 : CheckedDiagonalBlock 31588357 16384 :=
  ⟨entries000482, length000482, checked000482⟩

noncomputable def entries000483 : List DiagonalCertificateEntry :=
  diagonalChunk% "../../certificates/33554432-v1/diagonal-000483.json" 33554432 7913472

theorem length000483 : entries000483.length = 16384 := by decide +kernel
theorem checked000483 : checkDiagonalEntries 31653893 entries000483 = true := by
  decide +kernel

noncomputable def block000483 : CheckedDiagonalBlock 31653893 16384 :=
  ⟨entries000483, length000483, checked000483⟩

noncomputable def entries000484 : List DiagonalCertificateEntry :=
  diagonalChunk% "../../certificates/33554432-v1/diagonal-000484.json" 33554432 7929856

theorem length000484 : entries000484.length = 16384 := by decide +kernel
theorem checked000484 : checkDiagonalEntries 31719429 entries000484 = true := by
  decide +kernel

noncomputable def block000484 : CheckedDiagonalBlock 31719429 16384 :=
  ⟨entries000484, length000484, checked000484⟩

noncomputable def entries000485 : List DiagonalCertificateEntry :=
  diagonalChunk% "../../certificates/33554432-v1/diagonal-000485.json" 33554432 7946240

theorem length000485 : entries000485.length = 16384 := by decide +kernel
theorem checked000485 : checkDiagonalEntries 31784965 entries000485 = true := by
  decide +kernel

noncomputable def block000485 : CheckedDiagonalBlock 31784965 16384 :=
  ⟨entries000485, length000485, checked000485⟩

noncomputable def entries000486 : List DiagonalCertificateEntry :=
  diagonalChunk% "../../certificates/33554432-v1/diagonal-000486.json" 33554432 7962624

theorem length000486 : entries000486.length = 16384 := by decide +kernel
theorem checked000486 : checkDiagonalEntries 31850501 entries000486 = true := by
  decide +kernel

noncomputable def block000486 : CheckedDiagonalBlock 31850501 16384 :=
  ⟨entries000486, length000486, checked000486⟩

noncomputable def entries000487 : List DiagonalCertificateEntry :=
  diagonalChunk% "../../certificates/33554432-v1/diagonal-000487.json" 33554432 7979008

theorem length000487 : entries000487.length = 16384 := by decide +kernel
theorem checked000487 : checkDiagonalEntries 31916037 entries000487 = true := by
  decide +kernel

noncomputable def block000487 : CheckedDiagonalBlock 31916037 16384 :=
  ⟨entries000487, length000487, checked000487⟩

noncomputable def entries000488 : List DiagonalCertificateEntry :=
  diagonalChunk% "../../certificates/33554432-v1/diagonal-000488.json" 33554432 7995392

theorem length000488 : entries000488.length = 16384 := by decide +kernel
theorem checked000488 : checkDiagonalEntries 31981573 entries000488 = true := by
  decide +kernel

noncomputable def block000488 : CheckedDiagonalBlock 31981573 16384 :=
  ⟨entries000488, length000488, checked000488⟩

noncomputable def entries000489 : List DiagonalCertificateEntry :=
  diagonalChunk% "../../certificates/33554432-v1/diagonal-000489.json" 33554432 8011776

theorem length000489 : entries000489.length = 16384 := by decide +kernel
theorem checked000489 : checkDiagonalEntries 32047109 entries000489 = true := by
  decide +kernel

noncomputable def block000489 : CheckedDiagonalBlock 32047109 16384 :=
  ⟨entries000489, length000489, checked000489⟩

noncomputable def entries000490 : List DiagonalCertificateEntry :=
  diagonalChunk% "../../certificates/33554432-v1/diagonal-000490.json" 33554432 8028160

theorem length000490 : entries000490.length = 16384 := by decide +kernel
theorem checked000490 : checkDiagonalEntries 32112645 entries000490 = true := by
  decide +kernel

noncomputable def block000490 : CheckedDiagonalBlock 32112645 16384 :=
  ⟨entries000490, length000490, checked000490⟩

noncomputable def entries000491 : List DiagonalCertificateEntry :=
  diagonalChunk% "../../certificates/33554432-v1/diagonal-000491.json" 33554432 8044544

theorem length000491 : entries000491.length = 16384 := by decide +kernel
theorem checked000491 : checkDiagonalEntries 32178181 entries000491 = true := by
  decide +kernel

noncomputable def block000491 : CheckedDiagonalBlock 32178181 16384 :=
  ⟨entries000491, length000491, checked000491⟩

noncomputable def entries000492 : List DiagonalCertificateEntry :=
  diagonalChunk% "../../certificates/33554432-v1/diagonal-000492.json" 33554432 8060928

theorem length000492 : entries000492.length = 16384 := by decide +kernel
theorem checked000492 : checkDiagonalEntries 32243717 entries000492 = true := by
  decide +kernel

noncomputable def block000492 : CheckedDiagonalBlock 32243717 16384 :=
  ⟨entries000492, length000492, checked000492⟩

noncomputable def entries000493 : List DiagonalCertificateEntry :=
  diagonalChunk% "../../certificates/33554432-v1/diagonal-000493.json" 33554432 8077312

theorem length000493 : entries000493.length = 16384 := by decide +kernel
theorem checked000493 : checkDiagonalEntries 32309253 entries000493 = true := by
  decide +kernel

noncomputable def block000493 : CheckedDiagonalBlock 32309253 16384 :=
  ⟨entries000493, length000493, checked000493⟩

noncomputable def entries000494 : List DiagonalCertificateEntry :=
  diagonalChunk% "../../certificates/33554432-v1/diagonal-000494.json" 33554432 8093696

theorem length000494 : entries000494.length = 16384 := by decide +kernel
theorem checked000494 : checkDiagonalEntries 32374789 entries000494 = true := by
  decide +kernel

noncomputable def block000494 : CheckedDiagonalBlock 32374789 16384 :=
  ⟨entries000494, length000494, checked000494⟩

noncomputable def entries000495 : List DiagonalCertificateEntry :=
  diagonalChunk% "../../certificates/33554432-v1/diagonal-000495.json" 33554432 8110080

theorem length000495 : entries000495.length = 16384 := by decide +kernel
theorem checked000495 : checkDiagonalEntries 32440325 entries000495 = true := by
  decide +kernel

noncomputable def block000495 : CheckedDiagonalBlock 32440325 16384 :=
  ⟨entries000495, length000495, checked000495⟩

noncomputable def group030 : CheckedDiagonalBlock 31457285 262144 :=
  (((((((((((((((block000480.append block000481).append block000482).append block000483).append block000484).append block000485).append block000486).append block000487).append block000488).append block000489).append block000490).append block000491).append block000492).append block000493).append block000494).append block000495)

end JSP848.FullDiagonal
