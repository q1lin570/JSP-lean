import JSP848.Arithmetic
import Mathlib.Data.Nat.ModEq
import Mathlib.RingTheory.Int.Basic
import Mathlib.Tactic.Ring

namespace JSP848

/-- A supplied root suffices: no root-finding algorithm is trusted. -/
theorem prime_square_roots {p : ℕ} (hp : p.Prime) (hp2 : p ≠ 2)
    {a r : ℤ} (hr : (p : ℤ) ^ 2 ∣ r ^ 2 + 1) :
    (p : ℤ) ^ 2 ∣ a ^ 2 + 1 ↔
      (p : ℤ) ^ 2 ∣ a - r ∨ (p : ℤ) ^ 2 ∣ a + r := by
  have hpz : Prime (p : ℤ) := Nat.prime_iff_prime_int.mp hp
  have hpr : ¬ (p : ℤ) ∣ r := by
    intro h
    have h1 : (p : ℤ) ∣ r ^ 2 + 1 := dvd_trans ⟨p, by ring⟩ hr
    have h2 : (p : ℤ) ∣ r ^ 2 := by
      simpa only [pow_two] using dvd_mul_of_dvd_left h r
    apply hpz.not_dvd_one
    convert dvd_sub h1 h2 using 1
    ring
  have hp_two : ¬ (p : ℤ) ∣ 2 := by
    intro h
    have hn : p ∣ 2 := by exact_mod_cast h
    exact hp2 (le_antisymm (Nat.le_of_dvd (by decide) hn) hp.two_le)
  constructor
  · intro ha
    have hprod : (p : ℤ) ^ 2 ∣ (a - r) * (a + r) := by
      convert dvd_sub ha hr using 1
      ring
    by_cases hminus : (p : ℤ) ∣ a - r
    · have hplus : ¬ (p : ℤ) ∣ a + r := by
        intro h
        have htwor : (p : ℤ) ∣ 2 * r := by
          convert dvd_sub h hminus using 1
          ring
        exact (hpz.dvd_or_dvd htwor).elim hp_two hpr
      exact Or.inl (hpz.pow_dvd_of_dvd_mul_right 2 hplus hprod)
    · exact Or.inr (hpz.pow_dvd_of_dvd_mul_left 2 hminus hprod)
  · intro h
    have hprod : (p : ℤ) ^ 2 ∣ (a - r) * (a + r) := by
      rcases h with h | h
      · exact dvd_mul_of_dvd_left h _
      · exact dvd_mul_of_dvd_right h _
    convert dvd_add hprod hr using 1
    ring

private theorem mod_eq_iff_int_dvd_sub {a r q : ℕ} (hr : r < q) :
    a % q = r ↔ (q : ℤ) ∣ (a : ℤ) - r := by
  rw [← Nat.modEq_iff_dvd]
  change a % q = r ↔ r % q = a % q
  rw [Nat.mod_eq_of_lt hr]
  exact eq_comm

/-- The two natural representatives used by the diagonal sieve. -/
theorem prime_square_roots_mod {p r a : ℕ} (hp : p.Prime) (hp2 : p ≠ 2)
    (hr0 : 0 < r) (hrp : r < p ^ 2) (hr : p ^ 2 ∣ r ^ 2 + 1) :
    p ^ 2 ∣ a ^ 2 + 1 ↔ a % (p ^ 2) = r ∨ a % (p ^ 2) = p ^ 2 - r := by
  have hrz : (p : ℤ) ^ 2 ∣ (r : ℤ) ^ 2 + 1 := by exact_mod_cast hr
  have hneg : p ^ 2 - r < p ^ 2 := by omega
  have hcast : ((p ^ 2 - r : ℕ) : ℤ) = (p : ℤ) ^ 2 - r := by
    rw [Nat.cast_sub hrp.le, Nat.cast_pow]
  have hplus : (p : ℤ) ^ 2 ∣ (a : ℤ) + r ↔
      (p : ℤ) ^ 2 ∣ (a : ℤ) - (p ^ 2 - r : ℕ) := by
    rw [hcast]
    constructor
    · intro h
      convert dvd_sub h (dvd_refl ((p : ℤ) ^ 2)) using 1
      ring
    · intro h
      convert dvd_add h (dvd_refl ((p : ℤ) ^ 2)) using 1
      ring
  rw [mod_eq_iff_int_dvd_sub hrp, mod_eq_iff_int_dvd_sub hneg]
  simp only [Nat.cast_pow]
  rw [← hplus, ← prime_square_roots hp hp2 hrz]
  exact_mod_cast Iff.rfl (a := p ^ 2 ∣ a ^ 2 + 1)

