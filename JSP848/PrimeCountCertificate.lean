import JSP848.Basic
import Mathlib.NumberTheory.PrimeCounting

namespace JSP848

/-- A zero hint is counted, without asserting primality; every exclusion needs a proper divisor. -/
def checkPrimeHint (n d : Nat) : Bool :=
  d == 0 || decide (1 < d ∧ d < n ∧ d ∣ n)

def checkPrimeHints (base step : Nat) : List Nat → Bool
  | [] => true
  | d :: rest => checkPrimeHint base d && checkPrimeHints (base + step) step rest

def primeProgressionCount (base step count : Nat) : Nat :=
  Nat.count (fun i => (base + step * i).Prime) count

theorem prime_hint_not_excluded {n d : Nat} (hn : n.Prime)
    (hc : checkPrimeHint n d = true) : d = 0 := by
  rcases Bool.or_eq_true_iff.mp hc with hz | hf
  · exact of_decide_eq_true hz
  · have hd : 1 < d ∧ d < n ∧ d ∣ n := of_decide_eq_true hf
    have := (Nat.dvd_prime hn).mp hd.2.2
    omega

theorem primeProgressionCount_succ (base step count : Nat) :
    primeProgressionCount base step (count + 1) =
      primeProgressionCount (base + step) step count + if base.Prime then 1 else 0 := by
  unfold primeProgressionCount
  rw [Nat.count_succ']
  simp only [Nat.mul_add, Nat.mul_one, Nat.mul_zero, Nat.add_zero]
  congr 2
  funext i
  simp only [Nat.add_assoc, Nat.add_left_comm, Nat.add_comm]

theorem checked_prime_progression_count {base step : Nat} {hints : List Nat}
    (hc : checkPrimeHints base step hints = true) :
    primeProgressionCount base step hints.length ≤ hints.count 0 := by
  induction hints generalizing base with
  | nil => simp [primeProgressionCount]
  | cons d rest ih =>
    have hh := Bool.and_eq_true_iff.mp hc
    have ht := ih hh.2
    rw [List.length_cons, primeProgressionCount_succ]
    by_cases hp : base.Prime
    · have hd := prime_hint_not_excluded hp hh.1
      subst d
      simp only [if_pos hp, List.count_cons_self]
      omega
    · rw [if_neg hp, Nat.add_zero]
      exact ht.trans List.count_le_count_cons

theorem checkPrimeHints_append (base step : Nat) (xs ys : List Nat) :
    checkPrimeHints base step (xs ++ ys) =
      (checkPrimeHints base step xs && checkPrimeHints (base + step * xs.length) step ys) := by
  induction xs generalizing base with
  | nil => simp [checkPrimeHints]
  | cons d rest ih =>
    simp only [List.cons_append, checkPrimeHints, ih, List.length_cons]
    have he : base + step + step * rest.length = base + step * (rest.length + 1) := by
      rw [Nat.mul_add, Nat.mul_one]
      omega
    rw [he, Bool.and_assoc]

structure CheckedPrimeCountBlock (base step count bound : Nat) where
  hints : List Nat
  length_eq : hints.length = count
  checked : checkPrimeHints base step hints = true
  count_le : hints.count 0 ≤ bound

namespace CheckedPrimeCountBlock

def append {base step n m a b : Nat} (xs : CheckedPrimeCountBlock base step n a)
    (ys : CheckedPrimeCountBlock (base + step * n) step m b) :
    CheckedPrimeCountBlock base step (n + m) (a + b) where
  hints := xs.hints ++ ys.hints
  length_eq := by simp only [List.length_append, xs.length_eq, ys.length_eq]
  checked := by rw [checkPrimeHints_append, xs.checked, xs.length_eq, ys.checked]; rfl
  count_le := by rw [List.count_append]; exact Nat.add_le_add xs.count_le ys.count_le

theorem prime_count_le {base step count bound : Nat}
    (block : CheckedPrimeCountBlock base step count bound) :
    primeProgressionCount base step count ≤ bound := by
  have h := checked_prime_progression_count block.checked
  rw [block.length_eq] at h
  exact h.trans block.count_le

end CheckedPrimeCountBlock

theorem primeCounting_le_odd_progression {N count : Nat} (hN : N ≤ 2 * count + 2) :
    Nat.primeCounting N ≤ 1 + primeProgressionCount 3 2 count := by
  classical
  let P := (Finset.range (N + 1)).filter Nat.Prime
  let I := (Finset.range count).filter (fun i => (3 + 2 * i).Prime)
  have hsub : P ⊆ {2} ∪ I.image (fun i => 3 + 2 * i) := by
    intro p hp
    obtain ⟨hpN, hprime⟩ := Finset.mem_filter.mp hp
    have hpN' := Finset.mem_range.mp hpN
    rcases hprime.eq_two_or_odd with rfl | hodd
    · exact Finset.mem_union_left _ (Finset.mem_singleton_self _)
    · apply Finset.mem_union_right
      have hp2 := hprime.two_le
      have hdiv := Nat.div_add_mod p 2
      have hi : p / 2 - 1 < count := by omega
      have he : 3 + 2 * (p / 2 - 1) = p := by omega
      apply Finset.mem_image.mpr
      exact ⟨p / 2 - 1, Finset.mem_filter.mpr
        ⟨Finset.mem_range.mpr hi, by rwa [he]⟩, he⟩
  have hc : P.card ≤ 1 + I.card := by
    calc
      P.card ≤ ({2} ∪ I.image (fun i => 3 + 2 * i)).card := Finset.card_le_card hsub
      _ ≤ ({2} : Finset Nat).card + (I.image (fun i => 3 + 2 * i)).card := Finset.card_union_le _ _
      _ ≤ 1 + I.card := by simpa only [Finset.card_singleton] using
        Nat.add_le_add_left (Finset.card_image_le (s := I) (f := fun i => 3 + 2 * i)) 1
  simpa only [P, I, Nat.primeCounting, Nat.primeCounting', primeProgressionCount,
    Nat.count_eq_card_filter_range] using hc

def checkPrimeCountCertificate (N bound : Nat) (hints : List Nat) : Bool :=
  decide (N ≤ 2 * hints.length + 2) && checkPrimeHints 3 2 hints &&
    decide (1 + hints.count 0 ≤ bound)

theorem primeCounting_le_of_certificate {N bound : Nat} {hints : List Nat}
    (hc : checkPrimeCountCertificate N bound hints = true) : Nat.primeCounting N ≤ bound := by
  have hh := Bool.and_eq_true_iff.mp hc
  have hh' := Bool.and_eq_true_iff.mp hh.1
  have hn : N ≤ 2 * hints.length + 2 := of_decide_eq_true hh'.1
  have hb : 1 + hints.count 0 ≤ bound := of_decide_eq_true hh.2
  exact (primeCounting_le_odd_progression hn).trans
    ((Nat.add_le_add_left (checked_prime_progression_count hh'.2) 1).trans hb)

end JSP848
