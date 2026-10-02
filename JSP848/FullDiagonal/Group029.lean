import JSP848.CertificateInput
import JSP848.DiagonalChunks

set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0

namespace JSP848.FullDiagonal

open CertificateInput

noncomputable def entries000464 : List DiagonalCertificateEntry :=
  diagonalChunk% "../../certificates/33554432-v1/diagonal-000464.json" 33554432 7602176

theorem length000464 : entries000464.length = 16384 := by decide +kernel
theorem checked000464 : checkDiagonalEntries 30408709 entries000464 = true := by
  decide +kernel

noncomputable def block000464 : CheckedDiagonalBlock 30408709 16384 :=
  ⟨entries000464, length000464, checked000464⟩

noncomputable def entries000465 : List DiagonalCertificateEntry :=
  diagonalChunk% "../../certificates/33554432-v1/diagonal-000465.json" 33554432 7618560

theorem length000465 : entries000465.length = 16384 := by decide +kernel
theorem checked000465 : checkDiagonalEntries 30474245 entries000465 = true := by
  decide +kernel

noncomputable def block000465 : CheckedDiagonalBlock 30474245 16384 :=
  ⟨entries000465, length000465, checked000465⟩

noncomputable def entries000466 : List DiagonalCertificateEntry :=
  diagonalChunk% "../../certificates/33554432-v1/diagonal-000466.json" 33554432 7634944

theorem length000466 : entries000466.length = 16384 := by decide +kernel
theorem checked000466 : checkDiagonalEntries 30539781 entries000466 = true := by
  decide +kernel

noncomputable def block000466 : CheckedDiagonalBlock 30539781 16384 :=
  ⟨entries000466, length000466, checked000466⟩

noncomputable def entries000467 : List DiagonalCertificateEntry :=
  diagonalChunk% "../../certificates/33554432-v1/diagonal-000467.json" 33554432 7651328

theorem length000467 : entries000467.length = 16384 := by decide +kernel
theorem checked000467 : checkDiagonalEntries 30605317 entries000467 = true := by
  decide +kernel

noncomputable def block000467 : CheckedDiagonalBlock 30605317 16384 :=
  ⟨entries000467, length000467, checked000467⟩

noncomputable def entries000468 : List DiagonalCertificateEntry :=
  diagonalChunk% "../../certificates/33554432-v1/diagonal-000468.json" 33554432 7667712

theorem length000468 : entries000468.length = 16384 := by decide +kernel
theorem checked000468 : checkDiagonalEntries 30670853 entries000468 = true := by
  decide +kernel

noncomputable def block000468 : CheckedDiagonalBlock 30670853 16384 :=
  ⟨entries000468, length000468, checked000468⟩

noncomputable def entries000469 : List DiagonalCertificateEntry :=
  diagonalChunk% "../../certificates/33554432-v1/diagonal-000469.json" 33554432 7684096

theorem length000469 : entries000469.length = 16384 := by decide +kernel
theorem checked000469 : checkDiagonalEntries 30736389 entries000469 = true := by
  decide +kernel

noncomputable def block000469 : CheckedDiagonalBlock 30736389 16384 :=
  ⟨entries000469, length000469, checked000469⟩

noncomputable def entries000470 : List DiagonalCertificateEntry :=
  diagonalChunk% "../../certificates/33554432-v1/diagonal-000470.json" 33554432 7700480

theorem length000470 : entries000470.length = 16384 := by decide +kernel
theorem checked000470 : checkDiagonalEntries 30801925 entries000470 = true := by
  decide +kernel

noncomputable def block000470 : CheckedDiagonalBlock 30801925 16384 :=
  ⟨entries000470, length000470, checked000470⟩

noncomputable def entries000471 : List DiagonalCertificateEntry :=
  diagonalChunk% "../../certificates/33554432-v1/diagonal-000471.json" 33554432 7716864

theorem length000471 : entries000471.length = 16384 := by decide +kernel
theorem checked000471 : checkDiagonalEntries 30867461 entries000471 = true := by
  decide +kernel

noncomputable def block000471 : CheckedDiagonalBlock 30867461 16384 :=
  ⟨entries000471, length000471, checked000471⟩

