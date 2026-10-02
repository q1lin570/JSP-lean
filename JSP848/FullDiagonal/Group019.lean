import JSP848.CertificateInput
import JSP848.DiagonalChunks

set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0

namespace JSP848.FullDiagonal

open CertificateInput

noncomputable def entries000304 : List DiagonalCertificateEntry :=
  diagonalChunk% "../../certificates/33554432-v1/diagonal-000304.json" 33554432 4980736

theorem length000304 : entries000304.length = 16384 := by decide +kernel
theorem checked000304 : checkDiagonalEntries 19922949 entries000304 = true := by
  decide +kernel

noncomputable def block000304 : CheckedDiagonalBlock 19922949 16384 :=
  ⟨entries000304, length000304, checked000304⟩

noncomputable def entries000305 : List DiagonalCertificateEntry :=
  diagonalChunk% "../../certificates/33554432-v1/diagonal-000305.json" 33554432 4997120

theorem length000305 : entries000305.length = 16384 := by decide +kernel
theorem checked000305 : checkDiagonalEntries 19988485 entries000305 = true := by
  decide +kernel

noncomputable def block000305 : CheckedDiagonalBlock 19988485 16384 :=
  ⟨entries000305, length000305, checked000305⟩

noncomputable def entries000306 : List DiagonalCertificateEntry :=
  diagonalChunk% "../../certificates/33554432-v1/diagonal-000306.json" 33554432 5013504

theorem length000306 : entries000306.length = 16384 := by decide +kernel
theorem checked000306 : checkDiagonalEntries 20054021 entries000306 = true := by
  decide +kernel

noncomputable def block000306 : CheckedDiagonalBlock 20054021 16384 :=
  ⟨entries000306, length000306, checked000306⟩

noncomputable def entries000307 : List DiagonalCertificateEntry :=
  diagonalChunk% "../../certificates/33554432-v1/diagonal-000307.json" 33554432 5029888

theorem length000307 : entries000307.length = 16384 := by decide +kernel
theorem checked000307 : checkDiagonalEntries 20119557 entries000307 = true := by
  decide +kernel

noncomputable def block000307 : CheckedDiagonalBlock 20119557 16384 :=
  ⟨entries000307, length000307, checked000307⟩

noncomputable def entries000308 : List DiagonalCertificateEntry :=
  diagonalChunk% "../../certificates/33554432-v1/diagonal-000308.json" 33554432 5046272

theorem length000308 : entries000308.length = 16384 := by decide +kernel
theorem checked000308 : checkDiagonalEntries 20185093 entries000308 = true := by
  decide +kernel

noncomputable def block000308 : CheckedDiagonalBlock 20185093 16384 :=
  ⟨entries000308, length000308, checked000308⟩

noncomputable def entries000309 : List DiagonalCertificateEntry :=
  diagonalChunk% "../../certificates/33554432-v1/diagonal-000309.json" 33554432 5062656

theorem length000309 : entries000309.length = 16384 := by decide +kernel
theorem checked000309 : checkDiagonalEntries 20250629 entries000309 = true := by
  decide +kernel

noncomputable def block000309 : CheckedDiagonalBlock 20250629 16384 :=
  ⟨entries000309, length000309, checked000309⟩

noncomputable def entries000310 : List DiagonalCertificateEntry :=
  diagonalChunk% "../../certificates/33554432-v1/diagonal-000310.json" 33554432 5079040

theorem length000310 : entries000310.length = 16384 := by decide +kernel
theorem checked000310 : checkDiagonalEntries 20316165 entries000310 = true := by
  decide +kernel

noncomputable def block000310 : CheckedDiagonalBlock 20316165 16384 :=
  ⟨entries000310, length000310, checked000310⟩

noncomputable def entries000311 : List DiagonalCertificateEntry :=
  diagonalChunk% "../../certificates/33554432-v1/diagonal-000311.json" 33554432 5095424

theorem length000311 : entries000311.length = 16384 := by decide +kernel
theorem checked000311 : checkDiagonalEntries 20381701 entries000311 = true := by
  decide +kernel

noncomputable def block000311 : CheckedDiagonalBlock 20381701 16384 :=
  ⟨entries000311, length000311, checked000311⟩

