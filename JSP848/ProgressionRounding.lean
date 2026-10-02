import JSP848.ProgressionCount
import JSP848.OffDiagonalLarge

namespace JSP848

theorem card_nonzero_residue {N q r : Nat} (hr : 0 < r) (hrq : r < q) :
    ((Finset.Icc 1 N).filter (fun a => a % q = r)).card = (N + q - r) / q := by
  have hq := hr.trans hrq
  have hindex (k : Nat) : k < (N + q - r) / q ↔ q * k + r ≤ N := by
    rw [← Nat.succ_le_iff, Nat.le_div_iff_mul_le hq, Nat.succ_mul]
    have hrle : r ≤ N + q := by omega
    rw [Nat.le_sub_iff_add_le hrle, Nat.mul_comm k q]
    omega
  have he : (Finset.Icc 1 N).filter (fun a => a % q = r) =
      (Finset.range ((N + q - r) / q)).image (fun k => q * k + r) := by
    ext a
    simp only [Finset.mem_filter, Finset.mem_Icc, Finset.mem_image, Finset.mem_range]
    constructor
    · rintro ⟨⟨_, haN⟩, hamod⟩
      have heq : q * (a / q) + r = a := by
        simpa only [hamod] using Nat.div_add_mod a q
      exact ⟨a / q, (hindex _).mpr (by omega), heq⟩
    · rintro ⟨k, hk, rfl⟩
      exact ⟨⟨by omega, (hindex k).mp hk⟩, by simp [Nat.add_mod, Nat.mod_eq_of_lt hrq]⟩
  rw [he, Finset.card_image_of_injective, Finset.card_range]
  intro a b hab
  exact Nat.eq_of_mul_eq_mul_left hq (Nat.add_right_cancel hab)

theorem nonzero_residue_card_error {N q r : Nat} (hr : 0 < r) (hrq : r < q) :
    |(((Finset.Icc 1 N).filter (fun a => a % q = r)).card : Real) - (N : Real) / q| ≤ 1 := by
  rw [card_nonzero_residue hr hrq]
  have hq := hr.trans hrq
  have hu := Nat.mul_div_le (N + q - r) q
  have hl := Nat.div_add_mod (N + q - r) q
  have hm := Nat.mod_lt (N + q - r) hq
  have hupper : q * ((N + q - r) / q) ≤ N + q := by omega
  have hlower : N ≤ q * ((N + q - r) / q) + q := by omega
  have hu' : (q : Real) * ((N + q - r) / q : Nat) ≤ (N : Real) + q := by
    exact_mod_cast hupper
  have hl' : (N : Real) ≤ (q : Real) * ((N + q - r) / q : Nat) + q := by
    exact_mod_cast hlower
  have hq' : (0 : Real) < q := by exact_mod_cast hq
  have hd : (N : Real) / q * q = N := div_mul_cancel₀ _ hq'.ne'
  apply abs_le.mpr
  constructor <;> nlinarith

namespace ProgressionRoundingTests

theorem exact_residue : ((Finset.Icc 1 100).filter (fun a => a % 25 = 7)).card = 4 := by
  simpa using card_nonzero_residue (N := 100) (q := 25) (r := 7) (by decide) (by decide)

theorem empty_prefix :
    |(((Finset.Icc (1 : Nat) 0).filter (fun a => a % 25 = 7)).card : Real) - (0 : Real) / 25| ≤ 1 := by
  simpa only [Nat.cast_zero, Nat.cast_ofNat] using
    nonzero_residue_card_error (N := 0) (q := 25) (r := 7) (by decide) (by decide)

end ProgressionRoundingTests

end JSP848
