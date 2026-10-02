"""Rational verification of every numerical constant in threshold_2p41.md.

This checks constants, not the symbolic proof of the lemmas or monotonicity.
No floating point is used in any certification step.
"""

from fractions import Fraction as F
from math import prod

from check_constants import density_bounds


def log_interval(x: F, terms: int = 24) -> tuple[F, F]:
    """Enclose log(x), x>=1, by the convergent atanh series and its tail."""
    if x < 1 or terms < 1:
        raise ValueError("x >= 1 and terms >= 1 required")
    z = (x - 1) / (x + 1)
    lower = 2 * sum((z ** (2 * k + 1) / (2 * k + 1) for k in range(terms)), F())
    tail = 2 * z ** (2 * terms + 1) / ((2 * terms + 1) * (1 - z * z))
    return lower, lower + tail


def root_interval(n: int, degree: int, scale: int = 10**10) -> tuple[F, F]:
    """Enclose the positive degree-th root using integer comparisons only."""
    if n < 1 or degree < 1 or scale < 1:
        raise ValueError("positive arguments required")
    target = n * scale**degree
    lower, upper = 0, 1
    while upper**degree <= target:
        upper *= 2
    while upper - lower > 1:
        middle = (lower + upper) // 2
        if middle**degree <= target:
            lower = middle
        else:
            upper = middle
    if not lower**degree <= target < upper**degree:
        raise ValueError("root enclosure failed")
    return F(lower, scale), F(upper, scale)


def rounded_upper(x: F, denominator: int = 10**12) -> F:
    """Round upward to a fixed rational grid for concise, safe display."""
    return F(-((-x.numerator * denominator) // x.denominator), denominator)


def verify() -> dict[str, F | int]:
    density_bounds()  # Check the input density bounds independently of this proof.
    d, c = F(277, 10000), F(203, 1250)
    ln2_lo, ln2_hi = log_interval(F(2))
    ln3_lo, ln3_hi = log_interval(F(3))
    if not F(2, 3) < ln2_lo <= ln2_hi < F(7, 10):
        raise ValueError("elementary log(2) bounds failed")
    # rho(b) <= 18 b^(1/5), by CRT and the primes below 32.
    small_odd_primes = [3, 5, 7, 11, 13, 17, 19, 23, 29, 31]
    if not (4 * 2**10) ** 5 < 18**5 * 8 * prod(small_odd_primes):
        raise ValueError("root-count constant failed")
    # Constants in the elementary proof pi(x) <= 3 x/log(x), x >= 2^16.
    log_base_upper = 16 * F(7, 10)
    if not F(3, 2) * log_base_upper**2 + log_base_upper < F(1, 10) * 2**16:
        raise ValueError("theta(x) error check failed")
    if not F(9, 4) + log_base_upper / 32 < 3:
        raise ValueError("pi(x) constant check failed")

    n = 2**41
    t_lo, _ = root_interval(n, 15)
    log_n_lo, log_n_hi = 41 * ln2_lo, 41 * ln2_hi
    log_r_lo = ln2_lo + ln3_lo + F(11, 15) * log_n_lo
    log_s_lo = 2 * ln2_lo + F(2, 3) * log_n_lo
    if not (6 * t_lo**11 >= 2**16 and 4 * t_lo**10 >= 2**16):
        raise ValueError("prime-count lemma is not applicable")
    p = 18 / (t_lo**4 * log_r_lo)
    tail = 6 / t_lo**8 * (1 + F(1, n)) + F(1, 2) / t_lo**4 * (1 + F(1, n*n))
    diagonal = (
        F(1656, 25) / (t_lo**5 * log_s_lo)
        + F(1, 16) / t_lo**5 * (1 + F(1, n*n)) * (1 + log_n_hi / ln3_lo)
    )
    cases = [
        F(23, 25) * d + F(2, 25) * c + diagonal + 2*p + tail,
        F(23, 50) * d + F(1, 50) + F(1, 50) * c + diagonal + 2*p + tail + F(2, n),
        F(23, 50) * d + F(1, 25) * (2*c + F(1, 4)) + diagonal + 2*p + 2*tail,
        F(2, 25) * (c + F(1, 4)) + 2*p + 2*tail,
    ]
    for index, bound in enumerate(cases, 1):
        if not bound < F(1, 25):
            raise ValueError(f"case {index} does not prove the desired bound")
    result: dict[str, F | int] = {"threshold": n, "P_upper": p, "T_upper": tail, "Q_upper": diagonal}
    result.update({f"case_{index}_upper": value for index, value in enumerate(cases, 1)})
    return result


if __name__ == "__main__":
    for key, value in verify().items():
        if isinstance(value, F):
            upper = rounded_upper(value)
            print(f"{key} <= {upper} (decimal display {float(upper):.12f})")
        else:
            print(f"{key} = {value}")
    print("PASS: all four rational upper bounds are strictly below 1/25.")
    print("Scope: numerical constants only; see threshold_2p41.md for the mathematical argument.")
