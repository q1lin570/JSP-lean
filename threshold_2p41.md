# JSP-000701: An Explicit Bound for `N >= 2^41`

This note proves the target for every `N >= 2^41 = 2,199,023,255,552`.
The finite and intermediate ranges are covered by `solution.md`,
`closing_proof.md`, and `threshold_2p28.md`. Assume `A` is a subset of
`[1,N]` and `a*b+1` is not squarefree for every `a,b in A`, including
equality. Then

```text
|A| <= floor((N+18)/25).
```

The class `7 mod 25` attains the bound. The proof uses Sawhney's structural
classification; the large-square-factor decomposition and negative-Pell tail
are also discussed in Sothanaphan's note. The estimates needed here are
proved below rather than assuming that note's numerical threshold.

## 1. An elementary prime-counting bound

For real `x >= 2^16`,

```text
pi(x) <= 3*x/log(x).                                            (1)
```

Let `theta(x) = sum_{p<=x} log(p)`. Central binomial coefficients give, for
integers `n >= 2`,

```text
theta(n) - theta(floor(n/2)) <= n*log(2) + log(n).
```

For even `n`, every prime in `(n/2,n]` divides the central binomial
coefficient. For `n=2m+1`, all primes in `(m,n]` except possibly `m+1`
divide `binom(2m+1,m)`; the extra `log(n)` covers that exception.

Iterating by halving, using `sum floor(n/2^j) <= 2n`, and setting
`n=floor(x)` gives

```text
theta(x) <= 2*x*log(2) + (log(x))^2/log(2) + log(x).
```

Since `2/3 < log(2) < 7/10`, and
`(3*(log(x))^2/2 + log(x))/x` decreases in this range, checking the initial
value at `x=2^16` yields `theta(x) < 3*x/2` for all `x >= 2^16`.
Separate primes at most `x^(2/3)` from larger primes:

```text
pi(x) <= x^(2/3) + theta(x)/((2/3)*log(x))
      < (log(x)/x^(1/3) + 9/4)*x/log(x)
      < 3*x/log(x).
```

For the last inequality, `log(x)/x^(1/3)` decreases. At `2^16`, use
`log(x)<56/5` and `x^(1/3)>32`, so the parenthesized factor is below
`9/4 + 7/20 = 13/5 < 3`.

## 2. Number of square roots modulo `b`

Let `rho(b)` be the maximum number of square roots of one among units modulo
`b`, with `rho(1)=1`. Then

```text
rho(b) <= 18*b^(1/5).                                           (2)
```

For odd prime powers there are at most two unit roots. Modulo `2^nu`, the
number is at most `1` for `nu=0,1`, `2` for `nu=2`, and `4` for `nu>=3`.
The Chinese remainder theorem gives

```text
rho(b)/b^(1/5)
 <= (4/8^(1/5)) * product_{p in {3,5,7,11,13,17,19,23,29,31}}
                               (2/p^(1/5))
 < 18.
```

Larger odd primes contribute factors below one, and higher prime powers only
decrease the ratio. The final comparison is an integer inequality checked by
`check_threshold.py`.

## 3. A uniform tail for large off-diagonal square factors

Fix `1 <= b <= N` and real `R >= 1`. Define

```text
U_b(N,R) = #{a <= N : some prime p > R has p^2 | a*b+1}.
```

Then

```text
U_b(N,R) <= 18*N^(1/5) * (2*(N+1)/R + (N^2+1)/R^2).           (3)
```

Put `X=b*N+1`. For each witness write `a*b+1=m*p^2`, so
`m <= X/R^2` and `m*p^2 = 1 mod b`. Thus `m` is a unit modulo `b`, and `p`
lies in at most `rho(b)` residue classes modulo `b`. For fixed `m`, the
number of possible `p` is at most

```text
rho(b) * (sqrt(X/m)/b + 1).
```

Allowing all positive integers in place of primes only increases the bound.
Sum over `m` using `sum_{m<=M} m^(-1/2) <= 2*sqrt(M)` to get
`rho(b)*(2*X/(b*R) + X/R^2)`. Now apply (2), `X/b <= N+1`, and
`X <= N^2+1` to obtain (3). This tail covers all of `[1,N]`, so two
baseline classes restricted by the same `b` pay it only once.

## 4. Diagonal count and negative-Pell tail

Use the checked constants

```text
D = sum_{p = 1 mod 4, p >= 13} 2/p^2 < 0.0277,
C = sum_{p != 2,5} 1/p^2 < 0.1624,
B = C + 1/4 < 0.4124.                                          (4)
```

Their finite rational sums and integral tails are in `check_constants.py`;
no asymptotic prime-distribution result is used here.

For every `a` in `A*`, diagonal validity provides a prime `p = 1 mod 4`,
`p >= 13`, with `p^2 | a^2+1`. Let `epsilon=1` with no parity restriction,
or `epsilon=2` if `A*` is entirely odd. For `p <= S`, each root modulo
`p^2`, after restricting parity, is a progression with step
`epsilon*p^2`, coprime to `25`. Of its first `L` terms, removing the two
baseline classes modulo `25` leaves at most `23L/25 + 46/25`; also
`L <= N/(epsilon*p^2)+1`. The small-prime contribution is at most

```text
(23/(25*epsilon))*D*N + (138/25)*pi(S).
```

