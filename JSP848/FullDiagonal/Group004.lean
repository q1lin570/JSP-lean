import JSP848.CertificateInput
import JSP848.DiagonalChunks

set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0

namespace JSP848.FullDiagonal

open CertificateInput

noncomputable def entries000064 : List DiagonalCertificateEntry :=
  diagonalChunk% "../../certificates/33554432-v1/diagonal-000064.json" 33554432 1048576

theorem length000064 : entries000064.length = 16384 := by decide +kernel
theorem checked000064 : checkDiagonalEntries 4194309 entries000064 = true := by
  decide +kernel

noncomputable def block000064 : CheckedDiagonalBlock 4194309 16384 :=
  ⟨entries000064, length000064, checked000064⟩

noncomputable def entries000065 : List DiagonalCertificateEntry :=
  diagonalChunk% "../../certificates/33554432-v1/diagonal-000065.json" 33554432 1064960

theorem length000065 : entries000065.length = 16384 := by decide +kernel
theorem checked000065 : checkDiagonalEntries 4259845 entries000065 = true := by
  decide +kernel

noncomputable def block000065 : CheckedDiagonalBlock 4259845 16384 :=
  ⟨entries000065, length000065, checked000065⟩

noncomputable def entries000066 : List DiagonalCertificateEntry :=
  diagonalChunk% "../../certificates/33554432-v1/diagonal-000066.json" 33554432 1081344

theorem length000066 : entries000066.length = 16384 := by decide +kernel
theorem checked000066 : checkDiagonalEntries 4325381 entries000066 = true := by
  decide +kernel

noncomputable def block000066 : CheckedDiagonalBlock 4325381 16384 :=
  ⟨entries000066, length000066, checked000066⟩

noncomputable def entries000067 : List DiagonalCertificateEntry :=
  diagonalChunk% "../../certificates/33554432-v1/diagonal-000067.json" 33554432 1097728

theorem length000067 : entries000067.length = 16384 := by decide +kernel
theorem checked000067 : checkDiagonalEntries 4390917 entries000067 = true := by
  decide +kernel

noncomputable def block000067 : CheckedDiagonalBlock 4390917 16384 :=
  ⟨entries000067, length000067, checked000067⟩

noncomputable def entries000068 : List DiagonalCertificateEntry :=
  diagonalChunk% "../../certificates/33554432-v1/diagonal-000068.json" 33554432 1114112

theorem length000068 : entries000068.length = 16384 := by decide +kernel
theorem checked000068 : checkDiagonalEntries 4456453 entries000068 = true := by
  decide +kernel

noncomputable def block000068 : CheckedDiagonalBlock 4456453 16384 :=
  ⟨entries000068, length000068, checked000068⟩

noncomputable def entries000069 : List DiagonalCertificateEntry :=
  diagonalChunk% "../../certificates/33554432-v1/diagonal-000069.json" 33554432 1130496

theorem length000069 : entries000069.length = 16384 := by decide +kernel
theorem checked000069 : checkDiagonalEntries 4521989 entries000069 = true := by
  decide +kernel

noncomputable def block000069 : CheckedDiagonalBlock 4521989 16384 :=
  ⟨entries000069, length000069, checked000069⟩

noncomputable def entries000070 : List DiagonalCertificateEntry :=
  diagonalChunk% "../../certificates/33554432-v1/diagonal-000070.json" 33554432 1146880

theorem length000070 : entries000070.length = 16384 := by decide +kernel
theorem checked000070 : checkDiagonalEntries 4587525 entries000070 = true := by
  decide +kernel

noncomputable def block000070 : CheckedDiagonalBlock 4587525 16384 :=
  ⟨entries000070, length000070, checked000070⟩

noncomputable def entries000071 : List DiagonalCertificateEntry :=
  diagonalChunk% "../../certificates/33554432-v1/diagonal-000071.json" 33554432 1163264

theorem length000071 : entries000071.length = 16384 := by decide +kernel
theorem checked000071 : checkDiagonalEntries 4653061 entries000071 = true := by
  decide +kernel

noncomputable def block000071 : CheckedDiagonalBlock 4653061 16384 :=
  ⟨entries000071, length000071, checked000071⟩

