import JSP848.CertificateInput
import JSP848.DiagonalChunks

set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0

namespace JSP848.FullDiagonal

open CertificateInput

noncomputable def entries000240 : List DiagonalCertificateEntry :=
  diagonalChunk% "../../certificates/33554432-v1/diagonal-000240.json" 33554432 3932160

theorem length000240 : entries000240.length = 16384 := by decide +kernel
theorem checked000240 : checkDiagonalEntries 15728645 entries000240 = true := by
  decide +kernel

noncomputable def block000240 : CheckedDiagonalBlock 15728645 16384 :=
  ⟨entries000240, length000240, checked000240⟩

noncomputable def entries000241 : List DiagonalCertificateEntry :=
  diagonalChunk% "../../certificates/33554432-v1/diagonal-000241.json" 33554432 3948544

theorem length000241 : entries000241.length = 16384 := by decide +kernel
theorem checked000241 : checkDiagonalEntries 15794181 entries000241 = true := by
  decide +kernel

noncomputable def block000241 : CheckedDiagonalBlock 15794181 16384 :=
  ⟨entries000241, length000241, checked000241⟩

noncomputable def entries000242 : List DiagonalCertificateEntry :=
  diagonalChunk% "../../certificates/33554432-v1/diagonal-000242.json" 33554432 3964928

theorem length000242 : entries000242.length = 16384 := by decide +kernel
theorem checked000242 : checkDiagonalEntries 15859717 entries000242 = true := by
  decide +kernel

noncomputable def block000242 : CheckedDiagonalBlock 15859717 16384 :=
  ⟨entries000242, length000242, checked000242⟩

noncomputable def entries000243 : List DiagonalCertificateEntry :=
  diagonalChunk% "../../certificates/33554432-v1/diagonal-000243.json" 33554432 3981312

theorem length000243 : entries000243.length = 16384 := by decide +kernel
theorem checked000243 : checkDiagonalEntries 15925253 entries000243 = true := by
  decide +kernel

noncomputable def block000243 : CheckedDiagonalBlock 15925253 16384 :=
  ⟨entries000243, length000243, checked000243⟩

noncomputable def entries000244 : List DiagonalCertificateEntry :=
  diagonalChunk% "../../certificates/33554432-v1/diagonal-000244.json" 33554432 3997696

theorem length000244 : entries000244.length = 16384 := by decide +kernel
theorem checked000244 : checkDiagonalEntries 15990789 entries000244 = true := by
  decide +kernel

noncomputable def block000244 : CheckedDiagonalBlock 15990789 16384 :=
  ⟨entries000244, length000244, checked000244⟩

noncomputable def entries000245 : List DiagonalCertificateEntry :=
  diagonalChunk% "../../certificates/33554432-v1/diagonal-000245.json" 33554432 4014080

theorem length000245 : entries000245.length = 16384 := by decide +kernel
theorem checked000245 : checkDiagonalEntries 16056325 entries000245 = true := by
  decide +kernel

noncomputable def block000245 : CheckedDiagonalBlock 16056325 16384 :=
  ⟨entries000245, length000245, checked000245⟩

noncomputable def entries000246 : List DiagonalCertificateEntry :=
  diagonalChunk% "../../certificates/33554432-v1/diagonal-000246.json" 33554432 4030464

theorem length000246 : entries000246.length = 16384 := by decide +kernel
theorem checked000246 : checkDiagonalEntries 16121861 entries000246 = true := by
  decide +kernel

noncomputable def block000246 : CheckedDiagonalBlock 16121861 16384 :=
  ⟨entries000246, length000246, checked000246⟩

noncomputable def entries000247 : List DiagonalCertificateEntry :=
  diagonalChunk% "../../certificates/33554432-v1/diagonal-000247.json" 33554432 4046848

theorem length000247 : entries000247.length = 16384 := by decide +kernel
theorem checked000247 : checkDiagonalEntries 16187397 entries000247 = true := by
  decide +kernel

noncomputable def block000247 : CheckedDiagonalBlock 16187397 16384 :=
  ⟨entries000247, length000247, checked000247⟩

noncomputable def entries000248 : List DiagonalCertificateEntry :=
  diagonalChunk% "../../certificates/33554432-v1/diagonal-000248.json" 33554432 4063232

