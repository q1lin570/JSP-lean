import Mathlib.Data.Nat.Squarefree
import Mathlib.Order.Interval.Finset.Nat
import Mathlib.Tactic.NormNum

namespace JSP848

/-- The original pair condition includes the diagonal `a = b`. -/
def ProductCondition (A : Finset ℕ) : Prop :=
  ∀ a ∈ A, ∀ b ∈ A, ¬ Squarefree (a * b + 1)

def Admissible (N : ℕ) (A : Finset ℕ) : Prop :=
  A ⊆ Finset.Icc 1 N ∧ ProductCondition A

def optimum (N : ℕ) : ℕ := (N + 18) / 25

/-- This proposition is the full all-N upper bound, not an asymptotic variant. -/
def UpperBound : Prop :=
  ∀ N A, Admissible N A → A.card ≤ optimum N

def extremal (N : ℕ) : Finset ℕ :=
  (Finset.range (optimum N)).image (fun k => 25 * k + 7)

theorem mem_extremal {N a : ℕ} :
    a ∈ extremal N ↔ a ∈ Finset.Icc 1 N ∧ a % 25 = 7 := by
  simp only [extremal, Finset.mem_image, Finset.mem_range, Finset.mem_Icc, optimum]
  constructor
  · rintro ⟨k, hk, rfl⟩
    omega
  · rintro ⟨⟨ha1, haN⟩, hamod⟩
    refine ⟨a / 25, ?_, ?_⟩ <;> omega

theorem card_extremal (N : ℕ) : (extremal N).card = optimum N := by
  unfold extremal
  rw [Finset.card_image_of_injective, Finset.card_range]
  intro a b h
  change 25 * a + 7 = 25 * b + 7 at h
  omega

theorem not_squarefree_of_dvd_25 {n : ℕ} (h : 25 ∣ n) : ¬ Squarefree n := by
  intro hsq
  have hunit : IsUnit (5 : ℕ) := hsq 5 (by simpa using h)
  have := Nat.isUnit_iff.mp hunit
  omega

theorem admissible_extremal (N : ℕ) : Admissible N (extremal N) := by
  constructor
  · intro a ha
    exact (mem_extremal.mp ha).1
  · intro a ha b hb
    apply not_squarefree_of_dvd_25
    apply Nat.dvd_of_mod_eq_zero
    have ha7 := (mem_extremal.mp ha).2
    have hb7 := (mem_extremal.mp hb).2
    norm_num [Nat.add_mod, Nat.mul_mod, ha7, hb7]

theorem lower_bound (N : ℕ) :
    ∃ A : Finset ℕ, Admissible N A ∧ A.card = optimum N :=
  ⟨extremal N, admissible_extremal N, card_extremal N⟩

def diagonalCandidates (N : ℕ) : Finset ℕ :=
  (Finset.Icc 1 N).filter (fun a => ¬ Squarefree (a * a + 1))

theorem admissible_subset_candidates {N : ℕ} {A : Finset ℕ}
    (hA : Admissible N A) : A ⊆ diagonalCandidates N := by
  intro a ha
  exact Finset.mem_filter.mpr ⟨hA.1 ha, hA.2 a ha a ha⟩

theorem admissible_mono {N M : ℕ} {A : Finset ℕ}
    (hA : Admissible N A) (hNM : N ≤ M) : Admissible M A := by
  refine ⟨?_, hA.2⟩
  intro a ha
  have h := Finset.mem_Icc.mp (hA.1 ha)
  exact Finset.mem_Icc.mpr ⟨h.1, h.2.trans hNM⟩

/-- The lower bound reduces the exact extremal problem to `UpperBound`. -/
theorem upperBound_iff_exact : UpperBound ↔
    ∀ N, ∃ B : Finset ℕ, Admissible N B ∧ B.card = optimum N ∧
      ∀ A : Finset ℕ, Admissible N A → A.card ≤ B.card := by
  constructor
  · intro h N
    refine ⟨extremal N, admissible_extremal N, card_extremal N, ?_⟩
    intro A hA
    simpa only [card_extremal] using h N A hA
  · intro h N A hA
    obtain ⟨B, _, hcard, hmax⟩ := h N
    simpa only [hcard] using hmax A hA

end JSP848
