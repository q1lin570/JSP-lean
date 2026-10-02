import JSP848.OffDiagonalOverlapClasses
import JSP848.PrimeFactorDensity
import JSP848.OddBaseCase
import JSP848.SharedOffDiagonalTail

namespace JSP848

theorem oddBaseResidues_lt {s r : Nat} (hr : r ∈ oddBaseResidues s) : r < 100 := by
  unfold oddBaseResidues at hr
  split_ifs at hr <;> simp only [Finset.mem_insert, Finset.mem_singleton] at hr <;> omega

theorem odd_base_small_overlap_bound {N b : Nat} (hbo : b % 2 = 1)
    (A F K : Finset Nat) (hA : A ⊆ Finset.Icc 1 N)
    (hr : ∀ a ∈ A, a % 25 = 7 ∨ a % 25 = 18)
    (h4 : ∀ a ∈ A, a % 4 = b % 4) (hb7 : b % 25 ≠ 7) (hb18 : b % 25 ≠ 18)
    (hF : ∀ p ∈ F, p.Prime ∧ p ≠ 2 ∧ p ≠ 5 ∧ p ∣ b)
    {R piBound : Real}
    (hK : ∀ p ∈ K, p.Prime ∧ p ≠ 2 ∧ p ≠ 5 ∧ ¬p ∣ b ∧ (p : Real) ≤ R)
    (hw : ∀ a ∈ A, ∃ p : Nat, p.Prime ∧ (p : Real) ≤ R ∧ p ^ 2 ∣ a * b + 1)
    (hpi : (Nat.primeCounting ⌊R⌋₊ : Real) ≤ piBound) :
    (A.card : Real) ≤ 2 *
      (((203 / 1250 : Real) - ∑ p ∈ F, 1 / (p : Real) ^ 2 - primeSquareOverlap K) *
        ((N : Real) / 100) + piBound + (2 : Real) ^ K.card) := by
  classical
  have hb4 : b % 4 = 1 ∨ b % 4 = 3 := by
    have hm : (b % 4) % 2 = 1 := by simpa using hbo
    have := Nat.mod_lt b (by decide : 0 < 4)
    omega
  let P := (smallOffDiagonalPrimes R).filter (fun p => ¬p ∣ b)
  let J := oddBaseResidues (b % 4)
  let U := (Finset.Icc 1 N).filter (fun a => a % 100 ∈ J ∧ ∃ p ∈ P, p ^ 2 ∣ a * b + 1)
  have hsub : A ⊆ U := by
    intro a ha
    obtain ⟨p, hp, hpR, hd⟩ := hw a ha
    refine Finset.mem_filter.mpr ⟨hA ha, odd_base_residues_mem hb4 (hr a ha) (h4 a ha),
      p, Finset.mem_filter.mpr
      ⟨Finset.mem_filter.mpr ⟨Finset.mem_range.mpr (Nat.lt_succ_of_le (Nat.le_floor hpR)),
        hp, ?_, ?_⟩, off_diagonal_prime_not_dvd hp hd⟩, hd⟩
    · intro he
      subst p
      have hao : a % 2 = 1 := by
        have hmod : (a % 4) % 2 = a % 2 := Nat.mod_mod_of_dvd a (by decide)
        rw [h4 a ha] at hmod
        simpa using hmod.symm.trans (show (b % 4) % 2 = 1 by simpa using hbo)
      exact off_diagonal_not_four_of_same_odd_class hao (h4 a ha) (by simpa using hd)
    · intro he
      subst p
      rcases hr a ha with ha7 | ha18
      · exact off_diagonal_not_twentyfive (Or.inl rfl) ha7 hb7 (by simpa using hd)
      · exact off_diagonal_not_twentyfive (Or.inr rfl) ha18 hb18 (by simpa using hd)
  have hKP : K ⊆ P := by
    intro p hp
    obtain ⟨ht, h2, h5, hdiv, hR⟩ := hK p hp
    exact Finset.mem_filter.mpr ⟨Finset.mem_filter.mpr
      ⟨Finset.mem_range.mpr (Nat.lt_succ_of_le (Nat.le_floor hR)), ht, h2, h5⟩, hdiv⟩
  have hcount := off_diagonal_overlap_classes (N := N) (b := b) (by decide : 0 < 100)
    J P K (fun _ hr => oddBaseResidues_lt hr) hKP
    (by
      intro p hp
      obtain ⟨_, hprime, h2, h5⟩ := Finset.mem_filter.mp (Finset.mem_filter.mp hp).1
      exact ⟨hprime, prime_coprime_hundred hprime h2 h5⟩)
    (fun p hp => (hK p hp).2.2.2.1)
  change (U.card : Real) ≤ _ at hcount
  have hd := off_diagonal_prime_density_subtract P F
    (fun _ hp => (Finset.mem_filter.mp (Finset.mem_filter.mp hp).1).2)
    (fun p hp => ⟨(hF p hp).1, (hF p hp).2.1, (hF p hp).2.2.1⟩)
    (prime_factor_filter_disjoint _ F (fun p hp => (hF p hp).2.2.2))
  have hpcount : (P.card : Real) ≤ piBound := by
    apply (Nat.cast_le.mpr (card_prime_finset_le_counting P ?_)).trans hpi
    intro p hp
    obtain ⟨hrange, hprime, _⟩ := Finset.mem_filter.mp (Finset.mem_filter.mp hp).1
    exact ⟨hprime, Nat.lt_succ_iff.mp (Finset.mem_range.mp hrange)⟩
  have hm := mul_le_mul_of_nonneg_left (sub_le_sub_right hd (primeSquareOverlap K))
    (show (0 : Real) ≤ N / 100 by positivity)
  have hc : (A.card : Real) ≤ U.card := Nat.cast_le.mpr (Finset.card_le_card hsub)
  simp only [J, card_oddBaseResidues, Nat.cast_ofNat] at hcount
  nlinarith

