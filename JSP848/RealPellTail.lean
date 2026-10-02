import JSP848.RestrictedPellTail
import Mathlib.Analysis.SpecialFunctions.Log.Base
import Mathlib.Data.Real.Sqrt

namespace JSP848

noncomputable def pellTailBound (N : Nat) (Y : Real) : Real :=
  3 / 14 * Y + 45 / 14 + (Real.sqrt Y + 1) * (Real.log N / Real.log 3)

noncomputable def oddPellTailBound (N : Nat) (Y : Real) : Real :=
  Y / 14 + 15 / 7 + (Real.sqrt Y / 2 + 1) * (Real.log N / Real.log 3)

theorem nat_sqrt_le_real_sqrt {D : Nat} {Y : Real} (hD : (D : Real) ≤ Y) :
    (Nat.sqrt D : Real) ≤ Real.sqrt Y := by
  apply Real.le_sqrt_of_sq_le
  exact le_trans (by exact_mod_cast Nat.sqrt_le' D) hD

theorem nat_log_three_le_real (N : Nat) :
    (Nat.log 3 N : Real) ≤ Real.log N / Real.log 3 := by
  simpa only [Real.logb, Nat.cast_ofNat] using Real.natLog_le_logb N 3

theorem real_log_three_nonneg (N : Nat) : 0 ≤ Real.log N / Real.log 3 :=
  le_trans (Nat.cast_nonneg _) (nat_log_three_le_real N)

theorem prime_square_witness_tail_real {D N : Nat} {Y : Real} (hD : (D : Real) ≤ Y)
    (W : Finset (Nat × Nat))
    (hW : ∀ w ∈ W, w.1 ∈ Finset.Icc 1 N ∧ w.2.Prime ∧ w.2 % 2 = 1 ∧
      w.2 ^ 2 ∣ w.1 ^ 2 + 1 ∧ (w.1 ^ 2 + 1) / w.2 ^ 2 ≤ D) :
    (W.card : Real) ≤ pellTailBound N Y := by
  have hn := card_prime_square_witnesses_restricted_le W hW
  have hr : 14 * (W.card : Real) ≤ 3 * (D : Real) + 45 +
      14 * (Nat.sqrt D : Real) * (Nat.log 3 N : Real) := by exact_mod_cast hn
  have hs := nat_sqrt_le_real_sqrt hD
  have hl := nat_log_three_le_real N
  have hp := mul_le_mul (show (Nat.sqrt D : Real) ≤ Real.sqrt Y + 1 by linarith) hl
    (Nat.cast_nonneg _) (by positivity : 0 ≤ Real.sqrt Y + 1)
  unfold pellTailBound
  nlinarith

theorem odd_prime_square_witness_tail_real {D N : Nat} {Y : Real} (hD : (D : Real) ≤ Y)
    (W : Finset (Nat × Nat))
    (hW : ∀ w ∈ W, w.1 ∈ Finset.Icc 1 N ∧ w.1 % 2 = 1 ∧
      w.2.Prime ∧ w.2 % 2 = 1 ∧ w.2 ^ 2 ∣ w.1 ^ 2 + 1 ∧
      (w.1 ^ 2 + 1) / w.2 ^ 2 ≤ D) :
    (W.card : Real) ≤ oddPellTailBound N Y := by
  have hn := card_odd_prime_square_witnesses_restricted_le W hW
  have hr : 14 * (W.card : Real) ≤ (D : Real) + 30 +
      14 * (((Nat.sqrt D + 1) / 2 : Nat) : Real) * (Nat.log 3 N : Real) := by
    exact_mod_cast hn
  have hdiv : 2 * ((Nat.sqrt D + 1) / 2) ≤ Nat.sqrt D + 1 := by omega
  have hdiv' : 2 * (((Nat.sqrt D + 1) / 2 : Nat) : Real) ≤ (Nat.sqrt D : Real) + 1 := by
    exact_mod_cast hdiv
  have hs := nat_sqrt_le_real_sqrt hD
  have hl := nat_log_three_le_real N
  have hp := mul_le_mul
    (show (((Nat.sqrt D + 1) / 2 : Nat) : Real) ≤ Real.sqrt Y / 2 + 1 by linarith) hl
    (Nat.cast_nonneg _) (by positivity : 0 ≤ Real.sqrt Y / 2 + 1)
  unfold oddPellTailBound
  nlinarith

theorem square_quotient_le_cutoff {x p N : Nat} {S : Real} (hx : x ≤ N)
    (hS : 0 < S) (hp : S ≤ (p : Real)) (hd : p ^ 2 ∣ x ^ 2 + 1) :
    (((x ^ 2 + 1) / p ^ 2 : Nat) : Real) ≤ ((N : Real) ^ 2 + 1) / S ^ 2 := by
  have he : (x : Real) ^ 2 + 1 = (((x ^ 2 + 1) / p ^ 2 : Nat) : Real) * (p : Real) ^ 2 := by
    exact_mod_cast (Nat.div_mul_cancel hd).symm
  have hsq : S ^ 2 ≤ (p : Real) ^ 2 := (sq_le_sq₀ hS.le (Nat.cast_nonneg _)).mpr hp
  have hN : (x : Real) ^ 2 ≤ (N : Real) ^ 2 := by
    exact_mod_cast Nat.pow_le_pow_left hx 2
  apply (le_div_iff₀ (sq_pos_of_pos hS)).mpr
  have hm := mul_le_mul_of_nonneg_left hsq
    (Nat.cast_nonneg ((x ^ 2 + 1) / p ^ 2) : (0 : Real) ≤ _)
  linarith

/-- The all-parity large diagonal witness tail from the closing proof. -/
theorem large_prime_square_witness_tail {N : Nat} {S : Real} (hS : 2 ≤ S)
    (W : Finset (Nat × Nat))
    (hW : ∀ w ∈ W, w.1 ∈ Finset.Icc 1 N ∧ w.2.Prime ∧
      S < (w.2 : Real) ∧ w.2 ^ 2 ∣ w.1 ^ 2 + 1) :
    (W.card : Real) ≤ pellTailBound N (((N : Real) ^ 2 + 1) / S ^ 2) := by
  have hSpos : 0 < S := by linarith
  let Y : Real := ((N : Real) ^ 2 + 1) / S ^ 2
  have hY : 0 ≤ Y := by dsimp [Y]; positivity
  apply prime_square_witness_tail_real (D := ⌊Y⌋₊) (Nat.floor_le hY) W
  intro w hw
  obtain ⟨hx, hp, hcut, hd⟩ := hW w hw
  have hne : w.2 ≠ 2 := by intro he; rw [he] at hcut; norm_num at hcut; linarith
  refine ⟨hx, hp, hp.eq_two_or_odd.resolve_left hne, hd, Nat.le_floor ?_⟩
  exact square_quotient_le_cutoff (Finset.mem_Icc.mp hx).2 hSpos hcut.le hd

/-- The odd-vertex large diagonal witness tail, including the halved exception count. -/
theorem large_odd_prime_square_witness_tail {N : Nat} {S : Real} (hS : 2 ≤ S)
    (W : Finset (Nat × Nat))
    (hW : ∀ w ∈ W, w.1 ∈ Finset.Icc 1 N ∧ w.1 % 2 = 1 ∧ w.2.Prime ∧
      S < (w.2 : Real) ∧ w.2 ^ 2 ∣ w.1 ^ 2 + 1) :
    (W.card : Real) ≤ oddPellTailBound N (((N : Real) ^ 2 + 1) / S ^ 2) := by
  have hSpos : 0 < S := by linarith
  let Y : Real := ((N : Real) ^ 2 + 1) / S ^ 2
  have hY : 0 ≤ Y := by dsimp [Y]; positivity
  apply odd_prime_square_witness_tail_real (D := ⌊Y⌋₊) (Nat.floor_le hY) W
  intro w hw
  obtain ⟨hx, hxo, hp, hcut, hd⟩ := hW w hw
  have hne : w.2 ≠ 2 := by intro he; rw [he] at hcut; norm_num at hcut; linarith
  refine ⟨hx, hxo, hp, hp.eq_two_or_odd.resolve_left hne, hd, Nat.le_floor ?_⟩
  exact square_quotient_le_cutoff (Finset.mem_Icc.mp hx).2 hSpos hcut.le hd

end JSP848
