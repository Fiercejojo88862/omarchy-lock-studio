#!/usr/bin/env bash
# Omarchy Lock Studio installer: copies the app into ~/.local/bin and adds a
# desktop launcher. Safe to re-run (that is how you update after a git pull).
set -euo pipefail

here="$(cd "$(dirname "${BASH_SOURCE[0]}")" && pwd)"
bin="$HOME/.local/bin"
apps="$HOME/.local/share/applications"

mkdir -p "$bin" "$apps"
install -m 755 "$here/omarchy-lock-studio" "$bin/omarchy-lock-studio"
install -m 644 "$here/omarchy-lock-studio.desktop" "$apps/omarchy-lock-studio.desktop"

echo "Installed: $bin/omarchy-lock-studio"
echo "Launcher:  $apps/omarchy-lock-studio.desktop"

if [[ ! -d "$HOME/.config/omarchy/plugins" ]]; then
  echo "warning: no ~/.config/omarchy/plugins — is this an Omarchy system?" >&2
fi

if ! compgen -G "$HOME/.config/omarchy/plugins/*.lock/manifest.json" >/dev/null; then
  echo
  echo "One more step: clone the lock plugin this app edits:"
  echo "  omarchy plugin clone omarchy.lock"
fi

echo
echo "Start it with: omarchy-lock-studio"
