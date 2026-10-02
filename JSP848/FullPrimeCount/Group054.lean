import JSP848.PrimeCountInput

set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0

namespace JSP848.FullPrimeCount

open PrimeCountInput

noncomputable def hints000864 : List Nat :=
  primeHintChunk% "../../certificates/prime-count33554432-v1/counts-000864.json" 33554432 10043391 20086785 2

theorem length000864 : hints000864.length = 16384 := by decide +kernel
theorem checked000864 : checkPrimeHints 20086785 2 hints000864 = true := by decide +kernel
theorem counted000864 : hints000864.count 0 <= 1938 := by decide +kernel

noncomputable def block000864 : CheckedPrimeCountBlock 20086785 2 16384 1938 :=
  ⟨hints000864, length000864, checked000864, counted000864⟩

noncomputable def localPrefix000864 : CheckedPrimeCountBlock 20086785 2 16384 1938 :=
  block000864

noncomputable def hints000865 : List Nat :=
  primeHintChunk% "../../certificates/prime-count33554432-v1/counts-000865.json" 33554432 10059775 20119553 2

theorem length000865 : hints000865.length = 16384 := by decide +kernel
theorem checked000865 : checkPrimeHints 20119553 2 hints000865 = true := by decide +kernel
theorem counted000865 : hints000865.count 0 <= 1930 := by decide +kernel

noncomputable def block000865 : CheckedPrimeCountBlock 20119553 2 16384 1930 :=
  ⟨hints000865, length000865, checked000865, counted000865⟩

noncomputable def localPrefix000865 : CheckedPrimeCountBlock 20086785 2 32768 3868 :=
  localPrefix000864.append block000865

noncomputable def hints000866 : List Nat :=
  primeHintChunk% "../../certificates/prime-count33554432-v1/counts-000866.json" 33554432 10076159 20152321 2

theorem length000866 : hints000866.length = 16384 := by decide +kernel
theorem checked000866 : checkPrimeHints 20152321 2 hints000866 = true := by decide +kernel
theorem counted000866 : hints000866.count 0 <= 1988 := by decide +kernel

noncomputable def block000866 : CheckedPrimeCountBlock 20152321 2 16384 1988 :=
  ⟨hints000866, length000866, checked000866, counted000866⟩

noncomputable def localPrefix000866 : CheckedPrimeCountBlock 20086785 2 49152 5856 :=
  localPrefix000865.append block000866

noncomputable def hints000867 : List Nat :=
  primeHintChunk% "../../certificates/prime-count33554432-v1/counts-000867.json" 33554432 10092543 20185089 2

theorem length000867 : hints000867.length = 16384 := by decide +kernel
theorem checked000867 : checkPrimeHints 20185089 2 hints000867 = true := by decide +kernel
theorem counted000867 : hints000867.count 0 <= 1886 := by decide +kernel

noncomputable def block000867 : CheckedPrimeCountBlock 20185089 2 16384 1886 :=
  ⟨hints000867, length000867, checked000867, counted000867⟩

noncomputable def localPrefix000867 : CheckedPrimeCountBlock 20086785 2 65536 7742 :=
  localPrefix000866.append block000867

noncomputable def hints000868 : List Nat :=
  primeHintChunk% "../../certificates/prime-count33554432-v1/counts-000868.json" 33554432 10108927 20217857 2

theorem length000868 : hints000868.length = 16384 := by decide +kernel
theorem checked000868 : checkPrimeHints 20217857 2 hints000868 = true := by decide +kernel
theorem counted000868 : hints000868.count 0 <= 1963 := by decide +kernel

noncomputable def block000868 : CheckedPrimeCountBlock 20217857 2 16384 1963 :=
  ⟨hints000868, length000868, checked000868, counted000868⟩

noncomputable def localPrefix000868 : CheckedPrimeCountBlock 20086785 2 81920 9705 :=
  localPrefix000867.append block000868

noncomputable def hints000869 : List Nat :=
  primeHintChunk% "../../certificates/prime-count33554432-v1/counts-000869.json" 33554432 10125311 20250625 2

