import JSP848.CertificateInput
import JSP848.DiagonalChunks

set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0

namespace JSP848.FullDiagonal

open CertificateInput

noncomputable def entries000336 : List DiagonalCertificateEntry :=
  diagonalChunk% "../../certificates/33554432-v1/diagonal-000336.json" 33554432 5505024

theorem length000336 : entries000336.length = 16384 := by decide +kernel
theorem checked000336 : checkDiagonalEntries 22020101 entries000336 = true := by
  decide +kernel

noncomputable def block000336 : CheckedDiagonalBlock 22020101 16384 :=
  ⟨entries000336, length000336, checked000336⟩

noncomputable def entries000337 : List DiagonalCertificateEntry :=
  diagonalChunk% "../../certificates/33554432-v1/diagonal-000337.json" 33554432 5521408

theorem length000337 : entries000337.length = 16384 := by decide +kernel
theorem checked000337 : checkDiagonalEntries 22085637 entries000337 = true := by
  decide +kernel

noncomputable def block000337 : CheckedDiagonalBlock 22085637 16384 :=
  ⟨entries000337, length000337, checked000337⟩

noncomputable def entries000338 : List DiagonalCertificateEntry :=
  diagonalChunk% "../../certificates/33554432-v1/diagonal-000338.json" 33554432 5537792

theorem length000338 : entries000338.length = 16384 := by decide +kernel
theorem checked000338 : checkDiagonalEntries 22151173 entries000338 = true := by
  decide +kernel

noncomputable def block000338 : CheckedDiagonalBlock 22151173 16384 :=
  ⟨entries000338, length000338, checked000338⟩

noncomputable def entries000339 : List DiagonalCertificateEntry :=
  diagonalChunk% "../../certificates/33554432-v1/diagonal-000339.json" 33554432 5554176

theorem length000339 : entries000339.length = 16384 := by decide +kernel
theorem checked000339 : checkDiagonalEntries 22216709 entries000339 = true := by
  decide +kernel

noncomputable def block000339 : CheckedDiagonalBlock 22216709 16384 :=
  ⟨entries000339, length000339, checked000339⟩

noncomputable def entries000340 : List DiagonalCertificateEntry :=
  diagonalChunk% "../../certificates/33554432-v1/diagonal-000340.json" 33554432 5570560

theorem length000340 : entries000340.length = 16384 := by decide +kernel
theorem checked000340 : checkDiagonalEntries 22282245 entries000340 = true := by
  decide +kernel

noncomputable def block000340 : CheckedDiagonalBlock 22282245 16384 :=
  ⟨entries000340, length000340, checked000340⟩

noncomputable def entries000341 : List DiagonalCertificateEntry :=
  diagonalChunk% "../../certificates/33554432-v1/diagonal-000341.json" 33554432 5586944

theorem length000341 : entries000341.length = 16384 := by decide +kernel
theorem checked000341 : checkDiagonalEntries 22347781 entries000341 = true := by
  decide +kernel

noncomputable def block000341 : CheckedDiagonalBlock 22347781 16384 :=
  ⟨entries000341, length000341, checked000341⟩

noncomputable def entries000342 : List DiagonalCertificateEntry :=
  diagonalChunk% "../../certificates/33554432-v1/diagonal-000342.json" 33554432 5603328

theorem length000342 : entries000342.length = 16384 := by decide +kernel
theorem checked000342 : checkDiagonalEntries 22413317 entries000342 = true := by
  decide +kernel

noncomputable def block000342 : CheckedDiagonalBlock 22413317 16384 :=
  ⟨entries000342, length000342, checked000342⟩

noncomputable def entries000343 : List DiagonalCertificateEntry :=
  diagonalChunk% "../../certificates/33554432-v1/diagonal-000343.json" 33554432 5619712

theorem length000343 : entries000343.length = 16384 := by decide +kernel
theorem checked000343 : checkDiagonalEntries 22478853 entries000343 = true := by
  decide +kernel

noncomputable def block000343 : CheckedDiagonalBlock 22478853 16384 :=
  ⟨entries000343, length000343, checked000343⟩

noncomputable def entries000344 : List DiagonalCertificateEntry :=
  diagonalChunk% "../../certificates/33554432-v1/diagonal-000344.json" 33554432 5636096

