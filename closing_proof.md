# JSP-000701: Bridging Range `2^25 <= N <= 2^28`

This note proves the upper bound in the interval `2^25 <= N <= 2^28`. Together
with the coloring certificate below `2^25` and the analytic bounds in
`threshold_2p28.md`, it covers every positive integer `N`. The final
certificate results are recorded in `completion_audit.md`; the analytic proof
here does not assume that certificate generation succeeds.

Assume `A` is a subset of `{1, ..., N}` and `a*b + 1` is not squarefree for
every `a,b in A`, including equality. The target is

```text
|A| <= M(N) := floor((N + 18) / 25).
```

The lower bound is attained by the class `7 mod 25`. For the upper bound,
write `A7`, `A18`, and `A*` for the elements congruent to `7`, congruent to
`18`, and congruent to neither modulo `25`.

## 1. Constants and prime counts

Exact rational summation with an integral tail gives

```text
D = sum_{p = 1 mod 4, p >= 13} 2/p^2 < d = 277/10000,
C = sum_{p != 2,5} 1/p^2 < c = 203/1250.
```

Rosser and Schoenfeld (1962), equation (3.2), gives
`pi(x) < (x/log x) * (1 + 3/(2 log x))`. Consequently, for `x >= 2^14`,

```text
pi(x) < 29*x/(25*log x).                                      (1)
```

Let `pi1(x)` count primes at most `x` congruent to `1 mod 4`. On
`2^15 <= x <= 2^21`, we also use

```text
pi1(x) < 29*x/(50*log x).                                     (2)
```

This finite-range estimate is checked directly, not inferred from an
unstated asymptotic formula. `verify_prime_progression_bound()` sieves every
prime through `2^21` and divides the range into 8,064 intervals `[u,v]` of
length 256. It checks `pi1(v)*log(u)/u < 29/50` using a rational upper bound
for the logarithm. Since `x/log x` is increasing, this covers each real `x`
in an interval. The maximum checked value rounded upward is less than
`0.559299695308`, below `0.58`.

## 2. A sharper negative-Pell tail

For a prime `p > S >= 2`, write `a^2 + 1 = d*p^2` and set
`Y = (N^2 + 1)/S^2`. Since `p` is odd, `p^2 = 1 mod 8`; thus `d` must be
congruent to `1`, `2`, or `5 mod 8`, and if `a` is odd it must be `2 mod 8`.
Also, `d` is divisible by neither `3` nor `7`, because `-1` is not a square
modulo either prime.

Counting allowed residues in a period of length 168 gives, for every real
`Y >= 0`,

```text
#{d <= Y : d mod 8 in {1,2,5}, gcd(d,21)=1} <= 3Y/14 + 45/14,  (3)
#{d <= Y : d = 2 mod 8, gcd(d,21)=1} <= Y/14 + 15/7.          (4)
```

The verifier enumerates all allowed positions in one period and checks the
maximum of the cumulative count minus its linear main term. Between positions
the difference decreases, so this finite check also covers real `Y`.

For each `d`, the positive solutions to `x^2 - d*y^2 = -1`, when they exist,
are odd powers of the minimal solution. This is proved in
`threshold_2p28.md`. If the minimal `y0 > 1`, the coefficient of `sqrt(d)` in
each higher odd power is a multiple of `y0` greater than `y0`, so at most the
minimal solution can have prime `y`. The exception is `y0 = 1`, when
`d = x0^2 + 1`.

There are at most `sqrt(Y)+1` exceptional `d`; when `a` is odd, `x0` is odd
and there are at most `sqrt(Y)/2+1`. For the parity assertion, expand the odd
powers modulo `2`: if `x0` is even, each real-part term has an odd power of
`x0`; if `x0` is odd, `d` is even and only the leading term is odd. For each
exceptional equation, positive `x` solutions grow by a factor greater than
three, so there are at most `1 + log(N)/log(3)` solutions. Thus the number of
large diagonal witnesses is bounded by