noncomputable def entries000312 : List DiagonalCertificateEntry :=
  diagonalChunk% "../../certificates/33554432-v1/diagonal-000312.json" 33554432 5111808

theorem length000312 : entries000312.length = 16384 := by decide +kernel
theorem checked000312 : checkDiagonalEntries 20447237 entries000312 = true := by
  decide +kernel

noncomputable def block000312 : CheckedDiagonalBlock 20447237 16384 :=
  ⟨entries000312, length000312, checked000312⟩

noncomputable def entries000313 : List DiagonalCertificateEntry :=
  diagonalChunk% "../../certificates/33554432-v1/diagonal-000313.json" 33554432 5128192

theorem length000313 : entries000313.length = 16384 := by decide +kernel
theorem checked000313 : checkDiagonalEntries 20512773 entries000313 = true := by
  decide +kernel

noncomputable def block000313 : CheckedDiagonalBlock 20512773 16384 :=
  ⟨entries000313, length000313, checked000313⟩

noncomputable def entries000314 : List DiagonalCertificateEntry :=
  diagonalChunk% "../../certificates/33554432-v1/diagonal-000314.json" 33554432 5144576

theorem length000314 : entries000314.length = 16384 := by decide +kernel
theorem checked000314 : checkDiagonalEntries 20578309 entries000314 = true := by
  decide +kernel

noncomputable def block000314 : CheckedDiagonalBlock 20578309 16384 :=
  ⟨entries000314, length000314, checked000314⟩

noncomputable def entries000315 : List DiagonalCertificateEntry :=
  diagonalChunk% "../../certificates/33554432-v1/diagonal-000315.json" 33554432 5160960

theorem length000315 : entries000315.length = 16384 := by decide +kernel
theorem checked000315 : checkDiagonalEntries 20643845 entries000315 = true := by
  decide +kernel

noncomputable def block000315 : CheckedDiagonalBlock 20643845 16384 :=
  ⟨entries000315, length000315, checked000315⟩

noncomputable def entries000316 : List DiagonalCertificateEntry :=
  diagonalChunk% "../../certificates/33554432-v1/diagonal-000316.json" 33554432 5177344

theorem length000316 : entries000316.length = 16384 := by decide +kernel
theorem checked000316 : checkDiagonalEntries 20709381 entries000316 = true := by
  decide +kernel

noncomputable def block000316 : CheckedDiagonalBlock 20709381 16384 :=
  ⟨entries000316, length000316, checked000316⟩

noncomputable def entries000317 : List DiagonalCertificateEntry :=
  diagonalChunk% "../../certificates/33554432-v1/diagonal-000317.json" 33554432 5193728

theorem length000317 : entries000317.length = 16384 := by decide +kernel
theorem checked000317 : checkDiagonalEntries 20774917 entries000317 = true := by
  decide +kernel

noncomputable def block000317 : CheckedDiagonalBlock 20774917 16384 :=
  ⟨entries000317, length000317, checked000317⟩

noncomputable def entries000318 : List DiagonalCertificateEntry :=
  diagonalChunk% "../../certificates/33554432-v1/diagonal-000318.json" 33554432 5210112

theorem length000318 : entries000318.length = 16384 := by decide +kernel
theorem checked000318 : checkDiagonalEntries 20840453 entries000318 = true := by
  decide +kernel

noncomputable def block000318 : CheckedDiagonalBlock 20840453 16384 :=
  ⟨entries000318, length000318, checked000318⟩

noncomputable def entries000319 : List DiagonalCertificateEntry :=
  diagonalChunk% "../../certificates/33554432-v1/diagonal-000319.json" 33554432 5226496

theorem length000319 : entries000319.length = 16384 := by decide +kernel
theorem checked000319 : checkDiagonalEntries 20905989 entries000319 = true := by
  decide +kernel

noncomputable def block000319 : CheckedDiagonalBlock 20905989 16384 :=
  ⟨entries000319, length000319, checked000319⟩

noncomputable def group019 : CheckedDiagonalBlock 19922949 262144 :=
  (((((((((((((((block000304.append block000305).append block000306).append block000307).append block000308).append block000309).append block000310).append block000311).append block000312).append block000313).append block000314).append block000315).append block000316).append block000317).append block000318).append block000319)

end JSP848.FullDiagonal
