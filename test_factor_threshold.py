"""Independent finite checks for the new symbolic bounds and profile coverage."""

from collections import Counter
from fractions import Fraction as F
from math import gcd, isqrt
import unittest

from check_certificate import prime_squares
from check_factor_threshold import SMALL, check_root_discrepancy, profiles, verify_prime_lists
from check_threshold import root_interval


def factor(n: int) -> dict[int, int]:
    result: dict[int, int] = {}
    p = 2
    while p*p <= n:
        while n % p == 0:
            result[p] = result.get(p, 0) + 1
            n //= p
        p += 1
    if n > 1:
        result[n] = result.get(n, 0) + 1
    return result


class FactorThresholdTests(unittest.TestCase):
    def test_all_small_integers_have_a_covering_profile(self) -> None:
        verify_prime_lists()
        table = {(p.two_part, p.mask, p.large_count): p for p in profiles(10000)}
        for b in range(1, 10001):
            factors = factor(b)
            two = 2**min(factors.get(2, 0), 3)
            mask = sum(1 << i for i, p in enumerate(SMALL) if p in factors)
            k = sum(p > SMALL[-1] for p in factors)
            profile = table[two, mask, k]
            self.assertLessEqual(profile.lower_b, b)
            for c, _ in profile.wheels:
                self.assertEqual(b % c, 0)
            if b <= 300:
                roots = Counter(x*x % b for x in range(b) if gcd(x, b) == 1)
                self.assertLessEqual(max(roots.values()), profile.rho)

    def test_discrepancy_against_actual_integer_progressions(self) -> None:
        self.assertEqual(check_root_discrepancy(), F(69, 25))
        for q in range(3, 80):
            if gcd(q, 25) != 1:
                continue
            for root in range(1, (q+1)//2):
                events = [n for n in range(1, 25*q+1) if n%q in (root, q-root) and n%25 not in (7, 18)]
                self.assertEqual(len(events), 46)
                for count, n in enumerate(events, 1):
                    self.assertLessEqual(F(count)-F(46*n, 25*q), F(69, 25))

    def test_residue_filtered_tail_against_direct_count(self) -> None:
        n = 100
        primes = [isqrt(s) for s in prime_squares(n)]
        for b in range(1, 101):
            counts_b = Counter(x*x % b for x in range(b) if gcd(x, b) == 1)
            rho_b = max(counts_b.values())
            for c in range(1, b+1):
                if b % c:
                    continue
                residues = {x*x % c for x in range(c) if gcd(x, c) == 1}
                delta = F(len(residues), c)
                kappa = len(residues) if c > 1 else 0
                for r in (5, 10, 20):
                    pairs = sum((a*b+1) % (p*p) == 0 for a in range(1, n+1) for p in primes if p > r)
                    x = b*n+1
                    _, sqrt_x = root_interval(x, 2)
                    bound = rho_b*(delta*(F(2*x, b*r)+F(x, r*r)) + kappa*(2*sqrt_x/b+1))
                    self.assertLessEqual(pairs, bound, (b, c, r))

    def test_prime_pell_denominator_divisibility(self) -> None:
        primes = {isqrt(s) for s in prime_squares(5000)}
        for d in range(2, 121):
            solutions = []
            for x in range(1, 5001):
                if (x*x+1) % d:
                    continue
                y = isqrt((x*x+1)//d)
                if x*x-d*y*y == -1:
                    solutions.append((x, y))
            if not solutions:
                continue
            y0 = solutions[0][1]
            self.assertTrue(all(y % y0 == 0 for _, y in solutions))
            if y0 > 1:
                self.assertLessEqual(sum(y in primes for _, y in solutions), 1)
            else:
                self.assertEqual(d, solutions[0][0]**2+1)


if __name__ == "__main__":
    unittest.main()
