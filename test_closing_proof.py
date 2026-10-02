"""Independent boundary checks for the closing lemmas and certificate parser."""

from fractions import Fraction as F
from math import gcd, isqrt, prod
from pathlib import Path
import subprocess
from tempfile import TemporaryDirectory
import unittest

from check_closing_threshold import rational_root_upper, verify_pell_residues
from test_factor_threshold import factor


ROOT = Path(__file__).resolve().parent


class ClosingProofTests(unittest.TestCase):
    def test_pell_parameter_residue_bounds(self) -> None:
        bounds = verify_pell_residues()
        for parity, residues in (("all",(1,2,5)),("odd",(2,))):
            density, error = bounds[parity]
            count = 0
            for y in range(1,10001):
                count += y%8 in residues and gcd(y,21)==1
                self.assertLessEqual(count,density*y+error)

    def test_symmetric_root_error_one(self) -> None:
        for modulus in range(3,80):
            for root in range(1,(modulus+1)//2):
                count=0
                for n in range(1,4*modulus):
                    count += n%modulus in (root,modulus-root)
                    self.assertLessEqual(count,F(2*n,modulus)+1)

    def test_unknown_prime_bound_on_actual_integers(self) -> None:
        small=(3,5,7,11,13,17,19)
        tested=0
        for b in range(1,30001):
            factors=factor(b)
            unknown=sorted(p for p in factors if p>19)
            k=len(unknown)
            if k<2:
                continue
            base=2**min(factors.get(2,0),3)*prod(p for p in small if p in factors)
            upper=rational_root_upper(F(b,base),k)
            self.assertGreaterEqual(upper,unknown[0])
            self.assertGreaterEqual(upper**k,F(b,base))
            tested+=1
        self.assertGreater(tested,1000)

    def test_mod4_split_never_has_factor_four_within_a_group(self) -> None:
        for a in range(1,100,2):
            for b in range(1,100,2):
                if a%4==b%4:
                    self.assertEqual((a*b+1)%4,2)
                else:
                    self.assertEqual((a*b+1)%4,0)

    def test_finite_inclusion_exclusion_density_and_error(self) -> None:
        primes=(2,3,7)
        period=prod(p*p for p in primes)
        density=1-prod(1-F(1,p*p) for p in primes)
        for b in (1,5,11):
            count=0
            for n in range(1,period+1):
                count+=any((b*n+1)%(p*p)==0 for p in primes)
                self.assertLessEqual(abs(count-n*density),2**len(primes)-1)
            self.assertEqual(count,period*density)

    def test_fast_parser_accepts_valid_and_rejects_damaged_certificates(self) -> None:
        binary=ROOT/"check_certificate_fast"
        fixture=(ROOT/"coloring_10000.cert").read_text()
        changes=(
            fixture.replace("7 1 7 0\n","7 1 7 1\n",1),
            "\n".join(line for line in fixture.splitlines() if not line.startswith("41 "))+"\n",
            fixture.replace("32 1 32 1\n","32 1 32 0\n",1),
            fixture.rsplit("END",1)[0],
            fixture+"unexpected\n",
        )
        with TemporaryDirectory() as directory:
            path=Path(directory)/"check.cert"
            for text,expected in ((fixture,0),*((text,1) for text in changes)):
                path.write_text(text)
                result=subprocess.run([str(binary),str(path)],capture_output=True,text=True,check=False)
                self.assertEqual(result.returncode,expected,result.stderr)


if __name__=="__main__":
    unittest.main()
