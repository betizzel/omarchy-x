#!/bin/bash
# Rebuild the Omarchy X theme from the active theme's x.css and the monospace font.
# Symlinked into ~/.config/omarchy/hooks/{theme-set,font-set}.d/; safe to run by hand.
set -euo pipefail

EXT_DIR="$HOME/.local/share/omarchy-x"
THEME_CSS="$HOME/.local/state/omarchy/current/theme/x.css"

[[ -f $THEME_CSS ]] || exit 0

font=$(omarchy-font-current)
tmp=$(mktemp "$EXT_DIR/.theme.css.XXXXXX")
{
  printf ':root { --omx-font: "%s"; }\n\n' "$font"
  cat "$THEME_CSS"
} >"$tmp"
chmod 644 "$tmp"
mv "$tmp" "$EXT_DIR/theme.css"
