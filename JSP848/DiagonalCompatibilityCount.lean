import JSP848.DiagonalCompatibility

namespace JSP848

noncomputable def smallOddPrimes (R : Real) : Finset Nat :=
  (Finset.range (⌊R⌋₊ + 1)).filter (fun p => p.Prime ∧ p ≠ 2)

theorem even_diagonal_pair_small_bound {N b q r s p : Nat}
    (hp : p.Prime) (hp2 : p ≠ 2) (hp5 : p ≠ 5) (heven : b % 2 = 0)
    (hq : q = p ^ 2 ∨ q = 2 * p ^ 2) (hrs : r % (p ^ 2) ≠ s % (p ^ 2))
    (A : Finset Nat) (hA : A ⊆ Finset.Icc 1 N)
    (hcover : ∀ a ∈ A, a % q = r ∨ a % q = s)
    (hdiag : ∀ a ∈ A, p ^ 2 ∣ a ^ 2 + 1) {R piBound : Real}
    (hw : ∀ a ∈ A, ∃ t : Nat, t.Prime ∧ (t : Real) ≤ R ∧ t ^ 2 ∣ a * b + 1)
    (hpi : (Nat.primeCounting ⌊R⌋₊ : Real) ≤ piBound) :
    (A.card : Real) ≤ (N : Real) / q *
      (1 + ((203 / 1250 : Real) + 1 / 25 - 1 / (p : Real) ^ 2)) + piBound + 1 := by
  classical
  let P := smallOddPrimes R
  have hqpos : 0 < q := by
    rcases hq with rfl | rfl
    · exact pow_pos hp.pos 2
    · exact Nat.mul_pos (by decide) (pow_pos hp.pos 2)
  have hmq : p ^ 2 ∣ q := by rcases hq with rfl | rfl <;> simp
  have hP (t : Nat) (ht : t ∈ P.erase p) : t.Prime ∧ t ≠ 2 ∧ t ≠ p := by
    obtain ⟨htp, ht⟩ := Finset.mem_erase.mp ht
    exact ⟨(Finset.mem_filter.mp ht).2.1, (Finset.mem_filter.mp ht).2.2, htp⟩
  have hcount := diagonal_pair_small_bound hqpos hmq hrs A P hA hcover hdiag
    (by
      intro t ht
      obtain ⟨htprime, ht2, htp⟩ := hP t ht
      refine ⟨htprime, ?_⟩
      have hpt := ((Nat.coprime_primes hp htprime).mpr htp.symm).pow 2 2
      rcases hq with rfl | rfl
      · exact hpt
      · exact Nat.Coprime.mul_left
          (((Nat.coprime_primes (by decide : Nat.Prime 2) htprime).mpr ht2.symm).pow_right 2) hpt)
    (by
      intro a ha
      obtain ⟨t, ht, htR, hd⟩ := hw a ha
      refine ⟨t, Finset.mem_filter.mpr ⟨Finset.mem_range.mpr ?_, ht, ?_⟩, hd⟩
      · exact Nat.lt_succ_of_le (Nat.le_floor htR)
      · intro he
        subst t
        exact off_diagonal_not_four_of_even heven (by simpa using hd))
  have hd := mul_le_mul_of_nonneg_left (odd_prime_density_excluding hp hp2 hp5 (P.erase p) hP)
    (show (0 : Real) ≤ (N : Real) / q by positivity)
  have hc : ((P.erase p).card : Real) ≤ piBound := by
    apply (Nat.cast_le.mpr (card_prime_finset_le_counting (P.erase p) ?_)).trans hpi
    intro t ht
    have hmem := Finset.mem_filter.mp (Finset.mem_erase.mp ht).2
    exact ⟨hmem.2.1, Nat.lt_succ_iff.mp (Finset.mem_range.mp hmem.1)⟩
  nlinarith

theorem diagonal_roots_thirteen {a : Nat} (hd : 169 ∣ a ^ 2 + 1) :
    a % 169 = 70 ∨ a % 169 = 99 := by
  exact (prime_square_roots_mod (p := 13) (r := 70) (by decide) (by decide)
    (by decide) (by decide) (by decide)).mp hd

theorem diagonal_roots_seventeen {a : Nat} (hd : 289 ∣ a ^ 2 + 1) :
    a % 289 = 38 ∨ a % 289 = 251 := by
  exact (prime_square_roots_mod (p := 17) (r := 38) (by decide) (by decide)
    (by decide) (by decide) (by decide)).mp hd

theorem odd_diagonal_roots_thirteen {a : Nat} (ho : a % 2 = 1) (hd : 169 ∣ a ^ 2 + 1) :
    a % 338 = 239 ∨ a % 338 = 99 := by
  have hr := diagonal_roots_thirteen hd
  have hm := Nat.mod_mod_of_dvd a (by decide : 169 ∣ 338)
  have ht := Nat.mod_mod_of_dvd a (by decide : 2 ∣ 338)
  have hb := Nat.mod_lt a (by decide : 0 < 338)
  omega

