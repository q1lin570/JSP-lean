import JSP848.RootPairMask
import JSP848.DiagonalParityCount

namespace JSP848

def rootPairIndex (q r a : Nat) : Nat :=
  2 * (a / q) + if a % q = r then 1 else 2

def rootPairPrefix (N q r : Nat) : Nat :=
  2 * (N / q) + if N % q < r then 0 else if N % q < q - r then 1 else 2

theorem rootPairIndex_mem_prefix {N q r a : Nat} (hq : 0 < q) (hr : 0 < r)
    (hrq : r < q) (hhalf : 2 * r ≤ q) (ha : a ≤ N)
    (hm : a % q = r ∨ a % q = q - r) :
    rootPairIndex q r a ∈ Finset.Icc 1 (rootPairPrefix N q r) := by
  have hd := Nat.div_le_div_right ha (c := q)
  have haeq := Nat.div_add_mod a q
  have hNeq := Nat.div_add_mod N q
  have har := Nat.mod_lt a hq
  have hNr := Nat.mod_lt N hq
  simp only [Finset.mem_Icc, rootPairIndex, rootPairPrefix]
  by_cases he : a / q = N / q
  · rw [he] at haeq ⊢
    split_ifs <;> omega
  · split_ifs <;> omega

theorem rootPairPrefix_bound {N q r : Nat} (hr : 0 < r) (hhalf : 2 * r ≤ q) :
    q * rootPairPrefix N q r ≤ 2 * N + q := by
  have he := Nat.div_add_mod N q
  have hq : 0 < q := by omega
  have hm := Nat.mod_lt N hq
  have hqr : q - r + r = q := Nat.sub_add_cancel (by omega)
  unfold rootPairPrefix
  split_ifs with h₁ h₂ <;> nlinarith [Nat.zero_le (N % q)]

theorem rootPairIndex_injOn (q r : Nat) (A : Finset Nat)
    (hm : ∀ a ∈ A, a % q = r ∨ a % q = q - r) :
    Set.InjOn (rootPairIndex q r) (A : Set Nat) := by
  intro a ha b hb he
  have ham := hm a ha
  have hbm := hm b hb
  have hae := Nat.div_add_mod a q
  have hbe := Nat.div_add_mod b q
  unfold rootPairIndex at he
  by_cases har : a % q = r <;> by_cases hbr : b % q = r
  · rw [if_pos har, if_pos hbr] at he
    have hd : a / q = b / q := by omega
    rw [hd] at hae
    omega
  · rw [if_pos har, if_neg hbr] at he
    omega
  · rw [if_neg har, if_pos hbr] at he
    omega
  · rw [if_neg har, if_neg hbr] at he
    have hd : a / q = b / q := by omega
    rw [hd] at hae
    omega

theorem rootPairMask_of_index {q r a : Nat} (hrq : r < q)
    (hm : a % q = r ∨ a % q = q - r) (h7 : a % 25 ≠ 7) (h18 : a % 25 ≠ 18) :
    rootPairMask (q % 25) (r % 25) (rootPairIndex q r a) = true := by
  have hae := Nat.div_add_mod a q
  have hr25 := Nat.mod_lt r (by decide : 0 < 25)
  by_cases har : a % q = r
  · have he : a = a / q * q + r := by rw [mul_comm]; omega
    have hmod : (a / q * (q % 25) + r % 25) % 25 = a % 25 := by
      conv_rhs => rw [he]
      simp [Nat.add_mod, Nat.mul_mod]
    unfold rootPairIndex rootPairMask
    rw [if_pos har, show (2 * (a / q) + 1) % 2 = 1 by omega,
      show (2 * (a / q) + 1) / 2 = a / q by omega, if_pos rfl, hmod]
    exact decide_eq_true ⟨h7, h18⟩
  · have har' : a % q = q - r := hm.resolve_left har
    have he : a + r = (a / q + 1) * q := by
      rw [Nat.add_mul, one_mul, mul_comm (a / q) q]
      omega
    have hmod : (a % 25 + r % 25) % 25 = ((a / q + 1) * (q % 25)) % 25 := by
      have hh := congrArg (fun n : Nat => n % 25) he
      simpa [Nat.add_mod, Nat.mul_mod] using hh
    have hc : ((a / q + 1) * (q % 25) + (25 - r % 25)) % 25 = a % 25 := by omega
    unfold rootPairIndex rootPairMask
    rw [if_neg har, show (2 * (a / q) + 2) % 2 = 0 by omega,
      show (2 * (a / q) + 2) / 2 = a / q + 1 by omega, if_neg (by decide), hc]
    exact decide_eq_true ⟨h7, h18⟩

theorem card_symmetric_residues_excluded {N q r : Nat} (hr : 0 < r) (hhalf : 2 * r ≤ q)
    (hq5 : q % 5 ≠ 0) (A : Finset Nat) (hA : A ⊆ Finset.Icc 1 N)
    (hm : ∀ a ∈ A, (a % q = r ∨ a % q = q - r) ∧ a % 25 ≠ 7 ∧ a % 25 ≠ 18) :
    (A.card : Real) ≤ (46 / 25 : Real) * ((N : Real) / q) + 69 / 25 := by
  have hq : 0 < q := by omega
  have hrq : r < q := by omega
  have hsub : A.image (rootPairIndex q r) ⊆
      (Finset.Icc 1 (rootPairPrefix N q r)).filter
        (fun i => rootPairMask (q % 25) (r % 25) i) := by
    intro i hi
    obtain ⟨a, ha, rfl⟩ := Finset.mem_image.mp hi
    exact Finset.mem_filter.mpr
      ⟨rootPairIndex_mem_prefix hq hr hrq hhalf (Finset.mem_Icc.mp (hA ha)).2 (hm a ha).1,
        rootPairMask_of_index hrq (hm a ha).1 (hm a ha).2.1 (hm a ha).2.2⟩
  have hc := Finset.card_le_card hsub
  rw [Finset.card_image_of_injOn (rootPairIndex_injOn q r A (fun a ha => (hm a ha).1)),
    ← maskCount_eq_card] at hc
  have hp := rootPairMask_count_bound (Nat.mod_lt q (by decide))
    (Nat.mod_lt r (by decide)) (by simpa using hq5) (rootPairPrefix N q r)
  have hl := rootPairPrefix_bound (N := N) hr hhalf
  have hcount : 25 * A.card ≤ 23 * rootPairPrefix N q r + 46 :=
    (Nat.mul_le_mul_left 25 hc).trans hp
  have hmul := Nat.mul_le_mul_left q hcount
  have hn : 25 * q * A.card ≤ 46 * N + 69 * q := by nlinarith
  have hn' : (25 : Real) * q * A.card ≤ 46 * N + 69 * q := by exact_mod_cast hn
  have hq' : (0 : Real) < q := by exact_mod_cast hq
  apply (le_div_iff₀ (by positivity : (0 : Real) < 25 * q)).mpr
    (show (A.card : Real) * (25 * q) ≤ 46 * N + 69 * q by nlinarith) |>.trans_eq
  field_simp

end JSP848
