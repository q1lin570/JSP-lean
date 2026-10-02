import JSP848.CertificateInput
import JSP848.DiagonalChunks

set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0

namespace JSP848.FullDiagonal

open CertificateInput

noncomputable def entries000000 : List DiagonalCertificateEntry :=
  diagonalChunk% "../../certificates/33554432-v1/diagonal-000000.json" 33554432 0

theorem length000000 : entries000000.length = 16384 := by decide +kernel
theorem checked000000 : checkDiagonalEntries 5 entries000000 = true := by
  decide +kernel

noncomputable def block000000 : CheckedDiagonalBlock 5 16384 :=
  ⟨entries000000, length000000, checked000000⟩

noncomputable def entries000001 : List DiagonalCertificateEntry :=
  diagonalChunk% "../../certificates/33554432-v1/diagonal-000001.json" 33554432 16384

theorem length000001 : entries000001.length = 16384 := by decide +kernel
theorem checked000001 : checkDiagonalEntries 65541 entries000001 = true := by
  decide +kernel

noncomputable def block000001 : CheckedDiagonalBlock 65541 16384 :=
  ⟨entries000001, length000001, checked000001⟩

noncomputable def entries000002 : List DiagonalCertificateEntry :=
  diagonalChunk% "../../certificates/33554432-v1/diagonal-000002.json" 33554432 32768

theorem length000002 : entries000002.length = 16384 := by decide +kernel
theorem checked000002 : checkDiagonalEntries 131077 entries000002 = true := by
  decide +kernel

noncomputable def block000002 : CheckedDiagonalBlock 131077 16384 :=
  ⟨entries000002, length000002, checked000002⟩

noncomputable def entries000003 : List DiagonalCertificateEntry :=
  diagonalChunk% "../../certificates/33554432-v1/diagonal-000003.json" 33554432 49152

theorem length000003 : entries000003.length = 16384 := by decide +kernel
theorem checked000003 : checkDiagonalEntries 196613 entries000003 = true := by
  decide +kernel

noncomputable def block000003 : CheckedDiagonalBlock 196613 16384 :=
  ⟨entries000003, length000003, checked000003⟩

noncomputable def entries000004 : List DiagonalCertificateEntry :=
  diagonalChunk% "../../certificates/33554432-v1/diagonal-000004.json" 33554432 65536

theorem length000004 : entries000004.length = 16384 := by decide +kernel
theorem checked000004 : checkDiagonalEntries 262149 entries000004 = true := by
  decide +kernel

noncomputable def block000004 : CheckedDiagonalBlock 262149 16384 :=
  ⟨entries000004, length000004, checked000004⟩

noncomputable def entries000005 : List DiagonalCertificateEntry :=
  diagonalChunk% "../../certificates/33554432-v1/diagonal-000005.json" 33554432 81920

theorem length000005 : entries000005.length = 16384 := by decide +kernel
theorem checked000005 : checkDiagonalEntries 327685 entries000005 = true := by
  decide +kernel

noncomputable def block000005 : CheckedDiagonalBlock 327685 16384 :=
  ⟨entries000005, length000005, checked000005⟩

noncomputable def entries000006 : List DiagonalCertificateEntry :=
  diagonalChunk% "../../certificates/33554432-v1/diagonal-000006.json" 33554432 98304

theorem length000006 : entries000006.length = 16384 := by decide +kernel
theorem checked000006 : checkDiagonalEntries 393221 entries000006 = true := by
  decide +kernel

noncomputable def block000006 : CheckedDiagonalBlock 393221 16384 :=
  ⟨entries000006, length000006, checked000006⟩

noncomputable def entries000007 : List DiagonalCertificateEntry :=
  diagonalChunk% "../../certificates/33554432-v1/diagonal-000007.json" 33554432 114688

theorem length000007 : entries000007.length = 16384 := by decide +kernel
theorem checked000007 : checkDiagonalEntries 458757 entries000007 = true := by
  decide +kernel

noncomputable def block000007 : CheckedDiagonalBlock 458757 16384 :=
  ⟨entries000007, length000007, checked000007⟩

