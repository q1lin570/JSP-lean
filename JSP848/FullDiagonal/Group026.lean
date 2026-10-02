import JSP848.CertificateInput
import JSP848.DiagonalChunks

set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0

namespace JSP848.FullDiagonal

open CertificateInput

noncomputable def entries000416 : List DiagonalCertificateEntry :=
  diagonalChunk% "../../certificates/33554432-v1/diagonal-000416.json" 33554432 6815744

theorem length000416 : entries000416.length = 16384 := by decide +kernel
theorem checked000416 : checkDiagonalEntries 27262981 entries000416 = true := by
  decide +kernel

noncomputable def block000416 : CheckedDiagonalBlock 27262981 16384 :=
  ⟨entries000416, length000416, checked000416⟩

noncomputable def entries000417 : List DiagonalCertificateEntry :=
  diagonalChunk% "../../certificates/33554432-v1/diagonal-000417.json" 33554432 6832128

theorem length000417 : entries000417.length = 16384 := by decide +kernel
theorem checked000417 : checkDiagonalEntries 27328517 entries000417 = true := by
  decide +kernel

noncomputable def block000417 : CheckedDiagonalBlock 27328517 16384 :=
  ⟨entries000417, length000417, checked000417⟩

noncomputable def entries000418 : List DiagonalCertificateEntry :=
  diagonalChunk% "../../certificates/33554432-v1/diagonal-000418.json" 33554432 6848512

theorem length000418 : entries000418.length = 16384 := by decide +kernel
theorem checked000418 : checkDiagonalEntries 27394053 entries000418 = true := by
  decide +kernel

noncomputable def block000418 : CheckedDiagonalBlock 27394053 16384 :=
  ⟨entries000418, length000418, checked000418⟩

noncomputable def entries000419 : List DiagonalCertificateEntry :=
  diagonalChunk% "../../certificates/33554432-v1/diagonal-000419.json" 33554432 6864896

theorem length000419 : entries000419.length = 16384 := by decide +kernel
theorem checked000419 : checkDiagonalEntries 27459589 entries000419 = true := by
  decide +kernel

noncomputable def block000419 : CheckedDiagonalBlock 27459589 16384 :=
  ⟨entries000419, length000419, checked000419⟩

noncomputable def entries000420 : List DiagonalCertificateEntry :=
  diagonalChunk% "../../certificates/33554432-v1/diagonal-000420.json" 33554432 6881280

theorem length000420 : entries000420.length = 16384 := by decide +kernel
theorem checked000420 : checkDiagonalEntries 27525125 entries000420 = true := by
  decide +kernel

noncomputable def block000420 : CheckedDiagonalBlock 27525125 16384 :=
  ⟨entries000420, length000420, checked000420⟩

noncomputable def entries000421 : List DiagonalCertificateEntry :=
  diagonalChunk% "../../certificates/33554432-v1/diagonal-000421.json" 33554432 6897664

theorem length000421 : entries000421.length = 16384 := by decide +kernel
theorem checked000421 : checkDiagonalEntries 27590661 entries000421 = true := by
  decide +kernel

noncomputable def block000421 : CheckedDiagonalBlock 27590661 16384 :=
  ⟨entries000421, length000421, checked000421⟩

noncomputable def entries000422 : List DiagonalCertificateEntry :=
  diagonalChunk% "../../certificates/33554432-v1/diagonal-000422.json" 33554432 6914048

theorem length000422 : entries000422.length = 16384 := by decide +kernel
theorem checked000422 : checkDiagonalEntries 27656197 entries000422 = true := by
  decide +kernel

noncomputable def block000422 : CheckedDiagonalBlock 27656197 16384 :=
  ⟨entries000422, length000422, checked000422⟩

noncomputable def entries000423 : List DiagonalCertificateEntry :=
  diagonalChunk% "../../certificates/33554432-v1/diagonal-000423.json" 33554432 6930432

theorem length000423 : entries000423.length = 16384 := by decide +kernel
theorem checked000423 : checkDiagonalEntries 27721733 entries000423 = true := by
  decide +kernel

noncomputable def block000423 : CheckedDiagonalBlock 27721733 16384 :=
  ⟨entries000423, length000423, checked000423⟩

