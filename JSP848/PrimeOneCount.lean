import JSP848.PrimeCountCertificate
import JSP848.LogCertificate

namespace JSP848

/-- The number of primes at most N that are one modulo four. -/
def primeOneCounting (N : Nat) : Nat :=
  Nat.count (fun p => p.Prime ∧ p % 4 = 1) (N + 1)

theorem primeOneCounting_mono : Monotone primeOneCounting := by
  intro a b hab
  exact Nat.count_monotone _ (Nat.add_le_add_right hab 1)

theorem primeOneCounting_eq_card (N : Nat) :
    primeOneCounting N = ((Finset.range (N + 1)).filter
      (fun p => p.Prime ∧ p % 4 = 1)).card :=
  Nat.count_eq_card_filter_range _ _

theorem primeOneCounting_eq_progression (N : Nat) :
    primeOneCounting N = primeProgressionCount 5 4 ((N - 1) / 4) := by
  classical
  rw [primeOneCounting_eq_card, primeProgressionCount, Nat.count_eq_card_filter_range]
  symm
  apply Finset.card_bij (fun i _ => 5 + 4 * i)
  · intro i hi
    obtain ⟨hi, hp⟩ := Finset.mem_filter.mp hi
    have hir := Finset.mem_range.mp hi
    refine Finset.mem_filter.mpr ⟨Finset.mem_range.mpr ?_, hp, ?_⟩ <;> omega
  · intro i hi j hj he
    omega
  · intro p hp
    obtain ⟨hpN, hprime, hmod⟩ := Finset.mem_filter.mp hp
    have hpN' := Finset.mem_range.mp hpN
    have hp2 := hprime.two_le
    have he : 5 + 4 * ((p - 5) / 4) = p := by omega
    refine ⟨(p - 5) / 4, Finset.mem_filter.mpr ⟨Finset.mem_range.mpr ?_, ?_⟩, he⟩
    · omega
    · rwa [he]

theorem primeOneCounting_le_of_block {N count bound : Nat}
    (hN : (N - 1) / 4 ≤ count) (block : CheckedPrimeCountBlock 5 4 count bound) :
    primeOneCounting N ≤ bound := by
  rw [primeOneCounting_eq_progression]
  exact (Nat.count_monotone _ hN).trans block.prime_count_le

def PrimeOneBoundOn (lo hi : Nat) (coefficient : Rat) : Prop :=
  ∀ x : Real, lo ≤ x → x ≤ hi →
    (primeOneCounting ⌊x⌋₊ : Real) ≤ coefficient * x / Real.log x

theorem primeOneCounting_real_cell {lo hi count : Nat} {q coefficient : Rat}
    (hlo : 3 ≤ lo) (hcount : primeOneCounting hi ≤ count)
    (hlog : Real.log lo ≤ q) (hbound : (count : Rat) * q ≤ coefficient * lo)
    {x : Real} (hxl : (lo : Real) ≤ x) (hxu : x ≤ hi) :
    (primeOneCounting ⌊x⌋₊ : Real) ≤ coefficient * x / Real.log x :=
  monotone_counting_real_cell primeOneCounting_mono hlo hcount hlog hbound hxl hxu

theorem PrimeOneBoundOn.join {lo mid hi : Nat} {coefficient : Rat}
    (left : PrimeOneBoundOn lo mid coefficient) (right : PrimeOneBoundOn mid hi coefficient) :
    PrimeOneBoundOn lo hi coefficient := by
  intro x hxlo hxhi
  rcases le_total x (mid : Real) with hleft | hright
  · exact left x hxlo hleft
  · exact right x hright hxhi

namespace PrimeOneCountTests

theorem count_zero : primeOneCounting 0 = 0 := by decide +kernel
theorem count_before_five : primeOneCounting 4 = 0 := by decide +kernel
theorem count_five : primeOneCounting 5 = 1 := by decide +kernel
theorem count_twelve : primeOneCounting 12 = 1 := by decide +kernel
theorem count_thirteen : primeOneCounting 13 = 2 := by decide +kernel
theorem count_hundred : primeOneCounting 100 = 11 := by decide +kernel
theorem empty_block : primeOneCounting 4 ≤ 0 :=
  primeOneCounting_le_of_block (count := 0) (by decide)
    ⟨[], by decide, by decide, by decide⟩

end PrimeOneCountTests

end JSP848
