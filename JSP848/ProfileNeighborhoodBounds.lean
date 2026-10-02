import JSP848.ProfileNeighborhoodCertificate
import JSP848.EvenOverlapCase
import JSP848.BaseFactorOverlap
import JSP848.OddOverlapCount
import JSP848.CrossOverlapCase

namespace JSP848

theorem even_base_overlap_bound {N b : Nat} (heven : b % 2 = 0)
    (A J F K : Finset Nat) (hA : A ⊆ Finset.Icc 1 N)
    (hr : ∀ a ∈ A, a % 25 ∈ J) (hJ : ∀ r ∈ J, r = 7 ∨ r = 18)
    (hb : ∀ r ∈ J, b % 25 ≠ r) (hw : ∀ a ∈ A, ¬Squarefree (a * b + 1))
    (hF : ∀ p ∈ F, p.Prime ∧ p ≠ 2 ∧ p ≠ 5 ∧ p ∣ b)
    {R piBound tail : Real}
    (hK : ∀ p ∈ K, p.Prime ∧ p ≠ 2 ∧ p ≠ 5 ∧ ¬p ∣ b ∧ (p : Real) ≤ R)
    (hpi : (Nat.primeCounting ⌊R⌋₊ : Real) ≤ piBound)
    (htail : ∀ T : Finset Nat, T ⊆ Finset.Icc 1 N →
      (∀ a ∈ T, ∃ p : Nat, R < (p : Real) ∧ p ^ 2 ∣ a * b + 1) →
      (T.card : Real) ≤ tail) :
    (A.card : Real) ≤ (J.card : Real) *
      (((203 / 1250 : Real) - ∑ p ∈ F, 1 / (p : Real) ^ 2 - primeSquareOverlap K) *
        ((N : Real) / 25) + piBound + (2 : Real) ^ K.card) + tail := by
  apply split_off_diagonal_large A hA hw ?_ htail
  intro C hC hwC
  exact even_base_small_overlap_bound heven C J F K (hC.trans hA)
    (fun a ha => hr a (hC ha)) hJ hb hF hK hwC hpi

namespace ProfileNeighborhoodCertificate

theorem even_base_bound (c : ProfileNeighborhoodCertificate) {N b : Nat} {u : Real}
    {lo hi : Rat} (hc : c.Valid (canonicalFactorProfile b) lo hi)
    (hb : 0 < b) (hbN : b ≤ N) (hmax : N ≤ 2 ^ 41) (heven : b % 2 = 0)
    (hlu : (lo : Real) ≤ u) (huh : u ≤ hi) (hN : (N : Real) = u ^ 3)
    (A J : Finset Nat) (hA : A ⊆ Finset.Icc 1 N)
    (hr : ∀ a ∈ A, a % 25 ∈ J) (hJ : ∀ r ∈ J, r = 7 ∨ r = 18)
    (hbJ : ∀ r ∈ J, b % 25 ≠ r) (hw : ∀ a ∈ A, ¬Squarefree (a * b + 1)) :
    (A.card : Real) ≤
      (c.value (canonicalFactorProfile b) lo (J.card / 25) J.card false : Real) * N := by
  have h := even_base_overlap_bound heven A J
    (profileKnownWitnessFactors (canonicalFactorProfile b))
    (profileOverlapOddPrimes (canonicalFactorProfile b)) hA hr hJ hbJ hw
    (fun _ hp => profileKnownWitnessFactors_sound hp)
    (fun _ hp => profileOverlapOddPrimes_sound hb (c.cutoff_lower hc hlu) hp)
    (le_refl _) (c.tail_bound hc hb hbN hmax hlu hN)
  have he := c.expression_bound (volume := J.card / 25) (classes := J.card) false hc
    (Nat.cast_nonneg _) hlu huh hN
  simp only [profileNeighborDensity_cast, profileOverlapPrimes, Bool.false_eq_true, if_false,
    Rat.cast_div, Rat.cast_natCast, Rat.cast_ofNat] at he
  nlinarith

