# Credits

Omarchy Lock Studio is a thin layer of my own work on top of other people's
work. Nothing here bundles or reimplements those projects — the app drives
them as they ship — but the lock screen you end up looking at is mostly their
doing, so here is the full accounting.

## The projects it depends on

### Omarchy
- **What it provides:** the Quickshell shell, the `omarchy.lock` plugin this
  app clones and edits, the theme colours and `Style`/`Color` tokens the
  generated `LockView.qml` reads, and the commands the studio calls —
  `omarchy-launch-terminal`, `omarchy-hw-fingerprint`,
  `omarchy-setup-security-fingerprint`, `omarchy plugin` and
  `omarchy restart shell`.
- **License:** MIT
- **Author:** Basecamp / David Heinemeier Hansson and the Omarchy contributors
- **Source:** https://github.com/basecamp/omarchy

### Quickshell
- **What it provides:** the QML shell runtime that owns the Wayland session
  lock (`WlSessionLockSurface`). The generated view only describes a surface;
  Quickshell is what actually locks the session.
- **License:** LGPL-3.0-only
- **Source:** https://github.com/quickshell-mirror/quickshell

### Qt 6
- **What it provides:** the QML engine and platform integration underneath
  Quickshell.
- **License:** LGPL-3.0-only (also offered under GPL-3.0 and a commercial
  license)
- **Source:** https://www.qt.io/

### omaFace
- **What it provides:** every part of face unlock — the IR-camera engine, the
  eye-open/gaze check, the `omaface-lock` PAM service, and `FaceGlyph.qml`,
  the face mark shipped inline inside the generated `LockView.qml` so the
  customized view keeps its indicator. The studio only reports its state and
  calls `omaface enroll|test|enable|disable`.
- **License:** MIT
- **Author:** L0adn9, © 2026
- **Source:** https://github.com/L0adn9/omaface

### fprintd and libfprint
- **What it provides:** the fingerprint stack. The studio detects readers and
  enrollment through `fprintd-list`, and defers all PAM configuration to
  Omarchy's `omarchy-setup-security-fingerprint`.
- **License:** fprintd GPL-2.0-or-later · libfprint LGPL-2.1-or-later
- **Source:** https://gitlab.freedesktop.org/libfprint/fprintd ·
  https://gitlab.freedesktop.org/libfprint/libfprint

### Nerd Fonts / Material Design Icons
- **What it provides:** the fingerprint glyph (`󰈷`, U+F021B) drawn in the
  password field of the lock screen.
- **License:** Nerd Fonts MIT · Material Design Icons Apache-2.0
- **Source:** https://github.com/ryanoasis/nerd-fonts

## Assets in this repository

| Asset | Made with | License |
| --- | --- | --- |
| `docs/logo.svg`, `docs/logo.png` | Original artwork by Joseph Michael Shaker | MIT (same as this repo) |
| `docs/logo-wordmark.svg` | Original artwork | MIT |
| `docs/social-preview.svg` / `.png` | Original artwork; set in **Liberation Sans** (SIL OFL 1.1) and **JetBrains Mono** (SIL OFL 1.1) | MIT |
| `docs/index.html` | Hand-written, no framework | MIT |

The dev quotes shown on the lock screen are attributed in the string itself —
Linus Torvalds, Donald Knuth, Grace Hopper, Alan Perlis, Leslie Lamport and
others — and the ones marked *Anonymous* are unattributed in common
circulation. They are short quotations used for their meaning, not reproduced
at length.

## Not affiliated

Omarchy Lock Studio is an independent personal project. It is not affiliated
with, endorsed by, or supported by Basecamp, the Omarchy project, Quickshell,
or the omaFace author. Bugs in this app are mine; bugs in the lock screen
itself are theirs.
