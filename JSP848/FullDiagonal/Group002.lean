import JSP848.CertificateInput
import JSP848.DiagonalChunks

set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0

namespace JSP848.FullDiagonal

open CertificateInput

noncomputable def entries000032 : List DiagonalCertificateEntry :=
  diagonalChunk% "../../certificates/33554432-v1/diagonal-000032.json" 33554432 524288

theorem length000032 : entries000032.length = 16384 := by decide +kernel
theorem checked000032 : checkDiagonalEntries 2097157 entries000032 = true := by
  decide +kernel

noncomputable def block000032 : CheckedDiagonalBlock 2097157 16384 :=
  ⟨entries000032, length000032, checked000032⟩

noncomputable def entries000033 : List DiagonalCertificateEntry :=
  diagonalChunk% "../../certificates/33554432-v1/diagonal-000033.json" 33554432 540672

theorem length000033 : entries000033.length = 16384 := by decide +kernel
theorem checked000033 : checkDiagonalEntries 2162693 entries000033 = true := by
  decide +kernel

noncomputable def block000033 : CheckedDiagonalBlock 2162693 16384 :=
  ⟨entries000033, length000033, checked000033⟩

noncomputable def entries000034 : List DiagonalCertificateEntry :=
  diagonalChunk% "../../certificates/33554432-v1/diagonal-000034.json" 33554432 557056

theorem length000034 : entries000034.length = 16384 := by decide +kernel
theorem checked000034 : checkDiagonalEntries 2228229 entries000034 = true := by
  decide +kernel

noncomputable def block000034 : CheckedDiagonalBlock 2228229 16384 :=
  ⟨entries000034, length000034, checked000034⟩

noncomputable def entries000035 : List DiagonalCertificateEntry :=
  diagonalChunk% "../../certificates/33554432-v1/diagonal-000035.json" 33554432 573440

theorem length000035 : entries000035.length = 16384 := by decide +kernel
theorem checked000035 : checkDiagonalEntries 2293765 entries000035 = true := by
  decide +kernel

noncomputable def block000035 : CheckedDiagonalBlock 2293765 16384 :=
  ⟨entries000035, length000035, checked000035⟩

noncomputable def entries000036 : List DiagonalCertificateEntry :=
  diagonalChunk% "../../certificates/33554432-v1/diagonal-000036.json" 33554432 589824

theorem length000036 : entries000036.length = 16384 := by decide +kernel
theorem checked000036 : checkDiagonalEntries 2359301 entries000036 = true := by
  decide +kernel

noncomputable def block000036 : CheckedDiagonalBlock 2359301 16384 :=
  ⟨entries000036, length000036, checked000036⟩

noncomputable def entries000037 : List DiagonalCertificateEntry :=
  diagonalChunk% "../../certificates/33554432-v1/diagonal-000037.json" 33554432 606208

theorem length000037 : entries000037.length = 16384 := by decide +kernel
theorem checked000037 : checkDiagonalEntries 2424837 entries000037 = true := by
  decide +kernel

noncomputable def block000037 : CheckedDiagonalBlock 2424837 16384 :=
  ⟨entries000037, length000037, checked000037⟩

noncomputable def entries000038 : List DiagonalCertificateEntry :=
  diagonalChunk% "../../certificates/33554432-v1/diagonal-000038.json" 33554432 622592

theorem length000038 : entries000038.length = 16384 := by decide +kernel
theorem checked000038 : checkDiagonalEntries 2490373 entries000038 = true := by
  decide +kernel

noncomputable def block000038 : CheckedDiagonalBlock 2490373 16384 :=
  ⟨entries000038, length000038, checked000038⟩

noncomputable def entries000039 : List DiagonalCertificateEntry :=
  diagonalChunk% "../../certificates/33554432-v1/diagonal-000039.json" 33554432 638976

theorem length000039 : entries000039.length = 16384 := by decide +kernel
theorem checked000039 : checkDiagonalEntries 2555909 entries000039 = true := by
  decide +kernel

noncomputable def block000039 : CheckedDiagonalBlock 2555909 16384 :=
  ⟨entries000039, length000039, checked000039⟩