theorem odd_base_classes_bound (c : ProfileNeighborhoodCertificate) {N b : Nat} {u : Real}
    {lo hi : Rat} (hc : c.Valid (canonicalFactorProfile b) lo hi)
    (hb : 0 < b) (hbN : b ≤ N) (hmax : N ≤ 2 ^ 41) (hodd : b % 2 = 1)
    (hlu : (lo : Real) ≤ u) (huh : u ≤ hi) (hN : (N : Real) = u ^ 3)
    (A J : Finset Nat) (hA : A ⊆ Finset.Icc 1 N)
    (hr : ∀ a ∈ A, a % 25 ∈ J) (hJ : ∀ r ∈ J, r = 7 ∨ r = 18)
    (hbJ : ∀ r ∈ J, b % 25 ≠ r) (hw : ∀ a ∈ A, ¬Squarefree (a * b + 1)) :
    (A.card : Real) ≤
      (c.value (canonicalFactorProfile b) lo (J.card / 25) J.card true : Real) * N := by
  have h := base_factor_overlap_bound A J
    (profileKnownWitnessFactors (canonicalFactorProfile b))
    (insert 2 (profileOverlapOddPrimes (canonicalFactorProfile b))) hA hr hJ hbJ hw
    (fun _ hp => let ht := profileKnownWitnessFactors_sound hp; ⟨ht.1, ht.2.2⟩)
    (fun _ hp => profileOverlapWithTwo_sound hb hodd (c.cutoff_lower hc hlu) hp)
    (le_refl _) (c.tail_bound hc hb hbN hmax hlu hN)
  have he := c.expression_bound (volume := J.card / 25) (classes := J.card) true hc
    (Nat.cast_nonneg _) hlu huh hN
  simp only [profileNeighborDensity_cast, profileOverlapPrimes, if_true,
    Rat.cast_div, Rat.cast_natCast, Rat.cast_ofNat] at he
  nlinarith

theorem same_odd_bound (c : ProfileNeighborhoodCertificate) {N b : Nat} {u : Real}
    {lo hi : Rat} (hc : c.Valid (canonicalFactorProfile b) lo hi)
    (hb : 0 < b) (hbN : b ≤ N) (hmax : N ≤ 2 ^ 41) (hodd : b % 2 = 1)
    (hlu : (lo : Real) ≤ u) (huh : u ≤ hi) (hN : (N : Real) = u ^ 3)
    (A : Finset Nat) (hA : A ⊆ Finset.Icc 1 N)
    (hr : ∀ a ∈ A, a % 25 = 7 ∨ a % 25 = 18)
    (h4 : ∀ a ∈ A, a % 4 = b % 4) (hb7 : b % 25 ≠ 7) (hb18 : b % 25 ≠ 18)
    (hw : ∀ a ∈ A, ¬Squarefree (a * b + 1)) :
    (A.card : Real) ≤ (c.value (canonicalFactorProfile b) lo (1 / 50) 2 false : Real) * N := by
  have h := odd_base_overlap_bound hodd A
    (profileKnownWitnessFactors (canonicalFactorProfile b))
    (profileOverlapOddPrimes (canonicalFactorProfile b)) hA hr h4 hb7 hb18 hw
    (fun _ hp => profileKnownWitnessFactors_sound hp)
    (fun _ hp => profileOverlapOddPrimes_sound hb (c.cutoff_lower hc hlu) hp)
    (le_refl _) (c.tail_bound hc hb hbN hmax hlu hN)
  have he := c.expression_bound (volume := 1 / 50) (classes := 2) false hc
    (by norm_num) hlu huh hN
  simp only [profileNeighborDensity_cast, profileOverlapPrimes, Bool.false_eq_true, if_false,
    Rat.cast_div, Rat.cast_one, Rat.cast_ofNat] at he
  nlinarith

theorem even_exceptional_bound (c : ProfileNeighborhoodCertificate) {N b : Nat}
    {A : Finset Nat} {u S : Real} {lo hi : Rat}
    (hc : c.Valid (canonicalFactorProfile b) lo hi)
    (hA : Admissible N A) (hb : b ∈ exceptionalPart A) (heven : b % 2 = 0)
    (hmax : N ≤ 2 ^ 41) (hlu : (lo : Real) ≤ u) (huh : u ≤ hi)
    (hN : (N : Real) = u ^ 3) (hS : 2 ≤ S) :
    (A.card : Real) ≤ ((277 / 10000 : Real) - diagonalCompatibilityGain +
      (c.value (canonicalFactorProfile b) lo (2 / 25) 4 false : Real)) * N +
      (smallDiagonalPrimes S).card +
      pellTailBound N (((N : Real) ^ 2 + 1) / S ^ 2) + 2 := by
  obtain ⟨hbpos, hbN⟩ := Finset.mem_Icc.mp (hA.1 (Finset.mem_filter.mp hb).1)
  have h := admissible_even_exceptional_overlap_bound hA hb heven
    (profileKnownWitnessFactors (canonicalFactorProfile b))
    (profileOverlapOddPrimes (canonicalFactorProfile b))
    (fun _ hp => profileKnownWitnessFactors_sound hp) hS
    (fun _ hp => profileOverlapOddPrimes_sound hbpos (c.cutoff_lower hc hlu) hp)
    (le_refl _) (c.tail_bound hc hbpos hbN hmax hlu hN)
  have he := c.expression_bound (volume := 2 / 25) (classes := 4) false hc
    (by norm_num) hlu huh hN
  simp only [profileNeighborDensity_cast, profileOverlapPrimes, Bool.false_eq_true, if_false,
    Rat.cast_div, Rat.cast_ofNat] at he
  have hp : (0 : Real) ≤ 2 ^ (profileOverlapOddPrimes (canonicalFactorProfile b)).card := by positivity
  nlinarith

