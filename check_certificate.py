"""Independently check finite coloring certificates using prime-square division.

Every diagonal-eligible vertex must occur, in increasing order. At each event,
the updated coloring has at most floor((N+18)/25) colors and each same-color
pair has squarefree product plus one. Thus every allowed clique satisfies the
conjectured bound, for every prefix up to the advertised maximum.
"""

from __future__ import annotations

import argparse
import hashlib
import json
from math import isqrt
from pathlib import Path
from time import monotonic


def prime_squares(limit: int) -> list[int]:
    sieve = bytearray(b"\x01") * (limit + 1)
    sieve[:2] = b"\x00\x00"
    for p in range(2, isqrt(limit) + 1):
        if sieve[p]:
            sieve[p * p : limit + 1 : p] = bytes((limit - p * p) // p + 1)
    return [p * p for p in range(2, limit + 1) if sieve[p]]


def nonsquarefree(value: int, squares: list[int]) -> bool:
    for square in squares:
        if square > value:
            break
        if value % square == 0:
            return True
    return False


def require(condition: bool, message: str) -> None:
    if not condition:
        raise ValueError(message)


def check(path: Path) -> dict[str, int | str | float]:
    start = monotonic()
    with path.open(encoding="ascii") as stream:
        header = stream.readline().split()
        require(len(header) == 2 and header[0] == "JSP848-COLOR-v1", "bad header")
        maximum = int(header[1])
        require(1 <= maximum <= 10_000_000, "invalid maximum")
        squares = prime_squares(maximum)
        eligible = [a for a in range(1, maximum + 1) if nonsquarefree(a * a + 1, squares)]
        colors: dict[int, int] = {}
        classes: dict[int, set[int]] = {}
        pair_checks = 0
        recolorings = 0
        for a in eligible:
            words = stream.readline().split()
            require(len(words) >= 2 and words[0] != "END", f"missing vertex {a}")
            values = list(map(int, words))
            require(values[0] == a, f"wrong event, expected {a}")
            count = values[1]
            require(count >= 1 and len(values) == 2 + 2 * count, f"bad event at {a}")
            updates = list(zip(values[2::2], values[3::2]))
            changed = {v for v, _ in updates}
            require(len(changed) == count and a in changed, f"duplicate or missing update at {a}")
            bound = (a + 18) // 25
            for v, color in updates:
                require(v == a or v in colors, f"unknown vertex {v}")
                require(0 <= color < bound, f"too many colors at {a}")
                if v in colors:
                    classes[colors[v]].remove(v)
                    recolorings += 1
                colors[v] = color
            # All updates take effect together. Unchanged pairs were checked earlier.
            for v, color in updates:
                members = classes.setdefault(color, set())
                for w in members:
                    require(not nonsquarefree(v * w + 1, squares), f"invalid same-color pair {v}, {w}")
                    pair_checks += 1
                members.add(v)
        require(stream.readline().split() == ["END", str(len(eligible))], "missing or incorrect END")
        require(not stream.read().strip(), "trailing content")
    return {
        "status": "VERIFIED_FINITE_RANGE",
        "minimum_N": 1,
        "maximum_N": maximum,
        "eligible_vertices": len(eligible),
        "recolorings": recolorings,
        "same_color_pairs_checked": pair_checks,
        "certificate_sha256": hashlib.sha256(path.read_bytes()).hexdigest(),
        "elapsed_seconds": round(monotonic() - start, 3),
        "scope": "Every integer N in the stated finite range; no claim for larger N.",
    }


if __name__ == "__main__":
    parser = argparse.ArgumentParser(description=__doc__)
    parser.add_argument("certificate", type=Path)
    args = parser.parse_args()
    print(json.dumps(check(args.certificate), indent=2))
