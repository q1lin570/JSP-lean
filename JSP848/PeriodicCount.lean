import JSP848.Basic
import Mathlib.Algebra.BigOperators.Group.Finset.Piecewise

namespace JSP848

def maskCount (mask : Nat → Bool) (N : Nat) : Nat :=
  ∑ i ∈ Finset.range N, if mask (i + 1) then 1 else 0

theorem maskCount_eq_card (mask : Nat → Bool) (N : Nat) :
    maskCount mask N = ((Finset.Icc 1 N).filter (fun n => mask n)).card := by
  rw [Finset.card_eq_sum_ones, Finset.sum_filter]
  unfold maskCount
  apply Finset.sum_bij (fun i _ => i + 1)
  · intro i hi
    have := Finset.mem_range.mp hi
    exact Finset.mem_Icc.mpr ⟨by omega, by omega⟩
  · intro i hi j hj he
    omega
  · intro j hj
    have := Finset.mem_Icc.mp hj
    exact ⟨j - 1, Finset.mem_range.mpr (by omega), by omega⟩
  · intro i hi
    rfl

theorem maskCount_add_period (mask : Nat → Bool) (m n : Nat)
    (hp : ∀ i, mask (i + m) = mask i) :
    maskCount mask (n + m) = maskCount mask n + maskCount mask m := by
  unfold maskCount
  rw [Nat.add_comm n m, Finset.sum_range_add]
  have he : (∑ i ∈ Finset.range n, if mask (m + i + 1) then 1 else 0) =
      ∑ i ∈ Finset.range n, if mask (i + 1) then 1 else 0 := by
    apply Finset.sum_congr rfl
    intro i hi
    rw [show m + i + 1 = (i + 1) + m by omega, hp]
  rw [he, Nat.add_comm]

/-- An exact period total and a finite prefix bound imply the bound for every N. -/
theorem periodic_mask_count_bound (mask : Nat → Bool) {m c k slope offset : Nat}
    (hm : 0 < m) (hp : ∀ i, mask (i + m) = mask i)
    (hc : maskCount mask m = c) (hbalance : k * c = slope * m)
    (hprefix : ∀ r < m, k * maskCount mask r ≤ slope * r + offset) :
    ∀ N, k * maskCount mask N ≤ slope * N + offset := by
  intro N
  induction N using Nat.strong_induction_on with
  | h N ih =>
    by_cases hlt : N < m
    · exact hprefix N hlt
    · have hle : m ≤ N := by omega
      have hprev := ih (N - m) (by omega)
      have he := maskCount_add_period mask m (N - m) hp
      rw [Nat.sub_add_cancel hle, hc] at he
      calc
        k * maskCount mask N = k * maskCount mask (N - m) + k * c := by rw [he, Nat.mul_add]
        _ ≤ (slope * (N - m) + offset) + k * c := Nat.add_le_add_right hprev _
        _ = slope * N + offset := by
          rw [hbalance]
          have hN : N - m + m = N := Nat.sub_add_cancel hle
          calc
            _ = slope * (N - m + m) + offset := by rw [Nat.mul_add]; omega
            _ = _ := by rw [hN]

end JSP848