theorem base_bound (c : ProfileNeighborhoodCertificate) {N b : Nat} {u : Real}
    {lo hi : Rat} (hc : c.Valid (canonicalFactorProfile b) lo hi)
    (hb : 0 < b) (hbN : b ≤ N) (hmax : N ≤ 2 ^ 41)
    (hlu : (lo : Real) ≤ u) (huh : u ≤ hi) (hN : (N : Real) = u ^ 3)
    (A J : Finset Nat) (hA : A ⊆ Finset.Icc 1 N)
    (hr : ∀ a ∈ A, a % 25 ∈ J) (hJ : ∀ r ∈ J, r = 7 ∨ r = 18)
    (hbJ : ∀ r ∈ J, b % 25 ≠ r) (hw : ∀ a ∈ A, ¬Squarefree (a * b + 1)) :
    (A.card : Real) ≤ (c.value (canonicalFactorProfile b) lo (J.card / 25) J.card
      (decide ((canonicalFactorProfile b).1 = 0)) : Real) * N := by
  by_cases ho : b % 2 = 1
  · have hp := (canonicalFactorProfile_odd_iff hb).mpr ho
    simpa only [hp, decide_true] using
      c.odd_base_classes_bound hc hb hbN hmax ho hlu huh hN A J hA hr hJ hbJ hw
  · have hp : (canonicalFactorProfile b).1 ≠ 0 :=
      fun hz => ho ((canonicalFactorProfile_odd_iff hb).mp hz)
    have he : b % 2 = 0 := by have := Nat.mod_lt b (by decide : 0 < 2); omega
    simpa only [hp, decide_false] using
      c.even_base_bound hc hb hbN hmax he hlu huh hN A J hA hr hJ hbJ hw

theorem mixed_bound (ce cb : ProfileNeighborhoodCertificate) {N b e r : Nat}
    {A : Finset Nat} {u S : Real} {lo hi : Rat}
    (hce : ce.Valid (canonicalFactorProfile e) lo hi)
    (hcb : cb.Valid (canonicalFactorProfile b) lo hi)
    (hA : Admissible N A) (hb : b ∈ exceptionalPart A)
    (ho : ∀ a ∈ exceptionalPart A, a % 2 = 1)
    (he : e ∈ residuePart A r) (hr : r = 7 ∨ r = 18) (heven : e % 2 = 0)
    (hmax : N ≤ 2 ^ 41) (hlu : (lo : Real) ≤ u) (huh : u ≤ hi)
    (hN : (N : Real) = u ^ 3) (hS : 2 ≤ S) :
    (A.card : Real) ≤ ((277 / 20000 : Real) - diagonalCompatibilityGain / 2 +
      (ce.value (canonicalFactorProfile e) lo (1 / 25) 3 false : Real) +
      (cb.value (canonicalFactorProfile b) lo (1 / 25) 1 true : Real)) * N +
      (smallDiagonalPrimes S).card +
      oddPellTailBound N (((N : Real) ^ 2 + 1) / S ^ 2) + 2 := by
  obtain ⟨hbpos, hbN⟩ := Finset.mem_Icc.mp (hA.1 (Finset.mem_filter.mp hb).1)
  obtain ⟨hepos, heN⟩ := Finset.mem_Icc.mp (hA.1 (Finset.mem_filter.mp he).1)
  have h := admissible_cross_overlap_bound hA hb ho he hr heven
    (profileKnownWitnessFactors (canonicalFactorProfile e))
    (profileOverlapOddPrimes (canonicalFactorProfile e))
    (profileKnownWitnessFactors (canonicalFactorProfile b))
    (insert 2 (profileOverlapOddPrimes (canonicalFactorProfile b)))
    (fun _ hp => profileKnownWitnessFactors_sound hp)
    (fun _ hp => let ht := profileKnownWitnessFactors_sound hp; ⟨ht.1, ht.2.2⟩) hS
    (fun _ hp => profileOverlapOddPrimes_sound hepos (ce.cutoff_lower hce hlu) hp)
    (fun _ hp => profileOverlapWithTwo_sound hbpos (ho b hb) (cb.cutoff_lower hcb hlu) hp)
    (le_refl _) (le_refl _)
    (ce.tail_bound hce hepos heN hmax hlu hN) (cb.tail_bound hcb hbpos hbN hmax hlu hN)
  have henvE := ce.expression_bound (volume := 1 / 25) (classes := 3) false hce
    (by norm_num) hlu huh hN
  have henvB := cb.expression_bound (volume := 1 / 25) (classes := 1) true hcb
    (by norm_num) hlu huh hN
  simp only [profileNeighborDensity_cast, profileOverlapPrimes, Bool.false_eq_true, if_false,
    if_true, Rat.cast_div, Rat.cast_one, Rat.cast_ofNat] at henvE henvB
  have hp : (0 : Real) ≤ 2 ^ (profileOverlapOddPrimes (canonicalFactorProfile e)).card := by positivity
  nlinarith

end ProfileNeighborhoodCertificate

end JSP848
