#!/bin/bash
# Local build script for custom hiddify-app with route rules support
# Builds libcore from forked submodule, then builds the Flutter app
set -e

SCRIPT_DIR="$(cd "$(dirname "$0")" && pwd)"
cd "$SCRIPT_DIR"

CORE_DIR="hiddify-core"
CORE_LIB="$CORE_DIR/bin/lib/hiddify-core.so"
CORE_CLI="$CORE_DIR/bin/HiddifyCli"

# Step 1: Build libcore from source (forked hiddify-core with route rules)
if [ "$1" = "--rebuild-core" ] || [ ! -s "$CORE_LIB" ] || [ ! -s "$CORE_CLI" ]; then
    echo "==> Building libcore from source..."
    git submodule update --init --recursive
    make build-linux-libs
    echo "==> libcore built: $CORE_LIB"
else
    echo "==> libcore already exists, skipping (use --rebuild-core to force)"
fi

# Step 2: Generate code & translations
echo "==> Running flutter pub get + codegen..."
flutter pub get
dart run build_runner build --delete-conflicting-outputs
dart run slang

# Step 3: Build Flutter app
echo "==> Building Flutter app..."
flutter build linux --release

echo ""
echo "Build complete: build/linux/x64/release/bundle/hiddify"
