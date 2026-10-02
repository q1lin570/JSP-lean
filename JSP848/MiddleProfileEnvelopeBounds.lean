import JSP848.ProfileEnvelopeCertificate

namespace JSP848

/- A small bridge used by the middle-range case split.  The envelope stores
   rational values; analytic inequalities are stated over `Real`. -/
theorem ProfileEnvelopeCertificate.choice_real_bound
    (c : ProfileEnvelopeCertificate) {lo hi : Rat} {N b maximum : Nat}
    (hc : c.Valid lo hi maximum) (hb : 0 < b) (hbN : b ≤ N)
    (hN : N ≤ maximum) (hmax : maximum ≤ 2 ^ 41)
    (hm : c.mode.Applies (canonicalFactorProfile b)) :
    ∃ d : ProfileNeighborhoodCertificate,
      d.Valid (canonicalFactorProfile b) lo hi ∧
        (d.value (canonicalFactorProfile b) lo c.mode.volume c.mode.classes
          (c.mode.allowTwo (canonicalFactorProfile b)) : Real) ≤ (c.bound : Real) := by
  obtain ⟨d, hd, hv⟩ := c.sound hc hb hbN hN hmax hm
  exact ⟨d, hd, by exact_mod_cast hv⟩

end JSP848
