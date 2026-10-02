import JSP848.OffDiagonalCount
import JSP848.PrimeDensityBound
import JSP848.FinitePrimeBounds
import JSP848.ElementaryPrimeBound

namespace JSP848

theorem card_prime_finset_le_counting {M : Nat} (P : Finset Nat)
    (hP : ∀ p ∈ P, p.Prime ∧ p ≤ M) : P.card ≤ Nat.primeCounting M := by
  simp only [Nat.primeCounting, Nat.primeCounting', Nat.count_eq_card_filter_range]
  apply Finset.card_le_card
  intro p hp
  exact Finset.mem_filter.mpr ⟨Finset.mem_range.mpr (by have := (hP p hp).2; omega),
    (hP p hp).1⟩

theorem off_diagonal_small_density (N b q r : Nat) (hq : 0 < q) (P : Finset Nat)
    (hP : ∀ p ∈ P, p.Prime ∧ Nat.Coprime q (p ^ 2) ∧ p ≠ 2 ∧ p ≠ 5) :
    (((Finset.Icc 1 N).filter
      (fun a => a % q = r ∧ ∃ p ∈ P, p ^ 2 ∣ a * b + 1)).card : Real) ≤
      (203 / 1250 : Real) * ((N : Real) / q) + P.card := by
  have hb := off_diagonal_small_union N b q r hq P
    (fun p hp => ⟨(hP p hp).1, (hP p hp).2.1⟩)
  have hd := off_diagonal_prime_density_bound P
    (fun p hp => ⟨(hP p hp).1, (hP p hp).2.2⟩)
  have hm := mul_le_mul_of_nonneg_left hd
    (by positivity : (0 : Real) ≤ (N : Real) / q)
  nlinarith

theorem off_diagonal_small_numeric (N b q r : Nat) (hq : 0 < q)
    {R coefficient : Real} (P : Finset Nat)
    (hP : ∀ p ∈ P, p.Prime ∧ Nat.Coprime q (p ^ 2) ∧
      p ≠ 2 ∧ p ≠ 5 ∧ (p : Real) ≤ R)
    (hpi : (Nat.primeCounting ⌊R⌋₊ : Real) ≤ coefficient * R / Real.log R) :
    (((Finset.Icc 1 N).filter
      (fun a => a % q = r ∧ ∃ p ∈ P, p ^ 2 ∣ a * b + 1)).card : Real) ≤
      (203 / 1250 : Real) * ((N : Real) / q) + coefficient * R / Real.log R := by
  have hb := off_diagonal_small_density N b q r hq P
    (fun p hp => ⟨(hP p hp).1, (hP p hp).2.1, (hP p hp).2.2.1,
      (hP p hp).2.2.2.1⟩)
  have hc : (P.card : Real) ≤ Nat.primeCounting ⌊R⌋₊ := by
    exact_mod_cast card_prime_finset_le_counting P
      (fun p hp => ⟨(hP p hp).1, Nat.le_floor (hP p hp).2.2.2.2⟩)
  linarith

theorem off_diagonal_small_finite_weak (N b q r : Nat) (hq : 0 < q)
    {R : Real} (hlo : 16384 ≤ R) (hhi : R ≤ 33554432) (P : Finset Nat)
    (hP : ∀ p ∈ P, p.Prime ∧ Nat.Coprime q (p ^ 2) ∧
      p ≠ 2 ∧ p ≠ 5 ∧ (p : Real) ≤ R) :
    (((Finset.Icc 1 N).filter
      (fun a => a % q = r ∧ ∃ p ∈ P, p ^ 2 ∣ a * b + 1)).card : Real) ≤
      (203 / 1250 : Real) * ((N : Real) / q) + (29 / 25 : Real) * R / Real.log R :=
  off_diagonal_small_numeric N b q r hq P hP
    (by simpa using FinitePrimeBounds.weak_bound R hlo hhi)

theorem off_diagonal_small_finite_strong (N b q r : Nat) (hq : 0 < q)
    {R : Real} (hlo : 524288 ≤ R) (hhi : R ≤ 33554432) (P : Finset Nat)
    (hP : ∀ p ∈ P, p.Prime ∧ Nat.Coprime q (p ^ 2) ∧
      p ≠ 2 ∧ p ≠ 5 ∧ (p : Real) ≤ R) :
    (((Finset.Icc 1 N).filter
      (fun a => a % q = r ∧ ∃ p ∈ P, p ^ 2 ∣ a * b + 1)).card : Real) ≤
      (203 / 1250 : Real) * ((N : Real) / q) + (28 / 25 : Real) * R / Real.log R :=
  off_diagonal_small_numeric N b q r hq P hP
    (by simpa using FinitePrimeBounds.strong_bound R hlo hhi)

theorem off_diagonal_small_unbounded (N b q r : Nat) (hq : 0 < q)
    {R : Real} (hlo : 65536 ≤ R) (P : Finset Nat)
    (hP : ∀ p ∈ P, p.Prime ∧ Nat.Coprime q (p ^ 2) ∧
      p ≠ 2 ∧ p ≠ 5 ∧ (p : Real) ≤ R) :
    (((Finset.Icc 1 N).filter
      (fun a => a % q = r ∧ ∃ p ∈ P, p ^ 2 ∣ a * b + 1)).card : Real) ≤
      (203 / 1250 : Real) * ((N : Real) / q) + 3 * R / Real.log R :=
  off_diagonal_small_numeric N b q r hq P hP
    (primeCounting_le_three_mul_div_log hlo)

namespace OffDiagonalPrimeBoundsTests

theorem empty_prime_set (M : Nat) : (∅ : Finset Nat).card ≤ Nat.primeCounting M :=
  card_prime_finset_le_counting ∅ (by simp)

theorem small_prime_set : ({3, 7} : Finset Nat).card ≤ Nat.primeCounting 7 := by
  apply card_prime_finset_le_counting
  intro p hp
  simp only [Finset.mem_insert, Finset.mem_singleton] at hp
  rcases hp with rfl | rfl <;> norm_num

theorem finite_cutoff (N : Nat) :
    (((Finset.Icc 1 N).filter (fun a => a % 25 = 7 ∧
      ∃ p ∈ ({3, 7} : Finset Nat), p ^ 2 ∣ a * 2 + 1)).card : Real) ≤
      (203 / 1250 : Real) * ((N : Real) / 25) +
      (29 / 25 : Real) * 65536 / Real.log 65536 := by
  apply off_diagonal_small_finite_weak N 2 25 7 (by decide)
    (by norm_num) (by norm_num)
  intro p hp
  simp only [Finset.mem_insert, Finset.mem_singleton] at hp
  rcases hp with rfl | rfl <;> norm_num

end OffDiagonalPrimeBoundsTests

end JSP848
