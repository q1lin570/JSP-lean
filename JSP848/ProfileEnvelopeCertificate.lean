import JSP848.ProfileNeighborhoodBounds

set_option maxRecDepth 100000

namespace JSP848

inductive NeighborhoodMode where
  | evenFour
  | evenThree
  | oddTwo
  | oddOne
  | anyOne
  deriving DecidableEq

namespace NeighborhoodMode

def Applies (m : NeighborhoodMode) (v : FactorProfile) : Prop :=
  match m with
  | .evenFour | .evenThree => v.1 ≠ 0
  | .oddTwo | .oddOne => v.1 = 0
  | .anyOne => True

instance (m : NeighborhoodMode) (v : FactorProfile) : Decidable (m.Applies v) := by
  unfold Applies
  cases m <;> infer_instance

def volume (m : NeighborhoodMode) : Rat :=
  match m with
  | .evenFour => 2 / 25
  | .oddTwo => 1 / 50
  | _ => 1 / 25

def classes (m : NeighborhoodMode) : Rat :=
  match m with
  | .evenFour => 4
  | .evenThree => 3
  | .oddTwo => 2
  | _ => 1

def allowTwo (m : NeighborhoodMode) (v : FactorProfile) : Bool :=
  match m with
  | .oddOne => true
  | .anyOne => decide (v.1 = 0)
  | _ => false

end NeighborhoodMode

def factorProfileIndex (v : FactorProfile) : Nat :=
  v.1 * 1536 + v.2.2 + 12 *
    ((if 3 ∈ v.2.1 then 1 else 0) + (if 5 ∈ v.2.1 then 2 else 0) +
     (if 7 ∈ v.2.1 then 4 else 0) + (if 11 ∈ v.2.1 then 8 else 0) +
     (if 13 ∈ v.2.1 then 16 else 0) + (if 17 ∈ v.2.1 then 32 else 0) +
     (if 19 ∈ v.2.1 then 64 else 0))

def invalidNeighborhoodCertificate : ProfileNeighborhoodCertificate :=
  ⟨⟨.weak, 0, 0, 0, 0⟩, ⟨.plain, ∅, 0, 0, 0, 0⟩⟩

structure ProfileEnvelopeCertificate where
  mode : NeighborhoodMode
  bound : Rat
  choices : Array ProfileNeighborhoodCertificate
  indices : Array Nat

namespace ProfileEnvelopeCertificate

def choice (c : ProfileEnvelopeCertificate) (v : FactorProfile) : ProfileNeighborhoodCertificate :=
  c.choices[(c.indices[factorProfileIndex v]?.getD c.choices.size)]?.getD invalidNeighborhoodCertificate

def EntryValid (c : ProfileEnvelopeCertificate) (lo hi : Rat) (v : FactorProfile) : Prop :=
  (c.choice v).Valid v lo hi ∧
    (c.choice v).value v lo c.mode.volume c.mode.classes (c.mode.allowTwo v) ≤ c.bound

instance (c : ProfileEnvelopeCertificate) (lo hi : Rat) (v : FactorProfile) :
    Decidable (c.EntryValid lo hi v) := by unfold EntryValid; infer_instance

def Valid (c : ProfileEnvelopeCertificate) (lo hi : Rat) (maximum : Nat) : Prop :=
  ∀ v ∈ factorProfiles maximum, c.mode.Applies v → c.EntryValid lo hi v

instance (c : ProfileEnvelopeCertificate) (lo hi : Rat) (maximum : Nat) :
    Decidable (c.Valid lo hi maximum) := by unfold Valid; infer_instance

/-- Coverage is checked against the full mathematical profile enumeration. -/
theorem sound (c : ProfileEnvelopeCertificate) {lo hi : Rat} {N b maximum : Nat}
    (hc : c.Valid lo hi maximum) (hb : 0 < b) (hbN : b ≤ N)
    (hN : N ≤ maximum) (hmax : maximum ≤ 2 ^ 41)
    (hm : c.mode.Applies (canonicalFactorProfile b)) :
    ∃ d : ProfileNeighborhoodCertificate,
      d.Valid (canonicalFactorProfile b) lo hi ∧
      d.value (canonicalFactorProfile b) lo c.mode.volume c.mode.classes
        (c.mode.allowTwo (canonicalFactorProfile b)) ≤ c.bound := by
  exact ⟨c.choice (canonicalFactorProfile b),
    hc _ (canonicalFactorProfile_mem hb (hbN.trans hN) hmax) hm⟩

end ProfileEnvelopeCertificate

namespace ProfileEnvelopeCertificateTests

theorem mixed_index : factorProfileIndex (3, {3, 5, 7}, 2) = 4694 := by decide +kernel

def missing : ProfileEnvelopeCertificate := ⟨.anyOne, 1, #[], #[]⟩

theorem rejects_missing_profile : ¬ missing.Valid 322 646 1 := by decide +kernel

theorem rejects_missing_choice :
    ¬ ({missing with indices := #[0]}).Valid 322 646 1 := by decide +kernel

end ProfileEnvelopeCertificateTests

end JSP848
