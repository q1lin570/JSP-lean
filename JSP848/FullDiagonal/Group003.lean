import JSP848.CertificateInput
import JSP848.DiagonalChunks

set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0

namespace JSP848.FullDiagonal

open CertificateInput

noncomputable def entries000048 : List DiagonalCertificateEntry :=
  diagonalChunk% "../../certificates/33554432-v1/diagonal-000048.json" 33554432 786432

theorem length000048 : entries000048.length = 16384 := by decide +kernel
theorem checked000048 : checkDiagonalEntries 3145733 entries000048 = true := by
  decide +kernel

noncomputable def block000048 : CheckedDiagonalBlock 3145733 16384 :=
  ⟨entries000048, length000048, checked000048⟩

noncomputable def entries000049 : List DiagonalCertificateEntry :=
  diagonalChunk% "../../certificates/33554432-v1/diagonal-000049.json" 33554432 802816

theorem length000049 : entries000049.length = 16384 := by decide +kernel
theorem checked000049 : checkDiagonalEntries 3211269 entries000049 = true := by
  decide +kernel

noncomputable def block000049 : CheckedDiagonalBlock 3211269 16384 :=
  ⟨entries000049, length000049, checked000049⟩

noncomputable def entries000050 : List DiagonalCertificateEntry :=
  diagonalChunk% "../../certificates/33554432-v1/diagonal-000050.json" 33554432 819200

theorem length000050 : entries000050.length = 16384 := by decide +kernel
theorem checked000050 : checkDiagonalEntries 3276805 entries000050 = true := by
  decide +kernel

noncomputable def block000050 : CheckedDiagonalBlock 3276805 16384 :=
  ⟨entries000050, length000050, checked000050⟩

noncomputable def entries000051 : List DiagonalCertificateEntry :=
  diagonalChunk% "../../certificates/33554432-v1/diagonal-000051.json" 33554432 835584

theorem length000051 : entries000051.length = 16384 := by decide +kernel
theorem checked000051 : checkDiagonalEntries 3342341 entries000051 = true := by
  decide +kernel

noncomputable def block000051 : CheckedDiagonalBlock 3342341 16384 :=
  ⟨entries000051, length000051, checked000051⟩

noncomputable def entries000052 : List DiagonalCertificateEntry :=
  diagonalChunk% "../../certificates/33554432-v1/diagonal-000052.json" 33554432 851968

theorem length000052 : entries000052.length = 16384 := by decide +kernel
theorem checked000052 : checkDiagonalEntries 3407877 entries000052 = true := by
  decide +kernel

noncomputable def block000052 : CheckedDiagonalBlock 3407877 16384 :=
  ⟨entries000052, length000052, checked000052⟩

noncomputable def entries000053 : List DiagonalCertificateEntry :=
  diagonalChunk% "../../certificates/33554432-v1/diagonal-000053.json" 33554432 868352

theorem length000053 : entries000053.length = 16384 := by decide +kernel
theorem checked000053 : checkDiagonalEntries 3473413 entries000053 = true := by
  decide +kernel

noncomputable def block000053 : CheckedDiagonalBlock 3473413 16384 :=
  ⟨entries000053, length000053, checked000053⟩

noncomputable def entries000054 : List DiagonalCertificateEntry :=
  diagonalChunk% "../../certificates/33554432-v1/diagonal-000054.json" 33554432 884736

theorem length000054 : entries000054.length = 16384 := by decide +kernel
theorem checked000054 : checkDiagonalEntries 3538949 entries000054 = true := by
  decide +kernel

noncomputable def block000054 : CheckedDiagonalBlock 3538949 16384 :=
  ⟨entries000054, length000054, checked000054⟩

noncomputable def entries000055 : List DiagonalCertificateEntry :=
  diagonalChunk% "../../certificates/33554432-v1/diagonal-000055.json" 33554432 901120

theorem length000055 : entries000055.length = 16384 := by decide +kernel
theorem checked000055 : checkDiagonalEntries 3604485 entries000055 = true := by
  decide +kernel

noncomputable def block000055 : CheckedDiagonalBlock 3604485 16384 :=
  ⟨entries000055, length000055, checked000055⟩

