/* Omarchy theme for X (x.com), regenerated from colors.toml on every theme switch.
   Injected by the extension in ~/.local/share/omarchy-x; it remaps X's "Lights out" palette.
   Selector map adapted from catppuccin/userstyles styles/twitter (MIT). */

:root {
  --omx-bg: {{ background }};
  --omx-bg-dark: {{ dark_background }};
  --omx-bg-darker: {{ darker_background }};
  --omx-surface: {{ lighter_background }};
  --omx-surface-2: {{ selection }};
  --omx-surface-3: {{ mix lighter_background foreground 20% }};
  --omx-fg: {{ foreground }};
  --omx-fg-dim: {{ light_foreground }};
  --omx-muted: {{ muted }};
  --omx-accent: {{ accent }};
  --omx-accent-hover: {{ mix accent background 15% }};
  --omx-accent-active: {{ mix accent background 25% }};
  --omx-on-accent: {{ background }};
  --omx-red: {{ red }};
  --omx-red-hover: {{ mix red background 15% }};
  --omx-red-active: {{ mix red background 25% }};
  --omx-green: {{ green }};
  --omx-yellow: {{ yellow }};
  --omx-orange: {{ orange }};
  --omx-cyan: {{ cyan }};
  --omx-blue: {{ blue }};
  --omx-magenta: {{ magenta }};
  color-scheme: {{ mode }};
}

