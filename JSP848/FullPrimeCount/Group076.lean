import JSP848.PrimeCountInput

set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0

namespace JSP848.FullPrimeCount

open PrimeCountInput

noncomputable def hints001216 : List Nat :=
  primeHintChunk% "../../certificates/prime-count33554432-v1/counts-001216.json" 33554432 15810559 31621121 2

theorem length001216 : hints001216.length = 16384 := by decide +kernel
theorem checked001216 : checkPrimeHints 31621121 2 hints001216 = true := by decide +kernel
theorem counted001216 : hints001216.count 0 <= 1887 := by decide +kernel

noncomputable def block001216 : CheckedPrimeCountBlock 31621121 2 16384 1887 :=
  ⟨hints001216, length001216, checked001216, counted001216⟩

noncomputable def localPrefix001216 : CheckedPrimeCountBlock 31621121 2 16384 1887 :=
  block001216

noncomputable def hints001217 : List Nat :=
  primeHintChunk% "../../certificates/prime-count33554432-v1/counts-001217.json" 33554432 15826943 31653889 2

theorem length001217 : hints001217.length = 16384 := by decide +kernel
theorem checked001217 : checkPrimeHints 31653889 2 hints001217 = true := by decide +kernel
theorem counted001217 : hints001217.count 0 <= 1908 := by decide +kernel

noncomputable def block001217 : CheckedPrimeCountBlock 31653889 2 16384 1908 :=
  ⟨hints001217, length001217, checked001217, counted001217⟩

noncomputable def localPrefix001217 : CheckedPrimeCountBlock 31621121 2 32768 3795 :=
  localPrefix001216.append block001217

noncomputable def hints001218 : List Nat :=
  primeHintChunk% "../../certificates/prime-count33554432-v1/counts-001218.json" 33554432 15843327 31686657 2

theorem length001218 : hints001218.length = 16384 := by decide +kernel
theorem checked001218 : checkPrimeHints 31686657 2 hints001218 = true := by decide +kernel
theorem counted001218 : hints001218.count 0 <= 1887 := by decide +kernel

noncomputable def block001218 : CheckedPrimeCountBlock 31686657 2 16384 1887 :=
  ⟨hints001218, length001218, checked001218, counted001218⟩

noncomputable def localPrefix001218 : CheckedPrimeCountBlock 31621121 2 49152 5682 :=
  localPrefix001217.append block001218

noncomputable def hints001219 : List Nat :=
  primeHintChunk% "../../certificates/prime-count33554432-v1/counts-001219.json" 33554432 15859711 31719425 2

theorem length001219 : hints001219.length = 16384 := by decide +kernel
theorem checked001219 : checkPrimeHints 31719425 2 hints001219 = true := by decide +kernel
theorem counted001219 : hints001219.count 0 <= 1888 := by decide +kernel

noncomputable def block001219 : CheckedPrimeCountBlock 31719425 2 16384 1888 :=
  ⟨hints001219, length001219, checked001219, counted001219⟩

noncomputable def localPrefix001219 : CheckedPrimeCountBlock 31621121 2 65536 7570 :=
  localPrefix001218.append block001219

noncomputable def hints001220 : List Nat :=
  primeHintChunk% "../../certificates/prime-count33554432-v1/counts-001220.json" 33554432 15876095 31752193 2

theorem length001220 : hints001220.length = 16384 := by decide +kernel
theorem checked001220 : checkPrimeHints 31752193 2 hints001220 = true := by decide +kernel
theorem counted001220 : hints001220.count 0 <= 1898 := by decide +kernel

noncomputable def block001220 : CheckedPrimeCountBlock 31752193 2 16384 1898 :=
  ⟨hints001220, length001220, checked001220, counted001220⟩

noncomputable def localPrefix001220 : CheckedPrimeCountBlock 31621121 2 81920 9468 :=
  localPrefix001219.append block001220

noncomputable def hints001221 : List Nat :=
  primeHintChunk% "../../certificates/prime-count33554432-v1/counts-001221.json" 33554432 15892479 31784961 2