/-- Enumerate a nonzero residue without testing every integer up to `N`. -/
def residueProgression (N q r : ℕ) : List ℕ :=
  (List.range ((N + q - r) / q)).map (fun k => q * k + r)

theorem mem_residueProgression {N q r a : ℕ} (hr0 : 0 < r) (hrq : r < q) :
    a ∈ residueProgression N q r ↔ 1 ≤ a ∧ a ≤ N ∧ a % q = r := by
  have hq : 0 < q := lt_trans hr0 hrq
  have hindex (k : ℕ) : k < (N + q - r) / q ↔ q * k + r ≤ N := by
    rw [← Nat.succ_le_iff, Nat.le_div_iff_mul_le hq, Nat.succ_mul]
    have hrle : r ≤ N + q := by omega
    rw [Nat.le_sub_iff_add_le hrle, Nat.mul_comm k q]
    omega
  simp only [residueProgression, List.mem_map, List.mem_range]
  constructor
  · rintro ⟨k, hk, rfl⟩
    refine ⟨by omega, (hindex k).mp hk, ?_⟩
    simp [Nat.add_mod, Nat.mod_eq_of_lt hrq]
  · rintro ⟨_, haN, hamod⟩
    have heq : q * (a / q) + r = a := by
      simpa only [hamod] using Nat.div_add_mod a q
    exact ⟨a / q, (hindex _).mpr (by omega), heq⟩

theorem complementary_root {q r : ℕ} (hrq : r ≤ q) (hr : q ∣ r ^ 2 + 1) :
    q ∣ (q - r) ^ 2 + 1 := by
  have hrz : (q : ℤ) ∣ (r : ℤ) ^ 2 + 1 := by exact_mod_cast hr
  have h : (q : ℤ) ∣ ((q : ℤ) - r) ^ 2 + 1 := by
    convert dvd_add (dvd_mul_right (q : ℤ) ((q : ℤ) - 2 * r)) hrz using 1
    ring
  rw [← Nat.cast_sub hrq] at h
  exact_mod_cast h

structure DiagonalRoot where
  base : ℕ
  root : ℕ
  deriving DecidableEq, Repr

/-- Composite bases are harmless: every emitted value still has a square divisor. -/
def DiagonalRoot.Valid (e : DiagonalRoot) : Prop :=
  1 < e.base ∧ 0 < e.root ∧ e.root < e.base ^ 2 ∧
    e.base ^ 2 ∣ e.root ^ 2 + 1

instance (e : DiagonalRoot) : Decidable e.Valid := by
  unfold DiagonalRoot.Valid
  infer_instance

def rootCandidates (N : ℕ) (e : DiagonalRoot) : List ℕ :=
  residueProgression N (e.base ^ 2) e.root ++
    residueProgression N (e.base ^ 2) (e.base ^ 2 - e.root)

/-- Duplicates from different square divisors are retained for later marking. -/
def diagonalSieve (N : ℕ) (entries : List DiagonalRoot) : List ℕ :=
  entries.flatMap (rootCandidates N)

def CoversDiagonalPrimes (N : ℕ) (entries : List DiagonalRoot) : Prop :=
  ∀ p ≤ N, p.Prime → p % 4 = 1 → ∃ e ∈ entries, e.base = p