noncomputable def entries000008 : List DiagonalCertificateEntry :=
  diagonalChunk% "../../certificates/33554432-v1/diagonal-000008.json" 33554432 131072

theorem length000008 : entries000008.length = 16384 := by decide +kernel
theorem checked000008 : checkDiagonalEntries 524293 entries000008 = true := by
  decide +kernel

noncomputable def block000008 : CheckedDiagonalBlock 524293 16384 :=
  ⟨entries000008, length000008, checked000008⟩

noncomputable def entries000009 : List DiagonalCertificateEntry :=
  diagonalChunk% "../../certificates/33554432-v1/diagonal-000009.json" 33554432 147456

theorem length000009 : entries000009.length = 16384 := by decide +kernel
theorem checked000009 : checkDiagonalEntries 589829 entries000009 = true := by
  decide +kernel

noncomputable def block000009 : CheckedDiagonalBlock 589829 16384 :=
  ⟨entries000009, length000009, checked000009⟩

noncomputable def entries000010 : List DiagonalCertificateEntry :=
  diagonalChunk% "../../certificates/33554432-v1/diagonal-000010.json" 33554432 163840

theorem length000010 : entries000010.length = 16384 := by decide +kernel
theorem checked000010 : checkDiagonalEntries 655365 entries000010 = true := by
  decide +kernel

noncomputable def block000010 : CheckedDiagonalBlock 655365 16384 :=
  ⟨entries000010, length000010, checked000010⟩

noncomputable def entries000011 : List DiagonalCertificateEntry :=
  diagonalChunk% "../../certificates/33554432-v1/diagonal-000011.json" 33554432 180224

theorem length000011 : entries000011.length = 16384 := by decide +kernel
theorem checked000011 : checkDiagonalEntries 720901 entries000011 = true := by
  decide +kernel

noncomputable def block000011 : CheckedDiagonalBlock 720901 16384 :=
  ⟨entries000011, length000011, checked000011⟩

noncomputable def entries000012 : List DiagonalCertificateEntry :=
  diagonalChunk% "../../certificates/33554432-v1/diagonal-000012.json" 33554432 196608

theorem length000012 : entries000012.length = 16384 := by decide +kernel
theorem checked000012 : checkDiagonalEntries 786437 entries000012 = true := by
  decide +kernel

noncomputable def block000012 : CheckedDiagonalBlock 786437 16384 :=
  ⟨entries000012, length000012, checked000012⟩

noncomputable def entries000013 : List DiagonalCertificateEntry :=
  diagonalChunk% "../../certificates/33554432-v1/diagonal-000013.json" 33554432 212992

theorem length000013 : entries000013.length = 16384 := by decide +kernel
theorem checked000013 : checkDiagonalEntries 851973 entries000013 = true := by
  decide +kernel

noncomputable def block000013 : CheckedDiagonalBlock 851973 16384 :=
  ⟨entries000013, length000013, checked000013⟩

noncomputable def entries000014 : List DiagonalCertificateEntry :=
  diagonalChunk% "../../certificates/33554432-v1/diagonal-000014.json" 33554432 229376

theorem length000014 : entries000014.length = 16384 := by decide +kernel
theorem checked000014 : checkDiagonalEntries 917509 entries000014 = true := by
  decide +kernel

noncomputable def block000014 : CheckedDiagonalBlock 917509 16384 :=
  ⟨entries000014, length000014, checked000014⟩

noncomputable def entries000015 : List DiagonalCertificateEntry :=
  diagonalChunk% "../../certificates/33554432-v1/diagonal-000015.json" 33554432 245760

theorem length000015 : entries000015.length = 16384 := by decide +kernel
theorem checked000015 : checkDiagonalEntries 983045 entries000015 = true := by
  decide +kernel

noncomputable def block000015 : CheckedDiagonalBlock 983045 16384 :=
  ⟨entries000015, length000015, checked000015⟩

noncomputable def group000 : CheckedDiagonalBlock 5 262144 :=
  (((((((((((((((block000000.append block000001).append block000002).append block000003).append block000004).append block000005).append block000006).append block000007).append block000008).append block000009).append block000010).append block000011).append block000012).append block000013).append block000014).append block000015)

end JSP848.FullDiagonal