```text
T_all(N,S) = 3Y/14 + 45/14 + (sqrt(Y)+1)*log(N)/log(3),       (5)
T_odd(N,S) = Y/14 + 15/7 + (sqrt(Y)/2+1)*log(N)/log(3).       (6)
```

These count witnesses `(a,p)` and therefore also bound the number of distinct
`a` in their union.

## 3. Rounding errors for small diagonal factors

For two symmetric residue classes `r` and `-r mod q`, there are at most
`2N/q + 1` representatives in `[1,N]`. In units of `q`, consecutive
positions have the form `k+u` and `k+1-u`, with `0 < u < 1/2`; the count
exceeds the linear term of slope two by at most one.

Count small primes `p <= S` directly and use (5) or (6) for `p > S`. Excluding
the baseline prime `5`, this yields:

| Set counted | Main term | Rounding and tail error |
| --- | ---: | ---: |
| All parities; baseline classes not removed | `d*N` | `pi1(S) + T_all` |
| Odd integers; baseline classes not removed | `d*N/2` | `pi1(S) + T_odd` |
| One odd class modulo 4; baseline classes not removed | `d*N/4` | `2*pi1(S) + T_odd` |

In the last row there are two classes modulo `4*p^2`; they are not assumed to
be symmetric, so each incurs a separate rounding error.

For odd `A*`, after removing the two baseline classes modulo `25`, the
previously checked joint-root discrepancy bound gives

```text
|A*| <= (23/50)*d*N + (69/25)*pi1(S) + T_odd(N,S).            (7)
```

Write `Q_all(1)`, `Q_odd(1)`, `Q_odd(2)`, and `Q_odd(69/25)` for the
corresponding normalized error terms.

## 4. Finite inclusion-exclusion for small off-diagonal factors

Fix `b` and a residue class modulo `25` or `100`. In the selected class,
prime `5`, or primes `2` and `5`, cannot supply the required square factor.
Let `J` be the known small odd prime divisors of `b`, using the full factor
classification over `{3,5,7,11,13,17,19}`.

Let `F` contain the allowed primes below `19`, excluding `5`, primes dividing
`b`, and also `2` when the class already rules it out (or when `b` is even).
Define

```text
Delta_F = sum_{p in F} 1/p^2 - (1 - product_{p in F}(1 - 1/p^2)).
```

Finite inclusion-exclusion gives the exact main density
`1 - product(1 - 1/p^2)` for the union of these square-factor events. Its
rounding error is at most `2^|F| - 1`. The remaining small primes use the
union bound. If the previous reciprocal-square sum was bounded by `w`, the
main term improves to `w - Delta_F`; a safe total rounding error per
progression is

```text
pi(R) + 2^|F|.                                                  (8)
```

In particular, when `2` is allowed and `b` is odd, this replaces the coarse
`1/4 + C` bound with a bound that accounts for actual overlap. This finite
calculation introduces no rounding issue from an infinite product.

## 5. Using an unknown prime factor of `b`

Each factor profile supplies `b >= l`, `rho(b) <= h`, and a known divisor
`B = t * product_{p in J} p`. If `b` has at least `k >= 2` distinct
additional large prime factors, its smallest such factor `q` satisfies

```text
q <= (b/B)^(1/k).                                                (9)
```

For a known divisor `c0 | b` built from `t` and a subset of `J`, set
`delta0 = phi(c0)/(c0*rho(c0))`. The original tail bound remains available;
alternatively use `c0*q`. Since `q` is coprime to `c0`,
`delta_(c0*q) <= delta0/2` and `kappa_(c0*q) <= c0*q*delta0/2`. Substituting
this in the count for `a*b+1 = m*p^2`, with `h' = h*delta0/2`, gives

```text
U_b(N,R) <= h' * ((2(N+1))/R + (N^2+1)/R^2)
  + h'*c0 * (2*sqrt((N+1)/l)*(l/B)^(1/k) + (N/B)^(1/k)).       (10)
```

