#!/usr/bin/env bash
set -euo pipefail

cd "$(dirname "$(realpath "$0")")/.."
sha256sum --quiet -c verification/proof_source.sha256
lake exe cache get
lake build JSP848.Solution
lake env lean -M262144 verification/SolutionUpperBoundAudit.lean
lake env lean -M262144 verification/SolutionExactAudit.lean
g++ -std=c++17 -O3 -Wall -Wextra -Wconversion -pedantic \
  check_certificate_fast.cpp -o check_certificate_fast
./check_certificate_fast coloring_33554432.cert
./check_certificate_fast --self-test
PYTHONDONTWRITEBYTECODE=1 python3 -m unittest -v \
  test_certificate.py test_closing_proof.py test_factor_threshold.py test_threshold.py
python3 check_closing_threshold.py
python3 check_factor_threshold.py
python3 check_threshold.py
