# JSP-000701 / Erdos Problem #848: Proof Overview

## Theorem

Let `N` be a positive integer and let `A` be a subset of `{1, ..., N}`. Assume
that `a*b + 1` is not squarefree for every `a, b` in `A`, including the
diagonal case `a = b`. Then

```text
|A| <= floor((N + 18) / 25).
```

The bound is sharp. The integers at most `N` congruent to `7 modulo 25` have
exactly `floor((N + 18) / 25)` elements. For any two of them, `a*b + 1` is
divisible by `25`.

The original statement is [Erdos Problem #848](https://www.erdosproblems.com/848).
It explicitly quantifies over all `a, b` in `A`.

## Proof Structure

The upper bound is proved in four adjacent ranges. Their endpoints overlap,
so every positive integer `N` is covered.

1. **`1 <= N <= 2^25`.** The diagonal condition restricts vertices to
   integers for which `a^2 + 1` is not squarefree. Join two vertices when
   their product plus one is not squarefree. Every admissible set is then a
   clique. A checked coloring certificate gives a proper coloring for every
   prefix interval, with at most `floor((N + 18) / 25)` colors. A clique uses
   distinct colors, proving the bound throughout this range. The independent
   C++ checker verifies all prefix vertices, same-color pairs, and
   recolorings.

2. **`2^25 <= N <= 2^28`.** The proof splits the set into the two principal
   residue classes modulo `25` and the remaining elements. It combines
   diagonal square-factor restrictions, exact classifications of small prime
   factors, and bounds for large prime factors. A finite list of factor
   profiles is checked with exact rational inequalities on three complete
   intervals; every non-principal case has density strictly below `1/25`.
   See `closing_proof.md` and `check_closing_threshold.py`.

3. **`2^28 <= N <= 2^41`.** The same decomposition is refined into `13`
   complete intervals and `33,425` factor profiles. The verifier checks the
   resulting `52` endpoint inequalities exactly. See `threshold_2p28.md` and
   `check_factor_threshold.py`.

4. **`N >= 2^41`.** Explicit prime-counting bounds, the number of square roots
   modulo prime squares, and a tail estimate from negative Pell equations
   control the diagonal and off-diagonal conditions. Monotonicity reduces the
   numerical verification to the threshold endpoint. Four exhaustive cases
   are checked with exact rational upper bounds, each strictly below `1/25`;
   if only one principal residue class remains, direct counting proves the
   result. See `threshold_2p41.md` and `check_threshold.py`.

The detailed derivations and finite-range audit are in `solution.md`,
`closing_proof.md`, `threshold_2p28.md`, `threshold_2p41.md`, and
`completion_audit.md`. These English notes retain the exact bounds and
verification data while giving reviewers a readable proof map.

The asymptotic structural result used in the large-range argument is due to
[Sawhney](https://www.math.columbia.edu/~msawhney/Problem_848.pdf). The explicit
threshold method also refers to [Sothanaphan's note](https://drive.google.com/file/d/1ujhm4_WYpgRV_rd1rJXIfHyvx16COEKe/view).
Prime-counting input is from [Rosser-Schoenfeld (1962), equation (3.2)](https://doi.org/10.1215/ijm/1255631807).
These references are prior results, not the authors of this all-`N` proof.

## Formal Verification

The Lean targets are `JSP848.upper_bound` and `JSP848.solution` in
`JSP848/Solution.lean`. The project pins Lean `4.27.0` and exact dependency
revisions in `lake-manifest.json`. Run `verification/verify_release.sh` from
the repository root to check the source inventory, build the target, audit
transitive axioms, verify the finite certificate, and run the exact-arithmetic
tests. The axiom audits allow only `propext`, `Classical.choice`, and
`Quot.sound`.

The main certificate has SHA-256
`3fb7e35c8ec32c82fabf0c20a1cb30697dea2a9ae358078eed8bd4d65cb41afc`.
No independent human review is claimed by this document.
