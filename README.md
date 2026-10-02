# JSP-000701 / Erdos Problem 848

This repository contains the complete all-N Lean formalization and its
mathematical proof evidence for the problem catalogued as JSP-000701. The
original problem is Erdos Problem 848; it quantifies over every `a, b` in the
set, including `a = b`.

For every natural number `N` and every finite `A` contained in
`{1, ..., N}`, if `a * b + 1` is not squarefree for every `a, b` in `A`, then

```text
A.card <= floor((N + 18) / 25).
```

The bound is attained by the elements congruent to 7 modulo 25. The formal
targets are `JSP848.upper_bound` and `JSP848.solution`, both in
`JSP848/Solution.lean`. An English proof overview is in
`solution_overview.md`; detailed written proof and its finite-certificate and
analytic-range evidence are in `solution.md`, `closing_proof.md`,
`threshold_2p28.md`, and `threshold_2p41.md`.

## Reproduce

The project pins Lean 4.27.0 in `lean-toolchain` and exact dependency revisions
in `lake-manifest.json`. Install that Lean toolchain with elan, then run from
the repository root:

```bash
lake exe cache get
lake build JSP848.Solution
lake env lean -M262144 verification/SolutionUpperBoundAudit.lean
lake env lean -M262144 verification/SolutionExactAudit.lean
```

`verification/verify_release.sh` runs those steps and checks the source
inventory. The two audit files enforce the transitive axiom whitelist
`propext`, `Classical.choice`, and `Quot.sound` for the corresponding target.
The audit process may require substantial memory; the checked run used a Lean
limit of 262,144 MiB.

The finite part of the written proof can also be checked independently with
`check_certificate_fast.cpp` against `coloring_33554432.cert`. The threshold
scripts use exact integer/rational checks. The paper by Sawhney, the
Rosser-Schoenfeld result, and the cited explicit-threshold note are linked in
the proof text and are not represented as original contributions.

## Source scope

`verification/proof_modules.list` records the 768 local Lean source files used
by `JSP848.Solution`: its entrypoint and 767 modules in the dependency
closure, derived from the successful Lake build.
`verification/proof_source.sha256` pins those source files, the project
configuration, audit targets, and written proof evidence. Build products, the
local toolchain archive, temporary experiments, and raw replay snapshots are
not source dependencies of the selected theorem target and are not included.

The file `references/erdos848_asymptotic.lean` is a third-party reference and
is not imported by the submitted proof. Its original Apache-2.0 license is
retained in `references/LICENSE`.

## Authorship and license

The contributor and publication contact is Qilin Wang (王麒麟), GitHub
[@q1lin570](https://github.com/q1lin570). The submitted mathematical proof,
Lean formalization, finite checker, and documentation were produced by Codex
GPT-6-Astra; this AI involvement is disclosed for attribution. The human
contributor remains the GitHub account and publication contact for this
submission.

This repository is released under the Apache License, Version 2.0. See
`LICENSE` for the full text and `AUTHORS.md` for the contribution record.