theorem length001221 : hints001221.length = 16384 := by decide +kernel
theorem checked001221 : checkPrimeHints 31784961 2 hints001221 = true := by decide +kernel
theorem counted001221 : hints001221.count 0 <= 1908 := by decide +kernel

noncomputable def block001221 : CheckedPrimeCountBlock 31784961 2 16384 1908 :=
  ⟨hints001221, length001221, checked001221, counted001221⟩

noncomputable def localPrefix001221 : CheckedPrimeCountBlock 31621121 2 98304 11376 :=
  localPrefix001220.append block001221

noncomputable def hints001222 : List Nat :=
  primeHintChunk% "../../certificates/prime-count33554432-v1/counts-001222.json" 33554432 15908863 31817729 2

theorem length001222 : hints001222.length = 16384 := by decide +kernel
theorem checked001222 : checkPrimeHints 31817729 2 hints001222 = true := by decide +kernel
theorem counted001222 : hints001222.count 0 <= 1899 := by decide +kernel

noncomputable def block001222 : CheckedPrimeCountBlock 31817729 2 16384 1899 :=
  ⟨hints001222, length001222, checked001222, counted001222⟩

noncomputable def localPrefix001222 : CheckedPrimeCountBlock 31621121 2 114688 13275 :=
  localPrefix001221.append block001222

noncomputable def hints001223 : List Nat :=
  primeHintChunk% "../../certificates/prime-count33554432-v1/counts-001223.json" 33554432 15925247 31850497 2

theorem length001223 : hints001223.length = 16384 := by decide +kernel
theorem checked001223 : checkPrimeHints 31850497 2 hints001223 = true := by decide +kernel
theorem counted001223 : hints001223.count 0 <= 1938 := by decide +kernel

noncomputable def block001223 : CheckedPrimeCountBlock 31850497 2 16384 1938 :=
  ⟨hints001223, length001223, checked001223, counted001223⟩

noncomputable def localPrefix001223 : CheckedPrimeCountBlock 31621121 2 131072 15213 :=
  localPrefix001222.append block001223

noncomputable def hints001224 : List Nat :=
  primeHintChunk% "../../certificates/prime-count33554432-v1/counts-001224.json" 33554432 15941631 31883265 2

theorem length001224 : hints001224.length = 16384 := by decide +kernel
theorem checked001224 : checkPrimeHints 31883265 2 hints001224 = true := by decide +kernel
theorem counted001224 : hints001224.count 0 <= 1865 := by decide +kernel

noncomputable def block001224 : CheckedPrimeCountBlock 31883265 2 16384 1865 :=
  ⟨hints001224, length001224, checked001224, counted001224⟩

noncomputable def localPrefix001224 : CheckedPrimeCountBlock 31621121 2 147456 17078 :=
  localPrefix001223.append block001224

noncomputable def hints001225 : List Nat :=
  primeHintChunk% "../../certificates/prime-count33554432-v1/counts-001225.json" 33554432 15958015 31916033 2

theorem length001225 : hints001225.length = 16384 := by decide +kernel
theorem checked001225 : checkPrimeHints 31916033 2 hints001225 = true := by decide +kernel
theorem counted001225 : hints001225.count 0 <= 1890 := by decide +kernel

noncomputable def block001225 : CheckedPrimeCountBlock 31916033 2 16384 1890 :=
  ⟨hints001225, length001225, checked001225, counted001225⟩

noncomputable def localPrefix001225 : CheckedPrimeCountBlock 31621121 2 163840 18968 :=
  localPrefix001224.append block001225

noncomputable def hints001226 : List Nat :=
  primeHintChunk% "../../certificates/prime-count33554432-v1/counts-001226.json" 33554432 15974399 31948801 2

theorem length001226 : hints001226.length = 16384 := by decide +kernel
theorem checked001226 : checkPrimeHints 31948801 2 hints001226 = true := by decide +kernel
theorem counted001226 : hints001226.count 0 <= 1912 := by decide +kernel

