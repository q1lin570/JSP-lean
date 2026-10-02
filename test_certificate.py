"""Checks for the certificate verifier and small mathematical edge cases."""

from pathlib import Path
from tempfile import TemporaryDirectory
import unittest

from check_certificate import check, nonsquarefree, prime_squares


class CertificateTests(unittest.TestCase):
    @classmethod
    def setUpClass(cls) -> None:
        cls.squares = prime_squares(1000)
        cls.certificate = Path(__file__).with_name("coloring_10000.cert").read_text()

    def reject(self, text: str) -> None:
        with TemporaryDirectory() as directory:
            path = Path(directory) / "damaged.cert"
            path.write_text(text)
            with self.assertRaises(ValueError):
                check(path)

    def test_large_diagonal_square_and_mixed_base_pair(self) -> None:
        self.assertEqual(41 * 41 + 1, 2 * 29 * 29)
        self.assertTrue(nonsquarefree(41 * 41 + 1, self.squares))
        self.assertTrue(all(nonsquarefree(a * b + 1, self.squares) for a in (32, 43) for b in (32, 43)))

    def test_omitted_eligible_vertex_rejected(self) -> None:
        self.reject("\n".join(line for line in self.certificate.splitlines() if not line.startswith("41 ")) + "\n")

    def test_excess_colors_rejected(self) -> None:
        self.reject(self.certificate.replace("7 1 7 0\n", "7 1 7 1\n", 1))

    def test_false_independent_pair_rejected(self) -> None:
        self.reject(self.certificate.replace("32 1 32 1\n", "32 1 32 0\n", 1))

    def test_truncated_certificate_rejected(self) -> None:
        self.reject(self.certificate.rsplit("END", 1)[0])

    def test_exhaustive_subsets_to_100(self) -> None:
        vertices = [a for a in range(1, 101) if nonsquarefree(a * a + 1, self.squares)]
        maximum_by_endpoint = [0] * 101
        # Independently enumerate every subset of all eligible vertices <= 100.
        for mask in range(1, 1 << len(vertices)):
            chosen = [v for i, v in enumerate(vertices) if mask & (1 << i)]
            if all(nonsquarefree(a * b + 1, self.squares) for i, a in enumerate(chosen) for b in chosen[:i]):
                maximum_by_endpoint[chosen[-1]] = max(maximum_by_endpoint[chosen[-1]], len(chosen))
        best = 0
        for n in range(1, 101):
            best = max(best, maximum_by_endpoint[n])
            self.assertEqual(best, (n + 18) // 25, f"N={n}")


if __name__ == "__main__":
    unittest.main()
