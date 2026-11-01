#!/usr/bin/env bash
# Build deb, rpm, Arch and Alpine packages into dist/. Needs nfpm
# (go install github.com/goreleaser/nfpm/v2/cmd/nfpm@latest).
set -euo pipefail
cd "$(dirname "$0")/.."
export VERSION="${VERSION:-$(cat VERSION)}"
mkdir -p dist
for fmt in deb rpm archlinux apk; do
  nfpm pkg --config packaging/nfpm.yaml --packager "$fmt" --target dist/
done
ls -l dist/
