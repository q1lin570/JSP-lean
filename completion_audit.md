# JSP-000701: Completion Audit

**Status:** the all-range mathematical proof evidence and local Lean
formalization have been checked. The finite certificate checker exited with
code 0, and all analytic interval checks passed. A public fixed-commit
reproduction, independent external review, award submission, and award claim
are separate steps and are not complete.

## Target and scope

The original problem is JSP-000701, corresponding to Erdős Problem 848. For
every positive integer `N` and every `A subset [1,N]`, including the diagonal
case `a=b`, the target is
`|A| <= floor((N+18)/25)` when every `a*b+1` is not squarefree.

This audit summarizes the all-range mathematical proof evidence. Lean
formalization, public release, and award application have their own checks.

## Verification checklist

| Requirement | Evidence | Result |
| --- | --- | --- |
| Quantifiers include `a=b` | Original statement, diagonal vertex generation, and all analytic arguments | Pass |
| Sharp lower bound for every `N` | Truncated class `7 mod 25`; every product plus one is divisible by `25` | Pass |
| Upper bound for `1 <= N <= 2^25` | Prefix coloring certificate; 3,528,561 vertices, 463,291 recolorings, 4,063,721 same-color pairs; checker exit 0 | Pass |
| Upper bound for `2^25 <= N <= 2^28` | `closing_proof.md`; 3 complete intervals, 5,366 profiles, 15 final rational inequalities | Pass |
| Upper bound for `2^28 <= N <= 2^41` | `threshold_2p28.md`; 13 complete intervals, 33,425 profiles, 52 final rational inequalities | Pass |
| Upper bound for `N >= 2^41` | `threshold_2p41.md`; symbolic estimates, monotonicity, four exact endpoint checks | Pass |
| No gap at interval endpoints | Exact interval reports; adjacent ranges overlap at `2^25`, `2^28`, and `2^41` | Pass |
| Factor profiles cover every `b` | Profiles generated through each right endpoint; consecutive prime list and length checks; cross-checks for `b <= 10000` | Pass |
| Prime-counting ranges are valid | Rosser-Schoenfeld equation (3.2) checked; 8,064 exact intervals for the `pi1` bound; all `R,S` ranges checked | Pass |
| Integer arithmetic and certificate integrity | Independent root-generation methods; fixed/dynamic trial-division checks; one million integer comparisons; corrupt-certificate rejection | Pass |
| Runtime and regression checks | Warning-clean C++ builds; AddressSanitizer/UBSan check through 10,000; 20 Python tests | Pass |

## Manual audit points

- Diagonal prime-square factors are considered through `p <= N`; no invalid
  truncation at `sqrt(N)` is used.
- The negative-Pell argument is in the integer coefficient ring. The square
  of the minimal negative-norm unit is the minimal positive-norm unit, giving
  the odd-power form and denominator divisibility.
- Restrictions on the residue of `d` are used only as necessary conditions.
  The exceptional minimal denominator `y0=1` is counted separately, with the
  correct parity restriction on `x0`.
- Joint-root discrepancy and prime-progression bounds cover entire periods
  and intervals, not sampled endpoints.
- Large off-diagonal factors are grouped by `m=(a*b+1)/p^2`. Several
  progressions for the same fixed `b` share one full-interval tail; different
  choices of `b` pay separately.
- The unknown smallest prime factor bound `q <= (b/B)^(1/k)` is used only for
  `k>=2`, with `1/k-1/2 <= 0`; no fixed prime is assumed to divide every
  member of a profile.
- Small-prime inclusion-exclusion is applied only to progressions where the
  automatic square factors have been identified. The restricted diagonal
  main term does not subtract that correction twice.
- Each selected factor-profile parameter is rechecked with rational
  arithmetic. Floating-point values are not used to decide acceptance.
- The parity split modulo `4`, including both distributions of odd elements
  and the case of an even baseline element, covers all admissible sets.
- Every interval uses factor profiles generated through its right endpoint
  and decreasing error bounds checked at its left endpoint. The tightest
  bridge-case bound is `0.039521863741 < 0.04`.

## Certificate identifiers

- Main certificate: `coloring_33554432.cert`.
- SHA-256: `3fb7e35c8ec32c82fabf0c20a1cb30697dea2a9ae358078eed8bd4d65cb41afc`.
- Generated vertices: 3,528,561; recolorings: 463,291; same-color pairs
  checked: 4,063,721. The certificate lemma gives the bound for every prefix.
- Bridge report: `closing_threshold_results.json`, SHA-256
  `cc5e4ef7409a10d6f79ce8af994d9c135a92e989aa0c6f9b3d7b41ca542f1422`.
- Intermediate report: `factor_threshold_results.json`, SHA-256
  `663bf1f193cf6eba973b900e3f14e26556dfd1377b784b093a8827fc4e92f5ec`.

## Trust and review limits

The computation-assisted proof relies on integer and rational programs, the
compiler and hardware, the stated symbolic arguments, and the cited published
prime-counting theorem. It uses no probabilistic primality tests. No
independent external review is claimed. The separate Lean 4.27.0
formalization passed local kernel checking and transitive axiom audits for
`JSP848.upper_bound` and `JSP848.solution`, with only `propext`,
`Classical.choice`, and `Quot.sound`. These local checks do not replace
external review or the award process.
