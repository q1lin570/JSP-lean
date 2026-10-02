import JSP848.CertificateInput
import JSP848.DiagonalChunks

set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0

namespace JSP848.FullDiagonal

open CertificateInput

noncomputable def entries000160 : List DiagonalCertificateEntry :=
  diagonalChunk% "../../certificates/33554432-v1/diagonal-000160.json" 33554432 2621440

theorem length000160 : entries000160.length = 16384 := by decide +kernel
theorem checked000160 : checkDiagonalEntries 10485765 entries000160 = true := by
  decide +kernel

noncomputable def block000160 : CheckedDiagonalBlock 10485765 16384 :=
  ⟨entries000160, length000160, checked000160⟩

noncomputable def entries000161 : List DiagonalCertificateEntry :=
  diagonalChunk% "../../certificates/33554432-v1/diagonal-000161.json" 33554432 2637824

theorem length000161 : entries000161.length = 16384 := by decide +kernel
theorem checked000161 : checkDiagonalEntries 10551301 entries000161 = true := by
  decide +kernel

noncomputable def block000161 : CheckedDiagonalBlock 10551301 16384 :=
  ⟨entries000161, length000161, checked000161⟩

noncomputable def entries000162 : List DiagonalCertificateEntry :=
  diagonalChunk% "../../certificates/33554432-v1/diagonal-000162.json" 33554432 2654208

theorem length000162 : entries000162.length = 16384 := by decide +kernel
theorem checked000162 : checkDiagonalEntries 10616837 entries000162 = true := by
  decide +kernel

noncomputable def block000162 : CheckedDiagonalBlock 10616837 16384 :=
  ⟨entries000162, length000162, checked000162⟩

noncomputable def entries000163 : List DiagonalCertificateEntry :=
  diagonalChunk% "../../certificates/33554432-v1/diagonal-000163.json" 33554432 2670592

theorem length000163 : entries000163.length = 16384 := by decide +kernel
theorem checked000163 : checkDiagonalEntries 10682373 entries000163 = true := by
  decide +kernel

noncomputable def block000163 : CheckedDiagonalBlock 10682373 16384 :=
  ⟨entries000163, length000163, checked000163⟩

noncomputable def entries000164 : List DiagonalCertificateEntry :=
  diagonalChunk% "../../certificates/33554432-v1/diagonal-000164.json" 33554432 2686976

theorem length000164 : entries000164.length = 16384 := by decide +kernel
theorem checked000164 : checkDiagonalEntries 10747909 entries000164 = true := by
  decide +kernel

noncomputable def block000164 : CheckedDiagonalBlock 10747909 16384 :=
  ⟨entries000164, length000164, checked000164⟩

noncomputable def entries000165 : List DiagonalCertificateEntry :=
  diagonalChunk% "../../certificates/33554432-v1/diagonal-000165.json" 33554432 2703360

theorem length000165 : entries000165.length = 16384 := by decide +kernel
theorem checked000165 : checkDiagonalEntries 10813445 entries000165 = true := by
  decide +kernel

noncomputable def block000165 : CheckedDiagonalBlock 10813445 16384 :=
  ⟨entries000165, length000165, checked000165⟩

noncomputable def entries000166 : List DiagonalCertificateEntry :=
  diagonalChunk% "../../certificates/33554432-v1/diagonal-000166.json" 33554432 2719744

theorem length000166 : entries000166.length = 16384 := by decide +kernel
theorem checked000166 : checkDiagonalEntries 10878981 entries000166 = true := by
  decide +kernel

noncomputable def block000166 : CheckedDiagonalBlock 10878981 16384 :=
  ⟨entries000166, length000166, checked000166⟩

noncomputable def entries000167 : List DiagonalCertificateEntry :=
  diagonalChunk% "../../certificates/33554432-v1/diagonal-000167.json" 33554432 2736128

theorem length000167 : entries000167.length = 16384 := by decide +kernel
theorem checked000167 : checkDiagonalEntries 10944517 entries000167 = true := by
  decide +kernel

noncomputable def block000167 : CheckedDiagonalBlock 10944517 16384 :=
  ⟨entries000167, length000167, checked000167⟩

