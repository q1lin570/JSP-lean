"""Small independent checks of the new estimates; not a replacement for proof."""

from collections import Counter
from fractions import Fraction as F
from math import gcd, isqrt
import unittest

from check_certificate import prime_squares
from check_threshold import log_interval, root_interval, verify


class ThresholdTests(unittest.TestCase):
    def test_all_four_certified_constants(self) -> None:
        results = verify()
        self.assertEqual(results["threshold"], 2**41)
        for i in range(1, 5):
            self.assertLess(results[f"case_{i}_upper"], F(1, 25))

    def test_integer_roots_and_nested_log_intervals(self) -> None:
        for n, degree in ((1, 15), (2**41, 15), (3**15, 15), (10**12, 3)):
            lo, hi = root_interval(n, degree)
            self.assertLessEqual(lo**degree, n)
            self.assertGreater(hi**degree, n)
        for x in (F(1), F(2), F(3)):
            lo, hi = log_interval(x, 12)
            lo2, hi2 = log_interval(x, 24)
            self.assertTrue(lo <= lo2 <= hi2 <= hi)

    def test_tail_bound_against_direct_enumeration(self) -> None:
        squares = prime_squares(200)
        for b in range(1, 201):
            multiplicities = Counter(x*x % b for x in range(b) if gcd(x, b) == 1)
            rho = max(multiplicities.values())
            self.assertLessEqual(rho**5, 18**5*b)
            for r in (5, 10, 20, 50):
                pairs = sum(
                    1 for a in range(1, 201) for sq in squares
                    if sq > r*r and (a*b + 1) % sq == 0
                )
                upper = rho * (F(2*(200*b + 1), b*r) + F(200*b + 1, r*r))
                self.assertLessEqual(pairs, upper, (b, r))

    def test_pell_gap_against_direct_enumeration(self) -> None:
        for d in range(2, 301):
            solutions = []
            for x in range(1, 1001):
                if (x*x + 1) % d:
                    continue
                y = isqrt((x*x + 1) // d)
                if x*x - d*y*y == -1:
                    solutions.append(x)
            self.assertTrue(all(v > 3*u for u, v in zip(solutions, solutions[1:])), d)


if __name__ == "__main__":
    unittest.main()