noncomputable def entries000424 : List DiagonalCertificateEntry :=
  diagonalChunk% "../../certificates/33554432-v1/diagonal-000424.json" 33554432 6946816

theorem length000424 : entries000424.length = 16384 := by decide +kernel
theorem checked000424 : checkDiagonalEntries 27787269 entries000424 = true := by
  decide +kernel

noncomputable def block000424 : CheckedDiagonalBlock 27787269 16384 :=
  ⟨entries000424, length000424, checked000424⟩

noncomputable def entries000425 : List DiagonalCertificateEntry :=
  diagonalChunk% "../../certificates/33554432-v1/diagonal-000425.json" 33554432 6963200

theorem length000425 : entries000425.length = 16384 := by decide +kernel
theorem checked000425 : checkDiagonalEntries 27852805 entries000425 = true := by
  decide +kernel

noncomputable def block000425 : CheckedDiagonalBlock 27852805 16384 :=
  ⟨entries000425, length000425, checked000425⟩

noncomputable def entries000426 : List DiagonalCertificateEntry :=
  diagonalChunk% "../../certificates/33554432-v1/diagonal-000426.json" 33554432 6979584

theorem length000426 : entries000426.length = 16384 := by decide +kernel
theorem checked000426 : checkDiagonalEntries 27918341 entries000426 = true := by
  decide +kernel

noncomputable def block000426 : CheckedDiagonalBlock 27918341 16384 :=
  ⟨entries000426, length000426, checked000426⟩

noncomputable def entries000427 : List DiagonalCertificateEntry :=
  diagonalChunk% "../../certificates/33554432-v1/diagonal-000427.json" 33554432 6995968

theorem length000427 : entries000427.length = 16384 := by decide +kernel
theorem checked000427 : checkDiagonalEntries 27983877 entries000427 = true := by
  decide +kernel

noncomputable def block000427 : CheckedDiagonalBlock 27983877 16384 :=
  ⟨entries000427, length000427, checked000427⟩

noncomputable def entries000428 : List DiagonalCertificateEntry :=
  diagonalChunk% "../../certificates/33554432-v1/diagonal-000428.json" 33554432 7012352

theorem length000428 : entries000428.length = 16384 := by decide +kernel
theorem checked000428 : checkDiagonalEntries 28049413 entries000428 = true := by
  decide +kernel

noncomputable def block000428 : CheckedDiagonalBlock 28049413 16384 :=
  ⟨entries000428, length000428, checked000428⟩

noncomputable def entries000429 : List DiagonalCertificateEntry :=
  diagonalChunk% "../../certificates/33554432-v1/diagonal-000429.json" 33554432 7028736

theorem length000429 : entries000429.length = 16384 := by decide +kernel
theorem checked000429 : checkDiagonalEntries 28114949 entries000429 = true := by
  decide +kernel

noncomputable def block000429 : CheckedDiagonalBlock 28114949 16384 :=
  ⟨entries000429, length000429, checked000429⟩

noncomputable def entries000430 : List DiagonalCertificateEntry :=
  diagonalChunk% "../../certificates/33554432-v1/diagonal-000430.json" 33554432 7045120

theorem length000430 : entries000430.length = 16384 := by decide +kernel
theorem checked000430 : checkDiagonalEntries 28180485 entries000430 = true := by
  decide +kernel

noncomputable def block000430 : CheckedDiagonalBlock 28180485 16384 :=
  ⟨entries000430, length000430, checked000430⟩

noncomputable def entries000431 : List DiagonalCertificateEntry :=
  diagonalChunk% "../../certificates/33554432-v1/diagonal-000431.json" 33554432 7061504

theorem length000431 : entries000431.length = 16384 := by decide +kernel
theorem checked000431 : checkDiagonalEntries 28246021 entries000431 = true := by
  decide +kernel

noncomputable def block000431 : CheckedDiagonalBlock 28246021 16384 :=
  ⟨entries000431, length000431, checked000431⟩

noncomputable def group026 : CheckedDiagonalBlock 27262981 262144 :=
  (((((((((((((((block000416.append block000417).append block000418).append block000419).append block000420).append block000421).append block000422).append block000423).append block000424).append block000425).append block000426).append block000427).append block000428).append block000429).append block000430).append block000431)

end JSP848.FullDiagonal