noncomputable def block001226 : CheckedPrimeCountBlock 31948801 2 16384 1912 :=
  ⟨hints001226, length001226, checked001226, counted001226⟩

noncomputable def localPrefix001226 : CheckedPrimeCountBlock 31621121 2 180224 20880 :=
  localPrefix001225.append block001226

noncomputable def hints001227 : List Nat :=
  primeHintChunk% "../../certificates/prime-count33554432-v1/counts-001227.json" 33554432 15990783 31981569 2

theorem length001227 : hints001227.length = 16384 := by decide +kernel
theorem checked001227 : checkPrimeHints 31981569 2 hints001227 = true := by decide +kernel
theorem counted001227 : hints001227.count 0 <= 1902 := by decide +kernel

noncomputable def block001227 : CheckedPrimeCountBlock 31981569 2 16384 1902 :=
  ⟨hints001227, length001227, checked001227, counted001227⟩

noncomputable def localPrefix001227 : CheckedPrimeCountBlock 31621121 2 196608 22782 :=
  localPrefix001226.append block001227

noncomputable def hints001228 : List Nat :=
  primeHintChunk% "../../certificates/prime-count33554432-v1/counts-001228.json" 33554432 16007167 32014337 2

theorem length001228 : hints001228.length = 16384 := by decide +kernel
theorem checked001228 : checkPrimeHints 32014337 2 hints001228 = true := by decide +kernel
theorem counted001228 : hints001228.count 0 <= 1859 := by decide +kernel

noncomputable def block001228 : CheckedPrimeCountBlock 32014337 2 16384 1859 :=
  ⟨hints001228, length001228, checked001228, counted001228⟩

noncomputable def localPrefix001228 : CheckedPrimeCountBlock 31621121 2 212992 24641 :=
  localPrefix001227.append block001228

noncomputable def hints001229 : List Nat :=
  primeHintChunk% "../../certificates/prime-count33554432-v1/counts-001229.json" 33554432 16023551 32047105 2

theorem length001229 : hints001229.length = 16384 := by decide +kernel
theorem checked001229 : checkPrimeHints 32047105 2 hints001229 = true := by decide +kernel
theorem counted001229 : hints001229.count 0 <= 1907 := by decide +kernel

noncomputable def block001229 : CheckedPrimeCountBlock 32047105 2 16384 1907 :=
  ⟨hints001229, length001229, checked001229, counted001229⟩

noncomputable def localPrefix001229 : CheckedPrimeCountBlock 31621121 2 229376 26548 :=
  localPrefix001228.append block001229

noncomputable def hints001230 : List Nat :=
  primeHintChunk% "../../certificates/prime-count33554432-v1/counts-001230.json" 33554432 16039935 32079873 2

theorem length001230 : hints001230.length = 16384 := by decide +kernel
theorem checked001230 : checkPrimeHints 32079873 2 hints001230 = true := by decide +kernel
theorem counted001230 : hints001230.count 0 <= 1936 := by decide +kernel

noncomputable def block001230 : CheckedPrimeCountBlock 32079873 2 16384 1936 :=
  ⟨hints001230, length001230, checked001230, counted001230⟩

noncomputable def localPrefix001230 : CheckedPrimeCountBlock 31621121 2 245760 28484 :=
  localPrefix001229.append block001230

noncomputable def hints001231 : List Nat :=
  primeHintChunk% "../../certificates/prime-count33554432-v1/counts-001231.json" 33554432 16056319 32112641 2

theorem length001231 : hints001231.length = 16384 := by decide +kernel
theorem checked001231 : checkPrimeHints 32112641 2 hints001231 = true := by decide +kernel
theorem counted001231 : hints001231.count 0 <= 1889 := by decide +kernel

noncomputable def block001231 : CheckedPrimeCountBlock 32112641 2 16384 1889 :=
  ⟨hints001231, length001231, checked001231, counted001231⟩

noncomputable def localPrefix001231 : CheckedPrimeCountBlock 31621121 2 262144 30373 :=
  localPrefix001230.append block001231

end JSP848.FullPrimeCount
