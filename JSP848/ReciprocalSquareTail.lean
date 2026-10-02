import Mathlib.Tactic

namespace JSP848

theorem reciprocal_square_step {a d : Real} (ha : 0 < a) (hd : 0 < d) :
    1 / (a + d) ^ 2 ≤ 1 / (d * a) - 1 / (d * (a + d)) := by
  have had : 0 < a + d := add_pos ha hd
  apply (le_sub_iff_add_le).mpr
  field_simp
  nlinarith

/-- A telescoping bound for every finite initial segment of a progression tail. -/
theorem reciprocal_square_progression_sum {a d : Real} (ha : 0 < a) (hd : 0 < d)
    (count : Nat) :
    (∑ i ∈ Finset.range count, 1 / (a + d * (i + 1 : Nat)) ^ 2) ≤
      1 / (d * a) - 1 / (d * (a + d * count)) := by
  induction count with
  | zero => simp
  | succ count ih =>
    rw [Finset.sum_range_succ]
    have hc : 0 < a + d * (count : Real) := by positivity
    have hs := reciprocal_square_step hc hd
    have he : a + d * (count : Real) + d = a + d * ((count + 1 : Nat) : Real) := by
      push_cast
      ring
    rw [he] at hs
    push_cast at ih hs ⊢
    linarith

theorem reciprocal_square_progression_tail {a d : Real} (ha : 0 < a) (hd : 0 < d)
    (count : Nat) :
    (∑ i ∈ Finset.range count, 1 / (a + d * (i + 1 : Nat)) ^ 2) ≤ 1 / (d * a) := by
  have hb := reciprocal_square_progression_sum ha hd count
  have hn : 0 ≤ 1 / (d * (a + d * (count : Real))) := by positivity
  linarith

theorem diagonal_progression_tail (count : Nat) :
    (∑ i ∈ Finset.range count, 2 / (10001 + 4 * (i : Real)) ^ 2) ≤
      (1 : Real) / 19994 := by
  have hb := reciprocal_square_progression_tail (a := 9997) (d := 4)
    (by norm_num) (by norm_num) count
  have he : (∑ i ∈ Finset.range count, 2 / (10001 + 4 * (i : Real)) ^ 2) =
      2 * (∑ i ∈ Finset.range count, 1 / ((9997 : Real) + 4 * (i + 1 : Nat)) ^ 2) := by
    rw [Finset.mul_sum]
    apply Finset.sum_congr rfl
    intro i hi
    push_cast
    ring
  rw [he]
  norm_num at hb ⊢
  linarith

theorem off_diagonal_integer_tail (count : Nat) :
    (∑ i ∈ Finset.range count, 1 / (10001 + (i : Real)) ^ 2) ≤
      (1 : Real) / 10000 := by
  have hb := reciprocal_square_progression_tail (a := 10000) (d := 1)
    (by norm_num) (by norm_num) count
  calc
    _ = ∑ i ∈ Finset.range count, 1 / ((10000 : Real) + 1 * (i + 1 : Nat)) ^ 2 := by
      apply Finset.sum_congr rfl
      intro i hi
      push_cast
      ring
    _ ≤ 1 / (1 * 10000) := hb
    _ = _ := by norm_num

end JSP848
