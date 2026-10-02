import JSP848.DiagonalEstimate

namespace JSP848

theorem card_pairwise_modeq_le {N q : Nat} (A : Finset Nat)
    (hN : forall a, a ∈ A → a ≤ N)
    (hm : forall a, a ∈ A → forall b, b ∈ A → Nat.ModEq q a b) :
    A.card ≤ N / q + 1 := by
  have hi : Set.InjOn (fun a : Nat => a / q) (A : Set Nat) := by
    intro a ha b hb he
    change a / q = b / q at he
    have hr : a % q = b % q := hm a ha b hb
    calc
      a = q * (a / q) + a % q := (Nat.div_add_mod a q).symm
      _ = q * (b / q) + b % q := by rw [he, hr]
      _ = b := Nat.div_add_mod b q
  calc
    A.card = (A.image (fun a => a / q)).card := (Finset.card_image_of_injOn hi).symm
    _ ≤ (Finset.range (N / q + 1)).card := by
      apply Finset.card_le_card
      intro k hk
      obtain ⟨a, ha, rfl⟩ := Finset.mem_image.mp hk
      exact Finset.mem_range.mpr (Nat.lt_succ_of_le (Nat.div_le_div_right (hN a ha)))
    _ = N / q + 1 := Finset.card_range _

theorem mul_card_pairwise_modeq_le {N q : Nat} (A : Finset Nat)
    (hN : forall a, a ∈ A → a ≤ N)
    (hm : forall a, a ∈ A → forall b, b ∈ A → Nat.ModEq q a b) :
    q * A.card ≤ N + q := by
  calc
    q * A.card ≤ q * (N / q + 1) :=
      Nat.mul_le_mul_left q (card_pairwise_modeq_le A hN hm)
    _ = q * (N / q) + q := by ring
    _ ≤ N + q := Nat.add_le_add_right (Nat.mul_div_le N q) q

theorem coprime_of_dvd_mul_add_one {a b m : Nat} (hd : m ∣ a * b + 1) :
    Nat.Coprime m b := by
  have h : Nat.Coprime b (a * b + 1) := by simp
  exact (h.of_dvd_right hd).symm

