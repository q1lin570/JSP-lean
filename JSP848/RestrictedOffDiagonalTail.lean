import JSP848.CofactorResidues

namespace JSP848

theorem card_restricted_off_diagonal_witnesses {N b c M : Nat}
    (hb : 0 < b) (hc : 0 < c) (hcb : c ∣ b) (W : Finset (Nat × Nat))
    (hW : ∀ w ∈ W, w.1 ≤ N ∧ w.2 ^ 2 ∣ w.1 * b + 1 ∧
      offDiagonalQuotient b w ≤ M) :
    (W.card : Real) ≤ (squareRootMultiplicity b : Real) *
      (cofactorDensity c * (2 * Real.sqrt ((b : Real) * N + 1) * Real.sqrt M / b + M) +
        (inverseSquareResidues c).card * (Real.sqrt ((b : Real) * N + 1) / b + 1)) := by
  classical
  let P := (Finset.Icc 1 M).filter (fun m => m % c ∈ inverseSquareResidues c)
  have hmap : ∀ w ∈ W, offDiagonalQuotient b w ∈ P := by
    intro w hw
    exact Finset.mem_filter.mpr
      ⟨Finset.mem_Icc.mpr ⟨off_diagonal_quotient_pos (hW w hw).2.1, (hW w hw).2.2⟩,
        off_diagonal_quotient_mem_residues hc hcb (hW w hw).2.1⟩
  have hsum : (W.card : Real) ≤ ∑ m ∈ P, (squareRootMultiplicity b : Real) *
      (Real.sqrt (((b : Real) * N + 1) / m) / b + 1) := by
    rw [Finset.card_eq_sum_card_fiberwise (f := offDiagonalQuotient b) (t := P) hmap,
      Nat.cast_sum]
    apply Finset.sum_le_sum
    intro m hm
    apply card_off_diagonal_quotient_fiber hb
      (Finset.mem_Icc.mp (Finset.mem_filter.mp hm).1).1
    intro w hw
    obtain ⟨hw, he⟩ := Finset.mem_filter.mp hw
    refine ⟨(hW w hw).1, ?_⟩
    rw [← he]
    exact (Nat.div_mul_cancel (hW w hw).2.1).symm
  have hX : 0 ≤ (b : Real) * N + 1 := by positivity
  have he : (∑ m ∈ P, (squareRootMultiplicity b : Real) *
      (Real.sqrt (((b : Real) * N + 1) / m) / b + 1)) =
      (squareRootMultiplicity b : Real) *
        (Real.sqrt ((b : Real) * N + 1) / b *
          (∑ m ∈ P, 1 / Real.sqrt (m : Real)) + P.card) := by
    rw [← Finset.mul_sum, Finset.sum_add_distrib, Finset.mul_sum]
    simp only [Finset.sum_const, nsmul_eq_mul, mul_one]
    congr 2
    apply Finset.sum_congr rfl
    intro m hm
    rw [Real.sqrt_div hX]
    ring
  rw [he] at hsum
  have hw := mul_le_mul_of_nonneg_left (inverseSquareResidues_weighted hc M)
    (show 0 ≤ Real.sqrt ((b : Real) * N + 1) / b by positivity)
  have hcount := inverseSquareResidues_count hc M
  have htotal := mul_le_mul_of_nonneg_left (add_le_add hw hcount)
    (Nat.cast_nonneg (squareRootMultiplicity b) : (0 : Real) ≤ _)
  exact hsum.trans (by convert htotal using 1 <;> ring)

noncomputable def restrictedOffDiagonalTailBound (N b c : Nat) (R : Real) : Real :=
  (squareRootMultiplicity b : Real) *
    (cofactorDensity c * (2 * ((b : Real) * N + 1) / ((b : Real) * R) +
      ((b : Real) * N + 1) / R ^ 2) +
        (inverseSquareResidues c).card * (Real.sqrt ((b : Real) * N + 1) / b + 1))

theorem large_restricted_off_diagonal_witness_tail {N b c : Nat}
    (hb : 0 < b) (hc : 0 < c) (hcb : c ∣ b) {R : Real} (hR : 0 < R)
    (W : Finset (Nat × Nat))
    (hW : ∀ w ∈ W, w.1 ≤ N ∧ R < (w.2 : Real) ∧ w.2 ^ 2 ∣ w.1 * b + 1) :
    (W.card : Real) ≤ restrictedOffDiagonalTailBound N b c R := by
  let X : Real := (b : Real) * N + 1
  let M : Nat := ⌊X / R ^ 2⌋₊
  have hX : 0 ≤ X := by dsimp [X]; positivity
  have hM : (M : Real) ≤ X / R ^ 2 := Nat.floor_le (by positivity)
  have hw := card_restricted_off_diagonal_witnesses (M := M) hb hc hcb W (by
    intro w hw
    refine ⟨(hW w hw).1, (hW w hw).2.2, Nat.le_floor ?_⟩
    exact off_diagonal_quotient_le_cutoff (hW w hw).1 hR (hW w hw).2.1.le
      (hW w hw).2.2)
  have hs : Real.sqrt M ≤ Real.sqrt X / R := by
    apply Real.sqrt_le_iff.mpr
    refine ⟨by positivity, ?_⟩
    rw [div_pow, Real.sq_sqrt hX]
    exact hM
  have hb' : (0 : Real) < b := by exact_mod_cast hb
  have hm : 2 * Real.sqrt X * Real.sqrt M / b ≤ 2 * X / ((b : Real) * R) := by
    calc
      _ ≤ 2 * Real.sqrt X * (Real.sqrt X / R) / b := by gcongr
      _ = _ := by field_simp; nlinarith [Real.sq_sqrt hX]
  have hmain := mul_le_mul_of_nonneg_left (add_le_add hm hM) (cofactorDensity_nonneg c)
  exact hw.trans (mul_le_mul_of_nonneg_left (add_le_add hmain le_rfl)
    (Nat.cast_nonneg (squareRootMultiplicity b)))

theorem large_restricted_off_diagonal_tail {N b c : Nat}
    (hb : 0 < b) (hc : 0 < c) (hcb : c ∣ b) {R : Real} (hR : 0 < R)
    (A : Finset Nat) (hA : A ⊆ Finset.Icc 1 N)
    (hw : ∀ a ∈ A, ∃ p : Nat, R < (p : Real) ∧ p ^ 2 ∣ a * b + 1) :
    (A.card : Real) ≤ restrictedOffDiagonalTailBound N b c R := by
  obtain ⟨W, hcard, hW⟩ := exists_witness_finset A _ hw
  rw [← hcard]
  apply large_restricted_off_diagonal_witness_tail hb hc hcb hR W
  intro w hw
  exact ⟨(Finset.mem_Icc.mp (hA (hW w hw).1)).2, (hW w hw).2⟩

end JSP848
