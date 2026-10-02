#!/bin/bash
# Install omarchy-x: theme template, browser extension, sync script, and theme/font hooks.
set -euo pipefail

REPO_DIR=$(cd "$(dirname "${BASH_SOURCE[0]}")" && pwd)
EXT_DIR="$HOME/.local/share/omarchy-x"
TEMPLATE="$HOME/.config/omarchy/themed/x.css.tpl"
RENDERED="$HOME/.local/state/omarchy/current/theme/x.css"
HOOKS_DIR="$HOME/.config/omarchy/hooks"

if ! command -v omarchy >/dev/null; then
  echo "omarchy-x needs Omarchy (https://omarchy.org)." >&2
  exit 1
fi

# Omarchy renders themed/*.tpl only while applying a theme, so a new or changed
# template needs the current theme re-applied; otherwise rebuilding theme.css is enough.
needs_refresh=0
if [[ ! -f $RENDERED ]] || ! cmp -s "$REPO_DIR/x.css.tpl" "$TEMPLATE"; then
  needs_refresh=1
fi

mkdir -p "$EXT_DIR" "$(dirname "$TEMPLATE")" "$HOOKS_DIR/theme-set.d" "$HOOKS_DIR/font-set.d"
install -m 644 "$REPO_DIR/extension/manifest.json" "$REPO_DIR/extension/content.js" "$EXT_DIR/"
install -m 755 "$REPO_DIR/sync.sh" "$EXT_DIR/sync.sh"
install -m 644 "$REPO_DIR/x.css.tpl" "$TEMPLATE"
ln -sf "$EXT_DIR/sync.sh" "$HOOKS_DIR/theme-set.d/omarchy-x"
ln -sf "$EXT_DIR/sync.sh" "$HOOKS_DIR/font-set.d/omarchy-x"

if ((needs_refresh)); then
  omarchy theme refresh # runs the theme-set hook, which builds theme.css
else
  "$EXT_DIR/sync.sh"
fi

cat <<EOF
omarchy-x installed.
Load it once in your Chromium-based browser:
  1. Open brave://extensions (or chrome://extensions)
  2. Enable Developer mode
  3. Load unpacked -> $EXT_DIR
EOF