noncomputable def entries000056 : List DiagonalCertificateEntry :=
  diagonalChunk% "../../certificates/33554432-v1/diagonal-000056.json" 33554432 917504

theorem length000056 : entries000056.length = 16384 := by decide +kernel
theorem checked000056 : checkDiagonalEntries 3670021 entries000056 = true := by
  decide +kernel

noncomputable def block000056 : CheckedDiagonalBlock 3670021 16384 :=
  ⟨entries000056, length000056, checked000056⟩

noncomputable def entries000057 : List DiagonalCertificateEntry :=
  diagonalChunk% "../../certificates/33554432-v1/diagonal-000057.json" 33554432 933888

theorem length000057 : entries000057.length = 16384 := by decide +kernel
theorem checked000057 : checkDiagonalEntries 3735557 entries000057 = true := by
  decide +kernel

noncomputable def block000057 : CheckedDiagonalBlock 3735557 16384 :=
  ⟨entries000057, length000057, checked000057⟩

noncomputable def entries000058 : List DiagonalCertificateEntry :=
  diagonalChunk% "../../certificates/33554432-v1/diagonal-000058.json" 33554432 950272

theorem length000058 : entries000058.length = 16384 := by decide +kernel
theorem checked000058 : checkDiagonalEntries 3801093 entries000058 = true := by
  decide +kernel

noncomputable def block000058 : CheckedDiagonalBlock 3801093 16384 :=
  ⟨entries000058, length000058, checked000058⟩

noncomputable def entries000059 : List DiagonalCertificateEntry :=
  diagonalChunk% "../../certificates/33554432-v1/diagonal-000059.json" 33554432 966656

theorem length000059 : entries000059.length = 16384 := by decide +kernel
theorem checked000059 : checkDiagonalEntries 3866629 entries000059 = true := by
  decide +kernel

noncomputable def block000059 : CheckedDiagonalBlock 3866629 16384 :=
  ⟨entries000059, length000059, checked000059⟩

noncomputable def entries000060 : List DiagonalCertificateEntry :=
  diagonalChunk% "../../certificates/33554432-v1/diagonal-000060.json" 33554432 983040

theorem length000060 : entries000060.length = 16384 := by decide +kernel
theorem checked000060 : checkDiagonalEntries 3932165 entries000060 = true := by
  decide +kernel

noncomputable def block000060 : CheckedDiagonalBlock 3932165 16384 :=
  ⟨entries000060, length000060, checked000060⟩

noncomputable def entries000061 : List DiagonalCertificateEntry :=
  diagonalChunk% "../../certificates/33554432-v1/diagonal-000061.json" 33554432 999424

theorem length000061 : entries000061.length = 16384 := by decide +kernel
theorem checked000061 : checkDiagonalEntries 3997701 entries000061 = true := by
  decide +kernel

noncomputable def block000061 : CheckedDiagonalBlock 3997701 16384 :=
  ⟨entries000061, length000061, checked000061⟩

noncomputable def entries000062 : List DiagonalCertificateEntry :=
  diagonalChunk% "../../certificates/33554432-v1/diagonal-000062.json" 33554432 1015808

theorem length000062 : entries000062.length = 16384 := by decide +kernel
theorem checked000062 : checkDiagonalEntries 4063237 entries000062 = true := by
  decide +kernel

noncomputable def block000062 : CheckedDiagonalBlock 4063237 16384 :=
  ⟨entries000062, length000062, checked000062⟩

noncomputable def entries000063 : List DiagonalCertificateEntry :=
  diagonalChunk% "../../certificates/33554432-v1/diagonal-000063.json" 33554432 1032192

theorem length000063 : entries000063.length = 16384 := by decide +kernel
theorem checked000063 : checkDiagonalEntries 4128773 entries000063 = true := by
  decide +kernel

noncomputable def block000063 : CheckedDiagonalBlock 4128773 16384 :=
  ⟨entries000063, length000063, checked000063⟩

noncomputable def group003 : CheckedDiagonalBlock 3145733 262144 :=
  (((((((((((((((block000048.append block000049).append block000050).append block000051).append block000052).append block000053).append block000054).append block000055).append block000056).append block000057).append block000058).append block000059).append block000060).append block000061).append block000062).append block000063)

end JSP848.FullDiagonal
