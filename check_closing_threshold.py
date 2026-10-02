"""Rational verification of the proposed closing range [2^25, 2^28].

Floats select parameters only; outward-rounded rational arithmetic certifies all
bounds. Earlier independently checked bounds cover N >= 2^28.
"""

from __future__ import annotations

import argparse
from fractions import Fraction as F
from functools import lru_cache
import json
from math import isqrt, log, prod, sqrt
from pathlib import Path

from check_factor_threshold import (
    GRID, LARGE, SMALL, Profile, certified_log, check_root_discrepancy,
    profiles, sqrt_upper, verify_prime_lists,
)
from check_threshold import root_interval, rounded_upper
from check_constants import density_bounds


PI_TOTAL = F(29, 25)
PI_ONE = F(29, 50)
R_OPTIONS = (1, 2, 3, 4, 6, 8, 12, 16)
S_OPTIONS = tuple(F(i, 2) for i in (1, 2, 3, 4, 6, 8))


@lru_cache(maxsize=None)
def rational_root_upper(x: F, degree: int) -> F:
    if x < 1:
        raise ValueError("root argument must be at least one")
    # root(numerator)/root(denominator), with directed rounding.
    _, top = root_interval(x.numerator, degree, GRID)
    bottom, _ = root_interval(x.denominator, degree, GRID)
    return rounded_upper(top/bottom)


