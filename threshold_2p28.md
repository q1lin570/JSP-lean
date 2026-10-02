# JSP-000701: The Range `2^28 <= N <= 2^41`

This note proves the target bound for `N >= 2^28`; its upper endpoint is
covered by `threshold_2p41.md`, and the remaining interval below `2^28` is
covered by `closing_proof.md` and the finite certificate. The 13 intervals
and 33,425 factor profiles below are checked with exact rational arithmetic.

Write `A7`, `A18`, and `A*` for the two residue classes `7` and `18 mod 25`
and their complement. The bound is
`|A| <= floor((N+18)/25)` whenever `a*b+1` is not squarefree for every
`a,b in A`, including `a=b`.

## 1. Constants and prime counting

Exact finite rational sums and integral tail bounds give

```text
D = sum_{p = 1 mod 4, p >= 13} 2/p^2 < d = 0.0277,
C = sum_{p != 2,5} 1/p^2 < c = 0.1624.
```

Rosser and Schoenfeld (1962), page 69, equation (3.2), states
`pi(x) < (x/log x)*(1 + 3/(2 log x))` for `x > 1`. Hence, for `x >= 2^19`,

```text
pi(x) < 28*x/(25*log x).                                      (1)
```

The cited inequality is a published theorem; it is not reproved here.

## 2. Negative Pell equations with prime denominators

For `S >= 1`, put `Y = (N^2+1)/S^2`. Then

```text
#{(a,p) : 1 <= a <= N, p > S prime, p^2 | a^2+1}
    <= Y + sqrt(Y)*log(N)/log(3).                              (2)
```

Write `a^2+1 = d*p^2`; it suffices to count solutions of
`x^2-d*y^2=-1` with `d <= Y` and prime `y`. If `d` is a square, there is no
positive solution. Otherwise, let `alpha0 = x0 + y0*sqrt(d) > 1` be the
smallest solution of norm `-1`. Every positive solution is an odd power of
`alpha0`.

For completeness, `alpha0^2` is the smallest norm-one unit greater than one.
If there were a unit `beta` strictly between `1` and `alpha0^2`, either
`alpha0/beta` or `beta/alpha0` would be a norm-minus-one unit strictly
between `1` and `alpha0`, contradicting minimality. Any other norm-minus-one
solution divided by `alpha0` is a norm-one unit; after removing an appropriate
power of `alpha0^2`, minimality forces the quotient to be one. This gives the
odd-power representation.

The `sqrt(d)` coefficient in each higher odd power is a multiple of `y0`
strictly greater than `y0`. Thus if `y0 > 1`, at most the minimal solution
can have prime denominator `y`. The only exception is `y0=1`, which implies
`d=x0^2+1`; there are at most `sqrt(Y)` such `d`. For each exceptional `d`,
its positive `x` solutions grow by a factor greater than three, so at most
`1 + log(N)/log(3)` occur. Allow one solution for every `d` and the extra
logarithmic allowance for exceptions to obtain (2). This counts witnesses
and therefore bounds the union of corresponding `a`.

## 3. Joint rounding bound for diagonal roots

Let `q` be coprime to `25`, with roots `r,-r mod q` and `0 < r < q/2`. The
number of integers `a <= N` in those two classes, after excluding
`a = 7,18 mod 25`, is at most

```text
46*N/(25*q) + 69/25.                                           (3)
```

This is a finite residue-class lemma. Each period of length `25q` has 50 root
positions; four are removed and 46 remain. Put `u=r/q`. In units of `q`, the
positions are `k+u` and `k+1-u`, for `k=0,...,24`. Whether a position remains
depends only on `q mod 25` and `r mod 25`: there are 20 and 25 possibilities,
respectively. The discrepancy between the number of retained positions and
`46/25` times their location decreases between events and is linear in `u`.
It is therefore enough to check the endpoint bounds `u=0` and `u=1/2`.
`check_root_discrepancy()` checks all 500 parameter classes and 50 positions
per class, obtaining maximum `69/25`. The endpoints need not be actual roots;
their supremum is still a valid upper bound.

