#!/usr/bin/env bash
# Install teebot-tools to ~/.local/bin
set -euo pipefail

REPO="https://raw.githubusercontent.com/teebotbyteejay/teebot-tools/main"
INSTALL_DIR="${INSTALL_DIR:-$HOME/.local/bin}"
TOOLS="build-streak daily-briefing git-stats log-search mailcheck mem-density mem-eval quick-commit safe-prepend session-recap todo tz update-stats workspace-status"

mkdir -p "$INSTALL_DIR"

for tool in $TOOLS; do
  echo "Installing $tool..."
  curl -fsSL "$REPO/$tool" -o "$INSTALL_DIR/$tool"
  chmod +x "$INSTALL_DIR/$tool"
done

# Alias qc -> quick-commit
ln -sf "$INSTALL_DIR/quick-commit" "$INSTALL_DIR/qc" 2>/dev/null || true

echo ""
echo "✓ Installed: $TOOLS"
echo "✓ Alias: qc -> quick-commit"

if ! echo "$PATH" | grep -q "$INSTALL_DIR"; then
  echo ""
  echo "Add to PATH: export PATH=\"$INSTALL_DIR:\$PATH\""
fi
