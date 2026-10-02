import JSP848.CertificateInput
import JSP848.DiagonalChunks

set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0

namespace JSP848.FullDiagonal

open CertificateInput

noncomputable def entries000016 : List DiagonalCertificateEntry :=
  diagonalChunk% "../../certificates/33554432-v1/diagonal-000016.json" 33554432 262144

theorem length000016 : entries000016.length = 16384 := by decide +kernel
theorem checked000016 : checkDiagonalEntries 1048581 entries000016 = true := by
  decide +kernel

noncomputable def block000016 : CheckedDiagonalBlock 1048581 16384 :=
  ⟨entries000016, length000016, checked000016⟩

noncomputable def entries000017 : List DiagonalCertificateEntry :=
  diagonalChunk% "../../certificates/33554432-v1/diagonal-000017.json" 33554432 278528

theorem length000017 : entries000017.length = 16384 := by decide +kernel
theorem checked000017 : checkDiagonalEntries 1114117 entries000017 = true := by
  decide +kernel

noncomputable def block000017 : CheckedDiagonalBlock 1114117 16384 :=
  ⟨entries000017, length000017, checked000017⟩

noncomputable def entries000018 : List DiagonalCertificateEntry :=
  diagonalChunk% "../../certificates/33554432-v1/diagonal-000018.json" 33554432 294912

theorem length000018 : entries000018.length = 16384 := by decide +kernel
theorem checked000018 : checkDiagonalEntries 1179653 entries000018 = true := by
  decide +kernel

noncomputable def block000018 : CheckedDiagonalBlock 1179653 16384 :=
  ⟨entries000018, length000018, checked000018⟩

noncomputable def entries000019 : List DiagonalCertificateEntry :=
  diagonalChunk% "../../certificates/33554432-v1/diagonal-000019.json" 33554432 311296

theorem length000019 : entries000019.length = 16384 := by decide +kernel
theorem checked000019 : checkDiagonalEntries 1245189 entries000019 = true := by
  decide +kernel

noncomputable def block000019 : CheckedDiagonalBlock 1245189 16384 :=
  ⟨entries000019, length000019, checked000019⟩

noncomputable def entries000020 : List DiagonalCertificateEntry :=
  diagonalChunk% "../../certificates/33554432-v1/diagonal-000020.json" 33554432 327680

theorem length000020 : entries000020.length = 16384 := by decide +kernel
theorem checked000020 : checkDiagonalEntries 1310725 entries000020 = true := by
  decide +kernel

noncomputable def block000020 : CheckedDiagonalBlock 1310725 16384 :=
  ⟨entries000020, length000020, checked000020⟩

noncomputable def entries000021 : List DiagonalCertificateEntry :=
  diagonalChunk% "../../certificates/33554432-v1/diagonal-000021.json" 33554432 344064

theorem length000021 : entries000021.length = 16384 := by decide +kernel
theorem checked000021 : checkDiagonalEntries 1376261 entries000021 = true := by
  decide +kernel

noncomputable def block000021 : CheckedDiagonalBlock 1376261 16384 :=
  ⟨entries000021, length000021, checked000021⟩

noncomputable def entries000022 : List DiagonalCertificateEntry :=
  diagonalChunk% "../../certificates/33554432-v1/diagonal-000022.json" 33554432 360448

theorem length000022 : entries000022.length = 16384 := by decide +kernel
theorem checked000022 : checkDiagonalEntries 1441797 entries000022 = true := by
  decide +kernel

noncomputable def block000022 : CheckedDiagonalBlock 1441797 16384 :=
  ⟨entries000022, length000022, checked000022⟩

noncomputable def entries000023 : List DiagonalCertificateEntry :=
  diagonalChunk% "../../certificates/33554432-v1/diagonal-000023.json" 33554432 376832

theorem length000023 : entries000023.length = 16384 := by decide +kernel
theorem checked000023 : checkDiagonalEntries 1507333 entries000023 = true := by
  decide +kernel

noncomputable def block000023 : CheckedDiagonalBlock 1507333 16384 :=
  ⟨entries000023, length000023, checked000023⟩

noncomputable def entries000024 : List DiagonalCertificateEntry :=
  diagonalChunk% "../../certificates/33554432-v1/diagonal-000024.json" 33554432 393216