theorem length000869 : hints000869.length = 16384 := by decide +kernel
theorem checked000869 : checkPrimeHints 20250625 2 hints000869 = true := by decide +kernel
theorem counted000869 : hints000869.count 0 <= 1944 := by decide +kernel

noncomputable def block000869 : CheckedPrimeCountBlock 20250625 2 16384 1944 :=
  ⟨hints000869, length000869, checked000869, counted000869⟩

noncomputable def localPrefix000869 : CheckedPrimeCountBlock 20086785 2 98304 11649 :=
  localPrefix000868.append block000869

noncomputable def hints000870 : List Nat :=
  primeHintChunk% "../../certificates/prime-count33554432-v1/counts-000870.json" 33554432 10141695 20283393 2

theorem length000870 : hints000870.length = 16384 := by decide +kernel
theorem checked000870 : checkPrimeHints 20283393 2 hints000870 = true := by decide +kernel
theorem counted000870 : hints000870.count 0 <= 1939 := by decide +kernel

noncomputable def block000870 : CheckedPrimeCountBlock 20283393 2 16384 1939 :=
  ⟨hints000870, length000870, checked000870, counted000870⟩

noncomputable def localPrefix000870 : CheckedPrimeCountBlock 20086785 2 114688 13588 :=
  localPrefix000869.append block000870

noncomputable def hints000871 : List Nat :=
  primeHintChunk% "../../certificates/prime-count33554432-v1/counts-000871.json" 33554432 10158079 20316161 2

theorem length000871 : hints000871.length = 16384 := by decide +kernel
theorem checked000871 : checkPrimeHints 20316161 2 hints000871 = true := by decide +kernel
theorem counted000871 : hints000871.count 0 <= 1925 := by decide +kernel

noncomputable def block000871 : CheckedPrimeCountBlock 20316161 2 16384 1925 :=
  ⟨hints000871, length000871, checked000871, counted000871⟩

noncomputable def localPrefix000871 : CheckedPrimeCountBlock 20086785 2 131072 15513 :=
  localPrefix000870.append block000871

noncomputable def hints000872 : List Nat :=
  primeHintChunk% "../../certificates/prime-count33554432-v1/counts-000872.json" 33554432 10174463 20348929 2

theorem length000872 : hints000872.length = 16384 := by decide +kernel
theorem checked000872 : checkPrimeHints 20348929 2 hints000872 = true := by decide +kernel
theorem counted000872 : hints000872.count 0 <= 1970 := by decide +kernel

noncomputable def block000872 : CheckedPrimeCountBlock 20348929 2 16384 1970 :=
  ⟨hints000872, length000872, checked000872, counted000872⟩

noncomputable def localPrefix000872 : CheckedPrimeCountBlock 20086785 2 147456 17483 :=
  localPrefix000871.append block000872

noncomputable def hints000873 : List Nat :=
  primeHintChunk% "../../certificates/prime-count33554432-v1/counts-000873.json" 33554432 10190847 20381697 2

theorem length000873 : hints000873.length = 16384 := by decide +kernel
theorem checked000873 : checkPrimeHints 20381697 2 hints000873 = true := by decide +kernel
theorem counted000873 : hints000873.count 0 <= 1904 := by decide +kernel

noncomputable def block000873 : CheckedPrimeCountBlock 20381697 2 16384 1904 :=
  ⟨hints000873, length000873, checked000873, counted000873⟩

noncomputable def localPrefix000873 : CheckedPrimeCountBlock 20086785 2 163840 19387 :=
  localPrefix000872.append block000873

noncomputable def hints000874 : List Nat :=
  primeHintChunk% "../../certificates/prime-count33554432-v1/counts-000874.json" 33554432 10207231 20414465 2

theorem length000874 : hints000874.length = 16384 := by decide +kernel
theorem checked000874 : checkPrimeHints 20414465 2 hints000874 = true := by decide +kernel
theorem counted000874 : hints000874.count 0 <= 1924 := by decide +kernel

