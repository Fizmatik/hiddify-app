#!/bin/bash
# Local build script that ensures libcore is downloaded before building
set -e

SCRIPT_DIR="$(cd "$(dirname "$0")" && pwd)"
cd "$SCRIPT_DIR"

# Check if libcore.so is missing or empty
if [ ! -s libcore/bin/lib/libcore.so ] || [ ! -s libcore/bin/HiddifyCli ]; then
    echo "libcore not found or empty, downloading..."
    make linux-libs CHANNEL=prod
fi

flutter build linux --release

echo ""
echo "Build complete: build/linux/x64/release/bundle/hiddify"
