import JSP848.OffDiagonalLarge
import JSP848.OffDiagonalTail
import JSP848.WeightedReciprocalSqrt

namespace JSP848

theorem card_residue_cover_real {q : Nat} (hq : 0 < q) {Y : Real} (hY : 0 ≤ Y)
    (A C : Finset Nat) (hA : ∀ a ∈ A, (a : Real) ≤ Y ∧ a % q ∈ C) :
    (A.card : Real) ≤ (C.card : Real) * (Y / q + 1) := by
  classical
  rw [Finset.card_eq_sum_card_fiberwise (f := fun a => a % q) (t := C)
    (fun a ha => (hA a ha).2), Nat.cast_sum]
  calc
    _ ≤ ∑ r ∈ C, (Y / q + 1) := by
      apply Finset.sum_le_sum
      intro r hr
      apply card_pairwise_modeq_real hq hY
      · intro a ha
        exact (hA a (Finset.mem_filter.mp ha).1).1
      · intro a ha b hb
        exact (Finset.mem_filter.mp ha).2.trans (Finset.mem_filter.mp hb).2.symm
    _ = _ := by simp [nsmul_eq_mul]; ring

def inverseSquareResidues (c : Nat) : Finset Nat :=
  (Finset.range c).filter (fun m => (inverseSquareRoots c m).Nonempty)

noncomputable def cofactorDensity (c : Nat) : Real :=
  (inverseSquareResidues c).card / (c : Real)

theorem cofactorDensity_nonneg (c : Nat) : 0 ≤ cofactorDensity c := by
  unfold cofactorDensity
  positivity

theorem inverseSquareResidues_count {c : Nat} (hc : 0 < c) (N : Nat) :
    (((Finset.Icc 1 N).filter (fun m => m % c ∈ inverseSquareResidues c)).card : Real) ≤
      cofactorDensity c * N + (inverseSquareResidues c).card := by
  have h := card_residue_cover_real hc (Nat.cast_nonneg N)
    ((Finset.Icc 1 N).filter (fun m => m % c ∈ inverseSquareResidues c))
    (inverseSquareResidues c) (by
      intro m hm
      obtain ⟨hm, hr⟩ := Finset.mem_filter.mp hm
      exact ⟨by exact_mod_cast (Finset.mem_Icc.mp hm).2, hr⟩)
  unfold cofactorDensity
  convert h using 1 <;> ring

theorem inverseSquareResidues_weighted {c : Nat} (hc : 0 < c) (M : Nat) :
    (∑ m ∈ (Finset.Icc 1 M).filter (fun m => m % c ∈ inverseSquareResidues c),
      1 / Real.sqrt (m : Real)) ≤
      2 * cofactorDensity c * Real.sqrt M + (inverseSquareResidues c).card :=
  restricted_reciprocal_sqrt_Icc _ (cofactorDensity_nonneg c)
    (inverseSquareResidues_count hc) M

theorem off_diagonal_quotient_mem_residues {a b p c : Nat} (hc : 0 < c)
    (hcb : c ∣ b) (hd : p ^ 2 ∣ a * b + 1) :
    offDiagonalQuotient b (a, p) % c ∈ inverseSquareResidues c := by
  have he : Nat.ModEq b (offDiagonalQuotient b (a, p) * p ^ 2) 1 := by
    change ((a * b + 1) / p ^ 2 * p ^ 2) % b = 1 % b
    rw [Nat.div_mul_cancel hd]
    simp
  have hm := he.of_dvd hcb
  refine Finset.mem_filter.mpr ⟨Finset.mem_range.mpr (Nat.mod_lt _ hc), ?_⟩
  refine ⟨p % c, Finset.mem_filter.mpr ⟨Finset.mem_range.mpr (Nat.mod_lt _ hc), ?_⟩⟩
  simpa only [Nat.ModEq, Nat.mul_mod, Nat.pow_mod, Nat.mod_mod] using hm

namespace CofactorResiduesTests

theorem modulus_one : inverseSquareResidues 1 = {0} := by decide
theorem modulus_eight : inverseSquareResidues 8 = {1} := by decide
theorem modulus_fifteen : inverseSquareResidues 15 = {1, 4} := by decide
theorem density_fifteen : cofactorDensity 15 = (2 / 15 : Real) := by
  rw [cofactorDensity, modulus_fifteen]
  norm_num
theorem actual_cofactor : offDiagonalQuotient 6 (4, 5) % 3 ∈ inverseSquareResidues 3 :=
  off_diagonal_quotient_mem_residues (by decide) (by decide) (by decide)

end CofactorResiduesTests

end JSP848
