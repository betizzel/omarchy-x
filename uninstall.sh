#!/bin/bash
# Remove everything install.sh put in place.
set -euo pipefail

rm -f \
  "$HOME/.config/omarchy/hooks/theme-set.d/omarchy-x" \
  "$HOME/.config/omarchy/hooks/font-set.d/omarchy-x" \
  "$HOME/.config/omarchy/themed/x.css.tpl" \
  "$HOME/.local/state/omarchy/current/theme/x.css"
rm -rf "$HOME/.local/share/omarchy-x"

echo "omarchy-x removed. Also remove \"Omarchy X Theme\" from brave://extensions (or chrome://extensions)."