theorem odd_diagonal_roots_seventeen {a : Nat} (ho : a % 2 = 1) (hd : 289 ∣ a ^ 2 + 1) :
    a % 578 = 327 ∨ a % 578 = 251 := by
  have hr := diagonal_roots_seventeen hd
  have hm := Nat.mod_mod_of_dvd a (by decide : 289 ∣ 578)
  have ht := Nat.mod_mod_of_dvd a (by decide : 2 ∣ 578)
  have hb := Nat.mod_lt a (by decide : 0 < 578)
  omega

theorem even_thirteen_small_bound {N b : Nat} (heven : b % 2 = 0)
    (A : Finset Nat) (hA : A ⊆ Finset.Icc 1 N) (hd : ∀ a ∈ A, 169 ∣ a ^ 2 + 1)
    {R piBound : Real}
    (hw : ∀ a ∈ A, ∃ t : Nat, t.Prime ∧ (t : Real) ≤ R ∧ t ^ 2 ∣ a * b + 1)
    (hpi : (Nat.primeCounting ⌊R⌋₊ : Real) ≤ piBound) :
    (A.card : Real) ≤ (N : Real) / 169 *
      (1 + ((203 / 1250 : Real) + 1 / 25 - 1 / 169)) + piBound + 1 := by
  convert even_diagonal_pair_small_bound (p := 13) (q := 169) (r := 70) (s := 99)
    (by decide) (by decide) (by decide) heven (Or.inl rfl) (by decide)
    A hA (fun a ha => diagonal_roots_thirteen (hd a ha)) hd hw hpi using 1 <;> norm_num

theorem even_seventeen_small_bound {N b : Nat} (heven : b % 2 = 0)
    (A : Finset Nat) (hA : A ⊆ Finset.Icc 1 N) (hd : ∀ a ∈ A, 289 ∣ a ^ 2 + 1)
    {R piBound : Real}
    (hw : ∀ a ∈ A, ∃ t : Nat, t.Prime ∧ (t : Real) ≤ R ∧ t ^ 2 ∣ a * b + 1)
    (hpi : (Nat.primeCounting ⌊R⌋₊ : Real) ≤ piBound) :
    (A.card : Real) ≤ (N : Real) / 289 *
      (1 + ((203 / 1250 : Real) + 1 / 25 - 1 / 289)) + piBound + 1 := by
  convert even_diagonal_pair_small_bound (p := 17) (q := 289) (r := 38) (s := 251)
    (by decide) (by decide) (by decide) heven (Or.inl rfl) (by decide)
    A hA (fun a ha => diagonal_roots_seventeen (hd a ha)) hd hw hpi using 1 <;> norm_num

theorem even_thirteen_odd_small_bound {N b : Nat} (heven : b % 2 = 0)
    (A : Finset Nat) (hA : A ⊆ Finset.Icc 1 N) (ho : ∀ a ∈ A, a % 2 = 1)
    (hd : ∀ a ∈ A, 169 ∣ a ^ 2 + 1) {R piBound : Real}
    (hw : ∀ a ∈ A, ∃ t : Nat, t.Prime ∧ (t : Real) ≤ R ∧ t ^ 2 ∣ a * b + 1)
    (hpi : (Nat.primeCounting ⌊R⌋₊ : Real) ≤ piBound) :
    (A.card : Real) ≤ (N : Real) / 338 *
      (1 + ((203 / 1250 : Real) + 1 / 25 - 1 / 169)) + piBound + 1 := by
  convert even_diagonal_pair_small_bound (p := 13) (q := 338) (r := 239) (s := 99)
    (by decide) (by decide) (by decide) heven (Or.inr rfl) (by decide)
    A hA (fun a ha => odd_diagonal_roots_thirteen (ho a ha) (hd a ha)) hd hw hpi
    using 1 <;> norm_num

theorem even_seventeen_odd_small_bound {N b : Nat} (heven : b % 2 = 0)
    (A : Finset Nat) (hA : A ⊆ Finset.Icc 1 N) (ho : ∀ a ∈ A, a % 2 = 1)
    (hd : ∀ a ∈ A, 289 ∣ a ^ 2 + 1) {R piBound : Real}
    (hw : ∀ a ∈ A, ∃ t : Nat, t.Prime ∧ (t : Real) ≤ R ∧ t ^ 2 ∣ a * b + 1)
    (hpi : (Nat.primeCounting ⌊R⌋₊ : Real) ≤ piBound) :
    (A.card : Real) ≤ (N : Real) / 578 *
      (1 + ((203 / 1250 : Real) + 1 / 25 - 1 / 289)) + piBound + 1 := by
  convert even_diagonal_pair_small_bound (p := 17) (q := 578) (r := 327) (s := 251)
    (by decide) (by decide) (by decide) heven (Or.inr rfl) (by decide)
    A hA (fun a ha => odd_diagonal_roots_seventeen (ho a ha) (hd a ha)) hd hw hpi
    using 1 <;> norm_num

end JSP848