theorem off_diagonal_modeq {a c b m : Nat}
    (ha : m ∣ a * b + 1) (hc : m ∣ c * b + 1) : Nat.ModEq m a c := by
  have he : Nat.ModEq m (a * b + 1) (c * b + 1) := by
    change (a * b + 1) % m = (c * b + 1) % m
    rw [Nat.mod_eq_zero_of_dvd ha, Nat.mod_eq_zero_of_dvd hc]
  exact (Nat.ModEq.add_right_cancel' 1 he).cancel_right_of_coprime
    (coprime_of_dvd_mul_add_one ha)

theorem off_diagonal_class_modeq {a c b q r p : Nat}
    (hqp : Nat.Coprime q (p ^ 2)) (haq : a % q = r) (hcq : c % q = r)
    (ha : p ^ 2 ∣ a * b + 1) (hc : p ^ 2 ∣ c * b + 1) :
    Nat.ModEq (q * p ^ 2) a c :=
  (Nat.modEq_and_modEq_iff_modEq_mul hqp).mp
    ⟨haq.trans hcq.symm, off_diagonal_modeq ha hc⟩

theorem off_diagonal_class_count (N b q r p : Nat) (hqp : Nat.Coprime q (p ^ 2)) :
    q * p ^ 2 * ((Finset.Icc 1 N).filter
      (fun a => a % q = r ∧ p ^ 2 ∣ a * b + 1)).card ≤ N + q * p ^ 2 := by
  apply mul_card_pairwise_modeq_le
  · intro a ha
    exact (Finset.mem_Icc.mp (Finset.mem_filter.mp ha).1).2
  · intro a ha c hc
    have ha' := (Finset.mem_filter.mp ha).2
    have hc' := (Finset.mem_filter.mp hc).2
    exact off_diagonal_class_modeq hqp ha'.1 hc'.1 ha'.2 hc'.2

theorem off_diagonal_class_count_real (N b q r p : Nat) (hq : 0 < q) (hp : 0 < p)
    (hqp : Nat.Coprime q (p ^ 2)) :
    (((Finset.Icc 1 N).filter (fun a => a % q = r ∧ p ^ 2 ∣ a * b + 1)).card : Real) ≤
      (N : Real) / ((q : Real) * (p : Real) ^ 2) + 1 := by
  have hn := off_diagonal_class_count N b q r p hqp
  have hr : (q : Real) * (p : Real) ^ 2 *
      (((Finset.Icc 1 N).filter (fun a => a % q = r ∧ p ^ 2 ∣ a * b + 1)).card : Real) ≤
      (N : Real) + (q : Real) * (p : Real) ^ 2 := by exact_mod_cast hn
  have hd : 0 < (q : Real) * (p : Real) ^ 2 := by
    exact_mod_cast mul_pos hq (pow_pos hp 2)
  have he : (N : Real) / ((q : Real) * (p : Real) ^ 2) + 1 =
      ((N : Real) + (q : Real) * (p : Real) ^ 2) / ((q : Real) * (p : Real) ^ 2) := by
    rw [add_div, div_self (ne_of_gt hd)]
  rw [he, le_div_iff₀ hd]
  nlinarith

theorem off_diagonal_small_union (N b q r : Nat) (hq : 0 < q) (P : Finset Nat)
    (hP : forall p, p ∈ P → p.Prime ∧ Nat.Coprime q (p ^ 2)) :
    (((Finset.Icc 1 N).filter
      (fun a => a % q = r ∧ ∃ p ∈ P, p ^ 2 ∣ a * b + 1)).card : Real) ≤
      (N : Real) / q * (∑ p ∈ P, 1 / (p : Real) ^ 2) + P.card := by
  classical
  have he : (Finset.Icc 1 N).filter
      (fun a => a % q = r ∧ ∃ p ∈ P, p ^ 2 ∣ a * b + 1) =
      P.biUnion (fun p => (Finset.Icc 1 N).filter
        (fun a => a % q = r ∧ p ^ 2 ∣ a * b + 1)) := by
    ext a
    simp only [Finset.mem_filter, Finset.mem_biUnion]
    aesop
  rw [he]
  calc
    _ ≤ ∑ p ∈ P, (((Finset.Icc 1 N).filter
        (fun a => a % q = r ∧ p ^ 2 ∣ a * b + 1)).card : Real) := by
      exact_mod_cast Finset.card_biUnion_le
    _ ≤ ∑ p ∈ P, ((N : Real) / ((q : Real) * (p : Real) ^ 2) + 1) := by
      exact Finset.sum_le_sum (fun p hp =>
        off_diagonal_class_count_real N b q r p hq (hP p hp).1.pos (hP p hp).2)
    _ = _ := by
      rw [Finset.sum_add_distrib, Finset.mul_sum]
      simp only [Finset.sum_const, nsmul_eq_mul, mul_one]
      congr 1
      apply Finset.sum_congr rfl
      intro p hp
      ring

theorem off_diagonal_prime_not_dvd {a b p : Nat} (hp : p.Prime)
    (hd : p ^ 2 ∣ a * b + 1) : ¬ p ∣ b := by
  have hpa : p ∣ a * b + 1 := dvd_trans (by simp [pow_two]) hd
  exact hp.coprime_iff_not_dvd.mp (coprime_of_dvd_mul_add_one hpa)

theorem off_diagonal_not_four_of_even {a b : Nat} (hb : b % 2 = 0) :
    ¬ 4 ∣ a * b + 1 := by
  intro h
  have h2 : 2 ∣ a * b + 1 := dvd_trans (by decide : 2 ∣ 4) h
  have hm := Nat.mod_eq_zero_of_dvd h2
  simp [Nat.add_mod, Nat.mul_mod, hb] at hm

theorem off_diagonal_not_four_of_same_odd_class {a b : Nat}
    (ha : a % 2 = 1) (hab : a % 4 = b % 4) : ¬ 4 ∣ a * b + 1 := by
  intro h
  have hm := Nat.mod_eq_zero_of_dvd h
  have ha4 := Nat.mod_lt a (by decide : 0 < 4)
  have hpar : (a % 4) % 2 = 1 := by simpa using ha
  rw [Nat.add_mod, Nat.mul_mod, ← hab] at hm
  interval_cases a % 4 <;> omega

theorem off_diagonal_not_twentyfive {a b r : Nat} (hr : r = 7 ∨ r = 18)
    (ha : a % 25 = r) (hb : b % 25 ≠ r) : ¬ 25 ∣ a * b + 1 := by
  intro h
  have hm := Nat.mod_eq_zero_of_dvd h
  have hb25 := Nat.mod_lt b (by decide : 0 < 25)
  rw [Nat.add_mod, Nat.mul_mod, ha] at hm
  rcases hr with rfl | rfl
  · interval_cases b % 25 <;> omega
  · interval_cases b % 25 <;> omega

end JSP848