The first term bounds the main density of the cofactor `m`. In the second
term, the factor involving `q/sqrt(b)` is largest at `b=l`, since
`1/k - 1/2 <= 0`; the term involving `q` uses `b <= N`. No particular
unknown prime is assumed to divide every `b`: for each actual `b`, its own
smallest additional prime satisfies (9). The improvement is used only when
`k >= 2`.

## 6. Five cases covering every set

Put

```text
G = sum_{p in {13,17}} (1 - (c + 1/25 - 1/p^2))/p^2.
```

If a fixed even element is present, for `p=13,17` at most one of the two
diagonal root classes modulo `p^2` is automatically compatible with it. The
other class must use a distinct square factor. This reduces the diagonal
main term by `G`; if only odd elements are counted, the reduction is `G/2`.
The argument is the same as in Section 6 of `threshold_2p28.md`; in the odd
case both progressions are halved.

Use the full factor classification, the overlap correction (8), and either
the original large-prime tail or (10). The table lists the neighborhood
bound parameters: `v` is the main coefficient and `z` is the number of
reserved `pi(R) + 2^|F|` rounding errors.

| Case | Parity of `b` | `v` | Factor `4` possible? | `z` |
| --- | --- | ---: | --- | ---: |
| E4 | even | `2/25` | no | 4 |
| E3 | even | `1/25` | no | 3 |
| O2 | odd | `1/50` | no; class modulo 4 fixed | 2 |
| O1 | odd | `1/25` | yes | 1 |
| Z1 | either | `1/25` | only when `b` is odd | 1 |

Each bound also includes one large off-diagonal tail over the whole interval
`[1,N]`.

**I. `A*` contains an even element.** Use it to restrict both baseline classes
and the second root class modulo `169` and `289`. There are four progression
rounding errors and one shared tail:

```text
|A|/N <= d - G + Q_all(1) + E4 + 2/N.                           (11)
```

**IIa. All of `A` is odd, and `A*` meets both odd classes modulo `4`.** Choose
one non-baseline element from each occupied class. For `a,b` in the same
class modulo `4`, `a*b+1 = 2 mod 4`, so `4` cannot be the square factor. In
each class, both baseline classes are restricted; bound `A*` as in (7):

```text
|A|/N <= (23/50)*d + Q_odd(69/25) + 2*O2.                      (12)
```

**IIb. All of `A` is odd, and nonempty `A*` lies in only one odd class
modulo `4`.** In the occupied class, one non-baseline `b` restricts both
baseline classes. The other class has no non-baseline elements and contributes
at most `2*(N/100 + 1)`. Bound `A*` by the one-class estimate of Section 3:

```text
|A|/N <= d/4 + 1/50 + Q_odd(2) + O2 + 2/N.                    (13)
```

**III. `A*` is nonempty and odd, and a baseline class contains an even
element.** Suppose the even element `e` lies in `A7`. It restricts `A18` and
the second root classes modulo `169` and `289`, giving three rounding errors
and one shared tail. Choose an odd `b` in `A*` to restrict `A7`; use O1,
which includes the overlap correction for factor `4`:

```text
|A|/N <= d/2 - G/2 + Q_odd(1) + E3 + O1 + 2/N.                (14)
```

**IV. `A*` is empty and both baseline classes are nonempty.** Choose one
element from each class to restrict the other:

```text
|A|/N <= 2*Z1.                                                  (15)
```

In every remaining case, `A` lies in one baseline class and direct counting
proves the target bound.

In (11) and (14), use the uncorrected constant `c` for restricted diagonal
roots, so no overlap correction is subtracted twice. Finite inclusion-
exclusion only improves the baseline-class main terms. For uniformity, each
of the `z` errors also pays `2^|F|`, which only enlarges the bound. The two
unrestricted diagonal-root endpoints each incur an error of one, giving
`2/N`.

## 7. Complete intervals and exact checks

