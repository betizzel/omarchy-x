// Injects theme.css (rebuilt by sync.sh on every Omarchy theme/font change) into X.
const STYLE_ID = "omarchy-x-theme";
const THEME_URL = chrome.runtime.getURL("theme.css");

// theme.css remaps X's "Lights out" palette, so pin that display mode.
// X reads it from the night_mode cookie (0 default, 1 dim, 2 lights out).
if (!/(?:^|;\s*)night_mode=2(?:;|$)/.test(document.cookie)) {
  const domain = location.hostname.split(".").slice(-2).join(".");
  document.cookie = `night_mode=2; domain=.${domain}; path=/; max-age=31536000; secure; samesite=lax`;
}

let appliedCss = null;

async function applyTheme() {
  const css = await (await fetch(THEME_URL, { cache: "no-store" })).text();
  if (css === appliedCss) return;
  appliedCss = css;

  let style = document.getElementById(STYLE_ID);
  if (!style) {
    style = document.createElement("style");
    style.id = STYLE_ID;
    document.documentElement.append(style);
  }
  style.textContent = css;
}

applyTheme();
// Pick up `omarchy theme set` when the window regains focus, no reload needed.
window.addEventListener("focus", applyTheme);
