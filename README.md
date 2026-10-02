# omarchy-x

Make X (x.com) look like the rest of your [Omarchy](https://omarchy.org) desktop. It uses your active theme's colors and your monospace font, and it follows every `omarchy theme set` and `omarchy font set` automatically.

Works in Omarchy's X web app and in normal tabs of any Chromium-based browser (Brave, Chromium, Chrome, Edge).

## Install

```bash
git clone <this repo> ~/Work/omarchy-x
~/Work/omarchy-x/install.sh
```

Then load the extension once:

1. Open `brave://extensions` (or `chrome://extensions`).
2. Enable **Developer mode**.
3. Click **Load unpacked** and select `~/.local/share/omarchy-x`.

Reload X. The theme switches X to its "Lights out" display mode and recolors it from there.

## How it works

| Piece | Installed to | Role |
|---|---|---|
| `x.css.tpl` | `~/.config/omarchy/themed/` | Omarchy renders it from `colors.toml` on every theme switch |
| `sync.sh` | `~/.local/share/omarchy-x/` | Adds your monospace font, writes the extension's `theme.css` |
| hooks | `~/.config/omarchy/hooks/{theme,font}-set.d/omarchy-x` | Run `sync.sh` after theme/font changes |
| `extension/` | `~/.local/share/omarchy-x/` | Injects `theme.css` into x.com and refreshes it when the window regains focus |

After a theme switch, click back into X to see the new colors. No reload is needed.

To change the look, edit `x.css.tpl` in the repo and re-run `install.sh`. Template tokens such as `{{ accent }}` and `{{ mix accent background 15% }}` are documented in Omarchy's theming docs.

## Uninstall

```bash
~/Work/omarchy-x/uninstall.sh
```

Then remove **Omarchy X Theme** from your browser's extensions page.

## Credits

The X selector map is adapted from [catppuccin/userstyles](https://github.com/catppuccin/userstyles/tree/main/styles/twitter) (MIT).
