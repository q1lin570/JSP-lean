import Mathlib.Combinatorics.Enumerative.InclusionExclusion
import Mathlib.Tactic

namespace JSP848

theorem inclusion_exclusion_density_identity {ι : Type*} [DecidableEq ι]
    (F : Finset ι) (w : ι → Real) :
    (∑ t : F.powerset.filter Finset.Nonempty,
      (-1 : Real) ^ (t.val.card + 1) * ∏ i ∈ t.val, w i) =
      1 - ∏ i ∈ F, (1 - w i) := by
  have hp := Finset.prod_sub (fun _ : ι => (1 : Real)) w F
  simp only [Finset.prod_const_one, mul_one] at hp
  have hs := Finset.sum_filter_add_sum_filter_not (s := F.powerset)
    (p := Finset.Nonempty) (f := fun t => (-1 : Real) ^ t.card * ∏ i ∈ t, w i)
  have he : F.powerset.filter (fun t => ¬t.Nonempty) = {∅} := by
    ext t
    simp only [Finset.mem_filter, Finset.mem_powerset,
      Finset.not_nonempty_iff_eq_empty, Finset.mem_singleton]
    constructor
    · exact fun h => h.2
    · intro he
      subst t
      simp
  rw [he, Finset.sum_singleton] at hs
  simp only [Finset.card_empty, pow_zero, Finset.prod_empty, mul_one] at hs
  rw [Finset.sum_coe_sort (F.powerset.filter Finset.Nonempty)
    (fun t : Finset ι => (-1 : Real) ^ (t.card + 1) * ∏ i ∈ t, w i)]
  have hn : (∑ t ∈ F.powerset.filter Finset.Nonempty,
      (-1 : Real) ^ (t.card + 1) * ∏ i ∈ t, w i) =
      -(∑ t ∈ F.powerset.filter Finset.Nonempty,
        (-1 : Real) ^ t.card * ∏ i ∈ t, w i) := by
    simp only [pow_succ, mul_neg_one, neg_mul, Finset.sum_neg_distrib]
  rw [hn]
  linarith

/-- Each nonempty intersection contributes at most one supplied rounding error. -/
theorem inclusion_exclusion_card_error {ι α : Type*} [DecidableEq ι] [DecidableEq α]
    (F : Finset ι) (S : ι → Finset α) (w : ι → Real) {N ε : Real} (hε : 0 ≤ ε)
    (hc : ∀ t : F.powerset.filter Finset.Nonempty,
      |((t.val.inf' (Finset.mem_filter.mp t.property).2 S).card : Real) -
        N * ∏ i ∈ t.val, w i| ≤ ε) :
    |((F.biUnion S).card : Real) - N * (1 - ∏ i ∈ F, (1 - w i))| ≤
      (2 : Real) ^ F.card * ε := by
  classical
  have hie := Finset.inclusion_exclusion_sum_biUnion (G := Real) F S (fun _ => 1)
  simp only [Finset.sum_const, nsmul_eq_mul, mul_one, zsmul_eq_mul,
    Int.cast_pow, Int.cast_neg, Int.cast_one] at hie
  rw [hie, ← inclusion_exclusion_density_identity F w, Finset.mul_sum,
    ← Finset.sum_sub_distrib]
  calc
    _ ≤ ∑ t : F.powerset.filter Finset.Nonempty,
        |(-1 : Real) ^ (t.val.card + 1) *
            ((t.val.inf' (Finset.mem_filter.mp t.property).2 S).card : Real) -
          N * ((-1 : Real) ^ (t.val.card + 1) * ∏ i ∈ t.val, w i)| :=
      Finset.abs_sum_le_sum_abs _ _
    _ ≤ ∑ _t : F.powerset.filter Finset.Nonempty, ε := by
      apply Finset.sum_le_sum
      intro t ht
      have he : (-1 : Real) ^ (t.val.card + 1) *
            ((t.val.inf' (Finset.mem_filter.mp t.property).2 S).card : Real) -
          N * ((-1 : Real) ^ (t.val.card + 1) * ∏ i ∈ t.val, w i) =
          (-1 : Real) ^ (t.val.card + 1) *
            (((t.val.inf' (Finset.mem_filter.mp t.property).2 S).card : Real) -
              N * ∏ i ∈ t.val, w i) := by ring
      rw [he, abs_mul, abs_pow]
      simpa using hc t
    _ ≤ _ := by
      simp only [Finset.sum_const, Finset.card_univ, Fintype.card_coe, nsmul_eq_mul]
      apply mul_le_mul_of_nonneg_right ?_ hε
      have hcard := Finset.card_le_card (Finset.filter_subset Finset.Nonempty F.powerset)
      rw [Finset.card_powerset] at hcard
      exact_mod_cast hcard

theorem inclusion_exclusion_card_upper {ι α : Type*} [DecidableEq ι] [DecidableEq α]
    (F : Finset ι) (S : ι → Finset α) (w : ι → Real) {N : Real}
    (hc : ∀ t : F.powerset.filter Finset.Nonempty,
      |((t.val.inf' (Finset.mem_filter.mp t.property).2 S).card : Real) -
        N * ∏ i ∈ t.val, w i| ≤ 1) :
    ((F.biUnion S).card : Real) ≤ N * (1 - ∏ i ∈ F, (1 - w i)) + (2 : Real) ^ F.card := by
  have he := (abs_le.mp (inclusion_exclusion_card_error F S w (by norm_num) hc)).2
  linarith

namespace InclusionExclusionErrorTests

theorem two_prime_density :
    1 - ∏ p ∈ ({2, 3} : Finset Nat), (1 - 1 / (p : Real) ^ 2) = (1 / 3 : Real) := by
  norm_num

theorem empty_union (N : Real) :
    (((∅ : Finset Nat).biUnion (fun p => Finset.range p)).card : Real) ≤
      N * (1 - ∏ p ∈ (∅ : Finset Nat), (1 - 1 / (p : Real) ^ 2)) + 2 ^ (0 : Nat) := by
  apply inclusion_exclusion_card_upper
  intro t
  have ht := (Finset.mem_filter.mp t.property).2
  have he := Finset.mem_powerset.mp (Finset.mem_filter.mp t.property).1
  simp only [Finset.subset_empty] at he
  simpa [he] using ht

end InclusionExclusionErrorTests

end JSP848
