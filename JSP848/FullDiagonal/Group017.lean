import JSP848.CertificateInput
import JSP848.DiagonalChunks

set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0

namespace JSP848.FullDiagonal

open CertificateInput

noncomputable def entries000272 : List DiagonalCertificateEntry :=
  diagonalChunk% "../../certificates/33554432-v1/diagonal-000272.json" 33554432 4456448

theorem length000272 : entries000272.length = 16384 := by decide +kernel
theorem checked000272 : checkDiagonalEntries 17825797 entries000272 = true := by
  decide +kernel

noncomputable def block000272 : CheckedDiagonalBlock 17825797 16384 :=
  ⟨entries000272, length000272, checked000272⟩

noncomputable def entries000273 : List DiagonalCertificateEntry :=
  diagonalChunk% "../../certificates/33554432-v1/diagonal-000273.json" 33554432 4472832

theorem length000273 : entries000273.length = 16384 := by decide +kernel
theorem checked000273 : checkDiagonalEntries 17891333 entries000273 = true := by
  decide +kernel

noncomputable def block000273 : CheckedDiagonalBlock 17891333 16384 :=
  ⟨entries000273, length000273, checked000273⟩

noncomputable def entries000274 : List DiagonalCertificateEntry :=
  diagonalChunk% "../../certificates/33554432-v1/diagonal-000274.json" 33554432 4489216

theorem length000274 : entries000274.length = 16384 := by decide +kernel
theorem checked000274 : checkDiagonalEntries 17956869 entries000274 = true := by
  decide +kernel

noncomputable def block000274 : CheckedDiagonalBlock 17956869 16384 :=
  ⟨entries000274, length000274, checked000274⟩

noncomputable def entries000275 : List DiagonalCertificateEntry :=
  diagonalChunk% "../../certificates/33554432-v1/diagonal-000275.json" 33554432 4505600

theorem length000275 : entries000275.length = 16384 := by decide +kernel
theorem checked000275 : checkDiagonalEntries 18022405 entries000275 = true := by
  decide +kernel

noncomputable def block000275 : CheckedDiagonalBlock 18022405 16384 :=
  ⟨entries000275, length000275, checked000275⟩

noncomputable def entries000276 : List DiagonalCertificateEntry :=
  diagonalChunk% "../../certificates/33554432-v1/diagonal-000276.json" 33554432 4521984

theorem length000276 : entries000276.length = 16384 := by decide +kernel
theorem checked000276 : checkDiagonalEntries 18087941 entries000276 = true := by
  decide +kernel

noncomputable def block000276 : CheckedDiagonalBlock 18087941 16384 :=
  ⟨entries000276, length000276, checked000276⟩

noncomputable def entries000277 : List DiagonalCertificateEntry :=
  diagonalChunk% "../../certificates/33554432-v1/diagonal-000277.json" 33554432 4538368

theorem length000277 : entries000277.length = 16384 := by decide +kernel
theorem checked000277 : checkDiagonalEntries 18153477 entries000277 = true := by
  decide +kernel

noncomputable def block000277 : CheckedDiagonalBlock 18153477 16384 :=
  ⟨entries000277, length000277, checked000277⟩

noncomputable def entries000278 : List DiagonalCertificateEntry :=
  diagonalChunk% "../../certificates/33554432-v1/diagonal-000278.json" 33554432 4554752

theorem length000278 : entries000278.length = 16384 := by decide +kernel
theorem checked000278 : checkDiagonalEntries 18219013 entries000278 = true := by
  decide +kernel

noncomputable def block000278 : CheckedDiagonalBlock 18219013 16384 :=
  ⟨entries000278, length000278, checked000278⟩

noncomputable def entries000279 : List DiagonalCertificateEntry :=
  diagonalChunk% "../../certificates/33554432-v1/diagonal-000279.json" 33554432 4571136

theorem length000279 : entries000279.length = 16384 := by decide +kernel
theorem checked000279 : checkDiagonalEntries 18284549 entries000279 = true := by
  decide +kernel

noncomputable def block000279 : CheckedDiagonalBlock 18284549 16384 :=
  ⟨entries000279, length000279, checked000279⟩