For `p>S`, write `a^2+1=d*p^2`, so `d <= (N^2+1)/S^2`. For each fixed
`d`, the positive solutions to `x^2-d*y^2=-1` with `x<=N` number at most
`1 + log(N)/log(3)`. Indeed, for two solutions let
`alpha_i=x_i+y_i*sqrt(d)`. Their ratio has the form `v+w*sqrt(d)`, with
integer coefficients, norm one, and greater than one. Its conjugate is its
positive reciprocal, so `w>=1` and `v>=2`. Therefore

```text
alpha_2/alpha_1 >= 2+sqrt(3) > 3,
```

and expanding the product gives `x_2 > 3*x_1`, since
`y_1*sqrt(d)>x_1`. If `d` is a square, there is no positive solution.
Counting all solutions over all `d` bounds the tail. We obtain

```text
|A*| <= (23/(25*epsilon))*D*N + (138/25)*pi(S)
        + ((N^2+1)/S^2)*(1 + log(N)/log(3)).                   (5)
```

The tail is not multiplied by 23; it already covers every remaining
residue class.

## 5. Normalized errors and monotonicity

For `N >= 2^41`, choose `R=6*N^(11/15)` and `S=4*N^(2/3)`. Both exceed
`2^16`, so (1) applies. Define

```text
P(N) = 18*N^(-4/15)/log(6*N^(11/15)),
T(N) = 6*N^(-8/15)*(1+N^(-1))
       + (1/2)*N^(-4/15)*(1+N^(-2)),
Q(N) = 1656*N^(-1/3)/(25*log(4*N^(2/3)))
       + N^(-1/3)*(1+N^(-2))/16*(1+log(N)/log(3)).
```

Then `pi(R)/N <= P(N)`, `U_b(N,R)/N <= T(N)`, and the normalized error
from (5) is at most `Q(N)`. The functions `P` and `T` decrease. The first
term of `Q` decreases; the factors `1+N^(-2)` and
`N^(-1/3)*(1+log(N)/log(3))` in its second term also decrease. The latter's
derivative is negative when `log(N)+log(3)>3`. Thus it suffices to check all
bounds at `N0=2^41`.

## 6. Four cases

Fix `b` and a class modulo `q=25` or `100`. For a small prime `p<=R` not
already excluded, the condition `p^2 | a*b+1` together with the class
restriction is one residue class modulo `q*p^2`. It contributes at most
`N/(q*p^2)+1`. Bound small-prime reciprocal-square sums by `C` or `B`. Each
restricted class pays at most `pi(R)` for rounding; large primes use (3).
Restrictions using the same `b` share one large-prime tail.

**Case 1: `A*` contains an even `b`.** Products in the two baseline classes
plus one cannot have square factors `2` or `5`. Hence

```text
|A|/N <= (23/25)*D + (2/25)*C + Q + 2*P + T.
```

**Case 2: `A*` is nonempty and all of `A` is odd.** In the four odd classes
modulo `100` (7, 57, 43, 93), two are automatically divisible by `4` after
adding one and contribute at most `N/50+2`. The other two exclude square
factors `2` and `5`. Therefore

```text
|A|/N <= (23/50)*D + 1/50 + (1/50)*C + Q + 2*P + T + 2/N.
```

**Case 3: `A*` is nonempty and odd, and a baseline class contains an even
`b'`.** Suppose `b'` lies in `A7` and choose `b` in `A*`. Use `b` to restrict
`A7`, excluding square factor `5`; use `b'` to restrict `A18`, excluding
`2` and `5`. These two different choices pay two tails:

```text
|A|/N <= (23/50)*D + (B+C)/25 + Q + 2*P + 2*T.
```

**Case 4: `A*` is empty and both baseline classes are nonempty.** Select one
element from each class to restrict the other. Both exclude square factor
`5`, giving

```text
|A|/N <= (2/25)*B + 2*P + 2*T.
```

If none of the four cases applies, `A` is contained in one baseline class and
direct counting gives the target bound.

## 7. Exact endpoint check

Run `python check_threshold.py`. Integer square-root intervals, rational
logarithm series, and rational tail bounds are used for comparisons; floating
point is display-only. At `N0=2,199,023,255,552`, upward-rounded density
bounds for the four cases are:

| Case | Density upper bound |
| --- | ---: |
| 1 | 0.039926331020 |
| 2 | 0.037440331021 |
| 3 | 0.037441587082 |
| 4 | 0.034319924731 |

All are strictly below `1/25=0.04`. Monotonicity proves the same for all
`N>=N0`; these cases therefore have `|A|<N/25`, and hence
`|A| <= floor(N/25) <= floor((N+18)/25)`. The one-baseline-class case was
handled directly.

## 8. Scope and review status

The inputs are the original problem, Sawhney's classification, and the cited
notes. The explicit threshold argument is derived here; it does not assume a
threshold from an external note. In particular, this proof avoids relying on
a range extension beyond where the cited note checks its constants.

The symbolic steps and exact constant checks have been locally audited, but
this note has not received independent expert review. The full-range theorem
also has a Lean formalization; that does not constitute independent review of
the prose proof. Scripts alone do not replace Sections 1--6. The original
finite certificate covered `1 <= N <= 100000`; the later certificate and
intermediate-range work fill the remaining gaps, as recorded in
`solution.md` and `completion_audit.md`.