Check the three closed intervals `[2^25,2^26]`, `[2^26,2^27]`, and
`[2^27,2^28]`. Generate factor profiles through each interval's right
endpoint and check normalized errors at the left endpoint. Choose
`R = r*N^(2/3)` for `r` in `{1,2,3,4,6,8,12,16}` and
`S = s*N^(2/3)` for `s` in `{1/2,1,3/2,2,3,4}`. The checker verifies that
`R` and `S` stay within the ranges where (1) and (2) apply.

The tail bound remains monotone. After division by `N`, the new terms in (10)
are constant multiples of `sqrt(N+1)/N` or `N^(1/k-1)`, and decrease.
The inclusion-exclusion error is a constant divided by `N`. The normalized
Pell-tail terms are constant multiples of
`N^(-2/3)*sqrt(1+N^(-2))*log(N)` or `log(N)/N`; they decrease throughout
these intervals. Thus each exact check covers a full closed interval rather
than only its endpoints.

Run:

```bash
python check_closing_threshold.py --json-output closing_threshold_results.json
```

The run covers 5,366 factor-profile instances. Floating point is used only to
choose candidate parameters; every selected bound is recomputed with rational
arithmetic, integer square-root intervals, and outward rounding.

For the first interval, the five case bounds rounded upward are:

| Case | Density upper bound |
| --- | ---: |
| I | 0.039378121647 |
| IIa | 0.029191290669 |
| IIb | 0.035386635143 |
| III | 0.039521863741 |
| IV | 0.035600126000 |

All cases in the other two intervals are also strictly below `1/25 = 0.04`;
the exact rational results are in the JSON report. Hence every set outside a
single baseline class has `|A| < N/25` in this range, and therefore satisfies
the target bound.

## 8. The finite certificate

`color_certificate_fast.cpp` constructs a graph coloring successively for all
diagonal-valid vertices, with an edge when `a*b + 1` is not squarefree. The
baseline class `7 mod 25` uses its `k`th color for its `k`th vertex; other
vertices may be recolored locally. Randomness affects search order only. A
failed search reports failure and is not evidence of a mathematical
counterexample.

The independent `check_certificate_fast.cpp` checker:

1. Regenerates all diagonal-valid vertices. For each prime `p <= N`, it
   computes a square root of `-1 mod p^2` as `r = z^(p(p-1)/4)`, where `z`
   is a quadratic nonresidue modulo `p`. Euler's criterion gives
   `r^2 = -1 mod p^2` and `r = -1 mod p`; the roots `r` and `p^2-r` are the
   complete pair.
2. Requires each valid vertex exactly once in the event stream and rejects
   duplicate updates or references to unknown vertices.
3. After each event, checks the color limit `floor((a+18)/25)` and that the
   product plus one for every same-color pair is squarefree.
4. Checks the END record, vertex count, and absence of truncation or trailing
   data.

Every admissible set is a clique, and a clique uses at most one vertex of each
color. Between events the vertex set is unchanged while the allowed color
count does not decrease, so this proves the bound for every prefix.

Squarefreeness is decided by deterministic trial division. For each prime up
to the cube root of `n`, the checker tests divisibility by `p^2` and then
removes one factor `p`. Every remaining prime factor exceeds the original
cube root, so there can be at most two; the checker only needs to test whether
the remainder is a square greater than one. Floating point supplies an
initial square-root estimate, corrected by integer inequalities. No
probabilistic primality test is used.

The generator uses Hensel lifting for roots, while the checker uses the Euler
power above. The generator's trial-division bound changes with the remainder;
the checker uses a fixed bound from the original input. The checker was
compared with naive square-factor trial division on one million integers and
with the earlier Python checker on the same 100,000 certificate prefix.

The complete verification combines the certificate through `2^25`, the
three exact intervals in this note, the 13 intervals through `2^41`, and the
symbolic proof for `N >= 2^41`. `completion_audit.md` records the results. The
all-range theorem also has a Lean formalization with a local build and
transitive axiom audit. Neither the scripts nor local Lean verification
replace independent mathematical review or establish award eligibility.