noncomputable def entries000168 : List DiagonalCertificateEntry :=
  diagonalChunk% "../../certificates/33554432-v1/diagonal-000168.json" 33554432 2752512

theorem length000168 : entries000168.length = 16384 := by decide +kernel
theorem checked000168 : checkDiagonalEntries 11010053 entries000168 = true := by
  decide +kernel

noncomputable def block000168 : CheckedDiagonalBlock 11010053 16384 :=
  ⟨entries000168, length000168, checked000168⟩

noncomputable def entries000169 : List DiagonalCertificateEntry :=
  diagonalChunk% "../../certificates/33554432-v1/diagonal-000169.json" 33554432 2768896

theorem length000169 : entries000169.length = 16384 := by decide +kernel
theorem checked000169 : checkDiagonalEntries 11075589 entries000169 = true := by
  decide +kernel

noncomputable def block000169 : CheckedDiagonalBlock 11075589 16384 :=
  ⟨entries000169, length000169, checked000169⟩

noncomputable def entries000170 : List DiagonalCertificateEntry :=
  diagonalChunk% "../../certificates/33554432-v1/diagonal-000170.json" 33554432 2785280

theorem length000170 : entries000170.length = 16384 := by decide +kernel
theorem checked000170 : checkDiagonalEntries 11141125 entries000170 = true := by
  decide +kernel

noncomputable def block000170 : CheckedDiagonalBlock 11141125 16384 :=
  ⟨entries000170, length000170, checked000170⟩

noncomputable def entries000171 : List DiagonalCertificateEntry :=
  diagonalChunk% "../../certificates/33554432-v1/diagonal-000171.json" 33554432 2801664

theorem length000171 : entries000171.length = 16384 := by decide +kernel
theorem checked000171 : checkDiagonalEntries 11206661 entries000171 = true := by
  decide +kernel

noncomputable def block000171 : CheckedDiagonalBlock 11206661 16384 :=
  ⟨entries000171, length000171, checked000171⟩

noncomputable def entries000172 : List DiagonalCertificateEntry :=
  diagonalChunk% "../../certificates/33554432-v1/diagonal-000172.json" 33554432 2818048

theorem length000172 : entries000172.length = 16384 := by decide +kernel
theorem checked000172 : checkDiagonalEntries 11272197 entries000172 = true := by
  decide +kernel

noncomputable def block000172 : CheckedDiagonalBlock 11272197 16384 :=
  ⟨entries000172, length000172, checked000172⟩

noncomputable def entries000173 : List DiagonalCertificateEntry :=
  diagonalChunk% "../../certificates/33554432-v1/diagonal-000173.json" 33554432 2834432

theorem length000173 : entries000173.length = 16384 := by decide +kernel
theorem checked000173 : checkDiagonalEntries 11337733 entries000173 = true := by
  decide +kernel

noncomputable def block000173 : CheckedDiagonalBlock 11337733 16384 :=
  ⟨entries000173, length000173, checked000173⟩

noncomputable def entries000174 : List DiagonalCertificateEntry :=
  diagonalChunk% "../../certificates/33554432-v1/diagonal-000174.json" 33554432 2850816

theorem length000174 : entries000174.length = 16384 := by decide +kernel
theorem checked000174 : checkDiagonalEntries 11403269 entries000174 = true := by
  decide +kernel

noncomputable def block000174 : CheckedDiagonalBlock 11403269 16384 :=
  ⟨entries000174, length000174, checked000174⟩

noncomputable def entries000175 : List DiagonalCertificateEntry :=
  diagonalChunk% "../../certificates/33554432-v1/diagonal-000175.json" 33554432 2867200

theorem length000175 : entries000175.length = 16384 := by decide +kernel
theorem checked000175 : checkDiagonalEntries 11468805 entries000175 = true := by
  decide +kernel

noncomputable def block000175 : CheckedDiagonalBlock 11468805 16384 :=
  ⟨entries000175, length000175, checked000175⟩

noncomputable def group010 : CheckedDiagonalBlock 10485765 262144 :=
  (((((((((((((((block000160.append block000161).append block000162).append block000163).append block000164).append block000165).append block000166).append block000167).append block000168).append block000169).append block000170).append block000171).append block000172).append block000173).append block000174).append block000175)

end JSP848.FullDiagonal