def verify_prime_progression_bound() -> dict[str, int | str]:
    minimum, maximum, width = 2**15, 2**21, 256
    sieve = bytearray(b"\x01")*(maximum+1)
    sieve[:2] = b"\x00\x00"
    for p in range(2, isqrt(maximum)+1):
        if sieve[p]:
            sieve[p*p:maximum+1:p] = bytes((maximum-p*p)//p+1)
    count = sum(sieve[p] for p in range(5, minimum+1, 4))
    worst = F()
    buckets = 0
    for lower in range(minimum, maximum, width):
        upper = min(maximum, lower+width)
        count += sum(sieve[p] for p in range(lower+1, upper+1) if p%4 == 1)
        # For x in [lower, upper], pi_1(x)<=pi_1(upper), and x/log(x)
        # is increasing. This tests the whole interval, not just its endpoints.
        ratio = F(count, lower)*certified_log(lower)[1]
        if ratio >= PI_ONE:
            raise ValueError(f"prime progression bound failed in [{lower},{upper}]")
        worst = max(worst, ratio)
        buckets += 1
    return {"minimum": minimum, "maximum": maximum, "buckets": buckets,
            "ratio_upper": str(rounded_upper(worst))}


def verify_pell_residues() -> dict[str, tuple[F, F]]:
    output = {}
    for parity, residues in (("all", (1, 2, 5)), ("odd", (2,))):
        allowed = [x for x in range(168) if x%8 in residues and x%3 and x%7]
        density = F(len(allowed), 168)
        discrepancy = max(F(i+1)-density*x for i,x in enumerate(allowed))
        output[parity] = density, discrepancy
    if output != {"all": (F(3,14), F(45,14)), "odd": (F(1,14), F(15,7))}:
        raise ValueError("Pell residue counts failed")
    return output


class Endpoint:
    def __init__(self, n: int) -> None:
        self.n = n
        self.cube_lo, self.cube_hi = root_interval(n, 3, GRID)
        self.log_lo, self.log_hi = certified_log(n)
        self.prime_error: dict[int, F] = {}
        for r in R_OPTIONS:
            low, high = r*self.cube_lo**2, r*self.cube_hi**2
            if low < 2**14:
                raise ValueError("total prime-count bound outside certified range")
            log_low = certified_log(r)[0]+F(2,3)*self.log_lo
            self.prime_error[r] = rounded_upper(PI_TOTAL*high/(n*log_low))

    def diagonal(self, coefficient: F, parity: str) -> F:
        n = self.n
        bounds = []
        density, discrepancy = verify_pell_residues()[parity]
        for s in S_OPTIONS:
            low, high = s*self.cube_lo**2, s*self.cube_hi**2
            _, cube_upper_at_right = root_interval(2*n, 3, GRID)
            if low < 2**15 or s*cube_upper_at_right**2 > 2**21:
                raise ValueError("prime progression bound outside finite certified range")
            log_s_lo = certified_log(s.numerator)[0]-certified_log(s.denominator)[1]
            log_low = log_s_lo+F(2,3)*self.log_lo
            y_upper = F(n*n+1)/low**2
            exception_count = sqrt_upper(y_upper)/(2 if parity == "odd" else 1)+1
            bound = (coefficient*PI_ONE*high/log_low+density*y_upper+discrepancy
                     +exception_count*self.log_hi/certified_log(3)[0])/n
            bounds.append(rounded_upper(bound))
        return min(bounds)

    def neighborhood(self, profile: Profile, v: F, classes: int, allow_two: bool) -> F:
        n = self.n
        even = profile.two_part != 1
        selected = [p for i,p in enumerate(SMALL) if p != 5 and not (profile.mask >> i & 1)]
        if allow_two and not even:
            selected = [2]+selected
        density = F(203,1250)-profile.subtract+(F(1,4) if allow_two and not even else F())
        overlap = sum((F(1,p*p) for p in selected),F())-(1-prod(1-F(1,p*p) for p in selected))
        density -= overlap
        ie_error = F(classes*2**len(selected), n)
        k = profile.large_count
        base = profile.lower_b//prod(LARGE[:k])
        best = (float("inf"), 0, F(), 0, 0)
        for modulus, delta in profile.wheels:
            for use_unknown in range(2 if k >= 2 else 1):
                alpha = use_unknown/k if k else 0
                effective = profile.rho*float(delta)/(2 if use_unknown else 1)
                correction = effective*modulus*(
                    2*sqrt((n+1)/profile.lower_b)*(profile.lower_b/base)**alpha
                    +(n/base)**alpha)
                if modulus == 1 and not use_unknown:
                    correction = 0
                for r in R_OPTIONS:
                    cutoff = r*n**(2/3)
                    trial = classes*float(PI_TOTAL)*cutoff/log(cutoff)/n+(
                        effective*(2*(n+1)/cutoff+(n*n+1)/cutoff**2)+correction)/n
                    if trial < best[0]:
                        best = trial, modulus, delta, use_unknown, r
        _, modulus, delta, use_unknown, r = best
        effective = profile.rho*delta/(2 if use_unknown else 1)
        cutoff_low = r*self.cube_lo**2
        if modulus == 1 and not use_unknown:
            correction_upper = F()
        else:
            first_root = rational_root_upper(F(profile.lower_b,base),k) if use_unknown else F(1)
            second_root = rational_root_upper(F(n,base),k) if use_unknown else F(1)
            correction_upper = effective*modulus*(
                2*sqrt_upper(F(n+1,profile.lower_b))*first_root+second_root)
        tail = (effective*(F(2*(n+1))/cutoff_low+F(n*n+1)/cutoff_low**2)+correction_upper)/n
        return rounded_upper(v*density+classes*self.prime_error[r]+ie_error+tail)


def verify_interval(exponent: int) -> dict[str, int | list[str]]:
    n = 2**exponent
    endpoint = Endpoint(n)
    worst = {key:F() for key in ("E4","O2","E3","O1","A1")}
    table = profiles(2*n)
    for profile in table:
        if profile.two_part != 1:
            worst["E4"] = max(worst["E4"],endpoint.neighborhood(profile,F(2,25),4,False))
            worst["E3"] = max(worst["E3"],endpoint.neighborhood(profile,F(1,25),3,False))
        else:
            worst["O2"] = max(worst["O2"],endpoint.neighborhood(profile,F(1,50),2,False))
            worst["O1"] = max(worst["O1"],endpoint.neighborhood(profile,F(1,25),1,True))
        worst["A1"] = max(worst["A1"],endpoint.neighborhood(profile,F(1,25),1,True))
    c,d = F(203,1250),F(277,10000)
    gain = sum(((1-(c+F(1,25)-F(1,p*p)))/F(p*p) for p in (13,17)),F())
    bounds = [
        d-gain+endpoint.diagonal(F(1),"all")+worst["E4"]+F(2,n),
        F(23,50)*d+endpoint.diagonal(F(69,25),"odd")+2*worst["O2"],
        d/4+F(1,50)+endpoint.diagonal(F(2),"odd")+worst["O2"]+F(2,n),
        d/2-gain/2+endpoint.diagonal(F(1),"odd")+worst["E3"]+worst["O1"]+F(2,n),
        2*worst["A1"],
    ]
    if any(value >= F(1,25) for value in bounds):
        raise ValueError(f"uncertified interval 2^{exponent}: {[float(b) for b in bounds]}")
    return {"lower_N":n,"upper_N":2*n,"profiles":len(table),
            "density_upper_rational":[str(rounded_upper(value)) for value in bounds]}


def verify() -> dict[str, object]:
    density_bounds()
    verify_prime_lists()
    check_root_discrepancy()
    verify_pell_residues()
    if 1+F(3,2)/certified_log(2**14)[0] >= PI_TOTAL:
        raise ValueError("total prime bound unjustified")
    prime_bound = verify_prime_progression_bound()
    print("Prime progression certificate:",prime_bound,flush=True)
    rows = []
    for exponent in range(25,28):
        row = verify_interval(exponent)
        rows.append(row)
        print(json.dumps(row),flush=True)
    return {"status":"VERIFIED_ANALYTIC_CONSTANTS_AND_FINITE_PROFILES",
            "lower_N":2**25,"upper_N":2**28,"prime_progression_bound":prime_bound,
            "intervals":rows,"total_interval_profiles":sum(int(row["profiles"]) for row in rows),
            "proof":"closing_proof.md","scope":"Requires the symbolic lemmas in closing_proof.md; earlier proof handles N>=2^28."}


if __name__ == "__main__":
    parser = argparse.ArgumentParser(description=__doc__)
    parser.add_argument("--json-output",type=Path)
    args = parser.parse_args()
    report = verify()
    if args.json_output:
        args.json_output.write_text(json.dumps(report,indent=2)+"\n",encoding="utf-8")
    print("PASS: every rational inequality is strictly below 1/25.")
