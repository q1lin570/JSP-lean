import JSP848.FastSquarefree
import JSP848.PrimeCertificate

namespace JSP848

def checkCoprimeFactors : List ℕ → Bool
  | [] => true
  | p :: rest => decide (p.Coprime rest.prod) && checkCoprimeFactors rest

theorem squarefree_prod_of_checked_factors {factors : List ℕ}
    (hp : ∀ p ∈ factors, p.Prime) (hc : checkCoprimeFactors factors = true) :
    Squarefree factors.prod := by
  induction factors with
  | nil => exact squarefree_one
  | cons p rest ih =>
    have hparts := Bool.and_eq_true_iff.mp hc
    apply (Nat.squarefree_mul (of_decide_eq_true hparts.1)).mpr
    exact ⟨(Nat.prime_iff.mp (hp p (by simp))).squarefree,
      ih (fun q hq => hp q (by simp [hq])) hparts.2⟩

def checkFactorCertificate (n : ℕ) (factors : List ℕ) : Bool :=
  decide (factors.prod = n) && checkCoprimeFactors factors

theorem checkFactorCertificate_sound {n : ℕ} {factors : List ℕ}
    (hp : ∀ p ∈ factors, p.Prime) (hc : checkFactorCertificate n factors = true) :
    Squarefree n := by
  have hparts := Bool.and_eq_true_iff.mp hc
  have hprod : factors.prod = n := of_decide_eq_true hparts.1
  exact hprod ▸ squarefree_prod_of_checked_factors hp hparts.2

/-- Proof-bearing nodes ensure lookup soundness even if a proposed tree is unsorted. -/
inductive SquarefreeOracle where
  | empty
  | node (value : ℕ) (valid : Squarefree value) (left right : SquarefreeOracle)

namespace SquarefreeOracle

def lookup : SquarefreeOracle → ℕ → Bool
  | .empty, _ => false
  | .node value _ left right, n =>
    if n = value then true else if n < value then left.lookup n else right.lookup n

theorem lookup_sound (oracle : SquarefreeOracle) (n : ℕ) :
    oracle.lookup n = true → Squarefree n := by
  induction oracle with
  | empty => simp [lookup]
  | node value valid left right ihl ihr =>
    intro h
    by_cases heq : n = value
    · simpa only [heq] using valid
    · by_cases hlt : n < value
      · exact ihl (by simpa only [lookup, if_neg heq, if_pos hlt] using h)
      · exact ihr (by simpa only [lookup, if_neg heq, if_neg hlt] using h)

end SquarefreeOracle

end JSP848
