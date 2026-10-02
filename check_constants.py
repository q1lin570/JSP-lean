"""Exact rational bounds used in the elementary large-N argument."""

from fractions import Fraction
from math import isqrt

from check_certificate import prime_squares


def density_bounds() -> tuple[Fraction, Fraction]:
    limit = 10_000  # Divisible by four.
    squares = prime_squares(limit)
    # Above 10000 the numbers congruent to 1 mod 4 start at 10001.
    # For decreasing f, sum_{j>=0} f(10001+4j)
    # <= f(10001) + (1/4) integral_{10001}^infinity f(x) dx.
    diagonal_tail = Fraction(2, 10001**2) + Fraction(1, 2 * 10001)
    diagonal = sum(
        (Fraction(2, s) for s in squares if isqrt(s) % 4 == 1 and s >= 13**2),
        Fraction(),
    ) + diagonal_tail
    off_diagonal = sum(
        (Fraction(1, s) for s in squares if s not in (4, 25)), Fraction()
    ) + Fraction(1, limit)  # sum_{n>limit} n^-2 <= integral_limit^infinity.
    d_bound = Fraction(277, 10_000)
    c_bound = Fraction(203, 1_250)
    if not (diagonal < d_bound and off_diagonal < c_bound):
        raise ValueError("constant bound failed")
    return diagonal, off_diagonal


def main() -> None:
    diagonal, off_diagonal = density_bounds()
    d_bound = Fraction(277, 10_000)
    c_bound = Fraction(203, 1_250)
    print("EXACT: D < 277/10000; C < 203/1250")
    print(f"Upper bounds (decimal display only): D={float(diagonal):.12f}, C={float(off_diagonal):.12f}")
    pi_over_n = Fraction(7, 40_000)
    errors = Fraction(188, 25) * pi_over_n
    b_bound = c_bound + Fraction(1, 4)
    cases = [
        Fraction(23, 25) * d_bound + Fraction(2, 25) * c_bound + errors,
        Fraction(23, 50) * d_bound + Fraction(1, 50) + Fraction(1, 50) * c_bound + errors + Fraction(1, 1_000_000),
        Fraction(23, 50) * d_bound + Fraction(1, 25) * (b_bound + c_bound) + errors,
        Fraction(2, 25) * b_bound + 2 * pi_over_n,
    ]
    for i, value in enumerate(cases, 1):
        if not value < Fraction(1, 25):
            raise ValueError(f"case {i} failed")
        print(f"EXACT: case {i} <= {value} = {float(value):.9f} < 1/25")


if __name__ == "__main__":
    main()
