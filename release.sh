#!/bin/bash
set -e

SCRIPT_DIR="$(cd "$(dirname "$0")" && pwd)"
PARENT_DIR="$(dirname "$SCRIPT_DIR")"
PLUGIN_FILE="$SCRIPT_DIR/BagOverlay.plugin"

# Read version from .plugin file
VERSION=$(grep -oPm1 "(?<=<Version>)[^<]+" "$PLUGIN_FILE")
if [ -z "$VERSION" ]; then
    echo "Error: Could not read version from BagOverlay.plugin"
    exit 1
fi

ZIP_NAME="BagOverlay-v${VERSION}.zip"
ZIP_PATH="$SCRIPT_DIR/$ZIP_NAME"

# Remove existing zip with the same name
[ -f "$ZIP_PATH" ] && rm "$ZIP_PATH"

cd "$PARENT_DIR"

zip -r "$ZIP_PATH" \
    "GymGnopf/BagOverlay" \
    "GymGnopf/Documentation" \
    "GymGnopf/BagOverlay.plugin" \
    "GymGnopf/BagOverlay.plugincompendium"

echo "Created: $ZIP_PATH"