noncomputable def entries000040 : List DiagonalCertificateEntry :=
  diagonalChunk% "../../certificates/33554432-v1/diagonal-000040.json" 33554432 655360

theorem length000040 : entries000040.length = 16384 := by decide +kernel
theorem checked000040 : checkDiagonalEntries 2621445 entries000040 = true := by
  decide +kernel

noncomputable def block000040 : CheckedDiagonalBlock 2621445 16384 :=
  ⟨entries000040, length000040, checked000040⟩

noncomputable def entries000041 : List DiagonalCertificateEntry :=
  diagonalChunk% "../../certificates/33554432-v1/diagonal-000041.json" 33554432 671744

theorem length000041 : entries000041.length = 16384 := by decide +kernel
theorem checked000041 : checkDiagonalEntries 2686981 entries000041 = true := by
  decide +kernel

noncomputable def block000041 : CheckedDiagonalBlock 2686981 16384 :=
  ⟨entries000041, length000041, checked000041⟩

noncomputable def entries000042 : List DiagonalCertificateEntry :=
  diagonalChunk% "../../certificates/33554432-v1/diagonal-000042.json" 33554432 688128

theorem length000042 : entries000042.length = 16384 := by decide +kernel
theorem checked000042 : checkDiagonalEntries 2752517 entries000042 = true := by
  decide +kernel

noncomputable def block000042 : CheckedDiagonalBlock 2752517 16384 :=
  ⟨entries000042, length000042, checked000042⟩

noncomputable def entries000043 : List DiagonalCertificateEntry :=
  diagonalChunk% "../../certificates/33554432-v1/diagonal-000043.json" 33554432 704512

theorem length000043 : entries000043.length = 16384 := by decide +kernel
theorem checked000043 : checkDiagonalEntries 2818053 entries000043 = true := by
  decide +kernel

noncomputable def block000043 : CheckedDiagonalBlock 2818053 16384 :=
  ⟨entries000043, length000043, checked000043⟩

noncomputable def entries000044 : List DiagonalCertificateEntry :=
  diagonalChunk% "../../certificates/33554432-v1/diagonal-000044.json" 33554432 720896

theorem length000044 : entries000044.length = 16384 := by decide +kernel
theorem checked000044 : checkDiagonalEntries 2883589 entries000044 = true := by
  decide +kernel

noncomputable def block000044 : CheckedDiagonalBlock 2883589 16384 :=
  ⟨entries000044, length000044, checked000044⟩

noncomputable def entries000045 : List DiagonalCertificateEntry :=
  diagonalChunk% "../../certificates/33554432-v1/diagonal-000045.json" 33554432 737280

theorem length000045 : entries000045.length = 16384 := by decide +kernel
theorem checked000045 : checkDiagonalEntries 2949125 entries000045 = true := by
  decide +kernel

noncomputable def block000045 : CheckedDiagonalBlock 2949125 16384 :=
  ⟨entries000045, length000045, checked000045⟩

noncomputable def entries000046 : List DiagonalCertificateEntry :=
  diagonalChunk% "../../certificates/33554432-v1/diagonal-000046.json" 33554432 753664

theorem length000046 : entries000046.length = 16384 := by decide +kernel
theorem checked000046 : checkDiagonalEntries 3014661 entries000046 = true := by
  decide +kernel

noncomputable def block000046 : CheckedDiagonalBlock 3014661 16384 :=
  ⟨entries000046, length000046, checked000046⟩

noncomputable def entries000047 : List DiagonalCertificateEntry :=
  diagonalChunk% "../../certificates/33554432-v1/diagonal-000047.json" 33554432 770048

theorem length000047 : entries000047.length = 16384 := by decide +kernel
theorem checked000047 : checkDiagonalEntries 3080197 entries000047 = true := by
  decide +kernel

noncomputable def block000047 : CheckedDiagonalBlock 3080197 16384 :=
  ⟨entries000047, length000047, checked000047⟩

noncomputable def group002 : CheckedDiagonalBlock 2097157 262144 :=
  (((((((((((((((block000032.append block000033).append block000034).append block000035).append block000036).append block000037).append block000038).append block000039).append block000040).append block000041).append block000042).append block000043).append block000044).append block000045).append block000046).append block000047)

end JSP848.FullDiagonal