theorem length000248 : entries000248.length = 16384 := by decide +kernel
theorem checked000248 : checkDiagonalEntries 16252933 entries000248 = true := by
  decide +kernel

noncomputable def block000248 : CheckedDiagonalBlock 16252933 16384 :=
  ⟨entries000248, length000248, checked000248⟩

noncomputable def entries000249 : List DiagonalCertificateEntry :=
  diagonalChunk% "../../certificates/33554432-v1/diagonal-000249.json" 33554432 4079616

theorem length000249 : entries000249.length = 16384 := by decide +kernel
theorem checked000249 : checkDiagonalEntries 16318469 entries000249 = true := by
  decide +kernel

noncomputable def block000249 : CheckedDiagonalBlock 16318469 16384 :=
  ⟨entries000249, length000249, checked000249⟩

noncomputable def entries000250 : List DiagonalCertificateEntry :=
  diagonalChunk% "../../certificates/33554432-v1/diagonal-000250.json" 33554432 4096000

theorem length000250 : entries000250.length = 16384 := by decide +kernel
theorem checked000250 : checkDiagonalEntries 16384005 entries000250 = true := by
  decide +kernel

noncomputable def block000250 : CheckedDiagonalBlock 16384005 16384 :=
  ⟨entries000250, length000250, checked000250⟩

noncomputable def entries000251 : List DiagonalCertificateEntry :=
  diagonalChunk% "../../certificates/33554432-v1/diagonal-000251.json" 33554432 4112384

theorem length000251 : entries000251.length = 16384 := by decide +kernel
theorem checked000251 : checkDiagonalEntries 16449541 entries000251 = true := by
  decide +kernel

noncomputable def block000251 : CheckedDiagonalBlock 16449541 16384 :=
  ⟨entries000251, length000251, checked000251⟩

noncomputable def entries000252 : List DiagonalCertificateEntry :=
  diagonalChunk% "../../certificates/33554432-v1/diagonal-000252.json" 33554432 4128768

theorem length000252 : entries000252.length = 16384 := by decide +kernel
theorem checked000252 : checkDiagonalEntries 16515077 entries000252 = true := by
  decide +kernel

noncomputable def block000252 : CheckedDiagonalBlock 16515077 16384 :=
  ⟨entries000252, length000252, checked000252⟩

noncomputable def entries000253 : List DiagonalCertificateEntry :=
  diagonalChunk% "../../certificates/33554432-v1/diagonal-000253.json" 33554432 4145152

theorem length000253 : entries000253.length = 16384 := by decide +kernel
theorem checked000253 : checkDiagonalEntries 16580613 entries000253 = true := by
  decide +kernel

noncomputable def block000253 : CheckedDiagonalBlock 16580613 16384 :=
  ⟨entries000253, length000253, checked000253⟩

noncomputable def entries000254 : List DiagonalCertificateEntry :=
  diagonalChunk% "../../certificates/33554432-v1/diagonal-000254.json" 33554432 4161536

theorem length000254 : entries000254.length = 16384 := by decide +kernel
theorem checked000254 : checkDiagonalEntries 16646149 entries000254 = true := by
  decide +kernel

noncomputable def block000254 : CheckedDiagonalBlock 16646149 16384 :=
  ⟨entries000254, length000254, checked000254⟩

noncomputable def entries000255 : List DiagonalCertificateEntry :=
  diagonalChunk% "../../certificates/33554432-v1/diagonal-000255.json" 33554432 4177920

theorem length000255 : entries000255.length = 16384 := by decide +kernel
theorem checked000255 : checkDiagonalEntries 16711685 entries000255 = true := by
  decide +kernel

noncomputable def block000255 : CheckedDiagonalBlock 16711685 16384 :=
  ⟨entries000255, length000255, checked000255⟩

noncomputable def group015 : CheckedDiagonalBlock 15728645 262144 :=
  (((((((((((((((block000240.append block000241).append block000242).append block000243).append block000244).append block000245).append block000246).append block000247).append block000248).append block000249).append block000250).append block000251).append block000252).append block000253).append block000254).append block000255)

end JSP848.FullDiagonal
