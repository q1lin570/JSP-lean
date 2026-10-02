import JSP848.PrimeDensity
import JSP848.PrimeDensityTail

namespace JSP848

theorem diagonal_prime_density_bound (P : Finset Nat)
    (hP : ∀ p ∈ P, 13 ≤ p ∧ p.Prime ∧ p % 4 = 1) :
    (∑ p ∈ P, 2 / (p : Real) ^ 2) ≤ (277 / 10000 : Real) := by
  let L := P.filter (fun p => p ≤ 10000)
  let U := P.filter (fun p => ¬p ≤ 10000)
  have hsub : L ⊆ diagonalDensityPrimes := by
    intro p hp
    obtain ⟨hp, hb⟩ := Finset.mem_filter.mp hp
    exact Finset.mem_filter.mpr ⟨Finset.mem_range.mpr (by omega), hP p hp⟩
  have hsmall : (∑ p ∈ L, 2 / (p : Real) ^ 2) ≤ (1381 / 50000 : Real) :=
    (Finset.sum_le_sum_of_subset_of_nonneg hsub (fun p hp hn => by positivity)).trans
      diagonal_density_small
  have hlarge : (∑ p ∈ U, 2 / (p : Real) ^ 2) ≤ (1 : Real) / 19994 := by
    apply sum_diagonal_tail_le
    intro p hp
    obtain ⟨hp, hb⟩ := Finset.mem_filter.mp hp
    exact ⟨by omega, (hP p hp).2.2⟩
  have he := Finset.sum_filter_add_sum_filter_not P (fun p => p ≤ 10000)
    (fun p => 2 / (p : Real) ^ 2)
  change (∑ p ∈ L, 2 / (p : Real) ^ 2) + (∑ p ∈ U, 2 / (p : Real) ^ 2) = _ at he
  linarith

theorem off_diagonal_prime_density_bound (P : Finset Nat)
    (hP : ∀ p ∈ P, p.Prime ∧ p ≠ 2 ∧ p ≠ 5) :
    (∑ p ∈ P, 1 / (p : Real) ^ 2) ≤ (203 / 1250 : Real) := by
  let L := P.filter (fun p => p ≤ 10000)
  let U := P.filter (fun p => ¬p ≤ 10000)
  have hsub : L ⊆ offDiagonalDensityPrimes := by
    intro p hp
    obtain ⟨hp, hb⟩ := Finset.mem_filter.mp hp
    exact Finset.mem_filter.mpr ⟨Finset.mem_range.mpr (by omega), hP p hp⟩
  have hsmall : (∑ p ∈ L, 1 / (p : Real) ^ 2) ≤ (507 / 3125 : Real) :=
    (Finset.sum_le_sum_of_subset_of_nonneg hsub (fun p hp hn => by positivity)).trans
      off_diagonal_density_small
  have hlarge : (∑ p ∈ U, 1 / (p : Real) ^ 2) ≤ (1 : Real) / 10000 := by
    apply sum_off_diagonal_tail_le
    intro p hp
    have hb := (Finset.mem_filter.mp hp).2
    omega
  have he := Finset.sum_filter_add_sum_filter_not P (fun p => p ≤ 10000)
    (fun p => 1 / (p : Real) ^ 2)
  change (∑ p ∈ L, 1 / (p : Real) ^ 2) + (∑ p ∈ U, 1 / (p : Real) ^ 2) = _ at he
  linarith

namespace PrimeDensityBoundTests

theorem diagonal_empty : (∑ p ∈ (∅ : Finset Nat), 2 / (p : Real) ^ 2) ≤
    (277 / 10000 : Real) := diagonal_prime_density_bound ∅ (by simp)

theorem diagonal_two_primes : (∑ p ∈ ({13, 17} : Finset Nat), 2 / (p : Real) ^ 2) ≤
    (277 / 10000 : Real) := by
  apply diagonal_prime_density_bound
  intro p hp
  simp only [Finset.mem_insert, Finset.mem_singleton] at hp
  rcases hp with rfl | rfl <;> norm_num

theorem off_diagonal_three : (∑ p ∈ ({3} : Finset Nat), 1 / (p : Real) ^ 2) ≤
    (203 / 1250 : Real) := by
  apply off_diagonal_prime_density_bound
  intro p hp
  have : p = 3 := Finset.mem_singleton.mp hp
  subst p
  norm_num

theorem first_tail_term : (∑ p ∈ ({10001} : Finset Nat), 2 / (p : Real) ^ 2) ≤
    (1 : Real) / 19994 := by
  apply sum_diagonal_tail_le
  intro p hp
  have : p = 10001 := Finset.mem_singleton.mp hp
  subst p
  norm_num

end PrimeDensityBoundTests

end JSP848
