import JSP848.NegativePell

namespace JSP848

theorem negative_pell_parameter_ge_two {d a b : Int} (hd : 0 < d)
    (ha : 0 < a) (hb : 0 < b) (hab : a ^ 2 - d * b ^ 2 = -1) : 2 <= d := by
  by_contra! h
  have hd1 : d = 1 := by omega
  subst d
  have hablt : a < b := by
    by_contra! hba
    have hsq := (sq_le_sq₀ hb.le ha.le).mpr hba
    nlinarith
  have hsq := (sq_le_sq₀ (by omega : 0 <= a + 1) hb.le).mpr
    (by omega : a + 1 <= b)
  nlinarith

/-- Multiplication by the inverse square of a smaller negative solution gives descent. -/
theorem negative_pell_descent {d a b x y : Int} (hd : 0 < d)
    (ha : 0 < a) (hb : 0 < b) (hax : a < x) (hy : 0 < y)
    (hab : a ^ 2 - d * b ^ 2 = -1) (hxy : x ^ 2 - d * y ^ 2 = -1) :
    let u := (2 * a ^ 2 + 1) * x - 2 * d * a * b * y
    let v := (2 * a ^ 2 + 1) * y - 2 * a * b * x
    u ^ 2 - d * v ^ 2 = -1 /\ 0 < |u| /\ |u| < x /\ 0 < |v| /\
      b ∣ y + v /\ u % 2 = x % 2 := by
  dsimp only
  let u := (2 * a ^ 2 + 1) * x - 2 * d * a * b * y
  let v := (2 * a ^ 2 + 1) * y - 2 * a * b * x
  change u ^ 2 - d * v ^ 2 = -1 /\ _
  have hx : 0 < x := ha.trans hax
  have hd2 := negative_pell_parameter_ge_two hd ha hb hab
  have haeq : d * b ^ 2 = a ^ 2 + 1 := by linarith
  have hxeq : d * y ^ 2 = x ^ 2 + 1 := by linarith
  have hby : b < y := by
    by_contra! h
    have hsq := (sq_le_sq₀ hy.le hb.le).mpr h
    have hmul := mul_le_mul_of_nonneg_left hsq hd.le
    have haxsq := (sq_lt_sq₀ ha.le hx.le).mpr hax
    linarith
  have hcross : a * y < b * x := by
    have he : (b * x) ^ 2 - (a * y) ^ 2 = y ^ 2 - b ^ 2 := by
      calc
        _ = (x ^ 2 - d * y ^ 2) * b ^ 2 -
            (a ^ 2 - d * b ^ 2) * y ^ 2 := by ring
        _ = _ := by rw [hab, hxy]; ring
    have hsq := (sq_lt_sq₀ hb.le hy.le).mpr hby
    apply (sq_lt_sq₀ (mul_pos ha hy).le (mul_pos hb hx).le).mp
    linarith
  have hcross' : a * x < d * b * y := by
    have he : (d * b * y) ^ 2 - (a * x) ^ 2 = a ^ 2 + x ^ 2 + 1 := by
      calc
        _ = (d * b ^ 2) * (d * y ^ 2) - a ^ 2 * x ^ 2 := by ring
        _ = _ := by rw [haeq, hxeq]; ring
    apply (sq_lt_sq₀ (mul_pos ha hx).le (mul_pos (mul_pos hd hb) hy).le).mp
    nlinarith [sq_nonneg a, sq_nonneg x]
  have hnorm : u ^ 2 - d * v ^ 2 = -1 := by
    have he : u ^ 2 - d * v ^ 2 =
        (x ^ 2 - d * y ^ 2) * ((2 * a ^ 2 + 1) ^ 2 - d * (2 * a * b) ^ 2) := by
      dsimp [u, v]
      ring
    have he' : (2 * a ^ 2 + 1) ^ 2 - d * (2 * a * b) ^ 2 = 1 := by
      calc
        _ = 4 * a ^ 2 * (a ^ 2 + 1 - d * b ^ 2) + 1 := by ring
        _ = 1 := by rw [haeq]; ring
    rw [he, he', hxy]
    norm_num
  have hvne : v ≠ 0 := by
    intro h
    rw [h] at hnorm
    nlinarith [sq_nonneg u]
  have hune : u ≠ 0 := by
    intro h
    have hv1 : 1 <= v ^ 2 := by have := sq_pos_of_ne_zero hvne; omega
    rw [h] at hnorm
    nlinarith
  have hupper : u < x := by
    have hh := mul_lt_mul_of_pos_left hcross' (by omega : 0 < 2 * a)
    dsimp [u]
    nlinarith
  have hlower : -x < u := by
    have hh := mul_pos (mul_pos (by omega : 0 < 2 * d) hb) (sub_pos.mpr hcross)
    have he : u + x = 2 * d * b * (b * x - a * y) := by
      dsimp [u]
      nlinarith [congrArg (fun t : Int => 2 * t * x) haeq]
    linarith
  refine ⟨hnorm, abs_pos.mpr hune, abs_lt.mpr ⟨hlower, hupper⟩,
    abs_pos.mpr hvne, ?_, ?_⟩
  · refine ⟨2 * d * b * y - 2 * a * x, ?_⟩
    change y + v = b * (2 * d * b * y - 2 * a * x)
    dsimp [v]
    nlinarith [congrArg (fun t : Int => 2 * t * y) haeq]
  · have he : u = x + 2 * (a ^ 2 * x - d * a * b * y) := by dsimp [u]; ring
    omega

/-- Minimal positive negative-Pell solutions control all denominators and x parities. -/
theorem negative_pell_minimal_denominator {d a b : Nat} (hd : 0 < d)
    (ha : 0 < a) (hb : 0 < b) (hab : a ^ 2 + 1 = d * b ^ 2)
    (hmin : forall x y : Nat, 0 < x -> 0 < y -> x ^ 2 + 1 = d * y ^ 2 -> a <= x) :
    forall x y : Nat, 0 < x -> 0 < y -> x ^ 2 + 1 = d * y ^ 2 ->
      b ∣ y /\ x % 2 = a % 2 := by
  intro x
  induction x using Nat.strong_induction_on with
  | h x ih =>
    intro y hx hy hxy
    by_cases hxa : x = a
    · subst x
      have he : d * b ^ 2 = d * y ^ 2 := hab.symm.trans hxy
      have he' : b ^ 2 = y ^ 2 := mul_left_cancel₀ (by omega : d ≠ 0) he
      have hby : b = y := (sq_eq_sq₀ (Nat.zero_le b) (Nat.zero_le y)).mp he'
      subst y
      exact ⟨dvd_refl _, rfl⟩
    · have hax : a < x := by have := hmin x y hx hy hxy; omega
      have hab' : (a : Int) ^ 2 - (d : Int) * (b : Int) ^ 2 = -1 := by
        have he : (a : Int) ^ 2 + 1 = (d : Int) * (b : Int) ^ 2 := by exact_mod_cast hab
        linarith
      have hxy' : (x : Int) ^ 2 - (d : Int) * (y : Int) ^ 2 = -1 := by
        have he : (x : Int) ^ 2 + 1 = (d : Int) * (y : Int) ^ 2 := by exact_mod_cast hxy
        linarith
      let u : Int := (2 * (a : Int) ^ 2 + 1) * x - 2 * d * a * b * y
      let v : Int := (2 * (a : Int) ^ 2 + 1) * y - 2 * a * b * x
      have hh := negative_pell_descent (by exact_mod_cast hd) (by exact_mod_cast ha)
        (by exact_mod_cast hb) (by exact_mod_cast hax) (by exact_mod_cast hy) hab' hxy'
      change u ^ 2 - (d : Int) * v ^ 2 = -1 /\ 0 < |u| /\ |u| < (x : Int) /\
        0 < |v| /\ (b : Int) ∣ (y : Int) + v /\ u % 2 = (x : Int) % 2 at hh
      have hunat : 0 < u.natAbs := by
        have he := hh.2.1
        rw [← Int.natCast_natAbs] at he
        exact_mod_cast he
      have hvnat : 0 < v.natAbs := by
        have he := hh.2.2.2.1
        rw [← Int.natCast_natAbs] at he
        exact_mod_cast he
      have hult : u.natAbs < x := by
        have he := hh.2.2.1
        rw [← Int.natCast_natAbs] at he
        exact_mod_cast he
      have heq : u.natAbs ^ 2 + 1 = d * v.natAbs ^ 2 := by
        have he : |u| ^ 2 + 1 = (d : Int) * |v| ^ 2 := by
          simpa only [sq_abs] using (show u ^ 2 + 1 = (d : Int) * v ^ 2 by linarith [hh.1])
        rw [← Int.natCast_natAbs, ← Int.natCast_natAbs] at he
        exact_mod_cast he
      obtain ⟨hdiv, hpar⟩ := ih u.natAbs hult v.natAbs hunat hvnat heq
      constructor
      · have hdiv' : (b : Int) ∣ (v.natAbs : Int) := by exact_mod_cast hdiv
        rw [Int.natCast_natAbs] at hdiv'
        have hvdiv : (b : Int) ∣ v := (dvd_abs _ _).mp hdiv'
        have hydiv : (b : Int) ∣ (y : Int) := by
          simpa using dvd_sub hh.2.2.2.2.1 hvdiv
        exact_mod_cast hydiv
      · have hpar' : (u.natAbs : Int) % 2 = (a : Int) % 2 := by exact_mod_cast hpar
        have habsu : (u.natAbs : Int) = u ∨ (u.natAbs : Int) = -u := by
          simpa only [Int.natCast_natAbs] using abs_choice u
        have hparx : (x : Int) % 2 = (a : Int) % 2 := by
          rcases habsu with habsu | habsu <;> rw [habsu] at hpar' <;> omega
        exact_mod_cast hparx

theorem exists_minimal_negative_pell {d : Nat}
    (hex : ∃ x y : Nat, 0 < x ∧ 0 < y ∧ x ^ 2 + 1 = d * y ^ 2) :
    ∃ a b : Nat, 0 < a ∧ 0 < b ∧ a ^ 2 + 1 = d * b ^ 2 ∧
      ∀ x y : Nat, 0 < x → 0 < y → x ^ 2 + 1 = d * y ^ 2 → a ≤ x := by
  classical
  obtain ⟨b, ha, hb, hab⟩ := Nat.find_spec hex
  refine ⟨Nat.find hex, b, ha, hb, hab, ?_⟩
  intro x y hx hy hxy
  exact Nat.find_min' hex ⟨y, hx, hy, hxy⟩

/-- Two distinct prime-denominator solutions force the exceptional parameter a^2+1. -/
theorem negative_pell_prime_unique_or_special {d x y u v : Nat} (hd : 0 < d)
    (hx : 0 < x) (hu : 0 < u) (hy : y.Prime) (hv : v.Prime)
    (hxy : x ^ 2 + 1 = d * y ^ 2) (huv : u ^ 2 + 1 = d * v ^ 2) :
    x = u ∨ ∃ a : Nat, 0 < a ∧ d = a ^ 2 + 1 ∧ x % 2 = a % 2 ∧ u % 2 = a % 2 := by
  obtain ⟨a, b, ha, hb, hab, hmin⟩ :=
    exists_minimal_negative_pell ⟨x, y, hx, hy.pos, hxy⟩
  obtain ⟨hby, hxp⟩ := negative_pell_minimal_denominator hd ha hb hab hmin x y hx hy.pos hxy
  obtain ⟨hbv, hup⟩ := negative_pell_minimal_denominator hd ha hb hab hmin u v hu hv.pos huv
  rcases hy.eq_one_or_self_of_dvd b hby with hb1 | hby
  · right
    refine ⟨a, ha, ?_, hxp, hup⟩
    simpa only [hb1, one_pow, mul_one] using hab.symm
  · have hbne : b ≠ 1 := by have := hy.two_le; omega
    have hbv := (hv.eq_one_or_self_of_dvd b hbv).resolve_left hbne
    have hyv : y = v := hby.symm.trans hbv
    left
    have he : x ^ 2 = u ^ 2 := by rw [hyv] at hxy; omega
    exact (sq_eq_sq₀ (Nat.zero_le x) (Nat.zero_le u)).mp he

theorem card_prime_negative_pell_le_one {d : Nat} (hd : 0 < d) (S : Finset Nat)
    (hnonspecial : ¬ ∃ a : Nat, 0 < a ∧ d = a ^ 2 + 1)
    (hS : ∀ x ∈ S, 0 < x ∧ ∃ p : Nat, p.Prime ∧ x ^ 2 + 1 = d * p ^ 2) :
    S.card ≤ 1 := by
  apply Finset.card_le_one.mpr
  intro x hx u hu
  obtain ⟨hxpos, y, hy, hxy⟩ := hS x hx
  obtain ⟨hupos, v, hv, huv⟩ := hS u hu
  rcases negative_pell_prime_unique_or_special hd hxpos hupos hy hv hxy huv with he | he
  · exact he
  · obtain ⟨a, ha, hda, _, _⟩ := he
    exact (hnonspecial ⟨a, ha, hda⟩).elim

open scoped Classical in
theorem card_prime_negative_pell_le {d N : Nat} (hd : 0 < d) (S : Finset Nat)
    (hS : S ⊆ Finset.Icc 1 N)
    (hw : ∀ x ∈ S, ∃ p : Nat, p.Prime ∧ x ^ 2 + 1 = d * p ^ 2) :
    S.card ≤ if ∃ a : Nat, 0 < a ∧ d = a ^ 2 + 1 then Nat.log 3 N + 1 else 1 := by
  classical
  split
  · apply card_negative_pell_le hd S hS
    intro x hx
    obtain ⟨p, hp, he⟩ := hw x hx
    exact ⟨p, hp.pos, he⟩
  · apply card_prime_negative_pell_le_one hd S ‹_›
    intro x hx
    exact ⟨(Finset.mem_Icc.mp (hS hx)).1, hw x hx⟩

end JSP848
