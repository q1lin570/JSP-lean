import JSP848.OffDiagonalTail
import JSP848.OffDiagonalPrimeBounds

namespace JSP848

noncomputable def offDiagonalTailBound (N b : Nat) (R : Real) : Real :=
  (squareRootMultiplicity b : Real) *
    (2 * ((b : Real) * N + 1) / ((b : Real) * R) +
      ((b : Real) * N + 1) / R ^ 2)

theorem off_diagonal_small_large_numeric {N b q r : Nat} (hb : 0 < b) (hq : 0 < q)
    {R coefficient : Real} (hR : 0 < R) (A P : Finset Nat)
    (hA : A ⊆ Finset.Icc 1 N) (hr : ∀ a ∈ A, a % q = r)
    (hP : ∀ p ∈ P, p.Prime ∧ Nat.Coprime q (p ^ 2) ∧
      p ≠ 2 ∧ p ≠ 5 ∧ (p : Real) ≤ R)
    (hw : ∀ a ∈ A, ∃ p : Nat, p ^ 2 ∣ a * b + 1 ∧ (p ∈ P ∨ R < (p : Real)))
    (hpi : (Nat.primeCounting ⌊R⌋₊ : Real) ≤ coefficient * R / Real.log R) :
    (A.card : Real) ≤ (203 / 1250 : Real) * ((N : Real) / q) +
      coefficient * R / Real.log R + offDiagonalTailBound N b R := by
  classical
  let U := (Finset.Icc 1 N).filter
    (fun a => a % q = r ∧ ∃ p ∈ P, p ^ 2 ∣ a * b + 1)
  let B := A.filter (fun a => a ∉ U)
  have hsub : A ⊆ U ∪ B := by
    intro a ha
    by_cases hu : a ∈ U
    · exact Finset.mem_union_left _ hu
    · exact Finset.mem_union_right _ (Finset.mem_filter.mpr ⟨ha, hu⟩)
  have hc : (A.card : Real) ≤ (U.card : Real) + (B.card : Real) := by
    exact_mod_cast (Finset.card_le_card hsub).trans (Finset.card_union_le _ _)
  have hU := off_diagonal_small_numeric N b q r hq P hP hpi
  have hB : (B.card : Real) ≤ offDiagonalTailBound N b R := by
    apply large_off_diagonal_tail hb hR B
      (fun a ha => hA (Finset.mem_filter.mp ha).1)
    intro a ha
    obtain ⟨ha, hn⟩ := Finset.mem_filter.mp ha
    obtain ⟨p, hd, hs | hl⟩ := hw a ha
    · exact (hn (Finset.mem_filter.mpr ⟨hA ha, hr a ha, p, hs, hd⟩)).elim
    · exact ⟨p, hl, hd⟩
  change (U.card : Real) ≤ _ at hU
  linarith

theorem prime_coprime_twentyfive {p : Nat} (hp : p.Prime) (h5 : p ≠ 5) :
    Nat.Coprime 25 (p ^ 2) := by
  have hc : Nat.Coprime 5 p := (by decide : Nat.Prime 5).coprime_iff_not_dvd.mpr (by
    intro hd
    have he := (Nat.prime_dvd_prime_iff_eq (by decide : Nat.Prime 5) hp).mp hd
    exact h5 he.symm)
  simpa using hc.pow 2 2

noncomputable def smallOffDiagonalPrimes (R : Real) : Finset Nat :=
  (Finset.range (⌊R⌋₊ + 1)).filter (fun p => p.Prime ∧ p ≠ 2 ∧ p ≠ 5)

theorem admissible_even_base_class_bound {N b r : Nat} {A : Finset Nat}
    (hA : Admissible N A) (hb : b ∈ A) (heven : b % 2 = 0)
    (hr : r = 7 ∨ r = 18) (hbr : b % 25 ≠ r)
    {R coefficient : Real} (hR : 0 < R)
    (hpi : (Nat.primeCounting ⌊R⌋₊ : Real) ≤ coefficient * R / Real.log R) :
    ((A.filter (fun a => a % 25 = r)).card : Real) ≤
      (203 / 1250 : Real) * ((N : Real) / 25) +
      coefficient * R / Real.log R + offDiagonalTailBound N b R := by
  classical
  apply off_diagonal_small_large_numeric (Finset.mem_Icc.mp (hA.1 hb)).1
    (by decide) hR (A.filter (fun a => a % 25 = r)) (smallOffDiagonalPrimes R)
  · intro a ha
    exact hA.1 (Finset.mem_filter.mp ha).1
  · intro a ha
    exact (Finset.mem_filter.mp ha).2
  · intro p hp
    obtain ⟨hpbound, hprime, h2, h5⟩ := Finset.mem_filter.mp hp
    refine ⟨hprime, prime_coprime_twentyfive hprime h5, h2, h5, ?_⟩
    exact (Nat.cast_le.mpr (by have := Finset.mem_range.mp hpbound; omega)).trans
      (Nat.floor_le hR.le)
  · intro a ha
    obtain ⟨ha, har⟩ := Finset.mem_filter.mp ha
    obtain ⟨p, hp, hd⟩ := prime_square_witness (hA.2 a ha b hb)
    refine ⟨p, hd, ?_⟩
    by_cases hcut : R < (p : Real)
    · exact Or.inr hcut
    · apply Or.inl
      refine Finset.mem_filter.mpr ⟨Finset.mem_range.mpr (by
        have := Nat.le_floor (le_of_not_gt hcut); omega), hp, ?_, ?_⟩
      · intro h
        subst p
        exact off_diagonal_not_four_of_even heven (by simpa using hd)
      · intro h
        subst p
        exact off_diagonal_not_twentyfive hr har hbr (by simpa using hd)
  · exact hpi

end JSP848