theorem length000344 : entries000344.length = 16384 := by decide +kernel
theorem checked000344 : checkDiagonalEntries 22544389 entries000344 = true := by
  decide +kernel

noncomputable def block000344 : CheckedDiagonalBlock 22544389 16384 :=
  ⟨entries000344, length000344, checked000344⟩

noncomputable def entries000345 : List DiagonalCertificateEntry :=
  diagonalChunk% "../../certificates/33554432-v1/diagonal-000345.json" 33554432 5652480

theorem length000345 : entries000345.length = 16384 := by decide +kernel
theorem checked000345 : checkDiagonalEntries 22609925 entries000345 = true := by
  decide +kernel

noncomputable def block000345 : CheckedDiagonalBlock 22609925 16384 :=
  ⟨entries000345, length000345, checked000345⟩

noncomputable def entries000346 : List DiagonalCertificateEntry :=
  diagonalChunk% "../../certificates/33554432-v1/diagonal-000346.json" 33554432 5668864

theorem length000346 : entries000346.length = 16384 := by decide +kernel
theorem checked000346 : checkDiagonalEntries 22675461 entries000346 = true := by
  decide +kernel

noncomputable def block000346 : CheckedDiagonalBlock 22675461 16384 :=
  ⟨entries000346, length000346, checked000346⟩

noncomputable def entries000347 : List DiagonalCertificateEntry :=
  diagonalChunk% "../../certificates/33554432-v1/diagonal-000347.json" 33554432 5685248

theorem length000347 : entries000347.length = 16384 := by decide +kernel
theorem checked000347 : checkDiagonalEntries 22740997 entries000347 = true := by
  decide +kernel

noncomputable def block000347 : CheckedDiagonalBlock 22740997 16384 :=
  ⟨entries000347, length000347, checked000347⟩

noncomputable def entries000348 : List DiagonalCertificateEntry :=
  diagonalChunk% "../../certificates/33554432-v1/diagonal-000348.json" 33554432 5701632

theorem length000348 : entries000348.length = 16384 := by decide +kernel
theorem checked000348 : checkDiagonalEntries 22806533 entries000348 = true := by
  decide +kernel

noncomputable def block000348 : CheckedDiagonalBlock 22806533 16384 :=
  ⟨entries000348, length000348, checked000348⟩

noncomputable def entries000349 : List DiagonalCertificateEntry :=
  diagonalChunk% "../../certificates/33554432-v1/diagonal-000349.json" 33554432 5718016

theorem length000349 : entries000349.length = 16384 := by decide +kernel
theorem checked000349 : checkDiagonalEntries 22872069 entries000349 = true := by
  decide +kernel

noncomputable def block000349 : CheckedDiagonalBlock 22872069 16384 :=
  ⟨entries000349, length000349, checked000349⟩

noncomputable def entries000350 : List DiagonalCertificateEntry :=
  diagonalChunk% "../../certificates/33554432-v1/diagonal-000350.json" 33554432 5734400

theorem length000350 : entries000350.length = 16384 := by decide +kernel
theorem checked000350 : checkDiagonalEntries 22937605 entries000350 = true := by
  decide +kernel

noncomputable def block000350 : CheckedDiagonalBlock 22937605 16384 :=
  ⟨entries000350, length000350, checked000350⟩

noncomputable def entries000351 : List DiagonalCertificateEntry :=
  diagonalChunk% "../../certificates/33554432-v1/diagonal-000351.json" 33554432 5750784

theorem length000351 : entries000351.length = 16384 := by decide +kernel
theorem checked000351 : checkDiagonalEntries 23003141 entries000351 = true := by
  decide +kernel

noncomputable def block000351 : CheckedDiagonalBlock 23003141 16384 :=
  ⟨entries000351, length000351, checked000351⟩

noncomputable def group021 : CheckedDiagonalBlock 22020101 262144 :=
  (((((((((((((((block000336.append block000337).append block000338).append block000339).append block000340).append block000341).append block000342).append block000343).append block000344).append block000345).append block000346).append block000347).append block000348).append block000349).append block000350).append block000351)

end JSP848.FullDiagonal
