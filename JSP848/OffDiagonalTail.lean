import JSP848.OffDiagonalLarge

namespace JSP848

def offDiagonalQuotient (b : Nat) (w : Nat × Nat) : Nat :=
  (w.1 * b + 1) / w.2 ^ 2

theorem off_diagonal_quotient_pos {a b p : Nat} (hd : p ^ 2 ∣ a * b + 1) :
    0 < offDiagonalQuotient b (a, p) := by
  have he := Nat.div_mul_cancel hd
  change 0 < (a * b + 1) / p ^ 2
  by_contra hn
  have hz : (a * b + 1) / p ^ 2 = 0 := Nat.eq_zero_of_not_pos hn
  rw [hz, zero_mul] at he
  omega

theorem off_diagonal_quotient_le_cutoff {a b p N : Nat} {R : Real}
    (ha : a ≤ N) (hR : 0 < R) (hp : R ≤ (p : Real)) (hd : p ^ 2 ∣ a * b + 1) :
    (offDiagonalQuotient b (a, p) : Real) ≤ ((b : Real) * N + 1) / R ^ 2 := by
  have he : (offDiagonalQuotient b (a, p) : Real) * (p : Real) ^ 2 =
      (a : Real) * b + 1 := by
    exact_mod_cast Nat.div_mul_cancel hd
  have hsq : R ^ 2 ≤ (p : Real) ^ 2 := (sq_le_sq₀ hR.le (Nat.cast_nonneg _)).mpr hp
  have hm := mul_le_mul_of_nonneg_left hsq
    (Nat.cast_nonneg (offDiagonalQuotient b (a, p)) : (0 : Real) ≤ _)
  have hN : (a : Real) * b ≤ (N : Real) * b := by exact_mod_cast Nat.mul_le_mul_right b ha
  apply (le_div_iff₀ (sq_pos_of_pos hR)).mpr
  nlinarith

theorem card_off_diagonal_witnesses_sum {N b M : Nat} (hb : 0 < b)
    (W : Finset (Nat × Nat))
    (hW : ∀ w ∈ W, w.1 ≤ N ∧ w.2 ^ 2 ∣ w.1 * b + 1 ∧
      offDiagonalQuotient b w ≤ M) :
    (W.card : Real) ≤ ∑ m ∈ Finset.Icc 1 M,
      (squareRootMultiplicity b : Real) *
        (Real.sqrt (((b : Real) * N + 1) / m) / b + 1) := by
  classical
  have hmap : ∀ w ∈ W, offDiagonalQuotient b w ∈ Finset.Icc 1 M := by
    intro w hw
    exact Finset.mem_Icc.mpr
      ⟨off_diagonal_quotient_pos (hW w hw).2.1, (hW w hw).2.2⟩
  rw [Finset.card_eq_sum_card_fiberwise (f := offDiagonalQuotient b)
    (t := Finset.Icc 1 M) hmap, Nat.cast_sum]
  apply Finset.sum_le_sum
  intro m hm
  apply card_off_diagonal_quotient_fiber hb (Finset.mem_Icc.mp hm).1
  intro w hw
  obtain ⟨hw, he⟩ := Finset.mem_filter.mp hw
  refine ⟨(hW w hw).1, ?_⟩
  rw [← he]
  exact (Nat.div_mul_cancel (hW w hw).2.1).symm

