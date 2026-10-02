import JSP848.Sieve

namespace JSP848

theorem length_residueProgression (N q r : Nat) :
    (residueProgression N q r).length = (N + q - r) / q := by
  simp [residueProgression]

theorem residueProgression_length_bound {N q r : Nat} (hr0 : 0 < r) (hrq : r < q) :
    q * (residueProgression N q r).length ≤ N + q - 1 := by
  rw [length_residueProgression]
  have hh := Nat.mul_div_le (N + q - r) q
  omega

/-- Symmetric residues share one rounding error, rather than paying one each. -/
theorem symmetric_progressions_length_bound {N q r : Nat} (hr0 : 0 < r) (hrq : r < q) :
    q * ((residueProgression N q r).length +
      (residueProgression N q (q - r)).length) ≤ 2 * N + q := by
  rw [length_residueProgression, length_residueProgression, Nat.mul_add]
  have hleft := Nat.mul_div_le (N + q - r) q
  have hright := Nat.mul_div_le (N + q - (q - r)) q
  omega

theorem rootCandidates_length_bound {N : Nat} {e : DiagonalRoot} (he : e.Valid) :
    e.base ^ 2 * (rootCandidates N e).length ≤ 2 * N + e.base ^ 2 := by
  rw [rootCandidates, List.length_append]
  exact symmetric_progressions_length_bound he.2.1 he.2.2.1

theorem card_prime_square_roots_bound {N p r : Nat} (hp : p.Prime) (hp2 : p ≠ 2)
    (hr0 : 0 < r) (hrp : r < p ^ 2) (hr : p ^ 2 ∣ r ^ 2 + 1) :
    p ^ 2 * ((Finset.Icc 1 N).filter (fun a => p ^ 2 ∣ a ^ 2 + 1)).card ≤ 2 * N + p ^ 2 := by
  let e : DiagonalRoot := ⟨p, r⟩
  have he : e.Valid := ⟨hp.one_lt, hr0, hrp, hr⟩
  have hsub : (Finset.Icc 1 N).filter (fun a => p ^ 2 ∣ a ^ 2 + 1) ⊆
      (rootCandidates N e).toFinset := by
    intro a ha
    obtain ⟨ha, hd⟩ := Finset.mem_filter.mp ha
    have ha' := Finset.mem_Icc.mp ha
    apply List.mem_toFinset.mpr
    apply (mem_rootCandidates he).mpr
    exact ⟨ha'.1, ha'.2, (prime_square_roots_mod hp hp2 hr0 hrp hr).mp hd⟩
  have hc := (Finset.card_le_card hsub).trans (List.toFinset_card_le _)
  exact (Nat.mul_le_mul_left (p ^ 2) hc).trans (rootCandidates_length_bound he)

theorem card_prime_square_divisors_bound (N : Nat) {p : Nat} (hp : p.Prime) :
    p ^ 2 * ((Finset.Icc 1 N).filter (fun a => p ^ 2 ∣ a ^ 2 + 1)).card ≤ 2 * N + p ^ 2 := by
  let S := (Finset.Icc 1 N).filter (fun a => p ^ 2 ∣ a ^ 2 + 1)
  rcases Finset.eq_empty_or_nonempty S with hS | hS
  · change p ^ 2 * S.card ≤ _
    simp [hS]
  · obtain ⟨a, ha⟩ := hS
    have hdiv := (Finset.mem_filter.mp ha).2
    have hp2 : p ≠ 2 := by
      intro he
      subst p
      exact not_dvd_four_sq_add_one a (by simpa only [pow_two] using hdiv)
    let r := a % (p ^ 2)
    have hrp : r < p ^ 2 := Nat.mod_lt a (pow_pos hp.pos _)
    have hr : p ^ 2 ∣ r ^ 2 + 1 := by
      apply Nat.dvd_of_mod_eq_zero
      have hm := Nat.mod_eq_zero_of_dvd hdiv
      simpa only [r, Nat.add_mod, Nat.pow_mod, Nat.mod_mod] using hm
    have hr0 : 0 < r := by
      apply Nat.pos_of_ne_zero
      intro hz
      have hd1 : p ^ 2 ∣ 1 := by simpa [hz] using hr
      have hh := Nat.le_of_dvd (by decide : 0 < 1) hd1
      have := hp.two_le
      nlinarith
    exact card_prime_square_roots_bound hp hp2 hr0 hrp hr

namespace ProgressionCountTests

theorem zero_prefix : (rootCandidates 0 ⟨5, 7⟩).length = 0 := by decide +kernel

theorem full_period : (rootCandidates 25 ⟨5, 7⟩).length = 2 := by decide +kernel

theorem before_second_root : (rootCandidates 17 ⟨5, 7⟩).length = 1 := by decide +kernel

theorem at_second_root : (rootCandidates 18 ⟨5, 7⟩).length = 2 := by decide +kernel

theorem five_bound (N : Nat) :
    25 * ((Finset.Icc 1 N).filter (fun a => 25 ∣ a ^ 2 + 1)).card ≤ 2 * N + 25 :=
  card_prime_square_roots_bound (p := 5) (r := 7) (by decide) (by decide)
    (by decide) (by decide) (by decide)

theorem thirteen_bound (N : Nat) :
    169 * ((Finset.Icc 1 N).filter (fun a => 169 ∣ a ^ 2 + 1)).card ≤ 2 * N + 169 :=
  card_prime_square_roots_bound (p := 13) (r := 70) (by decide) (by decide)
    (by decide) (by decide) (by decide)

theorem no_root_prime_bound (N : Nat) :
    9 * ((Finset.Icc 1 N).filter (fun a => 9 ∣ a ^ 2 + 1)).card ≤ 2 * N + 9 :=
  card_prime_square_divisors_bound N (p := 3) (by decide)

end ProgressionCountTests

end JSP848
