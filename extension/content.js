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

// Switching themes from an Omarchy overlay need not blur the browser window, so
// a focus listener can miss `omarchy theme set`. Re-check the (local, tiny) file
// every second while the page is visible, and right away when it becomes visible.
// The fetch fails once the extension is disabled or removed; stop checking then.
const POLL_MS = 1000;
const poll = setInterval(refresh, POLL_MS);
document.addEventListener("visibilitychange", refresh);
applyTheme().catch(stop);

function refresh() {
  if (!document.hidden) applyTheme().catch(stop);
}

function stop() {
  clearInterval(poll);
  document.removeEventListener("visibilitychange", refresh);
}
