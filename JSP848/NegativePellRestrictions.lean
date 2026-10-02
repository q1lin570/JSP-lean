import JSP848.PeriodicCount
import Mathlib.Tactic.IntervalCases

namespace JSP848

theorem odd_square_mod_eight {y : Nat} (hy : y % 2 = 1) : y ^ 2 % 8 = 1 := by
  have hlt := Nat.mod_lt y (by decide : 0 < 8)
  have hodd : y % 8 % 2 = 1 := by omega
  rw [Nat.pow_mod]
  interval_cases y % 8 <;> norm_num at *

theorem negative_pell_parameter_mod_eight {d x y : Nat} (hy : y % 2 = 1)
    (he : x ^ 2 + 1 = d * y ^ 2) : d % 8 = 1 ∨ d % 8 = 2 ∨ d % 8 = 5 := by
  have hm := congrArg (fun n : Nat => n % 8) he
  have hysq := odd_square_mod_eight hy
  simp only [Nat.add_mod, Nat.mul_mod, hysq, mul_one, Nat.mod_mod] at hm
  rw [Nat.pow_mod] at hm
  have hlt := Nat.mod_lt x (by decide : 0 < 8)
  interval_cases x % 8 <;> norm_num at hm ⊢ <;> omega

theorem negative_pell_odd_parameter_mod_eight {d x y : Nat}
    (hx : x % 2 = 1) (hy : y % 2 = 1) (he : x ^ 2 + 1 = d * y ^ 2) :
    d % 8 = 2 := by
  have hm := congrArg (fun n : Nat => n % 8) he
  simpa only [Nat.add_mod, Nat.mul_mod, odd_square_mod_eight hx,
    odd_square_mod_eight hy, mul_one, Nat.mod_mod] using hm.symm

theorem negative_pell_parameter_not_dvd {q d x y : Nat} (hq : 0 < q)
    (hroots : ∀ r < q, (r ^ 2 + 1) % q ≠ 0) (he : x ^ 2 + 1 = d * y ^ 2) :
    ¬ q ∣ d := by
  intro hd
  have hm : (x ^ 2 + 1) % q = 0 := by
    rw [he]
    exact Nat.mod_eq_zero_of_dvd (dvd_mul_of_dvd_left hd _)
  apply hroots (x % q) (Nat.mod_lt x hq)
  simpa only [Nat.add_mod, Nat.pow_mod, Nat.mod_mod] using hm

theorem negative_pell_parameter_not_three {d x y : Nat} (he : x ^ 2 + 1 = d * y ^ 2) :
    ¬ 3 ∣ d := by
  apply negative_pell_parameter_not_dvd (by decide) (he := he)
  intro r hr
  interval_cases r <;> norm_num

theorem negative_pell_parameter_not_seven {d x y : Nat} (he : x ^ 2 + 1 = d * y ^ 2) :
    ¬ 7 ∣ d := by
  apply negative_pell_parameter_not_dvd (by decide) (he := he)
  intro r hr
  interval_cases r <;> norm_num

def pellParameterMask (d : Nat) : Bool :=
  decide ((d % 8 = 1 ∨ d % 8 = 2 ∨ d % 8 = 5) ∧ d % 3 ≠ 0 ∧ d % 7 ≠ 0)

def oddPellParameterMask (d : Nat) : Bool :=
  decide (d % 8 = 2 ∧ d % 3 ≠ 0 ∧ d % 7 ≠ 0)

theorem negative_pell_parameter_mask {d x y : Nat} (hy : y % 2 = 1)
    (he : x ^ 2 + 1 = d * y ^ 2) : pellParameterMask d = true := by
  unfold pellParameterMask
  apply decide_eq_true
  exact ⟨negative_pell_parameter_mod_eight hy he,
    fun h => negative_pell_parameter_not_three he (Nat.dvd_of_mod_eq_zero h),
    fun h => negative_pell_parameter_not_seven he (Nat.dvd_of_mod_eq_zero h)⟩

theorem negative_pell_odd_parameter_mask {d x y : Nat} (hx : x % 2 = 1) (hy : y % 2 = 1)
    (he : x ^ 2 + 1 = d * y ^ 2) : oddPellParameterMask d = true := by
  unfold oddPellParameterMask
  apply decide_eq_true
  exact ⟨negative_pell_odd_parameter_mod_eight hx hy he,
    fun h => negative_pell_parameter_not_three he (Nat.dvd_of_mod_eq_zero h),
    fun h => negative_pell_parameter_not_seven he (Nat.dvd_of_mod_eq_zero h)⟩

theorem pell_parameter_periodic (d : Nat) : pellParameterMask (d + 168) = pellParameterMask d := by
  simp [pellParameterMask, Nat.add_mod]

theorem odd_pell_parameter_periodic (d : Nat) :
    oddPellParameterMask (d + 168) = oddPellParameterMask d := by
  simp [oddPellParameterMask, Nat.add_mod]

theorem pell_parameter_period_count :
    ((Finset.range 168).filter (fun d => pellParameterMask d)).card = 36 := by decide +kernel

theorem odd_pell_parameter_period_count :
    ((Finset.range 168).filter (fun d => oddPellParameterMask d)).card = 12 := by decide +kernel

theorem pell_parameter_prefix_bound : ∀ r : Fin 168,
    14 * ((Finset.Icc 1 r.val).filter (fun d => pellParameterMask d)).card ≤ 3 * r.val + 45 := by
  decide +kernel

theorem odd_pell_parameter_prefix_bound : ∀ r : Fin 168,
    14 * ((Finset.Icc 1 r.val).filter (fun d => oddPellParameterMask d)).card ≤ r.val + 30 := by
  decide +kernel

theorem pell_parameter_count_bound (N : Nat) :
    14 * ((Finset.Icc 1 N).filter (fun d => pellParameterMask d)).card ≤ 3 * N + 45 := by
  rw [← maskCount_eq_card]
  apply periodic_mask_count_bound pellParameterMask (m := 168) (c := 36)
    (by decide) pell_parameter_periodic ?_ (by decide) ?_ N
  · rw [maskCount_eq_card]
    decide +kernel
  · intro r hr
    rw [maskCount_eq_card]
    exact pell_parameter_prefix_bound ⟨r, hr⟩

theorem odd_pell_parameter_count_bound (N : Nat) :
    14 * ((Finset.Icc 1 N).filter (fun d => oddPellParameterMask d)).card ≤ N + 30 := by
  rw [← maskCount_eq_card]
  simpa only [one_mul] using periodic_mask_count_bound oddPellParameterMask
    (m := 168) (c := 12) (k := 14) (slope := 1) (offset := 30)
    (by decide) odd_pell_parameter_periodic
    (by rw [maskCount_eq_card]; decide +kernel) (by decide)
    (fun r hr => by
      rw [maskCount_eq_card, one_mul]
      exact odd_pell_parameter_prefix_bound ⟨r, hr⟩) N

end JSP848