noncomputable def entries000472 : List DiagonalCertificateEntry :=
  diagonalChunk% "../../certificates/33554432-v1/diagonal-000472.json" 33554432 7733248

theorem length000472 : entries000472.length = 16384 := by decide +kernel
theorem checked000472 : checkDiagonalEntries 30932997 entries000472 = true := by
  decide +kernel

noncomputable def block000472 : CheckedDiagonalBlock 30932997 16384 :=
  ⟨entries000472, length000472, checked000472⟩

noncomputable def entries000473 : List DiagonalCertificateEntry :=
  diagonalChunk% "../../certificates/33554432-v1/diagonal-000473.json" 33554432 7749632

theorem length000473 : entries000473.length = 16384 := by decide +kernel
theorem checked000473 : checkDiagonalEntries 30998533 entries000473 = true := by
  decide +kernel

noncomputable def block000473 : CheckedDiagonalBlock 30998533 16384 :=
  ⟨entries000473, length000473, checked000473⟩

noncomputable def entries000474 : List DiagonalCertificateEntry :=
  diagonalChunk% "../../certificates/33554432-v1/diagonal-000474.json" 33554432 7766016

theorem length000474 : entries000474.length = 16384 := by decide +kernel
theorem checked000474 : checkDiagonalEntries 31064069 entries000474 = true := by
  decide +kernel

noncomputable def block000474 : CheckedDiagonalBlock 31064069 16384 :=
  ⟨entries000474, length000474, checked000474⟩

noncomputable def entries000475 : List DiagonalCertificateEntry :=
  diagonalChunk% "../../certificates/33554432-v1/diagonal-000475.json" 33554432 7782400

theorem length000475 : entries000475.length = 16384 := by decide +kernel
theorem checked000475 : checkDiagonalEntries 31129605 entries000475 = true := by
  decide +kernel

noncomputable def block000475 : CheckedDiagonalBlock 31129605 16384 :=
  ⟨entries000475, length000475, checked000475⟩

noncomputable def entries000476 : List DiagonalCertificateEntry :=
  diagonalChunk% "../../certificates/33554432-v1/diagonal-000476.json" 33554432 7798784

theorem length000476 : entries000476.length = 16384 := by decide +kernel
theorem checked000476 : checkDiagonalEntries 31195141 entries000476 = true := by
  decide +kernel

noncomputable def block000476 : CheckedDiagonalBlock 31195141 16384 :=
  ⟨entries000476, length000476, checked000476⟩

noncomputable def entries000477 : List DiagonalCertificateEntry :=
  diagonalChunk% "../../certificates/33554432-v1/diagonal-000477.json" 33554432 7815168

theorem length000477 : entries000477.length = 16384 := by decide +kernel
theorem checked000477 : checkDiagonalEntries 31260677 entries000477 = true := by
  decide +kernel

noncomputable def block000477 : CheckedDiagonalBlock 31260677 16384 :=
  ⟨entries000477, length000477, checked000477⟩

noncomputable def entries000478 : List DiagonalCertificateEntry :=
  diagonalChunk% "../../certificates/33554432-v1/diagonal-000478.json" 33554432 7831552

theorem length000478 : entries000478.length = 16384 := by decide +kernel
theorem checked000478 : checkDiagonalEntries 31326213 entries000478 = true := by
  decide +kernel

noncomputable def block000478 : CheckedDiagonalBlock 31326213 16384 :=
  ⟨entries000478, length000478, checked000478⟩

noncomputable def entries000479 : List DiagonalCertificateEntry :=
  diagonalChunk% "../../certificates/33554432-v1/diagonal-000479.json" 33554432 7847936

theorem length000479 : entries000479.length = 16384 := by decide +kernel
theorem checked000479 : checkDiagonalEntries 31391749 entries000479 = true := by
  decide +kernel

noncomputable def block000479 : CheckedDiagonalBlock 31391749 16384 :=
  ⟨entries000479, length000479, checked000479⟩

noncomputable def group029 : CheckedDiagonalBlock 30408709 262144 :=
  (((((((((((((((block000464.append block000465).append block000466).append block000467).append block000468).append block000469).append block000470).append block000471).append block000472).append block000473).append block000474).append block000475).append block000476).append block000477).append block000478).append block000479)

end JSP848.FullDiagonal
