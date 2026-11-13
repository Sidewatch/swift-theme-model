# Audit log

Last full audit: **17 Sep 2026** — every source file covered by the MECHANICAL checks below (build warnings, tests,
dead-code and risk-pattern scans, docs drift); line-by-line logic review was targeted at the areas changed since
5 Sep 2026, not the whole tree. Nothing needs re-scanning unless it changed after that date. Add a dated line under *History* when you audit again, and keep the
*Known non-issues* list current so the next pass skips them.

## What a full audit checks

1. `swift build` warnings (none allowed except those listed under known non-issues) and `swift test` green.
2. Dead code: every `func`/type/property declared once and referenced nowhere in the app or the family
   (`grep -w` across `*.swift` AND non-Swift files — selectors and MCP names live in strings). Protocol
   requirements, `override`s, `@objc` actions and public API are NOT dead because Sidewatch does not call them.
3. Risky patterns: `Timer` without `invalidate`, `addObserver(forName:)` without `removeObserver`, `as!`, `try!`
   outside literal regexes, `fatalError` outside `init?(coder:)`, `print(` outside harnesses, TODO/FIXME left behind.
4. Docs drift: every name in CLAUDE.md's module map exists; AGENTS.md mirrors CLAUDE.md; README Usage matches the API.

## Result on 17 Sep 2026

- Build: clean. Tests: green.
- Nothing to fix in this package.

## Logic review — 18 Sep 2026 (every source and test file, line by line)

Nothing to fix. Checked: `VSCodeThemeImporter` (the `type` table incl. `hcLight`, the luminance
fallback, `hex6`'s shorthand and alpha handling and its rejection of `#+2345`, `sanitizeJSONC`'s
string-aware comment and trailing-comma passes, the needle-then-last-rule scope lookup), a
BOM-prefixed theme file (measured: `JSONSerialization` accepts the U+FEFF the importer's `String`
round trip preserves), `ThemePalette`'s decode-safety for palettes written before the ANSI fields
existed, `resolvedANSI`'s per-slot fill. `BuiltInThemes` is data, audited by pattern rather than by
eye: all 1,584 hex literals are exactly `#RRGGBB`, 36 dark + 12 light = 48, and the invariant tests
(unique names and signatures, pairwise ΔE ≥ 12, contrast floors, the Windshield greyscale thesis)
are the instrument for it.

## Known non-issues (do not "fix" these again)

- `VSCodeTokenRules` splits a `scope` string on commas only; a descendant selector (`meta.function
  entity.name.function`) is one scope that matches nothing, which is the intended approximation.

## History

- 17 Sep 2026 — full audit (app + all 20 libraries), Claude with David.
- 18 Sep 2026 — logic review (every source and test file, line by line), Claude with David.
- 19 Sep 2026 — + Orchid, Sakura (pastel darks), Peony, Lilac (pastel lights), Volt (2026 dark): 53 palettes, 39 + 14. Every pair still ≥ 12.7 ΔE; inventory test updated.
- 13 Nov 2026 — + eight published themes of the 2020s, each read from its authors' own VS Code file with `VSCodeThemeImporter` (sources and licences in each doc comment, all MIT): Vesper, Poimandres, Vitesse Dark, Houston, Aura, Flexoki Dark (dark), Vitesse Light, Tokyo Night Light (light). 63 palettes, 46 + 17; every pair still ≥ 12 ΔE (closest: Solarized Dark vs Solarized Light, 12.9). Tokyo Night Storm and Rosé Pine Moon were left out as too near their siblings. Found on the way and fixed: the importer DROPPED the alpha of `#RRGGBBAA` colours, so a translucent selection or comment imported as its opaque colour (Vesper's selection solid white, Houston's comments its foreground); such a colour is laid over the editor background now (`hex6(_:over:)`, `testColoursWithAnAlphaAreLaidOverTheBackground`; the two tests that pinned the old behaviour are updated). Known, left: a theme file that declares `"type": "dark"` over a light page (Tokyo Night Light's does) imports as dark.
- 13 Nov 2026 — Claude Code (the dark palette) removed; Claude stays. 62 palettes, 45 + 17.