theorem card_off_diagonal_witnesses_le {N b M : Nat} (hb : 0 < b)
    (W : Finset (Nat × Nat))
    (hW : ∀ w ∈ W, w.1 ≤ N ∧ w.2 ^ 2 ∣ w.1 * b + 1 ∧
      offDiagonalQuotient b w ≤ M) :
    (W.card : Real) ≤ (squareRootMultiplicity b : Real) *
      (2 * Real.sqrt ((b : Real) * N + 1) * Real.sqrt M / b + M) := by
  have hc := card_off_diagonal_witnesses_sum hb W hW
  have hX : 0 ≤ (b : Real) * N + 1 := by positivity
  have he : (∑ m ∈ Finset.Icc 1 M, (squareRootMultiplicity b : Real) *
      (Real.sqrt (((b : Real) * N + 1) / m) / b + 1)) =
      (squareRootMultiplicity b : Real) *
        (Real.sqrt ((b : Real) * N + 1) / b *
          (∑ m ∈ Finset.Icc 1 M, 1 / Real.sqrt (m : Real)) + M) := by
    rw [← Finset.mul_sum, Finset.sum_add_distrib, Finset.mul_sum]
    simp only [Finset.sum_const, nsmul_eq_mul, mul_one, Nat.card_Icc,
      Nat.add_sub_cancel]
    congr 2
    apply Finset.sum_congr rfl
    intro m hm
    rw [Real.sqrt_div hX]
    ring
  rw [he] at hc
  have hs := mul_le_mul_of_nonneg_left (sum_reciprocal_sqrt_Icc M)
    (show 0 ≤ Real.sqrt ((b : Real) * N + 1) / b by positivity)
  have ht := mul_le_mul_of_nonneg_left (add_le_add_right hs (M : Real))
    (Nat.cast_nonneg (squareRootMultiplicity b) : (0 : Real) ≤ _)
  exact hc.trans (by convert ht using 1 <;> ring)

theorem large_off_diagonal_witness_tail {N b : Nat} (hb : 0 < b)
    {R : Real} (hR : 0 < R) (W : Finset (Nat × Nat))
    (hW : ∀ w ∈ W, w.1 ≤ N ∧ R < (w.2 : Real) ∧ w.2 ^ 2 ∣ w.1 * b + 1) :
    (W.card : Real) ≤ (squareRootMultiplicity b : Real) *
      (2 * ((b : Real) * N + 1) / ((b : Real) * R) +
        ((b : Real) * N + 1) / R ^ 2) := by
  let X : Real := (b : Real) * N + 1
  let M : Nat := ⌊X / R ^ 2⌋₊
  have hX : 0 ≤ X := by dsimp [X]; positivity
  have hM : (M : Real) ≤ X / R ^ 2 := Nat.floor_le (by positivity)
  have hc := card_off_diagonal_witnesses_le (M := M) hb W (by
    intro w hw
    refine ⟨(hW w hw).1, (hW w hw).2.2, Nat.le_floor ?_⟩
    exact off_diagonal_quotient_le_cutoff (hW w hw).1 hR (hW w hw).2.1.le
      (hW w hw).2.2)
  have hs : Real.sqrt M ≤ Real.sqrt X / R := by
    apply (Real.sqrt_le_iff).mpr
    refine ⟨by positivity, ?_⟩
    rw [div_pow, Real.sq_sqrt hX]
    exact hM
  have hb' : (0 : Real) < b := by exact_mod_cast hb
  have hm : 2 * Real.sqrt X * Real.sqrt M / b ≤ 2 * X / ((b : Real) * R) := by
    calc
      _ ≤ 2 * Real.sqrt X * (Real.sqrt X / R) / b := by gcongr
      _ = _ := by
        field_simp
        nlinarith [Real.sq_sqrt hX]
  exact hc.trans (mul_le_mul_of_nonneg_left (add_le_add hm hM)
    (Nat.cast_nonneg (squareRootMultiplicity b)))

theorem large_off_diagonal_tail {N b : Nat} (hb : 0 < b)
    {R : Real} (hR : 0 < R) (A : Finset Nat) (hA : A ⊆ Finset.Icc 1 N)
    (hw : ∀ a ∈ A, ∃ p : Nat, R < (p : Real) ∧ p ^ 2 ∣ a * b + 1) :
    (A.card : Real) ≤ (squareRootMultiplicity b : Real) *
      (2 * ((b : Real) * N + 1) / ((b : Real) * R) +
        ((b : Real) * N + 1) / R ^ 2) := by
  obtain ⟨W, hc, hW⟩ := exists_witness_finset A _ hw
  rw [← hc]
  apply large_off_diagonal_witness_tail hb hR W
  intro w hw
  exact ⟨(Finset.mem_Icc.mp (hA (hW w hw).1)).2, (hW w hw).2⟩

end JSP848
