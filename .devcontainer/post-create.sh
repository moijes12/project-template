#!/usr/bin/bash
set -e -x

echo "Running post-create.sh"
echo 'export PATH="$HOME/.duckdb/cli/latest:$PATH"' >> ~/.bashrc
source ~/.bashrc
duckdb --version
just --version
python --version
go version
rustc --version
echo "Finished running post-create.sh"