noncomputable def entries000072 : List DiagonalCertificateEntry :=
  diagonalChunk% "../../certificates/33554432-v1/diagonal-000072.json" 33554432 1179648

theorem length000072 : entries000072.length = 16384 := by decide +kernel
theorem checked000072 : checkDiagonalEntries 4718597 entries000072 = true := by
  decide +kernel

noncomputable def block000072 : CheckedDiagonalBlock 4718597 16384 :=
  ⟨entries000072, length000072, checked000072⟩

noncomputable def entries000073 : List DiagonalCertificateEntry :=
  diagonalChunk% "../../certificates/33554432-v1/diagonal-000073.json" 33554432 1196032

theorem length000073 : entries000073.length = 16384 := by decide +kernel
theorem checked000073 : checkDiagonalEntries 4784133 entries000073 = true := by
  decide +kernel

noncomputable def block000073 : CheckedDiagonalBlock 4784133 16384 :=
  ⟨entries000073, length000073, checked000073⟩

noncomputable def entries000074 : List DiagonalCertificateEntry :=
  diagonalChunk% "../../certificates/33554432-v1/diagonal-000074.json" 33554432 1212416

theorem length000074 : entries000074.length = 16384 := by decide +kernel
theorem checked000074 : checkDiagonalEntries 4849669 entries000074 = true := by
  decide +kernel

noncomputable def block000074 : CheckedDiagonalBlock 4849669 16384 :=
  ⟨entries000074, length000074, checked000074⟩

noncomputable def entries000075 : List DiagonalCertificateEntry :=
  diagonalChunk% "../../certificates/33554432-v1/diagonal-000075.json" 33554432 1228800

theorem length000075 : entries000075.length = 16384 := by decide +kernel
theorem checked000075 : checkDiagonalEntries 4915205 entries000075 = true := by
  decide +kernel

noncomputable def block000075 : CheckedDiagonalBlock 4915205 16384 :=
  ⟨entries000075, length000075, checked000075⟩

noncomputable def entries000076 : List DiagonalCertificateEntry :=
  diagonalChunk% "../../certificates/33554432-v1/diagonal-000076.json" 33554432 1245184

theorem length000076 : entries000076.length = 16384 := by decide +kernel
theorem checked000076 : checkDiagonalEntries 4980741 entries000076 = true := by
  decide +kernel

noncomputable def block000076 : CheckedDiagonalBlock 4980741 16384 :=
  ⟨entries000076, length000076, checked000076⟩

noncomputable def entries000077 : List DiagonalCertificateEntry :=
  diagonalChunk% "../../certificates/33554432-v1/diagonal-000077.json" 33554432 1261568

theorem length000077 : entries000077.length = 16384 := by decide +kernel
theorem checked000077 : checkDiagonalEntries 5046277 entries000077 = true := by
  decide +kernel

noncomputable def block000077 : CheckedDiagonalBlock 5046277 16384 :=
  ⟨entries000077, length000077, checked000077⟩

noncomputable def entries000078 : List DiagonalCertificateEntry :=
  diagonalChunk% "../../certificates/33554432-v1/diagonal-000078.json" 33554432 1277952

theorem length000078 : entries000078.length = 16384 := by decide +kernel
theorem checked000078 : checkDiagonalEntries 5111813 entries000078 = true := by
  decide +kernel

noncomputable def block000078 : CheckedDiagonalBlock 5111813 16384 :=
  ⟨entries000078, length000078, checked000078⟩

noncomputable def entries000079 : List DiagonalCertificateEntry :=
  diagonalChunk% "../../certificates/33554432-v1/diagonal-000079.json" 33554432 1294336

theorem length000079 : entries000079.length = 16384 := by decide +kernel
theorem checked000079 : checkDiagonalEntries 5177349 entries000079 = true := by
  decide +kernel

noncomputable def block000079 : CheckedDiagonalBlock 5177349 16384 :=
  ⟨entries000079, length000079, checked000079⟩

noncomputable def group004 : CheckedDiagonalBlock 4194309 262144 :=
  (((((((((((((((block000064.append block000065).append block000066).append block000067).append block000068).append block000069).append block000070).append block000071).append block000072).append block000073).append block000074).append block000075).append block000076).append block000077).append block000078).append block000079)

end JSP848.FullDiagonal
