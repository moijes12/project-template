#!/usr/bin/bash
set -e -x

echo "Running post-create.sh"
printf '%s\n' "export PATH=\"\$HOME/.duckdb/cli/latest:\$PATH\"" >> "$HOME/.bashrc"
export PATH="$HOME/.duckdb/cli/latest:$PATH"
duckdb --version
just --version
python --version
go version
rustc --version
echo "Finished running post-create.sh"