noncomputable def block000874 : CheckedPrimeCountBlock 20414465 2 16384 1924 :=
  ⟨hints000874, length000874, checked000874, counted000874⟩

noncomputable def localPrefix000874 : CheckedPrimeCountBlock 20086785 2 180224 21311 :=
  localPrefix000873.append block000874

noncomputable def hints000875 : List Nat :=
  primeHintChunk% "../../certificates/prime-count33554432-v1/counts-000875.json" 33554432 10223615 20447233 2

theorem length000875 : hints000875.length = 16384 := by decide +kernel
theorem checked000875 : checkPrimeHints 20447233 2 hints000875 = true := by decide +kernel
theorem counted000875 : hints000875.count 0 <= 1963 := by decide +kernel

noncomputable def block000875 : CheckedPrimeCountBlock 20447233 2 16384 1963 :=
  ⟨hints000875, length000875, checked000875, counted000875⟩

noncomputable def localPrefix000875 : CheckedPrimeCountBlock 20086785 2 196608 23274 :=
  localPrefix000874.append block000875

noncomputable def hints000876 : List Nat :=
  primeHintChunk% "../../certificates/prime-count33554432-v1/counts-000876.json" 33554432 10239999 20480001 2

theorem length000876 : hints000876.length = 16384 := by decide +kernel
theorem checked000876 : checkPrimeHints 20480001 2 hints000876 = true := by decide +kernel
theorem counted000876 : hints000876.count 0 <= 1938 := by decide +kernel

noncomputable def block000876 : CheckedPrimeCountBlock 20480001 2 16384 1938 :=
  ⟨hints000876, length000876, checked000876, counted000876⟩

noncomputable def localPrefix000876 : CheckedPrimeCountBlock 20086785 2 212992 25212 :=
  localPrefix000875.append block000876

noncomputable def hints000877 : List Nat :=
  primeHintChunk% "../../certificates/prime-count33554432-v1/counts-000877.json" 33554432 10256383 20512769 2

theorem length000877 : hints000877.length = 16384 := by decide +kernel
theorem checked000877 : checkPrimeHints 20512769 2 hints000877 = true := by decide +kernel
theorem counted000877 : hints000877.count 0 <= 1949 := by decide +kernel

noncomputable def block000877 : CheckedPrimeCountBlock 20512769 2 16384 1949 :=
  ⟨hints000877, length000877, checked000877, counted000877⟩

noncomputable def localPrefix000877 : CheckedPrimeCountBlock 20086785 2 229376 27161 :=
  localPrefix000876.append block000877

noncomputable def hints000878 : List Nat :=
  primeHintChunk% "../../certificates/prime-count33554432-v1/counts-000878.json" 33554432 10272767 20545537 2

theorem length000878 : hints000878.length = 16384 := by decide +kernel
theorem checked000878 : checkPrimeHints 20545537 2 hints000878 = true := by decide +kernel
theorem counted000878 : hints000878.count 0 <= 1961 := by decide +kernel

noncomputable def block000878 : CheckedPrimeCountBlock 20545537 2 16384 1961 :=
  ⟨hints000878, length000878, checked000878, counted000878⟩

noncomputable def localPrefix000878 : CheckedPrimeCountBlock 20086785 2 245760 29122 :=
  localPrefix000877.append block000878

noncomputable def hints000879 : List Nat :=
  primeHintChunk% "../../certificates/prime-count33554432-v1/counts-000879.json" 33554432 10289151 20578305 2

theorem length000879 : hints000879.length = 16384 := by decide +kernel
theorem checked000879 : checkPrimeHints 20578305 2 hints000879 = true := by decide +kernel
theorem counted000879 : hints000879.count 0 <= 1934 := by decide +kernel

noncomputable def block000879 : CheckedPrimeCountBlock 20578305 2 16384 1934 :=
  ⟨hints000879, length000879, checked000879, counted000879⟩

noncomputable def localPrefix000879 : CheckedPrimeCountBlock 20086785 2 262144 31056 :=
  localPrefix000878.append block000879

end JSP848.FullPrimeCount
