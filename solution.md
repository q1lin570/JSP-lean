# JSP-000701 / Erdős Problem 848: Complete Proof and Verification Map

For every integer `N >= 0`, let `A` be a subset of `{1, ..., N}` such that
`a*b + 1` is not squarefree for every `a,b in A`, including `a = b`. Then

```text
|A| <= floor((N + 18) / 25).
```

This bound is attained by the elements congruent to `7 mod 25`: for any two
such elements, `a*b + 1` is divisible by `25`, and the number of elements at
most `N` is `floor((N + 18) / 25)`. For `N = 0`, both sides are zero.

The theorem is proved in Lean as `JSP848.upper_bound` and `JSP848.solution` in
`JSP848/Solution.lean`. The proof covers the finite and unbounded ranges below.
The companion notes give the calculations and exact-arithmetic verification
behind the analytic ranges.

## Range decomposition

| Range | Upper-bound proof | Verification |
| --- | --- | --- |
| `1 <= N <= 2^25` | Prefix coloring certificate | Independent checker covers all 3,528,561 vertices and 4,063,721 same-color pairs |
| `2^25 <= N <= 2^28` | `closing_proof.md` | 3 complete intervals, 5,366 factor profiles, 15 final rational inequalities |
| `2^28 <= N <= 2^41` | `threshold_2p28.md` | 13 complete intervals, 33,425 factor profiles, 52 final rational inequalities |
| `N >= 2^41` | `threshold_2p41.md` | Monotone symbolic bounds and four exact endpoint checks |

The endpoints overlap, so the ranges cover every positive integer. The
finite-range and interval checks are summarized in `completion_audit.md`.

## Finite range

First retain only the integers `a` for which `a^2 + 1` is not squarefree;
these are the vertices. Join two vertices when `a*b + 1` is not squarefree.
Every admissible set is a clique in this graph. The certificate gives a proper
coloring of every prefix interval with at most `floor((N + 18) / 25)` colors.
A clique contains at most one vertex of each color, proving the upper bound for
each prefix, not merely at the endpoint `N = 2^25`.

The independent checker regenerates every diagonal-valid vertex, checks the
event stream and each coloring update, and verifies every same-color pair.
It uses deterministic integer factor checks, not probabilistic primality
testing. The certificate and checker details are in `closing_proof.md`.

## Analytic ranges

Partition the set into the two classes `7` and `18 mod 25`, denoted `A7` and
`A18`, and the remaining set `A*`. The diagonal condition `a^2 + 1` not
squarefree is controlled by roots modulo prime squares. The off-diagonal
condition is controlled by roots of `a*b + 1` modulo prime squares. Parity,
residues modulo `4`, exact small-prime factor profiles, and a large-prime tail
bound give a finite set of cases.

For the unbounded range, the diagonal prime-square density is bounded using
`D < 277/10000` for primes `p = 1 mod 4`, `p >= 13`; small-prime off-diagonal
square factors use `C < 203/1250`. Large off-diagonal square factors are
bounded by grouping `a*b + 1 = m*p^2` and counting roots modulo `b`. Large
diagonal factors reduce to negative Pell equations `x^2 - d*y^2 = -1`; the
growth of their solutions bounds the tail. Four parity and residue cases each
give a density strictly below `1/25` at `N = 2^41`. Their normalized error
terms decrease for larger `N`.

For `2^28 <= N <= 2^41`, classify each possible fixed element `b` by its
small-prime factors and a lower bound on its remaining prime factors. A bound
for unit square roots modulo `b` then controls the large-prime tail. Thirteen
complete dyadic intervals suffice because the normalized errors decrease
within each interval. Every one of the 33,425 factor profiles is included.

For `2^25 <= N <= 2^28`, refine the Pell and diagonal-root estimates, account
for overlap among small square factors by finite inclusion-exclusion, and use
the smallest unknown prime factor of `b` when there are at least two such
factors. Five cases cover all sets. The 5,366 profiles in three complete
intervals are checked with exact rational arithmetic. In every analytic case
other than a set contained in one of the two baseline classes, the density is
strictly below `1/25`; a single baseline class is bounded directly by counting.

The proofs use the structural classification of Sawhney, explicit estimates
from Sothanaphan's note, and the prime-counting inequality of Rosser and
Schoenfeld, equation (3.2). The submitted derivations state which estimates
are reproved and which are cited; no cited threshold is used as a substitute
for the all-`N` proof. References are linked from the companion notes.

## Reproduction

From the repository root, the complete release check is:

```bash
./verification/verify_release.sh
```

It verifies the source manifest, builds the Lean target, audits transitive
axioms, checks the finite certificate, compiles the independent checker, and
runs the exact-arithmetic tests. The main finite certificate has SHA-256
`3fb7e35c8ec32c82fabf0c20a1cb30697dea2a9ae358078eed8bd4d65cb41afc`.

The finite coloring checker took about 192 seconds on the recorded machine.
The Lean axiom audits allow only `propext`, `Classical.choice`, and
`Quot.sound`. Local verification is not an independent expert review or an
award decision; those remain external review steps.