theorem odd_base_overlap_bound {N b : Nat} (hbo : b % 2 = 1)
    (A F K : Finset Nat) (hA : A ⊆ Finset.Icc 1 N)
    (hr : ∀ a ∈ A, a % 25 = 7 ∨ a % 25 = 18)
    (h4 : ∀ a ∈ A, a % 4 = b % 4) (hb7 : b % 25 ≠ 7) (hb18 : b % 25 ≠ 18)
    (hw : ∀ a ∈ A, ¬Squarefree (a * b + 1))
    (hF : ∀ p ∈ F, p.Prime ∧ p ≠ 2 ∧ p ≠ 5 ∧ p ∣ b)
    {R piBound tail : Real}
    (hK : ∀ p ∈ K, p.Prime ∧ p ≠ 2 ∧ p ≠ 5 ∧ ¬p ∣ b ∧ (p : Real) ≤ R)
    (hpi : (Nat.primeCounting ⌊R⌋₊ : Real) ≤ piBound)
    (htail : ∀ T : Finset Nat, T ⊆ Finset.Icc 1 N →
      (∀ a ∈ T, ∃ p : Nat, R < (p : Real) ∧ p ^ 2 ∣ a * b + 1) →
      (T.card : Real) ≤ tail) :
    (A.card : Real) ≤ 2 *
      (((203 / 1250 : Real) - ∑ p ∈ F, 1 / (p : Real) ^ 2 - primeSquareOverlap K) *
        ((N : Real) / 100) + piBound + (2 : Real) ^ K.card) + tail := by
  apply split_off_diagonal_large A hA hw ?_ htail
  intro C hC hwC
  exact odd_base_small_overlap_bound hbo C F K (hC.trans hA)
    (fun a ha => hr a (hC ha)) (fun a ha => h4 a (hC ha)) hb7 hb18 hF hK hwC hpi

theorem odd_base_overlap_divisor {N b c : Nat} (hbo : b % 2 = 1)
    (hb : 0 < b) (hc : 0 < c) (hcb : c ∣ b)
    (A F K : Finset Nat) (hA : A ⊆ Finset.Icc 1 N)
    (hr : ∀ a ∈ A, a % 25 = 7 ∨ a % 25 = 18)
    (h4 : ∀ a ∈ A, a % 4 = b % 4) (hb7 : b % 25 ≠ 7) (hb18 : b % 25 ≠ 18)
    (hw : ∀ a ∈ A, ¬Squarefree (a * b + 1))
    (hF : ∀ p ∈ F, p.Prime ∧ p ≠ 2 ∧ p ≠ 5 ∧ p ∣ b)
    {R piBound : Real} (hR : 0 < R)
    (hK : ∀ p ∈ K, p.Prime ∧ p ≠ 2 ∧ p ≠ 5 ∧ ¬p ∣ b ∧ (p : Real) ≤ R)
    (hpi : (Nat.primeCounting ⌊R⌋₊ : Real) ≤ piBound) :
    (A.card : Real) ≤ 2 *
      (((203 / 1250 : Real) - ∑ p ∈ F, 1 / (p : Real) ^ 2 - primeSquareOverlap K) *
        ((N : Real) / 100) + piBound + (2 : Real) ^ K.card) +
      divisorOffDiagonalTailBound N b c R :=
  odd_base_overlap_bound hbo A F K hA hr h4 hb7 hb18 hw hF hK hpi
    (fun T hT hwT => large_divisor_off_diagonal_tail hb hc hcb hR T hT hwT)

end JSP848