/* Nested under html so these beat X's equally specific atomic classes. */
html {
  /* Omarchy monospace font everywhere (X draws icons as SVG, so nothing breaks). */
  &,
  & body,
  & div,
  & span,
  & a,
  & time,
  & input,
  & textarea,
  & button,
  & h1,
  & h2,
  & h3 {
    font-family: var(--omx-font), monospace !important;
  }

  & ::selection {
    background-color: var(--omx-surface-2);
    color: var(--omx-fg);
  }

  & body.LightsOut {
    --border-color: var(--omx-surface);
    --color: var(--omx-muted);
    --color-emphasis: var(--omx-fg);
    --hover-bg-color: var(--omx-surface);
    --cpft-text-primary: var(--omx-fg);

    /* shadows */
    & .r-qo02w8,
    & .r-15ce4ve {
      box-shadow:
        rgba(0, 0, 0, 0.4) 0 0 15px,
        rgba(0, 0, 0, 0.35) 0 0 3px 1px;
    }

    & .r-1tbvlxk {
      filter: drop-shadow(rgba(0, 0, 0, 0.5) 1px -1px 1px);
    }

    & .r-1uusn97 {
      box-shadow:
        rgba(0, 0, 0, 0.4) 0 0 5px,
        rgba(0, 0, 0, 0.35) 0 1px 4px 1px;
    }
  }

  & body,
  & .PageContainer,
  & #placeholder {
    background-color: var(--omx-bg) !important;
    color: var(--omx-fg);
  }

  & #ScriptLoadFailure span {
    color: var(--omx-fg);
  }

  & [style*="scrollbar-color: rgb(62, 65, 68) rgb(22, 24, 28)"] {
    scrollbar-color: var(--omx-accent) transparent !important;
    scrollbar-width: thin;
  }

  /* backgrounds */
  & [data-testid="primaryColumn"],
  & .r-kemksi {
    background-color: var(--omx-bg);
  }

  /* arrow on account switcher */
  & .r-cqee49 {
    color: var(--omx-bg);
  }

  /* top nav */
  & .r-5zmot {
    background-color: color-mix(in srgb, var(--omx-bg) 75%, transparent);
  }

  /* hover / active on base */
  & .r-1hdo0pc,
  & .r-pjtv4k {
    background-color: color-mix(in srgb, var(--omx-fg) 10%, transparent);
  }

  & .r-11gmi9o {
    background-color: color-mix(in srgb, var(--omx-fg) 20%, transparent);
  }

  & .r-1cuuowz {
    background-color: color-mix(in srgb, var(--omx-fg) 3%, transparent);
  }

  /* text */
  & .r-1nao33i,
  & .r-jwli3a {
    color: var(--omx-fg);
  }

  /* borders */
  & .r-1kqtdi0,
  & .r-1roi411 {
    border-color: var(--omx-surface);
  }

  & .r-1igl3o0 {
    border-bottom-color: var(--omx-surface);
  }

  & .r-2sztyj {
    border-top-color: var(--omx-surface);
  }

  & .r-1aihyag {
    border-right-color: var(--omx-surface);
  }

  /* border when replying to a dm */
  & .r-1wyyjkm {
    border-left-color: var(--omx-fg-dim);
  }

  /* "is this post relevant to you?" */
  & .r-1ccsd61,
  & .r-xzxzvz {
    border-color: var(--omx-surface-3);
  }

  /* surfaces, incl. search bar */
  & .r-gu4em3,
  & .r-1bnu78o,
  & .r-z32n2g,
  & .r-1m3jxhj {
    background-color: var(--omx-surface);
  }

  & .r-1xc7w19 {
    border-color: var(--omx-bg);
  }

  /* active dm border, accent borders */
  & .r-1pbtemp {
    border-right-color: var(--omx-accent);
  }

  & .r-vhj8yc {
    border-color: var(--omx-accent);
  }

  /* search magnifier */
  & .r-1bwzh9t {
    color: var(--omx-muted);
  }

  /* right sidebar */
  & .r-g2wdr4 {
    background-color: var(--omx-bg-dark);
  }

  & .r-14wv3jr {
    border-color: var(--omx-bg-dark);
  }

  /* accent backgrounds */
  & .r-l5o3uw {
    background-color: var(--omx-accent);
  }

  & .r-1vtznih {
    background-color: var(--omx-accent-hover);
  }

  & .r-yuvema {
    background-color: var(--omx-accent-active);
  }

  & .r-1peqgm7 {
    background-color: color-mix(in srgb, var(--omx-accent) 10%, transparent);
  }

  & .r-r18ze4 {
    background-color: color-mix(in srgb, var(--omx-accent) 20%, transparent);
  }

  /* light elements hovered / active */
  & .r-jc7xae {
    background-color: color-mix(in srgb, var(--omx-fg) 92%, var(--omx-bg));
  }

  & .r-6wtuen {
    background-color: color-mix(in srgb, var(--omx-fg) 84%, var(--omx-bg));
  }

  /* tooltips */
  & .r-1pr99xn {
    background-color: var(--omx-surface-2);
  }

  /* new notifications */
  & .r-1eltapf {
    background-color: color-mix(in srgb, var(--omx-cyan) 10%, transparent);
  }

  /* polls */
  & .r-eok2q2 {
    background-color: color-mix(in srgb, var(--omx-accent) 60%, transparent);
  }

  & .r-9cip40 {
    box-shadow: var(--omx-accent) 0 0 0 1px;
  }

  /* spaces */
  & .r-1blqq69 {
    border-color: var(--omx-magenta);
  }

  /* dm reactions */
  & .r-qazpri {
    color: var(--omx-muted);
  }

  & [style="background-image: linear-gradient(61.63deg, rgb(45, 66, 255) -15.05%, rgb(156, 99, 250) 104.96%);"] {
    background-image: linear-gradient(61.63deg, var(--omx-blue) -15.05%, var(--omx-magenta) 104.96%) !important;
  }

  /* compose placeholder */
  & .draftjs-styles_0 .public-DraftEditorPlaceholder-root {
    color: var(--omx-muted);
  }

  /* "who can reply?" */
  & .r-rgqbpe {
    background-color: color-mix(in srgb, var(--omx-blue) 10%, transparent);
  }

  /* circles */
  & .r-s224ru {
    background-color: var(--omx-green);
  }

  & .r-h7o7i8 {
    background-color: color-mix(in srgb, var(--omx-green) 10%, transparent);
  }

  /* live indicator */
  & .r-4nw3r4,
  & .r-1dgebii {
    background-color: var(--omx-red);
  }

  & .r-b5kvu3 {
    border-color: var(--omx-red);
  }

  /* unfollow hover, red buttons */
  & .r-qqmkd0 {
    background-color: color-mix(in srgb, var(--omx-red) 10%, transparent);
  }

  & .r-12d83nn {
    background-color: var(--omx-red-hover);
  }

  & .r-oybae9 {
    background-color: var(--omx-red-active);
  }

  & .r-11mg6pl {
    border-color: var(--omx-bg-darker);
  }

  /* layer mask */
  & .r-11z020y {
    background-color: color-mix(in srgb, var(--omx-bg-darker) 60%, transparent);
  }

  /* likes */
  & [fill="rgb(249,22,127)"],
  & [fill="rgb(222,45,108)"],
  & [style="color: rgb(249, 24, 128);"] [viewBox="0 0 24 24"] path {
    fill: var(--omx-red) !important;
  }

  & .r-1krxqcr {
    background-color: color-mix(in srgb, var(--omx-red) 10%, transparent);
  }

  & .r-uuique {
    background-color: color-mix(in srgb, var(--omx-red) 20%, transparent);
  }

  /* notification icons: heart, bell, repost */
  & .r-vkub15,
  & .r-9l7dzd {
    color: var(--omx-red);
  }

  & .r-1cvl2hr {
    color: var(--omx-accent);
  }

  & .r-o6sn0f {
    color: var(--omx-green);
  }

  /* repost hover / active */
  & .r-15azkrj {
    background-color: color-mix(in srgb, var(--omx-green) 10%, transparent);
  }

  & .r-1x669os {
    background-color: color-mix(in srgb, var(--omx-green) 20%, transparent);
  }

  /* content warning button */
  & .r-n94g0g {
    background-color: color-mix(in srgb, var(--omx-fg) 30%, transparent);
  }

  & .r-z9i421 {
    background-color: color-mix(in srgb, var(--omx-fg) 27%, transparent);
  }

  & .r-19130f6 {
    background-color: var(--omx-bg-darker);
  }

  & .r-l8tqsx {
    background-color: color-mix(in srgb, var(--omx-fg) 10%, transparent);
  }

  /* community notes */
  & .r-3gvs5h {
    background-color: var(--omx-muted);
  }

  & .r-1fkb3t2 {
    background-color: var(--omx-surface-2);
  }

  & .r-1kwlb9n {
    background-color: color-mix(in srgb, var(--omx-red) 12%, transparent);
  }

  /* premium banner */
  & [style*="https://abs.twimg.com/responsive-web/client-web/background-premiumplus-web"] {
    background-image: none !important;
    background-color: var(--omx-surface);
  }

  /* hard-coded svg colors */
  & [stroke="#2F3336" i] {
    stroke: var(--omx-surface-3) !important;
  }

  & [stroke="#1D9BF0" i],
  & [style*="stroke: rgb(29, 155, 240)"] {
    stroke: var(--omx-accent) !important;
  }

  & [stroke="#FFD400" i] {
    stroke: var(--omx-yellow) !important;
  }

  & [fill="#829AAB" i] {
    fill: var(--omx-muted) !important;
  }

  & [fill="#1DA1F2" i],
  & [fill="#78C6EE" i] {
    fill: var(--omx-cyan) !important;
  }

  /* gold verified badge */
  & [stop-color="#f4e72a" i],
  & [stop-color="#cd8105" i],
  & [stop-color="#cb7b00" i],
  & [stop-color="#f4ec26" i],
  & [stop-color="#f9e87f" i],
  & [stop-color="#e2b719" i] {
    stop-color: var(--omx-yellow) !important;
  }

  & [fill="#d18800" i] {
    fill: var(--omx-yellow) !important;
  }

  /* inline-style borders */
  & [style*="border-color: rgb(83, 100, 113)"] {
    border-color: var(--omx-surface-2) !important;
  }

  & [style*="border-color: rgb(51, 54, 57)"] {
    border-color: var(--omx-surface) !important;
  }

  & [style*="border-color: rgb(103, 7, 15)"] {
    border-color: color-mix(in srgb, var(--omx-red) 50%, transparent) !important;
  }

  & [style*="border-color: rgb(29, 155, 240)"] {
    border-color: var(--omx-accent) !important;
  }

  /* inline-style text */
  & [style*="color: rgb(231, 233, 234)"]:not([style*="background-color: rgb(231, 233, 234)"]),
  & [style*="color: rgb(239, 243, 244)"]:not([style*="background-color: rgb(239, 243, 244)"]),
  & [style*="color: rgb(255, 255, 255)"]:not([style*="background-color: rgb(255, 255, 255)"]) {
    color: var(--omx-fg) !important;
  }

  & [style*="color: rgb(231, 233, 234)"]:not([style*="background-color: rgb(231, 233, 234)"]) input::placeholder {
    color: var(--omx-fg-dim) !important;
  }

  /* faded text */
  & [style*="color: rgb(113, 118, 123)"]:not([style*="background-color: rgb(113, 118, 123)"]),
  & [style*="color: rgb(182, 185, 188)"]:not([style*="background-color: rgb(182, 185, 188)"]) {
    color: var(--omx-muted) !important;
  }

  /* reposts */
  & [style*="color: rgb(0, 186, 124)"]:not([style*="background-color: rgb(0, 186, 124)"]) {
    color: var(--omx-green) !important;
  }

  /* likes / unfollow */
  & [style*="color: rgb(249, 24, 128)"]:not([style*="background-color: rgb(249, 24, 128)"]),
  & [style*="color: rgb(244, 33, 46)"]:not([style*="background-color: rgb(244, 33, 46)"]) {
    color: var(--omx-red) !important;
  }

  & [style*="color: rgb(250, 68, 152)"]:not([style*="background-color: rgb(250, 68, 152)"]),
  & [style*="color: rgb(120, 86, 255)"]:not([style*="background-color: rgb(120, 86, 255)"]) {
    color: var(--omx-magenta) !important;
  }

  & [style*="color: rgb(255, 212, 0)"]:not([style*="background-color: rgb(255, 212, 0)"]) {
    color: var(--omx-yellow) !important;
  }

  & [style*="color: rgb(255, 122, 0)"]:not([style*="background-color: rgb(255, 122, 0)"]) {
    color: var(--omx-orange) !important;
  }

  /* X blue -> accent */
  & [style*="color: rgb(29, 155, 240)"]:not([style*="background-color: rgb(29, 155, 240)"]) {
    color: var(--omx-accent) !important;
  }

  /* inline-style backgrounds */
  & [style*="background-color: rgb(142, 205, 248)"] {
    background-color: color-mix(in srgb, var(--omx-accent) 85%, var(--omx-fg)) !important;
  }

  & [style*="background-color: rgb(2, 17, 61)"] {
    background-color: color-mix(in srgb, var(--omx-accent) 15%, transparent) !important;
  }

  & [style*="background-color: rgba(255, 255, 255, 0.25)"] {
    background-color: color-mix(in srgb, var(--omx-fg) 25%, transparent) !important;
  }

  & [style*="background-color: rgb(147, 147, 147)"] {
    background-color: var(--omx-muted) !important;

    & + [style*="background-color: rgb(250, 250, 250)"] {
      background-color: var(--omx-fg) !important;
    }
  }

  & [style*="background-color: rgb(29, 155, 240)"] {
    background-color: var(--omx-accent) !important;

    & [style*="color: rgb(255, 255, 255)"] {
      color: var(--omx-on-accent) !important;
    }
  }

  & [style*="background-color: rgb(239, 243, 244)"] {
    background-color: var(--omx-fg) !important;

    & [style*="color: rgb(15, 20, 25)"] {
      color: var(--omx-bg) !important;
    }
  }

  & [style*="background-color: rgb(244, 33, 46)"] {
    background-color: var(--omx-red) !important;

    & [style*="color: rgb(255, 255, 255)"] {
      color: var(--omx-on-accent) !important;
    }
  }

  & [style*="background-color: rgb(0, 0, 0)"],
  & [style*="background-color: #000"] {
    background-color: var(--omx-bg) !important;
  }

  & [style*="background-color: rgba(15, 20, 25, 0.75)"] {
    background-color: color-mix(in srgb, var(--omx-bg-darker) 75%, transparent) !important;

    & [style*="color: rgb(255, 255, 255)"] svg {
      color: var(--omx-fg) !important;
    }
  }

  /* text sitting on accent/red fills */
  & .r-l5o3uw,
  & .r-1vtznih,
  & .r-4nw3r4,
  & .r-12d83nn,
  & .r-oybae9,
  & .r-yuvema,
  & .r-3gvs5h {
    & [style*="color: rgb(255, 255, 255)"]:not([style*="background-color: rgb(255, 255, 255)"]),
    &[style*="color: rgb(255, 255, 255)"]:not([style*="background-color: rgb(255, 255, 255)"]),
    & [style*="color: rgb(231, 233, 234)"]:not([style*="background-color: rgb(231, 233, 234)"]),
    &[style*="color: rgb(231, 233, 234)"]:not([style*="background-color: rgb(231, 233, 234)"]),
    & .r-jwli3a,
    & [color="white"] {
      color: var(--omx-on-accent) !important;
    }
  }

  /* keep video player chrome white */
  & [data-testid="videoComponent"]:not(.r-4nw3r4),
  & .r-loe9s5 {
    & [style*="color: rgb(255, 255, 255)"]:not([style*="background-color: rgb(255, 255, 255)"]),
    &[style*="color: rgb(255, 255, 255)"]:not([style*="background-color: rgb(255, 255, 255)"]),
    & .r-jwli3a {
      color: #fff !important;
    }
  }

  /* own dm bubbles */
  & .r-eff69c {
    background-color: var(--omx-accent-hover);

    & [style*="color: rgb(255, 255, 255)"] {
      color: var(--omx-on-accent) !important;
    }
  }

  /* follow button */
  & [data-testid$="-follow"] [style*="color: rgb(15, 20, 25)"] {
    color: var(--omx-bg) !important;
  }

  /* X logo in the accent color */
  & path[d="M18.244 2.25h3.308l-7.227 8.26 8.502 11.24H16.17l-5.214-6.817L4.99 21.75H1.68l7.73-8.835L1.254 2.25H8.08l4.713 6.231zm-1.161 17.52h1.833L7.084 4.126H5.117z"] {
    fill: var(--omx-accent) !important;
  }

  /* X Chat (/i/chat) and X's newer pages are Tailwind, styled by design tokens instead of
     the classes above. Most hold bare HSL channels read as hsl(var(--token) / alpha), so they
     get relative colors ("from <color> h s l"). !important beats X's :root[data-theme] rules. */
  &,
  & [data-theme],
  & .dark-theme {
    --color-gray-0: from var(--omx-surface) h s l !important;
    --color-gray-50: from color-mix(in srgb, var(--omx-fg) 6%, var(--omx-surface)) h s l !important;
    --color-gray-100: from color-mix(in srgb, var(--omx-fg) 12%, var(--omx-surface)) h s l !important;
    --color-gray-200: from color-mix(in srgb, var(--omx-fg) 17%, var(--omx-surface)) h s l !important;
    --color-gray-300: from color-mix(in srgb, var(--omx-fg) 22%, var(--omx-surface)) h s l !important;
    --color-gray-400: from color-mix(in srgb, var(--omx-fg) 30%, var(--omx-surface)) h s l !important;
    --color-gray-500: from color-mix(in srgb, var(--omx-fg) 38%, var(--omx-surface)) h s l !important;
    --color-gray-600: from color-mix(in srgb, var(--omx-fg) 44%, var(--omx-surface)) h s l !important;
    --color-gray-700: from var(--omx-muted) h s l !important;
    --color-gray-800: from color-mix(in srgb, var(--omx-fg) 64%, var(--omx-surface)) h s l !important;
    --color-gray-900: from color-mix(in srgb, var(--omx-fg) 78%, var(--omx-surface)) h s l !important;
    --color-gray-1000: from color-mix(in srgb, var(--omx-fg) 90%, var(--omx-surface)) h s l !important;
    --color-gray-1100: from var(--omx-fg) h s l !important;

    --background: from var(--omx-bg) h s l !important;
    --color-background: var(--background) !important;
    --popover: var(--background) !important;
    --color-modal-background: var(--color-gray-0) !important;
    --foreground: from var(--omx-fg) h s l !important;
    --color-text: var(--foreground) !important;
    --card-foreground: var(--foreground) !important;
    --popover-foreground: var(--foreground) !important;
    --secondary-foreground: var(--foreground) !important;
    --destructive-foreground: var(--foreground) !important;
    --muted: var(--color-gray-100) !important;
    --secondary: var(--color-gray-100) !important;
    --border: var(--color-gray-100) !important;
    --input: var(--color-gray-100) !important;
    --muted-foreground: var(--color-gray-700) !important;
    --color-nested-border: var(--color-gray-700) !important;
    --color-brand: from var(--omx-accent) h s l !important;
    --color-blue-500: var(--color-brand) !important;
    --chat-accent: var(--color-brand) !important;
    --ring: var(--color-brand) !important;
    --color-brand-foreground: from var(--omx-on-accent) h s l !important;
    --chat-accent-foreground: var(--color-brand-foreground) !important;
    --destructive: from var(--omx-red) h s l !important;
    --color-red-400: var(--destructive) !important;
    --color-red-500: var(--destructive) !important;
    --color-green-400: from var(--omx-green) h s l !important;
    --color-green-500: var(--color-green-400) !important;
    --color-yellow-400: from var(--omx-yellow) h s l !important;
    --color-yellow-500: var(--color-yellow-400) !important;

    /* plain-color tokens */
    --x-bg-primary: var(--omx-bg) !important;
    --x-bg-secondary: var(--omx-surface) !important;
    --x-bg-tertiary: var(--omx-surface-2) !important;
    --x-bg-modal: var(--omx-surface) !important;
    --x-bg-sheets: var(--omx-surface) !important;
    --x-bg-inputs: color-mix(in srgb, var(--omx-fg) 8%, transparent) !important;
    --x-fg-primary: var(--omx-fg) !important;
    --x-fg-secondary: var(--omx-muted) !important;
    --x-fg-tertiary: color-mix(in srgb, var(--omx-fg) 30%, transparent) !important;
    --x-fg-inverted: var(--omx-bg) !important;
    --x-fg-on-color: var(--omx-on-accent) !important;
    --x-fg-brand: var(--omx-accent) !important;
    --x-fg-destructive: var(--omx-red) !important;
    --x-fg-success: var(--omx-green) !important;
    --x-fg-warning: var(--omx-yellow) !important;
    --x-border-normal: var(--omx-surface) !important;
    --x-border-hover: var(--omx-surface-2) !important;
    --x-border-active: var(--omx-surface-3) !important;
    --x-border-destructive: var(--omx-red) !important;
    --x-btn-brand: var(--omx-accent) !important;
    --x-btn-brand-hover: var(--omx-accent-hover) !important;
    --x-btn-brand-pressed: var(--omx-accent-active) !important;
    --x-btn-destructive: var(--omx-red) !important;
    --x-btn-destructive-hover: var(--omx-red-hover) !important;
    --x-btn-destructive-pressed: var(--omx-red-active) !important;
    --x-hover-subtle: color-mix(in srgb, var(--omx-fg) 8%, transparent) !important;
    --x-btn-ghost-hover: color-mix(in srgb, var(--omx-fg) 8%, transparent) !important;
    --x-btn-ghost-pressed: color-mix(in srgb, var(--omx-fg) 15%, transparent) !important;
  }

  /* text on your own (accent) chat bubbles */
  & .bg-chat-accent {
    &.text-white,
    & .text-white {
      color: var(--omx-on-accent) !important;
    }
  }
}
