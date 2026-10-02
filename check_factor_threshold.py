"""Certified rational bounds for threshold_2p28.md.

The finite profile enumeration covers every b in every checked dyadic interval.
Floats choose candidate parameters only. Each selected bound and every final
comparison is then computed from outward-rounded rational enclosures.
"""

from __future__ import annotations

from dataclasses import dataclass
import argparse
from fractions import Fraction as F
from functools import lru_cache
import json
from math import isqrt, log, prod, sqrt
from pathlib import Path

from check_constants import density_bounds
from check_threshold import log_interval, root_interval, rounded_upper, verify as verify_old_threshold


SMALL = (3, 5, 7, 11, 13, 17, 19)
LARGE = (23, 29, 31, 37, 41, 43, 47, 53, 59, 61, 67, 71)
PI_COEFFICIENT = F(28, 25)
R_COEFFICIENTS = (2, 3, 4, 6, 8, 12, 16)
GRID = 10**12


@dataclass(frozen=True)
class Profile:
    two_part: int
    mask: int
    large_count: int
    lower_b: int
    rho: int
    subtract: F
    wheels: tuple[tuple[int, F], ...]


def rounded_lower(value: F) -> F:
    return F(value.numerator * GRID // value.denominator, GRID)


@lru_cache(maxsize=None)
def certified_log(x: int) -> tuple[F, F]:
    k = x.bit_length() - 1
    two_lo, two_hi = log_interval(F(2))
    rest_lo, rest_hi = log_interval(F(x, 2**k))
    return rounded_lower(k*two_lo + rest_lo), rounded_upper(k*two_hi + rest_hi)


def sqrt_upper(x: F) -> F:
    scaled = x.numerator * GRID * GRID // x.denominator
    return F(isqrt(scaled) + 1, GRID)


def profiles(maximum: int) -> list[Profile]:
    if prod(LARGE) <= maximum:
        raise ValueError("large-prime list is too short to cover all profiles")
    result = []
    for two, roots_two in ((1, 1), (2, 1), (4, 2), (8, 4)):
        for mask in range(1 << len(SMALL)):
            factors = [p for i, p in enumerate(SMALL) if mask & (1 << i)]
            base = two * prod(factors)
            root_base = roots_two * 2**len(factors)
            subtract = sum((F(1, p*p) for p in factors if p != 5), F())
            wheels = {(1, F(1))}
            for take in range(1 << len(factors)):
                chosen = [p for i, p in enumerate(factors) if take & (1 << i)]
                c = two * prod(chosen)
                roots = roots_two * 2**len(chosen)
                phi = (1 if two == 1 else two//2) * prod(p-1 for p in chosen)
                wheels.add((c, F(phi, c*roots)))
            for k in range(len(LARGE)):
                lower_b = base * prod(LARGE[:k])
                if lower_b > maximum:
                    break
                result.append(Profile(two, mask, k, lower_b, root_base*2**k, subtract, tuple(sorted(wheels))))
    return result


def check_root_discrepancy() -> F:
    """Check all q mod 25, root mod 25, and event positions in a period."""
    maximum = F()
    for step in range(1, 25):
        if step % 5 == 0:
            continue
        for root in range(25):
            count = 0
            for k in range(25):
                for sign in (1, -1):
                    residue = (k*step+root) % 25 if sign == 1 else ((k+1)*step-root) % 25
                    if residue in (7, 18):
                        continue
                    count += 1
                    # Event positions are k+u and k+1-u, 0<u<1/2.
                    # Maximum affine discrepancy occurs at u=0 or u=1/2.
                    earliest = F(k) if sign == 1 else F(k) + F(1, 2)
                    maximum = max(maximum, count-F(46, 25)*earliest)
            if count != 46:
                raise ValueError("incorrect periodic count")
    if maximum != F(69, 25):
        raise ValueError("root discrepancy bound did not verify")
    return maximum


def verify_prime_lists() -> None:
    expected = [p for p in range(3, 72, 2) if all(p%d for d in range(2, isqrt(p)+1))]
    if list(SMALL+LARGE) != expected:
        raise ValueError("prime profiles do not form the required consecutive list")


class Endpoint:
    def __init__(self, n: int) -> None:
        self.n = n
        self.cube_lo, self.cube_hi = root_interval(n, 3, scale=GRID)
        self.log_lo, self.log_hi = certified_log(n)
        self.prime_errors: dict[int, F] = {}
        for coefficient in R_COEFFICIENTS:
            r_lo = coefficient*self.cube_lo**2
            r_hi = coefficient*self.cube_hi**2
            if r_lo < 2**19:
                raise ValueError("prime-count estimate outside its range")
            log_r_lo = certified_log(coefficient)[0] + F(2, 3)*self.log_lo
            self.prime_errors[coefficient] = rounded_upper(PI_COEFFICIENT*r_hi/(n*log_r_lo))

    def diagonal(self, error_coefficient: F) -> F:
        n = self.n
        upper_bounds = []
        for coefficient in (2, 3, 4):
            s_lo = coefficient*self.cube_lo**2
            s_hi = coefficient*self.cube_hi**2
            if s_lo < 2**19:
                raise ValueError("diagonal prime-count estimate outside its range")
            log_s_lo = certified_log(coefficient)[0] + F(2, 3)*self.log_lo
            bound = (
                error_coefficient*PI_COEFFICIENT*s_hi/(n*log_s_lo)
                + F(n*n+1, n)/s_lo**2
                + sqrt_upper(F(n*n+1))/s_lo/n*self.log_hi/certified_log(3)[0]
            )
            upper_bounds.append(rounded_upper(bound))
        return min(upper_bounds)

    def neighborhood(self, profile: Profile, classes: int, main_coefficient: F, main_density: F) -> F:
        n = self.n
        best_choice = (float("inf"), 0, F(), 0)
        # Heuristic chooses c and R; its numerical value is never a certificate.
        for c, delta in profile.wheels:
            effective = profile.rho*float(delta)
            endpoint = effective*c if c != 1 else 0
            for coefficient in R_COEFFICIENTS:
                r = coefficient*n**(2/3)
                tail = (effective*(2*(n+1)/r+(n*n+1)/(r*r))
                        + endpoint*(2*sqrt((n+1)/profile.lower_b)+1))/n
                estimate = classes*float(PI_COEFFICIENT)*r/log(r)/n+tail
                if estimate < best_choice[0]:
                    best_choice = estimate, c, delta, coefficient
        _, c, delta, coefficient = best_choice
        r_lo = coefficient*self.cube_lo**2
        effective = profile.rho*delta
        endpoint = effective*c if c != 1 else F()
        tail_bound = (
            effective*(F(2*(n+1), n)/r_lo+F(n*n+1, n)/r_lo**2)
            + endpoint/n*(2*sqrt_upper(F(n+1, profile.lower_b))+1)
        )
        return rounded_upper(main_coefficient*(main_density-profile.subtract)
                             + classes*self.prime_errors[coefficient]+tail_bound)


def verify_interval(exponent: int) -> dict[str, int | list[str]]:
    n = 2**exponent
    endpoint = Endpoint(n)
    all_profiles = profiles(2*n)
    worst = {"even_six": F(), "odd_two": F(), "odd_one": F(), "even_one": F(), "any_one": F()}
    c, d = F(203, 1250), F(277, 10000)
    for profile in all_profiles:
        even = profile.two_part != 1
        if even:
            worst["even_six"] = max(worst["even_six"], endpoint.neighborhood(profile, 6, F(2, 25), c))
            worst["even_one"] = max(worst["even_one"], endpoint.neighborhood(profile, 1, F(1, 25), c))
        else:
            worst["odd_two"] = max(worst["odd_two"], endpoint.neighborhood(profile, 2, F(1, 50), c))
            worst["odd_one"] = max(worst["odd_one"], endpoint.neighborhood(profile, 1, F(1, 25), c+F(1, 4)))
        worst["any_one"] = max(worst["any_one"], endpoint.neighborhood(profile, 1, F(1, 25), c+F(1, 4)))
    gain = sum(((1-(c+F(1, 25)-F(1, p*p)))/F(p*p) for p in (13, 17)), F())
    q_raw = endpoint.diagonal(F(2))
    q_excluded = endpoint.diagonal(F(69, 25))
    bounds = [
        d-gain+q_raw+worst["even_six"]+F(2, n),
        F(23, 50)*d+F(1, 50)+q_excluded+worst["odd_two"]+F(2, n),
        F(23, 50)*d+q_excluded+worst["odd_one"]+worst["even_one"],
        2*worst["any_one"],
    ]
    if any(bound >= F(1, 25) for bound in bounds):
        raise ValueError(f"interval 2^{exponent}..2^{exponent+1} not certified: {[float(b) for b in bounds]}")
    return {
        "lower_N": n,
        "upper_N": 2*n,
        "profiles": len(all_profiles),
        "density_upper_rational": [str(rounded_upper(value)) for value in bounds],
    }


def verify() -> list[dict[str, int | list[str]]]:
    density_bounds()
    verify_old_threshold()  # The independent result covers all N >= 2^41.
    verify_prime_lists()
    check_root_discrepancy()
    # Rosser--Schoenfeld (1962), equation (3.2): pi(x) < x/log(x)*(1+3/(2log x)).
    if 1+F(3, 2)/certified_log(2**19)[0] >= PI_COEFFICIENT:
        raise ValueError("pi coefficient is not justified")
    result = []
    for exponent in range(28, 41):
        interval = verify_interval(exponent)
        result.append(interval)
        print(json.dumps(interval, ensure_ascii=False), flush=True)
    print("PASS: all profile bounds for every integer N in [2^28, 2^41]; larger N covered by prior proof.")
    print("Scope: constants and finite residue/divisor cases; symbolic lemmas are in threshold_2p28.md.")
    return result


if __name__ == "__main__":
    parser = argparse.ArgumentParser(description=__doc__)
    parser.add_argument("--json-output", type=Path)
    arguments = parser.parse_args()
    results = verify()
    if arguments.json_output is not None:
        arguments.json_output.write_text(json.dumps({
            "status": "VERIFIED_CONSTANTS_AND_FINITE_PROFILES",
            "new_threshold": 2**28,
            "covered_through_prior_threshold": 2**41,
            "total_interval_profiles": sum(int(row["profiles"]) for row in results),
            "intervals": results,
            "proof": "threshold_2p28.md",
            "limitation": "Does not prove the conjecture for 100000 < N < 2^28.",
        }, indent=2) + "\n", encoding="utf-8")