Set `q=p^2`, or `q=2*p^2` when only odd integers are retained. For
`epsilon=1` (no parity restriction) and `epsilon=2` (`A*` all odd), this gives

```text
|A*| <= (23/(25*epsilon))*d*N + (69/25)*pi(S)
        + Y + sqrt(Y)*log(N)/log(3).                            (4)
```

Without removing the two baseline classes, the simpler estimate is

```text
#{a <= N : some p >= 13, p = 1 mod 4, p^2 | a^2+1}
    <= d*N + 2*pi(S) + Y + sqrt(Y)*log(N)/log(3).              (5)
```

For both estimates, count `p <= S` directly and use (2) for `p > S`.

## 4. Large off-diagonal square factors retaining information about `b`

Fix `b <= N`. Let `rho(b)` be the maximum number of square roots of one among
the units modulo `b`. Choose a known positive divisor `c0` of `b`, and set

```text
delta = phi(c0)/(c0*rho(c0)),     kappa = c0*delta.
```

For `c0=1`, use `delta=1` and `kappa=0`. There are
`phi(c0)/rho(c0)` invertible square residues modulo `c0`; consequently their
positive representatives satisfy

```text
V(M) <= delta*M + kappa,
sum_{m <= M, m a square residue mod c0} m^(-1/2)
    <= 2*delta*sqrt(M) + 2*kappa.                              (6)
```

For a witness prime `p > R`, write `a*b+1 = m*p^2`, where
`X=b*N+1` and `m <= X/R^2`. The value `m` must be an invertible square
residue modulo `c0`; for each `m`, `p` lies in at most `rho(b)` residue
classes modulo `b`. Applying (6) gives

```text
U_b(N,R) <= rho(b) * [ delta*(2*X/(b*R) + X/R^2)
                       + kappa*(2*sqrt(X)/b + 1) ].            (7)
```

If the profile guarantees `b >= l` and `rho(b) <= h`, then

```text
U_b(N,R) <= h*delta*(2*(N+1)/R + (N^2+1)/R^2)
            + h*kappa*(2*sqrt((N+1)/l) + 1).                  (8)
```

Only necessary square-residue conditions are used, so no sufficiency
assumption is needed.

## 5. Factor profiles covering every `b`

Use 13 closed intervals `[L,2L]` with `L=2^j`, `j=28,...,40`. For each,
classify every possible `b <= N <= 2L` by:

1. The exponent of `2`: zero, one, two, or at least three. The corresponding
   lower-bound factor `t` is `1,2,4,8`, with square-root counts `1,1,2,4`.
2. The subset `J` of `{3,5,7,11,13,17,19}` dividing `b`.
3. The number `k` of additional distinct prime factors of `b` that are at
   least `23`.

Let `p1,p2,... = 23,29,31,...`. Set

```text
l = t * product_{p in J} p * product_{i=1}^k p_i <= b,
h = h2 * 2^(|J|+k) >= rho(b).
```

Only profiles with `l <= 2L` are needed. The checker verifies that the prime
list used for lower bounds is consecutive and sufficiently long, so no value
of `k` is omitted. For a profile, choose `c0=1` or
`c0=t * product_{p in J0} p` for a subset `J0` of `J`; each choice divides
every `b` in that profile.

Refine the small-square reciprocal sum to

```text
cJ = c - sum_{p in J, p != 5} 1/p^2.
```

If both `2` and `5` are excluded, use `cJ`; if only `5` is excluded, use
`cJ + 1/4`. Not subtracting factors from the additional large primes only
makes the bound larger.

## 6. Extra restrictions modulo `169` and `289`

Suppose `A*` contains an even element `b`. For `p=13,17`, the diagonal roots
give two residue classes modulo `p^2`. Since `b*r+1 = 0 mod p^2` is
equivalent to `b=r mod p^2`, at most one root class is automatically
compatible with `b`. The other must use a square factor from a distinct
prime. The reciprocal-square sum of its available small prime factors is at
most

```text
H_p = c + 1/25 - 1/p^2.
```

