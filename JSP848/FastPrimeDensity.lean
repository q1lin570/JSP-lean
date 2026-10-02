import JSP848.WeightedPrimeCertificate
import JSP848.FullPrimeCount.Group000

set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0

namespace JSP848.FastPrimeDensity

def diagonalWeight (p : Nat) : Nat :=
  if 13 ≤ p ∧ p ≤ 10000 ∧ p % 4 = 1 then 2000000000 / p ^ 2 + 1 else 0

def offDiagonalWeight (p : Nat) : Nat :=
  if p ≤ 10000 ∧ p ≠ 2 ∧ p ≠ 5 then 1000000000 / p ^ 2 + 1 else 0

theorem covered {p : Nat} (hp : p.Prime) (hmax : p ≤ 10000) (hne : p ≠ 2) :
    ∃ i < FullPrimeCount.hints000000.length, 3 + 2 * i = p := by
  have ho := hp.eq_two_or_odd.resolve_left hne
  have hp2 := hp.two_le
  rw [FullPrimeCount.length000000]
  exact ⟨p / 2 - 1, by omega, by omega⟩

theorem diagonal_weight_checked :
    primeWeightUpper diagonalWeight 3 2 FullPrimeCount.hints000000 ≤ 27620000 := by
  decide +kernel

theorem off_diagonal_weight_checked :
    primeWeightUpper offDiagonalWeight 3 2 FullPrimeCount.hints000000 ≤ 162240000 := by
  decide +kernel

theorem diagonal_checked :
    (∑ p ∈ (Finset.range 10001).filter (fun p => 13 ≤ p ∧ p.Prime ∧ p % 4 = 1),
      (2000000000 / p ^ 2 + 1)) ≤ 27620000 := by
  let P := (Finset.range 10001).filter (fun p => 13 ≤ p ∧ p.Prime ∧ p % 4 = 1)
  have hb := checked_prime_weight_sum diagonalWeight FullPrimeCount.checked000000 P (by
    intro p hp
    obtain ⟨hb, hlo, hprime, hmod⟩ := Finset.mem_filter.mp hp
    have hmax := Finset.mem_range.mp hb
    exact ⟨hprime, covered hprime (by omega) (by omega)⟩)
  have he : (∑ p ∈ P, diagonalWeight p) = ∑ p ∈ P, (2000000000 / p ^ 2 + 1) := by
    apply Finset.sum_congr rfl
    intro p hp
    obtain ⟨hb, hlo, hprime, hmod⟩ := Finset.mem_filter.mp hp
    have hmax := Finset.mem_range.mp hb
    simp [diagonalWeight, hlo, show p ≤ 10000 by omega, hmod]
  rw [he] at hb
  exact hb.trans diagonal_weight_checked

theorem off_diagonal_checked :
    (∑ p ∈ (Finset.range 10001).filter (fun p => p.Prime ∧ p ≠ 2 ∧ p ≠ 5),
      (1000000000 / p ^ 2 + 1)) ≤ 162240000 := by
  let P := (Finset.range 10001).filter (fun p => p.Prime ∧ p ≠ 2 ∧ p ≠ 5)
  have hb := checked_prime_weight_sum offDiagonalWeight FullPrimeCount.checked000000 P (by
    intro p hp
    obtain ⟨hb, hprime, h2, h5⟩ := Finset.mem_filter.mp hp
    have hmax := Finset.mem_range.mp hb
    exact ⟨hprime, covered hprime (by omega) h2⟩)
  have he : (∑ p ∈ P, offDiagonalWeight p) = ∑ p ∈ P, (1000000000 / p ^ 2 + 1) := by
    apply Finset.sum_congr rfl
    intro p hp
    obtain ⟨hb, hprime, h2, h5⟩ := Finset.mem_filter.mp hp
    have hmax := Finset.mem_range.mp hb
    simp [offDiagonalWeight, show p ≤ 10000 by omega, h2, h5]
  rw [he] at hb
  exact hb.trans off_diagonal_weight_checked

end JSP848.FastPrimeDensity
