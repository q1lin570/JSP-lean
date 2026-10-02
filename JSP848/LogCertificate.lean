import Mathlib.Analysis.SpecialFunctions.Log.Monotone
import Mathlib.Analysis.Complex.ExponentialBounds
import Mathlib.NumberTheory.PrimeCounting
import Mathlib.Tactic

namespace JSP848

/-- A rational Taylor partial sum gives a one-sided exponential certificate. -/
def expLower (q : Rat) (terms : Nat) : Rat :=
  ∑ i ∈ Finset.range terms, q ^ i / (i.factorial : Rat)

theorem expLower_le_exp {q : Rat} (hq : 0 ≤ q) (terms : Nat) :
    (expLower q terms : Real) ≤ Real.exp q := by
  have he : (expLower q terms : Real) =
      ∑ i ∈ Finset.range terms, (q : Real) ^ i / (i.factorial : Real) := by
    simp only [expLower, Rat.cast_sum, Rat.cast_div, Rat.cast_pow, Rat.cast_natCast]
  rw [he]
  exact Real.sum_le_exp_of_nonneg (by exact_mod_cast hq) terms

theorem log_nat_le_of_expLower {x terms : Nat} {q : Rat}
    (hx : 0 < x) (hq : 0 ≤ q) (hc : (x : Rat) ≤ expLower q terms) :
    Real.log x ≤ q := by
  apply (Real.log_le_iff_le_exp (by exact_mod_cast hx)).mpr
  exact (by exact_mod_cast hc : (x : Real) ≤ (expLower q terms : Real)).trans
    (expLower_le_exp hq terms)

/-- Counts at the right endpoint and log bounds at the left cover a real interval. -/
theorem monotone_counting_real_cell {f : Nat → Nat} (hf : Monotone f)
    {lo hi count : Nat} {q coefficient : Rat}
    (hlo : 3 ≤ lo) (hcount : f hi ≤ count)
    (hlog : Real.log lo ≤ q) (hbound : (count : Rat) * q ≤ coefficient * lo)
    {x : Real} (hxl : (lo : Real) ≤ x) (hxu : x ≤ hi) :
    (f ⌊x⌋₊ : Real) ≤ coefficient * x / Real.log x := by
  have hl3 : (3 : Real) ≤ lo := by exact_mod_cast hlo
  have hlpos : (0 : Real) < lo := by linarith
  have hxpos : 0 < x := hlpos.trans_le hxl
  have hxlog : 0 < Real.log x := Real.log_pos (by linarith)
  have hlexp : Real.exp 1 ≤ (lo : Real) := Real.exp_one_lt_three.le.trans hl3
  have hm := Real.log_div_self_antitoneOn hlexp (hlexp.trans hxl) hxl
  have hm' : Real.log x * lo ≤ Real.log lo * x :=
    (div_le_div_iff₀ hxpos hlpos).mp hm
  have hcross : (lo : Real) * Real.log x ≤ (q : Real) * x := by
    nlinarith [mul_le_mul_of_nonneg_right hlog hxpos.le]
  have hb : (count : Real) * q ≤ (coefficient : Real) * lo := by exact_mod_cast hbound
  have hc : (count : Real) * Real.log x ≤ (coefficient : Real) * x := by
    apply (mul_le_mul_iff_left₀ hlpos).mp
    nlinarith [mul_le_mul_of_nonneg_left hcross (Nat.cast_nonneg count : (0 : Real) ≤ count),
      mul_le_mul_of_nonneg_right hb hxpos.le]
  have hfloor : ⌊x⌋₊ ≤ hi := Nat.floor_le_of_le hxu
  have hp : (f ⌊x⌋₊ : Real) ≤ count := by
    exact_mod_cast (hf hfloor).trans hcount
  exact (le_div_iff₀ hxlog).mpr ((mul_le_mul_of_nonneg_right hp hxlog.le).trans hc)

theorem primeCounting_real_cell {lo hi count : Nat} {q coefficient : Rat}
    (hlo : 3 ≤ lo) (hcount : Nat.primeCounting hi ≤ count)
    (hlog : Real.log lo ≤ q) (hbound : (count : Rat) * q ≤ coefficient * lo)
    {x : Real} (hxl : (lo : Real) ≤ x) (hxu : x ≤ hi) :
    (Nat.primeCounting ⌊x⌋₊ : Real) ≤ coefficient * x / Real.log x :=
  monotone_counting_real_cell Nat.monotone_primeCounting hlo hcount hlog hbound hxl hxu

def PrimeBoundOn (lo hi : Nat) (coefficient : Rat) : Prop :=
  ∀ x : Real, lo ≤ x → x ≤ hi →
    (Nat.primeCounting ⌊x⌋₊ : Real) ≤ coefficient * x / Real.log x

theorem PrimeBoundOn.join {lo mid hi : Nat} {coefficient : Rat}
    (left : PrimeBoundOn lo mid coefficient) (right : PrimeBoundOn mid hi coefficient) :
    PrimeBoundOn lo hi coefficient := by
  intro x hxlo hxhi
  rcases le_total x (mid : Real) with hleft | hright
  · exact left x hxlo hleft
  · exact right x hright hxhi

namespace LogCertificateTests

theorem exp_lower_zero : expLower 0 8 = 1 := by decide +kernel
theorem exp_lower_empty : expLower 1 0 = 0 := by decide +kernel
theorem log_two_upper : Real.log 2 ≤ (7 : Real) / 10 := by
  simpa using (log_nat_le_of_expLower (x := 2) (terms := 5) (q := 7 / 10)
    (by decide) (by norm_num) (by decide +kernel))

theorem prime_cell_16_20 : PrimeBoundOn 16 20 2 := by
  intro x hlo hhi
  exact primeCounting_real_cell (lo := 16) (hi := 20) (count := 8)
    (q := 3) (coefficient := 2) (by decide) (by decide +kernel)
    (log_nat_le_of_expLower (terms := 8) (by decide) (by norm_num) (by decide +kernel))
    (by norm_num) hlo hhi

end LogCertificateTests

end JSP848
