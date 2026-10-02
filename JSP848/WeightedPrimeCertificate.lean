import JSP848.PrimeCountCertificate

namespace JSP848

def primeWeightUpper (weight : Nat → Nat) (base step : Nat) : List Nat → Nat
  | [] => 0
  | d :: rest => (if d = 0 then weight base else 0) +
      primeWeightUpper weight (base + step) step rest

/-- Nonnegative weights may be charged to every unexcluded progression entry. -/
theorem checked_prime_weight_sum {base step : Nat} {hints : List Nat}
    (weight : Nat → Nat) (hc : checkPrimeHints base step hints = true)
    (P : Finset Nat)
    (hP : ∀ p ∈ P, p.Prime ∧ ∃ i < hints.length, base + step * i = p) :
    (∑ p ∈ P, weight p) ≤ primeWeightUpper weight base step hints := by
  induction hints generalizing base P with
  | nil =>
    have he : P = ∅ := by
      apply Finset.eq_empty_iff_forall_notMem.mpr
      intro p hp
      obtain ⟨hprime, i, hi, he⟩ := hP p hp
      simp at hi
    simp [he, primeWeightUpper]
  | cons d rest ih =>
    obtain ⟨hh, ht⟩ := Bool.and_eq_true_iff.mp hc
    have htail : ∀ p ∈ P.erase base,
        p.Prime ∧ ∃ i < rest.length, base + step + step * i = p := by
      intro p hp
      obtain ⟨hne, hp⟩ := Finset.mem_erase.mp hp
      obtain ⟨hprime, i, hi, he⟩ := hP p hp
      have hipos : 0 < i := by
        by_contra! hz
        have hi0 : i = 0 := by omega
        simp only [hi0, Nat.mul_zero, Nat.add_zero] at he
        exact hne he.symm
      refine ⟨hprime, i - 1, by simpa using (show i - 1 < rest.length by
        simp only [List.length_cons] at hi
        omega), ?_⟩
      have hi' : i = (i - 1) + 1 := by omega
      rw [hi', Nat.mul_add, Nat.mul_one] at he
      omega
    have hb := ih ht (P.erase base) htail
    by_cases hmem : base ∈ P
    · have hd := prime_hint_not_excluded (hP base hmem).1 hh
      subst d
      rw [← Finset.sum_erase_add P weight hmem]
      simp only [primeWeightUpper, ite_true]
      omega
    · rw [Finset.erase_eq_of_notMem hmem] at hb
      simp only [primeWeightUpper]
      split <;> omega

namespace WeightedPrimeCertificateTests

theorem unknown_composite_overcounts :
    primeWeightUpper (fun n => n) 9 2 [0, 0] = 20 := by decide +kernel

theorem weighted_three : (∑ p ∈ ({3} : Finset Nat), p) ≤
    primeWeightUpper (fun n => n) 3 2 [0, 0, 0, 3] := by
  apply checked_prime_weight_sum _ (by decide +kernel)
  intro p hp
  have : p = 3 := Finset.mem_singleton.mp hp
  subst p
  exact ⟨by decide, 0, by decide, by decide⟩

end WeightedPrimeCertificateTests

end JSP848