theorem length000024 : entries000024.length = 16384 := by decide +kernel
theorem checked000024 : checkDiagonalEntries 1572869 entries000024 = true := by
  decide +kernel

noncomputable def block000024 : CheckedDiagonalBlock 1572869 16384 :=
  ⟨entries000024, length000024, checked000024⟩

noncomputable def entries000025 : List DiagonalCertificateEntry :=
  diagonalChunk% "../../certificates/33554432-v1/diagonal-000025.json" 33554432 409600

theorem length000025 : entries000025.length = 16384 := by decide +kernel
theorem checked000025 : checkDiagonalEntries 1638405 entries000025 = true := by
  decide +kernel

noncomputable def block000025 : CheckedDiagonalBlock 1638405 16384 :=
  ⟨entries000025, length000025, checked000025⟩

noncomputable def entries000026 : List DiagonalCertificateEntry :=
  diagonalChunk% "../../certificates/33554432-v1/diagonal-000026.json" 33554432 425984

theorem length000026 : entries000026.length = 16384 := by decide +kernel
theorem checked000026 : checkDiagonalEntries 1703941 entries000026 = true := by
  decide +kernel

noncomputable def block000026 : CheckedDiagonalBlock 1703941 16384 :=
  ⟨entries000026, length000026, checked000026⟩

noncomputable def entries000027 : List DiagonalCertificateEntry :=
  diagonalChunk% "../../certificates/33554432-v1/diagonal-000027.json" 33554432 442368

theorem length000027 : entries000027.length = 16384 := by decide +kernel
theorem checked000027 : checkDiagonalEntries 1769477 entries000027 = true := by
  decide +kernel

noncomputable def block000027 : CheckedDiagonalBlock 1769477 16384 :=
  ⟨entries000027, length000027, checked000027⟩

noncomputable def entries000028 : List DiagonalCertificateEntry :=
  diagonalChunk% "../../certificates/33554432-v1/diagonal-000028.json" 33554432 458752

theorem length000028 : entries000028.length = 16384 := by decide +kernel
theorem checked000028 : checkDiagonalEntries 1835013 entries000028 = true := by
  decide +kernel

noncomputable def block000028 : CheckedDiagonalBlock 1835013 16384 :=
  ⟨entries000028, length000028, checked000028⟩

noncomputable def entries000029 : List DiagonalCertificateEntry :=
  diagonalChunk% "../../certificates/33554432-v1/diagonal-000029.json" 33554432 475136

theorem length000029 : entries000029.length = 16384 := by decide +kernel
theorem checked000029 : checkDiagonalEntries 1900549 entries000029 = true := by
  decide +kernel

noncomputable def block000029 : CheckedDiagonalBlock 1900549 16384 :=
  ⟨entries000029, length000029, checked000029⟩

noncomputable def entries000030 : List DiagonalCertificateEntry :=
  diagonalChunk% "../../certificates/33554432-v1/diagonal-000030.json" 33554432 491520

theorem length000030 : entries000030.length = 16384 := by decide +kernel
theorem checked000030 : checkDiagonalEntries 1966085 entries000030 = true := by
  decide +kernel

noncomputable def block000030 : CheckedDiagonalBlock 1966085 16384 :=
  ⟨entries000030, length000030, checked000030⟩

noncomputable def entries000031 : List DiagonalCertificateEntry :=
  diagonalChunk% "../../certificates/33554432-v1/diagonal-000031.json" 33554432 507904

theorem length000031 : entries000031.length = 16384 := by decide +kernel
theorem checked000031 : checkDiagonalEntries 2031621 entries000031 = true := by
  decide +kernel

noncomputable def block000031 : CheckedDiagonalBlock 2031621 16384 :=
  ⟨entries000031, length000031, checked000031⟩

noncomputable def group001 : CheckedDiagonalBlock 1048581 262144 :=
  (((((((((((((((block000016.append block000017).append block000018).append block000019).append block000020).append block000021).append block000022).append block000023).append block000024).append block000025).append block000026).append block000027).append block000028).append block000029).append block000030).append block000031)

end JSP848.FullDiagonal
