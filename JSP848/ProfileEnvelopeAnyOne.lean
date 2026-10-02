import JSP848.MiddleProfileEnvelopeBounds

namespace JSP848

theorem ProfileNeighborhoodCertificate.value_mono_classes
    (c : ProfileNeighborhoodCertificate) {v : FactorProfile} {lo hi volume a b : Rat}
    (hc : c.Valid v lo hi) (hab : a ≤ b) (allowTwo : Bool) :
    c.value v lo volume a allowTwo ≤ c.value v lo volume b allowTwo := by
  have hcoef : 0 ≤ c.prime.coefficient := by
    unfold MiddlePrimeCertificate.coefficient
    cases c.prime.mode <;> norm_num
  have hp : 0 ≤ c.prime.value lo := by
    unfold MiddlePrimeCertificate.value
    exact div_nonneg (mul_nonneg hcoef hc.1.2.1.le)
      (mul_nonneg hc.1.1.le hc.1.2.2.1.le)
  have hr : 0 ≤ (2 : Rat) ^ (profileOverlapPrimes v allowTwo).card / lo ^ 3 :=
    div_nonneg (by positivity) (pow_nonneg hc.1.1.le 3)
  unfold ProfileNeighborhoodCertificate.value
  have hm := mul_le_mul_of_nonneg_right hab (add_nonneg hp hr)
  linarith

/-- The even three-class envelope also bounds one class; odd inputs use O1. -/
theorem ProfileEnvelopeCertificate.choice_any_one_real_bound
    (even odd : ProfileEnvelopeCertificate) {lo hi bound : Rat} {N b maximum : Nat}
    (he : even.mode = .evenThree) (ho : odd.mode = .oddOne)
    (hce : even.Valid lo hi maximum) (hco : odd.Valid lo hi maximum)
    (hbe : even.bound ≤ bound) (hbo : odd.bound ≤ bound)
    (hb : 0 < b) (hbN : b ≤ N) (hN : N ≤ maximum) (hmax : maximum ≤ 2 ^ 41) :
    ∃ d : ProfileNeighborhoodCertificate,
      d.Valid (canonicalFactorProfile b) lo hi ∧
        (d.value (canonicalFactorProfile b) lo (1 / 25) 1
          (decide ((canonicalFactorProfile b).1 = 0)) : Real) ≤ (bound : Real) := by
  by_cases hv : (canonicalFactorProfile b).1 = 0
  · obtain ⟨d, hd, hval⟩ := odd.sound hco hb hbN hN hmax (by
      simp [ho, NeighborhoodMode.Applies, hv])
    have hval' : d.value (canonicalFactorProfile b) lo (1 / 25) 1 true ≤ bound := by
      simpa [ho, NeighborhoodMode.volume, NeighborhoodMode.classes,
        NeighborhoodMode.allowTwo] using hval.trans hbo
    refine ⟨d, hd, ?_⟩
    simpa only [hv, decide_true] using (show
      (d.value (canonicalFactorProfile b) lo (1 / 25) 1 true : Real) ≤ (bound : Real) by
        exact_mod_cast hval')
  · obtain ⟨d, hd, hval⟩ := even.sound hce hb hbN hN hmax (by
      simp [he, NeighborhoodMode.Applies, hv])
    have hval' : d.value (canonicalFactorProfile b) lo (1 / 25) 3 false ≤ bound := by
      simpa [he, NeighborhoodMode.volume, NeighborhoodMode.classes,
        NeighborhoodMode.allowTwo] using hval.trans hbe
    have hm := d.value_mono_classes (volume := 1 / 25) hd
      (by norm_num : (1 : Rat) ≤ 3) false
    have hf := hm.trans hval'
    refine ⟨d, hd, ?_⟩
    simpa only [decide_eq_false hv] using (show
      (d.value (canonicalFactorProfile b) lo (1 / 25) 1 false : Real) ≤ (bound : Real) by
        exact_mod_cast hf)

end JSP848
