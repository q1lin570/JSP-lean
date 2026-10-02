import JSP848.PrimeFactorDensity
import JSP848.DiagonalClassCount

namespace JSP848

theorem diagonal_off_diagonal_modeq {a b m : Nat}
    (ha : m ∣ a ^ 2 + 1) (hab : m ∣ a * b + 1) : Nat.ModEq m a b := by
  apply off_diagonal_modeq (b := a)
  · simpa only [pow_two] using ha
  · simpa only [mul_comm] using hab

theorem odd_prime_density_excluding {p : Nat} (hp : p.Prime) (hp2 : p ≠ 2)
    (hp5 : p ≠ 5) (P : Finset Nat)
    (hP : ∀ r ∈ P, r.Prime ∧ r ≠ 2 ∧ r ≠ p) :
    (∑ r ∈ P, 1 / (r : Real) ^ 2) ≤
      (203 / 1250 : Real) + 1 / 25 - 1 / (p : Real) ^ 2 := by
  have hd := off_diagonal_prime_density_subtract (P.erase 5) {p}
    (by
      intro r hr
      obtain ⟨h5, hr⟩ := Finset.mem_erase.mp hr
      exact ⟨(hP r hr).1, (hP r hr).2.1, h5⟩)
    (by simpa using And.intro hp (And.intro hp2 hp5))
    (by
      apply Finset.disjoint_left.mpr
      intro r hr hrp
      exact (hP r (Finset.mem_erase.mp hr).2).2.2 (Finset.mem_singleton.mp hrp))
  simp only [Finset.sum_singleton] at hd
  by_cases h5 : 5 ∈ P
  · have he := Finset.sum_erase_add (s := P) (f := fun r : Nat => 1 / (r : Real) ^ 2) h5
    norm_num at he
    simp only [one_div] at hd ⊢
    linarith
  · rw [Finset.erase_eq_of_notMem h5] at hd
    linarith

/-- One unrestricted root and one root requiring another small square factor. -/
theorem two_residue_small_witness_bound {N b q good bad p : Nat} (hq : 0 < q)
    (A P : Finset Nat) (hA : A ⊆ Finset.Icc 1 N)
    (hcover : ∀ a ∈ A, a % q = good ∨ a % q = bad)
    (hexclude : ∀ a ∈ A, a % q = bad → ¬ p ^ 2 ∣ a * b + 1)
    (hP : ∀ r ∈ P.erase p, r.Prime ∧ Nat.Coprime q (r ^ 2))
    (hw : ∀ a ∈ A, ∃ r ∈ P, r ^ 2 ∣ a * b + 1) :
    (A.card : Real) ≤ (N : Real) / q *
      (1 + ∑ r ∈ P.erase p, 1 / (r : Real) ^ 2) + (P.erase p).card + 1 := by
  classical
  let G := A.filter (fun a => a % q = good)
  let U := (Finset.Icc 1 N).filter
    (fun a => a % q = bad ∧ ∃ r ∈ P.erase p, r ^ 2 ∣ a * b + 1)
  have hsub : A ⊆ G ∪ U := by
    intro a ha
    rcases hcover a ha with hg | hb
    · exact Finset.mem_union_left _ (Finset.mem_filter.mpr ⟨ha, hg⟩)
    · obtain ⟨r, hr, hd⟩ := hw a ha
      have hne : r ≠ p := by
        intro he
        subst r
        exact hexclude a ha hb hd
      exact Finset.mem_union_right _ (Finset.mem_filter.mpr
        ⟨hA ha, hb, r, Finset.mem_erase.mpr ⟨hne, hr⟩, hd⟩)
  have hg : (G.card : Real) ≤ (N : Real) / q + 1 := by
    apply card_pairwise_modeq_real hq (Nat.cast_nonneg N)
    · intro a ha
      exact_mod_cast (Finset.mem_Icc.mp (hA (Finset.mem_filter.mp ha).1)).2
    · intro a ha c hc
      exact (Finset.mem_filter.mp ha).2.trans (Finset.mem_filter.mp hc).2.symm
  have hu := off_diagonal_small_union N b q bad hq (P.erase p) hP
  change (U.card : Real) ≤ _ at hu
  have hc : (A.card : Real) ≤ (G.card : Real) + U.card := by
    exact_mod_cast (Finset.card_le_card hsub).trans (Finset.card_union_le _ _)
  nlinarith

/-- The modulus may include parity; its projection distinguishes the two diagonal roots. -/
theorem diagonal_pair_small_bound {N b q r s p : Nat} (hq : 0 < q)
    (hmq : p ^ 2 ∣ q) (hrs : r % (p ^ 2) ≠ s % (p ^ 2))
    (A P : Finset Nat) (hA : A ⊆ Finset.Icc 1 N)
    (hcover : ∀ a ∈ A, a % q = r ∨ a % q = s)
    (hdiag : ∀ a ∈ A, p ^ 2 ∣ a ^ 2 + 1)
    (hP : ∀ t ∈ P.erase p, t.Prime ∧ Nat.Coprime q (t ^ 2))
    (hw : ∀ a ∈ A, ∃ t ∈ P, t ^ 2 ∣ a * b + 1) :
    (A.card : Real) ≤ (N : Real) / q *
      (1 + ∑ t ∈ P.erase p, 1 / (t : Real) ^ 2) + (P.erase p).card + 1 := by
  have hexclude (bad : Nat) (hne : b % (p ^ 2) ≠ bad % (p ^ 2))
      (a : Nat) (ha : a ∈ A) (he : a % q = bad) : ¬ p ^ 2 ∣ a * b + 1 := by
    intro hd
    have hab : a % (p ^ 2) = b % (p ^ 2) := diagonal_off_diagonal_modeq (hdiag a ha) hd
    have har : a % (p ^ 2) = bad % (p ^ 2) := by
      rw [← Nat.mod_mod_of_dvd a hmq, he]
    exact hne (hab.symm.trans har)
  by_cases hb : b % (p ^ 2) = r % (p ^ 2)
  · apply two_residue_small_witness_bound hq A P hA hcover
      (hexclude s (by rwa [hb])) hP hw
  · apply two_residue_small_witness_bound hq A P hA
      (fun a ha => (hcover a ha).symm) (hexclude r hb) hP hw

namespace DiagonalCompatibilityTests

theorem thirteen_same_root {a b : Nat} (ha : 169 ∣ a ^ 2 + 1)
    (hab : 169 ∣ a * b + 1) : a % 169 = b % 169 :=
  diagonal_off_diagonal_modeq ha hab

theorem density_thirteen (P : Finset Nat)
    (hP : ∀ p ∈ P, p.Prime ∧ p ≠ 2 ∧ p ≠ 13) :
    (∑ p ∈ P, 1 / (p : Real) ^ 2) ≤ (203 / 1250 : Real) + 1 / 25 - 1 / 169 := by
  convert odd_prime_density_excluding (p := 13) (by decide) (by decide) (by decide) P hP
    using 1 <;> norm_num

end DiagonalCompatibilityTests

end JSP848
