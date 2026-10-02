import JSP848.Arithmetic

namespace JSP848

/-- Below the cube of the least possible prime factor, the only repeated-prime
case is a perfect square. -/
theorem squarefree_of_prime_floor_lt_cube {n k : ℕ} (hn : 0 < n)
    (hfloor : ∀ p, p.Prime → p ∣ n → k ≤ p)
    (hcube : n < k * k * k) (hns : n.sqrt * n.sqrt ≠ n) : Squarefree n := by
  by_contra h
  obtain ⟨p, hp, m, hm⟩ := prime_square_witness h
  have hpd : p ∣ n := by
    rw [hm, pow_two]
    exact dvd_mul_of_dvd_left (dvd_mul_right p p) m
  have hkp := hfloor p hp hpd
  by_cases hm1 : m = 1
  · have heq : n = p ^ 2 := by simpa [hm1] using hm
    apply hns
    rw [heq, Nat.sqrt_eq', pow_two]
  · have hmpos : 0 < m := by
      by_contra hm0
      have : m = 0 := by omega
      simp [this] at hm
      omega
    obtain ⟨q, hq, hqd⟩ := Nat.exists_prime_and_dvd hm1
    have hqn : q ∣ n := by
      rw [hm]
      exact dvd_mul_of_dvd_right hqd (p ^ 2)
    have hkm := (hfloor q hq hqn).trans (Nat.le_of_dvd hmpos hqd)
    have hle : k * k * k ≤ n := by
      calc
        k * k * k ≤ p * p * m := Nat.mul_le_mul (Nat.mul_le_mul hkp hkp) hkm
        _ = n := by simpa [pow_two] using hm.symm
    omega

private theorem prime_of_prime_floor {n k : ℕ} (hk : 2 ≤ k)
    (hfloor : ∀ p, p.Prime → p ∣ n → k ≤ p) (hd : k ∣ n) : k.Prime := by
  apply Nat.prime_def_minFac.mpr
  refine ⟨hk, le_antisymm (Nat.minFac_le (by omega)) ?_⟩
  exact hfloor _ (Nat.minFac_prime (by omega)) ((Nat.minFac_dvd k).trans hd)

private theorem prime_floor_succ {n r k : ℕ}
    (hfloor : ∀ p, p.Prime → p ∣ n → k ≤ p) (hr : r ∣ n) (hkr : ¬ k ∣ r) :
    ∀ p, p.Prime → p ∣ r → k + 1 ≤ p := by
  intro p hp hpr
  have hkp := hfloor p hp (hpr.trans hr)
  have hne : k ≠ p := fun heq => hkr (heq ▸ hpr)
  omega

/-- Fuel bounds recursion only. Trial division stops once the residual is below
the cube of the next untested divisor. Zero is rejected by the public checker. -/
def squarefreeTrial : ℕ → ℕ → ℕ → Bool
  | 0, _, n => decide (n = 1)
  | fuel + 1, k, n =>
    if n = 1 then true
    else if n < k * k * k then n.sqrt * n.sqrt != n
    else if k ∣ n then
      if k ∣ n / k then false else squarefreeTrial fuel (k + 1) (n / k)
    else squarefreeTrial fuel (k + 1) n

theorem squarefreeTrial_sound {fuel k n : ℕ} (hn : 0 < n) (hk : 2 ≤ k)
    (hfloor : ∀ p, p.Prime → p ∣ n → k ≤ p)
    (hcheck : squarefreeTrial fuel k n = true) : Squarefree n := by
  induction fuel generalizing k n with
  | zero =>
    have heq : n = 1 := of_decide_eq_true hcheck
    subst n
    exact squarefree_one
  | succ fuel ih =>
    simp only [squarefreeTrial] at hcheck
    split_ifs at hcheck with h1 hcube hd hdd
    · subst n
      exact squarefree_one
    · exact squarefree_of_prime_floor_lt_cube hn hfloor hcube (by simpa using hcheck)
    · have hdiv : n / k ∣ n := Nat.div_dvd_of_dvd hd
      have hsf := ih (Nat.pos_of_dvd_of_pos hdiv hn) (by omega)
        (prime_floor_succ hfloor hdiv hdd) hcheck
      exact Nat.minSqFacProp_div n (prime_of_prime_floor hk hfloor hd) hd
        (fun hsq => hdd ((Nat.dvd_div_iff_mul_dvd hd).mpr hsq)) (o := none) hsf
    · exact ih hn (by omega) (prime_floor_succ hfloor (dvd_refl n) hd) hcheck

private theorem squarefree_not_square {n : ℕ} (hs : Squarefree n) (hne : n ≠ 1) :
    n.sqrt * n.sqrt ≠ n := by
  intro heq
  have hu := Nat.isUnit_iff.mp (hs n.sqrt (by rw [heq]))
  apply hne
  simpa [hu] using heq.symm

theorem squarefreeTrial_complete {fuel k n : ℕ} (hn : 0 < n) (hk : 2 ≤ k)
    (hfloor : ∀ p, p.Prime → p ∣ n → k ≤ p) (hbudget : n < fuel + k)
    (hs : Squarefree n) : squarefreeTrial fuel k n = true := by
  induction fuel generalizing k n with
  | zero =>
    have heq : n = 1 := by
      by_contra hne
      obtain ⟨p, hp, hpd⟩ := Nat.exists_prime_and_dvd hne
      have := hfloor p hp hpd
      have := Nat.le_of_dvd hn hpd
      omega
    simp [squarefreeTrial, heq]
  | succ fuel ih =>
    simp only [squarefreeTrial]
    split_ifs with h1 hcube hd hdd
    · rfl
    · simpa using squarefree_not_square hs h1
    · have hu := Nat.isUnit_iff.mp (hs k ((Nat.dvd_div_iff_mul_dvd hd).mp hdd))
      omega
    · have hdiv : n / k ∣ n := Nat.div_dvd_of_dvd hd
      apply ih (Nat.pos_of_dvd_of_pos hdiv hn) (by omega)
        (prime_floor_succ hfloor hdiv hdd) _ (hs.squarefree_of_dvd hdiv)
      have := Nat.div_le_self n k
      omega
    · exact ih hn (by omega) (prime_floor_succ hfloor (dvd_refl n) hd) (by omega) hs

def fastSquarefree (n : ℕ) : Bool :=
  if n = 0 then false else squarefreeTrial (n + 1) 2 n

theorem fastSquarefree_sound (n : ℕ) (hcheck : fastSquarefree n = true) : Squarefree n := by
  unfold fastSquarefree at hcheck
  split at hcheck
  · cases hcheck
  · rename_i hn
    exact squarefreeTrial_sound (by omega) (by decide) (fun _ hp _ => hp.two_le) hcheck

theorem fastSquarefree_eq_true_iff (n : ℕ) : fastSquarefree n = true ↔ Squarefree n := by
  refine ⟨fastSquarefree_sound n, ?_⟩
  intro hs
  have hn := hs.ne_zero
  simp only [fastSquarefree, if_neg hn]
  exact squarefreeTrial_complete (by omega) (by decide) (fun _ hp _ => hp.two_le) (by omega) hs

end JSP848