Count all `a` with a large off-diagonal square factor `>R` together using
(8), so this tail is not charged once per diagonal root. The two root classes
for `p` contribute at most

```text
N/p^2 * (1 + H_p) + 1 + pi(R).
```

Compared with the original main term `2*N/p^2`, the total saving for
`p=13,17` is

```text
G = sum_{p in {13,17}} (1-H_p)/p^2.                            (9)
```

Other diagonal primes use (5). A common `b` restricts `A7` and `A18`; the
rounding allowance is at most `6*pi(R)+2`. The proof needs only four
restricted classes, but keeps an allowance of six for a uniform bound.

## 7. Four checked profile inequalities

For a factor profile, define

```text
H_(v,w)(N) = v*w + (z*pi(R) + U_b(N,R))/N,
```

where `v` is the main coefficient, `w` is `cJ` or `cJ+1/4`, and `z` is the
number of restricted residue classes. Choose `c0` per profile and
`R = r*N^(2/3)` for `r` in `{2,3,4,6,8,12,16}`. The worst bounds over
profiles of each type are:

| Type | Parity of `b` | `v` | `w` | `z` |
| --- | --- | ---: | --- | ---: |
| E6 | even | `2/25` | `cJ` | 6 |
| O2 | odd | `1/50` | `cJ` | 2 |
| O1 | odd | `1/25` | `cJ+1/4` | 1 |
| E1 | even | `1/25` | `cJ` | 1 |
| Z1 | either | `1/25` | `cJ+1/4` | 1 |

For the diagonal error use `S=s*N^(2/3)`, `s` in `{2,3,4}`. Let `Q0` be
the normalized error in (5) and `Q1` that in (4). Sawhney's four cases give

```text
|A|/N <= d - G + Q0 + E6 + 2/N,
|A|/N <= (23/50)*d + 1/50 + Q1 + O2 + 2/N,
|A|/N <= (23/50)*d + Q1 + O1 + E1,
|A|/N <= 2*Z1.
```

For the first two cases, two residue classes restricted by the same `b`
share the large-prime tail in (8). The third and fourth cases use two choices
of `b` and pay one tail for each. If `A` lies in just one baseline class,
direct counting suffices.

## 8. Why the checks cover full intervals

Fix `[L,2L]` and one profile. The quantities `l,h,c0,delta,kappa` are
constant. Divide (8) by `N` and put `R=r*N^(2/3)`. The terms become

```text
h*delta * [ 2/r*N^(-2/3)*(1+N^(-1))
             + 1/r^2*N^(-1/3)*(1+N^(-2)) ]
+h*kappa * [ 2/sqrt(l)*sqrt(N^(-1)+N^(-2)) + N^(-1) ].
```

Each term decreases. The prime-counting error also decreases. The nontrivial
normalized diagonal term is a constant times
`N^(-2/3)*sqrt(1+N^(-2))*log(N)`, which decreases when `log(N)>3/2`.
Therefore each profile need only be checked at the left endpoint `L`, but
profiles must be generated through the right endpoint `2L`. The checker does
both.

Candidate parameters may first be selected in floating point; the final
accepted bounds are recomputed using integer square-root intervals, rational
logarithm bounds, and upward rounding. A case passes only when its exact
rational upper bound is strictly less than `1/25`.

Run:

```bash
python check_factor_threshold.py --json-output factor_threshold_results.json
```

All 33,425 profiles in all 13 intervals pass. In the tightest interval
`[2^28,2^29]`, the four case bounds rounded upward are:

| Case | Density upper bound |
| --- | ---: |
| 1 | 0.038563593373 |
| 2 | 0.039745883434 |
| 3 | 0.039877443650 |
| 4 | 0.036408256896 |

Every value is below `0.04`. Hence each non-single-baseline case has
`|A| < N/25` and satisfies the target bound. The notes and scripts are a
mathematical-lemma plus exact finite-check proof, not an independent expert
review. The universal statement is also formalized in Lean; finite tests help
find implementation errors but do not replace the full-range lemmas,
monotonicity, and exhaustive profile classification.
