import JSP848.Basic
import Mathlib.Data.Finset.Max

namespace JSP848

/-- Same-color distinct candidates must be incompatible with the pair condition. -/
def ValidColoring (N k : ℕ) (color : ℕ → ℕ) : Prop :=
  (∀ a ∈ diagonalCandidates N, color a < k) ∧
    ∀ a ∈ diagonalCandidates N, ∀ b ∈ diagonalCandidates N,
      color a = color b → a = b ∨ Squarefree (a * b + 1)

instance (N k : ℕ) (color : ℕ → ℕ) : Decidable (ValidColoring N k color) := by
  unfold ValidColoring
  infer_instance

def checkColoring (N k : ℕ) (color : ℕ → ℕ) : Bool :=
  decide (ValidColoring N k color)

theorem card_le_of_validColoring {N k : ℕ} {color : ℕ → ℕ}
    (hc : ValidColoring N k color) {A : Finset ℕ} (hA : Admissible N A) :
    A.card ≤ k := by
  have hsub := admissible_subset_candidates hA
  calc
    A.card ≤ (Finset.range k).card := by
      apply Finset.card_le_card_of_injOn color
      · intro a ha
        exact Finset.mem_range.mpr (hc.1 a (hsub ha))
      · intro a ha b hb hab
        rcases hc.2 a (hsub ha) b (hsub hb) hab with heq | hsq
        · exact heq
        · exact False.elim (hA.2 a ha b hb hsq)
    _ = k := Finset.card_range k

theorem card_le_of_checkColoring {N k : ℕ} {color : ℕ → ℕ}
    (hc : checkColoring N k color = true) {A : Finset ℕ} (hA : Admissible N A) :
    A.card ≤ k := by
  apply card_le_of_validColoring (color := color) _ hA
  exact of_decide_eq_true hc

/-- A fixed coloring can be restricted to an earlier prefix with the same color bound. -/
theorem ValidColoring.restrict {N M k : ℕ} {color : ℕ → ℕ}
    (hc : ValidColoring M k color) (hNM : N ≤ M) : ValidColoring N k color := by
  have hsub : diagonalCandidates N ⊆ diagonalCandidates M := by
    intro a ha
    obtain ⟨haN, hsq⟩ := Finset.mem_filter.mp ha
    obtain ⟨ha1, haN⟩ := Finset.mem_Icc.mp haN
    exact Finset.mem_filter.mpr ⟨Finset.mem_Icc.mpr ⟨ha1, haN.trans hNM⟩, hsq⟩
  exact ⟨fun a ha => hc.1 a (hsub ha),
    fun a ha b hb hab => hc.2 a (hsub ha) b (hsub hb) hab⟩

/-- Event colorings cover every prefix, including integers between consecutive events. -/
theorem upper_bounds_of_candidate_colorings {M : ℕ}
    (hc : ∀ m ∈ diagonalCandidates M, ∃ color, ValidColoring m (optimum m) color) :
    ∀ N ≤ M, ∀ A, Admissible N A → A.card ≤ optimum N := by
  intro N hNM A hA
  by_cases hne : A.Nonempty
  · let m := A.max' hne
    have hmA : m ∈ A := Finset.max'_mem A hne
    have hmN : m ≤ N := (Finset.mem_Icc.mp (hA.1 hmA)).2
    have hmM : m ∈ diagonalCandidates M :=
      admissible_subset_candidates (admissible_mono hA hNM) hmA
    obtain ⟨color, hcolor⟩ := hc m hmM
    have hAm : Admissible m A := by
      refine ⟨?_, hA.2⟩
      intro a ha
      exact Finset.mem_Icc.mpr ⟨(Finset.mem_Icc.mp (hA.1 ha)).1, Finset.le_max' A a ha⟩
    exact (card_le_of_validColoring hcolor hAm).trans
      (Nat.div_le_div_right (Nat.add_le_add_right hmN 18))
  · have hAempty : A = ∅ := Finset.not_nonempty_iff_eq_empty.mp hne
    simp [hAempty]

end JSP848
