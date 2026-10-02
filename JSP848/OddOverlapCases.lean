import JSP848.OddOverlapCount
import JSP848.DiagonalExclusionEstimate

namespace JSP848

theorem card_odd_mod_four_partition (B : Finset Nat) (ho : ∀ a ∈ B, a % 2 = 1) :
    (B.filter (fun a => a % 4 = 1)).card + (B.filter (fun a => a % 4 = 3)).card = B.card := by
  have he : B.filter (fun a => a % 4 ≠ 1) = B.filter (fun a => a % 4 = 3) := by
    apply Finset.filter_congr
    intro a ha
    have hm : (a % 4) % 2 = a % 2 := Nat.mod_mod_of_dvd a (by decide)
    have hodd := ho a ha
    have hlt := Nat.mod_lt a (by decide : 0 < 4)
    omega
  have h := Finset.card_filter_add_card_filter_not (s := B) (fun a => a % 4 = 1)
  rwa [he] at h

theorem admissible_odd_two_groups_bound {N : Nat} {A : Finset Nat}
    (hA : Admissible N A) (ho : ∀ a ∈ A, a % 2 = 1)
    {S leftBound rightBound : Real} (hS : 2 ≤ S)
    (hl : (((baseParts A).filter (fun a => a % 4 = 1)).card : Real) ≤ leftBound)
    (hr : (((baseParts A).filter (fun a => a % 4 = 3)).card : Real) ≤ rightBound) :
    (A.card : Real) ≤ (6371 / 500000 : Real) * N +
      (69 / 25 : Real) * (smallDiagonalPrimes S).card +
      oddPellTailBound N (((N : Real) ^ 2 + 1) / S ^ 2) + leftBound + rightBound := by
  have hd := exceptional_odd_excluded_diagonal_bound hA
    (fun a ha => ho a (Finset.mem_filter.mp ha).1) hS
  have hp : (((baseParts A).filter (fun a => a % 4 = 1)).card : Real) +
      ((baseParts A).filter (fun a => a % 4 = 3)).card = (baseParts A).card := by
    exact_mod_cast card_odd_mod_four_partition (baseParts A)
      (fun a ha => ho a (Finset.mem_filter.mp ha).1)
  have hpart : ((baseParts A).card : Real) + (exceptionalPart A).card = A.card := by
    exact_mod_cast card_baseParts_add_exceptional A
  linarith

theorem admissible_odd_one_group_bound {N b : Nat} {A : Finset Nat}
    (hA : Admissible N A) (ho : ∀ a ∈ A, a % 2 = 1) (hb : b ∈ exceptionalPart A)
    (he : ∀ a ∈ exceptionalPart A, a % 4 = b % 4)
    {S neighborBound : Real} (hlo : 32768 ≤ S) (hhi : S ≤ 2097152)
    (hn : (((baseParts A).filter (fun a => a % 4 = b % 4)).card : Real) ≤ neighborBound) :
    (A.card : Real) ≤ ((277 / 40000 : Real) + 1 / 50) * N +
      2 * ((29 / 50 : Real) * S / Real.log S) +
      oddPellTailBound N (((N : Real) ^ 2 + 1) / S ^ 2) + neighborBound + 2 := by
  have hbo := ho b (Finset.mem_filter.mp hb).1
  have hb4 : b % 4 = 1 ∨ b % 4 = 3 := by
    have hm : (b % 4) % 2 = 1 := by simpa using hbo
    have := Nat.mod_lt b (by decide : 0 < 4)
    omega
  have hd := exceptional_odd_mod_four_numeric_bound hA hb4 hlo hhi
  have hfilter : (exceptionalPart A).filter (fun a => a % 4 = b % 4) = exceptionalPart A :=
    Finset.filter_eq_self.mpr he
  rw [hfilter] at hd
  have hop := odd_base_opposite_class_count hA.1 hbo
    (fun a ha => ho a (Finset.mem_filter.mp ha).1)
  have hp : (((baseParts A).filter (fun a => a % 4 = b % 4)).card : Real) +
      ((baseParts A).filter (fun a => a % 4 ≠ b % 4)).card = (baseParts A).card := by
    exact_mod_cast Finset.card_filter_add_card_filter_not (s := baseParts A)
      (fun a => a % 4 = b % 4)
  have hpart : ((baseParts A).card : Real) + (exceptionalPart A).card = A.card := by
    exact_mod_cast card_baseParts_add_exceptional A
  linarith

end JSP848