theorem mem_rootCandidates {N a : ℕ} {e : DiagonalRoot} (he : e.Valid) :
    a ∈ rootCandidates N e ↔ 1 ≤ a ∧ a ≤ N ∧
      (a % (e.base ^ 2) = e.root ∨ a % (e.base ^ 2) = e.base ^ 2 - e.root) := by
  have hneg0 : 0 < e.base ^ 2 - e.root := Nat.sub_pos_of_lt he.2.2.1
  have hneglt : e.base ^ 2 - e.root < e.base ^ 2 :=
    Nat.sub_lt (lt_trans he.2.1 he.2.2.1) he.2.1
  rw [rootCandidates, List.mem_append,
    mem_residueProgression he.2.1 he.2.2.1, mem_residueProgression hneg0 hneglt]
  constructor
  · rintro (⟨ha1, haN, h⟩ | ⟨ha1, haN, h⟩)
    · exact ⟨ha1, haN, Or.inl h⟩
    · exact ⟨ha1, haN, Or.inr h⟩
  · rintro ⟨ha1, haN, h | h⟩
    · exact Or.inl ⟨ha1, haN, h⟩
    · exact Or.inr ⟨ha1, haN, h⟩

theorem rootCandidates_sound {N a : ℕ} {e : DiagonalRoot} (he : e.Valid)
    (ha : a ∈ rootCandidates N e) : a ∈ diagonalCandidates N := by
  obtain ⟨ha1, haN, hamod⟩ := (mem_rootCandidates he).mp ha
  have hroot {r : ℕ} (hr : r < e.base ^ 2)
      (hd : e.base ^ 2 ∣ r ^ 2 + 1) (hm : a % (e.base ^ 2) = r) :
      e.base ^ 2 ∣ a ^ 2 + 1 := by
    have hmod : Nat.ModEq (e.base ^ 2) a r := by
      simpa only [Nat.ModEq, Nat.mod_eq_of_lt hr] using hm
    exact (((hmod.pow 2).add_right 1).dvd_iff (dvd_refl _)).mpr hd
  have hd : e.base ^ 2 ∣ a ^ 2 + 1 := by
    rcases hamod with h | h
    · exact hroot he.2.2.1 he.2.2.2 h
    · exact hroot (Nat.sub_lt (lt_trans he.2.1 he.2.2.1) he.2.1)
        (complementary_root he.2.2.1.le he.2.2.2) h
  refine Finset.mem_filter.mpr ⟨Finset.mem_Icc.mpr ⟨ha1, haN⟩, ?_⟩
  intro hsq
  have hu := Nat.isUnit_iff.mp (hsq e.base (by simpa only [pow_two] using hd))
  have hb := he.1
  omega

theorem mem_diagonalSieve_iff {N a : ℕ} {entries : List DiagonalRoot}
    (hvalid : ∀ e ∈ entries, e.Valid) (hcover : CoversDiagonalPrimes N entries) :
    a ∈ diagonalSieve N entries ↔ a ∈ diagonalCandidates N := by
  simp only [diagonalSieve, List.mem_flatMap]
  constructor
  · rintro ⟨e, he, ha⟩
    exact rootCandidates_sound (hvalid e he) ha
  · intro ha
    obtain ⟨haN, hsq⟩ := Finset.mem_filter.mp ha
    obtain ⟨ha1, haN⟩ := Finset.mem_Icc.mp haN
    obtain ⟨p, hpa, hp, hp4, hd⟩ := diagonal_witness_iff (by omega) |>.mp hsq
    obtain ⟨e, he, hep⟩ := hcover p (hpa.trans haN) hp hp4
    have hev := hvalid e he
    refine ⟨e, he, (mem_rootCandidates hev).mpr ⟨ha1, haN, ?_⟩⟩
    simp only [DiagonalRoot.Valid, hep] at hev
    rw [hep]
    exact (prime_square_roots_mod hp (by omega) hev.2.1 hev.2.2.1 hev.2.2.2).mp
      (by simpa only [pow_two] using hd)

end JSP848