noncomputable def entries000280 : List DiagonalCertificateEntry :=
  diagonalChunk% "../../certificates/33554432-v1/diagonal-000280.json" 33554432 4587520

theorem length000280 : entries000280.length = 16384 := by decide +kernel
theorem checked000280 : checkDiagonalEntries 18350085 entries000280 = true := by
  decide +kernel

noncomputable def block000280 : CheckedDiagonalBlock 18350085 16384 :=
  ⟨entries000280, length000280, checked000280⟩

noncomputable def entries000281 : List DiagonalCertificateEntry :=
  diagonalChunk% "../../certificates/33554432-v1/diagonal-000281.json" 33554432 4603904

theorem length000281 : entries000281.length = 16384 := by decide +kernel
theorem checked000281 : checkDiagonalEntries 18415621 entries000281 = true := by
  decide +kernel

noncomputable def block000281 : CheckedDiagonalBlock 18415621 16384 :=
  ⟨entries000281, length000281, checked000281⟩

noncomputable def entries000282 : List DiagonalCertificateEntry :=
  diagonalChunk% "../../certificates/33554432-v1/diagonal-000282.json" 33554432 4620288

theorem length000282 : entries000282.length = 16384 := by decide +kernel
theorem checked000282 : checkDiagonalEntries 18481157 entries000282 = true := by
  decide +kernel

noncomputable def block000282 : CheckedDiagonalBlock 18481157 16384 :=
  ⟨entries000282, length000282, checked000282⟩

noncomputable def entries000283 : List DiagonalCertificateEntry :=
  diagonalChunk% "../../certificates/33554432-v1/diagonal-000283.json" 33554432 4636672

theorem length000283 : entries000283.length = 16384 := by decide +kernel
theorem checked000283 : checkDiagonalEntries 18546693 entries000283 = true := by
  decide +kernel

noncomputable def block000283 : CheckedDiagonalBlock 18546693 16384 :=
  ⟨entries000283, length000283, checked000283⟩

noncomputable def entries000284 : List DiagonalCertificateEntry :=
  diagonalChunk% "../../certificates/33554432-v1/diagonal-000284.json" 33554432 4653056

theorem length000284 : entries000284.length = 16384 := by decide +kernel
theorem checked000284 : checkDiagonalEntries 18612229 entries000284 = true := by
  decide +kernel

noncomputable def block000284 : CheckedDiagonalBlock 18612229 16384 :=
  ⟨entries000284, length000284, checked000284⟩

noncomputable def entries000285 : List DiagonalCertificateEntry :=
  diagonalChunk% "../../certificates/33554432-v1/diagonal-000285.json" 33554432 4669440

theorem length000285 : entries000285.length = 16384 := by decide +kernel
theorem checked000285 : checkDiagonalEntries 18677765 entries000285 = true := by
  decide +kernel

noncomputable def block000285 : CheckedDiagonalBlock 18677765 16384 :=
  ⟨entries000285, length000285, checked000285⟩

noncomputable def entries000286 : List DiagonalCertificateEntry :=
  diagonalChunk% "../../certificates/33554432-v1/diagonal-000286.json" 33554432 4685824

theorem length000286 : entries000286.length = 16384 := by decide +kernel
theorem checked000286 : checkDiagonalEntries 18743301 entries000286 = true := by
  decide +kernel

noncomputable def block000286 : CheckedDiagonalBlock 18743301 16384 :=
  ⟨entries000286, length000286, checked000286⟩

noncomputable def entries000287 : List DiagonalCertificateEntry :=
  diagonalChunk% "../../certificates/33554432-v1/diagonal-000287.json" 33554432 4702208

theorem length000287 : entries000287.length = 16384 := by decide +kernel
theorem checked000287 : checkDiagonalEntries 18808837 entries000287 = true := by
  decide +kernel

noncomputable def block000287 : CheckedDiagonalBlock 18808837 16384 :=
  ⟨entries000287, length000287, checked000287⟩

noncomputable def group017 : CheckedDiagonalBlock 17825797 262144 :=
  (((((((((((((((block000272.append block000273).append block000274).append block000275).append block000276).append block000277).append block000278).append block000279).append block000280).append block000281).append block000282).append block000283).append block000284).append block000285).append block000286).append block000287)

end JSP848.FullDiagonal
