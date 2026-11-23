#!/bin/bash
set -euo pipefail

"$PYTHON" -m pip install . -vv --no-deps --no-build-isolation

# Diagnose internal KLayout library linkage on macOS.
if [[ "$(uname -s)" == "Darwin" ]]; then
    echo "===== KLayout shared libraries ====="
    find "$SP_DIR/klayout" -type f \
        \( -name "*.so" -o -name "*.dylib" \) -print

    echo "===== Mach-O dependencies and RPATHs ====="
    while IFS= read -r -d '' lib; do
        echo "===== $lib ====="
        otool -L "$lib"
        otool -l "$lib" | grep -A 3 LC_RPATH || true
    done < <(find "$SP_DIR/klayout" -type f \
        \( -name "*.so" -o -name "*.dylib" \) -print0)
fi
