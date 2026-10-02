import JSP848.Basic
import Mathlib.Data.Nat.Log
import Mathlib.Tactic.ByContra
import Mathlib.Tactic.Linarith
import Mathlib.Tactic.Ring

namespace JSP848

/-- Distinct positive solutions of a fixed negative Pell equation grow by more than three. -/
theorem negative_pell_gap {d x y u v : ℤ} (hd : 0 < d)
    (hx : 0 < x) (hy : 0 < y) (hxu : x < u) (hv : 0 < v)
    (hxy : x ^ 2 - d * y ^ 2 = -1) (huv : u ^ 2 - d * v ^ 2 = -1) :
    3 * x < u := by
  have hu : 0 < u := hx.trans hxu
  have hxusq : x ^ 2 < u ^ 2 := (sq_lt_sq₀ hx.le hu.le).mpr hxu
  have hyv : y < v := by
    by_contra! h
    have hsq := (sq_le_sq₀ hv.le hy.le).mpr h
    have hmul := mul_le_mul_of_nonneg_left hsq hd.le
    linarith
  have hyvsq : y ^ 2 < v ^ 2 := (sq_lt_sq₀ hy.le hv.le).mpr hyv
  have hdiff : (u * y) ^ 2 - (x * v) ^ 2 = v ^ 2 - y ^ 2 := by
    calc
      _ = (u ^ 2 - d * v ^ 2) * y ^ 2 -
          (x ^ 2 - d * y ^ 2) * v ^ 2 := by ring
      _ = _ := by rw [hxy, huv]; ring
  have hcross : x * v < u * y := by
    by_contra! h
    have hsq := (sq_le_sq₀ (mul_pos hu hy).le (mul_pos hx hv).le).mpr h
    linarith
  let r := d * y * v - x * u
  let s := u * y - x * v
  have hs : 0 < s := by dsimp [s]; omega
  have hrel : d * y ^ 2 - x ^ 2 = 1 := by linarith
  have hdy2 : d * y ^ 2 = x ^ 2 + 1 := by linarith
  have hdv2 : d * v ^ 2 = u ^ 2 + 1 := by linarith
  have hprod : (d * y * v) ^ 2 - (x * u) ^ 2 = x ^ 2 + u ^ 2 + 1 := by
    calc
      _ = (d * y ^ 2) * (d * v ^ 2) - x ^ 2 * u ^ 2 := by ring
      _ = _ := by rw [hdy2, hdv2]; ring
  have hr : 0 < r := by
    have hsq : (x * u) ^ 2 < (d * y * v) ^ 2 := by
      nlinarith [sq_nonneg x, sq_nonneg u]
    have hlt := (sq_lt_sq₀ (mul_pos hx hu).le (mul_pos (mul_pos hd hy) hv).le).mp hsq
    dsimp [r]
    omega
  have hnorm : r ^ 2 - d * s ^ 2 = 1 := by
    calc
      _ = (x ^ 2 - d * y ^ 2) * (u ^ 2 - d * v ^ 2) := by dsimp [r, s]; ring
      _ = 1 := by rw [hxy, huv]; norm_num
  have hr2 : 2 ≤ r := by
    have hds : 0 < d * s ^ 2 := mul_pos hd (sq_pos_of_pos hs)
    by_contra! h
    have hr1 : r = 1 := by omega
    rw [hr1] at hnorm
    norm_num at hnorm
    rcases hnorm with hzero | hzero <;> omega
  have hu_eq : u = x * r + d * y * s := by
    calc
      u = u * (d * y ^ 2 - x ^ 2) := by rw [hrel]; ring
      _ = _ := by dsimp [r, s]; ring
  have hdy : y ≤ d * y := by
    have hd1 : 1 ≤ d := by omega
    nlinarith
  have hxdy : x < d * y := by
    by_contra! h
    have hyx : y ≤ x := hdy.trans h
    have := mul_le_mul h hyx hy.le hx.le
    nlinarith [hxy]
  have hs1 : 1 ≤ s := by omega
  have hxr := mul_le_mul_of_nonneg_left hr2 hx.le
  have hdys := mul_le_mul_of_nonneg_left hs1 (mul_pos hd hy).le
  linarith

theorem log_three_lt_of_triple_lt {a b : ℕ} (ha : 0 < a) (hab : 3 * a < b) :
    Nat.log 3 a < Nat.log 3 b := by
  have h : Nat.log 3 (a * 3) ≤ Nat.log 3 b :=
    Nat.log_mono_right (by omega)
  rw [Nat.log_mul_base (by decide) (by omega)] at h
  omega

/-- A finite set of positive x-coordinates of negative Pell solutions has logarithmic size. -/
theorem card_negative_pell_le {d N : ℕ} (hd : 0 < d) (S : Finset ℕ)
    (hS : S ⊆ Finset.Icc 1 N)
    (hw : ∀ x ∈ S, ∃ y : ℕ, 0 < y ∧ x ^ 2 + 1 = d * y ^ 2) :
    S.card ≤ Nat.log 3 N + 1 := by
  have hlog : ∀ a ∈ S, ∀ b ∈ S, a < b → Nat.log 3 a < Nat.log 3 b := by
    intro a ha b hb hab
    have ha1 := (Finset.mem_Icc.mp (hS ha)).1
    obtain ⟨y, hy, hay⟩ := hw a ha
    obtain ⟨v, hv, hbv⟩ := hw b hb
    have hgap : (3 : ℤ) * a < b := by
      apply negative_pell_gap (y := y) (v := v) (d := d)
      · exact_mod_cast hd
      · exact_mod_cast ha1
      · exact_mod_cast hy
      · exact_mod_cast hab
      · exact_mod_cast hv
      · have he : (a : ℤ) ^ 2 + 1 = (d : ℤ) * (y : ℤ) ^ 2 := by exact_mod_cast hay
        linarith
      · have he : (b : ℤ) ^ 2 + 1 = (d : ℤ) * (v : ℤ) ^ 2 := by exact_mod_cast hbv
        linarith
    apply log_three_lt_of_triple_lt (by omega)
    exact_mod_cast hgap
  calc
    S.card ≤ (Finset.range (Nat.log 3 N + 1)).card := by
      apply Finset.card_le_card_of_injOn (Nat.log 3)
      · intro a ha
        have haN := (Finset.mem_Icc.mp (hS ha)).2
        exact Finset.mem_range.mpr (Nat.lt_succ_of_le (Nat.log_mono_right haN))
      · intro a ha b hb heq
        rcases lt_trichotomy a b with hab | hab | hab
        · exact (ne_of_lt (hlog a ha b hb hab) heq).elim
        · exact hab
        · exact (ne_of_lt (hlog b hb a ha hab) heq.symm).elim
    _ = _ := Finset.card_range _

end JSP848
