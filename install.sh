#!/bin/bash
# 300ZX Phosphor Rice Installer

set -e

REPO_DIR="$(cd "$(dirname "$0")" && pwd)"

echo "=== 300ZX Phosphor Rice Installer ==="
echo

# Create directories
mkdir -p ~/.local/share/color-schemes
mkdir -p ~/.local/share/plasma/desktoptheme
mkdir -p ~/.local/share/aurorae/themes
mkdir -p ~/.local/share/konsole
mkdir -p ~/.local/share/kate/color-schemes

echo "[1/5] Installing color scheme..."
cp "$REPO_DIR/plasma/300ZX-Phosphor-v3.colors" ~/.local/share/color-schemes/

echo "[2/5] Installing desktop theme..."
cp -r "$REPO_DIR/plasma/desktoptheme/300ZX-Phosphor" ~/.local/share/plasma/desktoptheme/

echo "[3/5] Installing window decorations..."
cp -r "$REPO_DIR/aurorae/300ZX-Phosphor-Aurorae-v2" ~/.local/share/aurorae/themes/

echo "[4/5] Installing Konsole theme..."
cp "$REPO_DIR/konsole/300ZX-Phosphor.colorscheme" ~/.local/share/konsole/

echo "[5/5] Installing Kate theme..."
cp -r "$REPO_DIR/kate/300ZX-Phosphor-Kate" ~/.local/share/kate/color-schemes/

echo
echo "Registering with Plasma..."
kpackagetool6 --global --install ~/.local/share/plasma/desktoptheme/300ZX-Phosphor 2>/dev/null || kpackagetool6 --global --upgrade ~/.local/share/plasma/desktoptheme/300ZX-Phosphor 2>/dev/null || true

kpackagetool6 --global --install ~/.local/share/aurorae/themes/300ZX-Phosphor-Aurorae-v2 2>/dev/null || kpackagetool6 --global --upgrade ~/.local/share/aurorae/themes/300ZX-Phosphor-Aurorae-v2 2>/dev/null || true

echo
echo "=== Installation complete ==="
echo
echo "Apply via System Settings:"
echo "  1. Appearance → Colors → '300ZX Phosphor'"
echo "  2. Appearance → Plasma Style → '300ZX Phosphor'"
echo "  3. Appearance → Window Decorations → '300ZX Phosphor Aurorae v2'"
echo
echo "Then relog for changes to take full effect."
