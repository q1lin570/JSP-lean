import JSP848.ReciprocalSqrtSum

namespace JSP848

theorem weighted_sum_le_of_partial_sums (f w : Nat → Real) {κ : Real}
    (hf : ∀ n, (∑ i ∈ Finset.range n, f i) ≤ κ)
    (hw : Antitone w) (hpos : ∀ n, 0 ≤ w n) (M : Nat) :
    (∑ i ∈ Finset.range M, f i * w i) ≤ κ * w 0 := by
  have aux : ∀ n, (∑ i ∈ Finset.range n, f i * w i) ≤
      κ * w 0 + ((∑ i ∈ Finset.range n, f i) - κ) * w n := by
    intro n
    induction n with
    | zero => simp
    | succ n ih =>
        have hm := mul_le_mul_of_nonpos_left (hw (Nat.le_succ n))
          (sub_nonpos.mpr (hf (n + 1)))
        rw [Finset.sum_range_succ] at hm ⊢
        rw [Finset.sum_range_succ]
        nlinarith
  have hm := mul_nonpos_of_nonpos_of_nonneg (sub_nonpos.mpr (hf M)) (hpos M)
  linarith [aux M]

theorem reciprocal_sqrt_succ_antitone :
    Antitone (fun i : Nat => 1 / Real.sqrt ((i : Real) + 1)) := by
  intro i j hij
  apply one_div_le_one_div_of_le (Real.sqrt_pos.mpr (by positivity))
  exact Real.sqrt_le_sqrt (by exact_mod_cast Nat.add_le_add_right hij 1)

theorem indicator_range_card (Q : Nat → Prop) [DecidablePred Q] (n : Nat) :
    (((Finset.range n).filter (fun i => Q (i + 1))).card : Real) =
      ∑ i ∈ Finset.range n, if Q (i + 1) then (1 : Real) else 0 := by
  rw [Finset.card_eq_sum_ones, Nat.cast_sum, Finset.sum_filter]
  simp

theorem restricted_reciprocal_sqrt_sum (Q : Nat → Prop) [DecidablePred Q]
    {δ κ : Real} (hδ : 0 ≤ δ)
    (hcount : ∀ n, (((Finset.range n).filter (fun i => Q (i + 1))).card : Real) ≤
      δ * n + κ) (M : Nat) :
    (∑ i ∈ (Finset.range M).filter (fun i => Q (i + 1)),
      1 / Real.sqrt ((i : Real) + 1)) ≤ 2 * δ * Real.sqrt M + κ := by
  let f : Nat → Real := fun i => (if Q (i + 1) then 1 else 0) - δ
  let w : Nat → Real := fun i => 1 / Real.sqrt ((i : Real) + 1)
  have hf : ∀ n, (∑ i ∈ Finset.range n, f i) ≤ κ := by
    intro n
    have hc := hcount n
    rw [indicator_range_card] at hc
    dsimp [f]
    rw [Finset.sum_sub_distrib]
    simp only [Finset.sum_const, Finset.card_range, nsmul_eq_mul]
    nlinarith
  have hw := weighted_sum_le_of_partial_sums f w hf reciprocal_sqrt_succ_antitone
    (fun i => by dsimp [w]; positivity) M
  have he : (∑ i ∈ Finset.range M, f i * w i) =
      (∑ i ∈ (Finset.range M).filter (fun i => Q (i + 1)), w i) -
        δ * ∑ i ∈ Finset.range M, w i := by
    simp only [f, sub_mul, ite_mul, one_mul, zero_mul]
    rw [Finset.sum_sub_distrib, ← Finset.mul_sum, Finset.sum_filter]
  rw [he] at hw
  have hs := mul_le_mul_of_nonneg_left (sum_reciprocal_sqrt_range M) hδ
  have hw0 : w 0 = 1 := by simp [w]
  rw [hw0, mul_one] at hw
  change _ - δ * (∑ i ∈ Finset.range M, 1 / Real.sqrt ((i : Real) + 1)) ≤ κ at hw
  linarith

theorem sum_Icc_filter_eq_sum_range (Q : Nat → Prop) [DecidablePred Q]
    (f : Nat → Real) (M : Nat) :
    (∑ m ∈ (Finset.Icc 1 M).filter Q, f m) =
      ∑ i ∈ (Finset.range M).filter (fun i => Q (i + 1)), f (i + 1) := by
  rw [Finset.sum_filter, Finset.sum_filter]
  symm
  apply Finset.sum_bij (fun i _ => i + 1)
  · intro i hi
    have := Finset.mem_range.mp hi
    exact Finset.mem_Icc.mpr ⟨by omega, by omega⟩
  · intro i hi j hj he
    omega
  · intro m hm
    have := Finset.mem_Icc.mp hm
    exact ⟨m - 1, Finset.mem_range.mpr (by omega), by omega⟩
  · intro i hi
    rfl

theorem restricted_reciprocal_sqrt_Icc (Q : Nat → Prop) [DecidablePred Q]
    {δ κ : Real} (hδ : 0 ≤ δ)
    (hcount : ∀ n, (((Finset.Icc 1 n).filter Q).card : Real) ≤ δ * n + κ) (M : Nat) :
    (∑ m ∈ (Finset.Icc 1 M).filter Q, 1 / Real.sqrt (m : Real)) ≤
      2 * δ * Real.sqrt M + κ := by
  rw [sum_Icc_filter_eq_sum_range]
  simp only [Nat.cast_add, Nat.cast_one]
  apply restricted_reciprocal_sqrt_sum Q hδ _ M
  intro n
  have he : (((Finset.Icc 1 n).filter Q).card : Real) =
      (((Finset.range n).filter (fun i => Q (i + 1))).card : Real) := by
    simp only [Finset.card_eq_sum_ones, Nat.cast_sum, Nat.cast_one]
    exact sum_Icc_filter_eq_sum_range Q (fun _ => 1) n
  rw [← he]
  exact hcount n

end JSP848
