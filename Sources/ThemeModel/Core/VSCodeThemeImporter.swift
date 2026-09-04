//
//  VSCodeThemeImporter.swift
//  SwiftThemeModel
//
//  Maps a VS Code color theme onto a `ThemePalette`. Tolerant of JSONC (comments
//  and trailing commas) since many real-world theme files are JSONC.
//
//  Created by David Sherlock on 7/9/26.
//

import Foundation

/// Imports a VS Code color theme (its `colors` UI keys + `tokenColors` TextMate
/// scopes) into a ``ThemePalette``.
///
/// Best-effort: missing keys fall back sensibly, `#RGB`/`#RGBA` shorthand is
/// expanded, and 8-digit `#RRGGBBAA` values are trimmed to `#RRGGBB`. Input may be
/// **JSONC** (with `//` / `/* */` comments and trailing commas) — many published
/// themes are — and is sanitized before parsing.
///
/// The 16 `terminal.ansi*` keys are imported when present and left `nil`
/// otherwise, so a theme without them resolves to a curated set matching its
/// appearance (see ``ThemePalette/resolvedANSI``).
public enum VSCodeThemeImporter {

    /// Parses a VS Code theme from raw file `data`.
    /// - Parameter fallbackName: used when the theme JSON has no `name`.
    /// - Returns: a ``ThemePalette``, or `nil` if the data isn't a JSON object.
    public static func palette(from data: Data, fallbackName: String) -> ThemePalette? {
        let sanitized = Data(sanitizeJSONC(String(decoding: data, as: UTF8.self)).utf8)
        guard let json = try? JSONSerialization.jsonObject(with: sanitized) as? [String: Any] else { return nil }
        let ui = VSCodeUIColors(json["colors"] as? [String: Any] ?? [:])
        let tokens = VSCodeTokenRules(tokenColors: json["tokenColors"] as? [[String: Any]] ?? [])
        let bg = ui.hex("editor.background", "#1E1E1E")
        let fg = ui.hex("editor.foreground", "#D4D4D4")
        let keyword = tokens.color(for: ["keyword", "storage"], fallback: "#C586C0")
        return ThemePalette(
            name: (json["name"] as? String) ?? fallbackName,
            appearance: appearance(declared: json["type"] as? String, background: bg),
            background: bg,
            foreground: fg,
            cursor: ui.hex("editorCursor.foreground", fg),
            selection: ui.hex("editor.selectionBackground", "#264F78"),
            comment: tokens.color(for: ["comment"], fallback: "#6A9955"),
            string: tokens.color(for: ["string"], fallback: "#CE9178"),
            keyword: keyword,
            type: tokens.color(for: ["entity.name.type", "support.type", "storage.type", "entity.name.class"], fallback: "#4EC9B0"),
            number: tokens.color(for: ["constant.numeric", "constant"], fallback: "#B5CEA8"),
            function: tokens.color(for: ["entity.name.function", "support.function"], fallback: "#DCDCAA"),
            variable: tokens.color(for: ["variable"], fallback: fg),
            property: tokens.color(for: ["variable.other.property", "support.variable", "meta.object-literal.key"], fallback: tokens.color(for: ["variable"], fallback: fg)),
            accent: keyword,
            sidebarBackground: ui.hex("sideBar.background", bg),
            sidebarText: ui.hex("sideBar.foreground", fg),
            tabBarBackground: ui.hex("editorGroupHeader.tabsBackground", bg),
            tabText: ui.hex("tab.inactiveForeground", fg),
            tabActiveText: ui.hex("tab.activeForeground", fg),
            border: ui.hex("editorGroup.border", ui.hex("panel.border", bg)),
            gutterBackground: bg,
            gutterText: ui.hex("editorLineNumber.foreground", "#858585"),
            gutterActiveText: ui.hex("editorLineNumber.activeForeground", fg),
            statusBackground: ui.hex("statusBar.background", bg),
            statusText: ui.hex("statusBar.foreground", fg),
            ansiBlack: ui.ansi("Black"), ansiRed: ui.ansi("Red"),
            ansiGreen: ui.ansi("Green"), ansiYellow: ui.ansi("Yellow"),
            ansiBlue: ui.ansi("Blue"), ansiMagenta: ui.ansi("Magenta"),
            ansiCyan: ui.ansi("Cyan"), ansiWhite: ui.ansi("White"),
            ansiBrightBlack: ui.ansi("BrightBlack"), ansiBrightRed: ui.ansi("BrightRed"),
            ansiBrightGreen: ui.ansi("BrightGreen"), ansiBrightYellow: ui.ansi("BrightYellow"),
            ansiBrightBlue: ui.ansi("BrightBlue"), ansiBrightMagenta: ui.ansi("BrightMagenta"),
            ansiBrightCyan: ui.ansi("BrightCyan"), ansiBrightWhite: ui.ansi("BrightWhite"))
    }

    /// "light" or "dark". Many theme JSONs omit `type` (it lives in the extension manifest), so
    /// the background's luminance decides; hcLight is LIGHT; anything unrecognised also falls
    /// back to luminance.
    static func appearance(declared type: String?, background: String) -> String {
        switch type?.lowercased() {
        case "light", "hclight", "hc-light": return "light"
        case "dark", "hc", "hcdark", "hc-dark", "hc-black": return "dark"
        default: return isLight(background) ? "light" : "dark"
        }
    }

    /// Whether a `#RRGGBB` color reads as "light" (perceived luminance), used to
    /// infer a theme's appearance when its `type` field is absent.
    static func isLight(_ hex: String) -> Bool {
        let h = hex.hasPrefix("#") ? String(hex.dropFirst()) : hex
        guard h.count == 6, let v = Int(h, radix: 16) else { return false }
        let r = Double((v >> 16) & 0xFF), g = Double((v >> 8) & 0xFF), b = Double(v & 0xFF)
        return (0.299 * r + 0.587 * g + 0.114 * b) > 140
    }

    /// Normalizes a hex color string to `#RRGGBB`, expanding `#RGB`/`#RGBA`
    /// shorthand and dropping any 2-digit alpha. Returns `nil` if not a hex color.
    static func hex6(_ s: String?) -> String? {
        guard var s = s, s.hasPrefix("#"),
              !s.dropFirst().isEmpty,
              s.dropFirst().allSatisfy({ $0.isASCII && $0.isHexDigit }) else { return nil }
        if s.count == 4 || s.count == 5 {   // expand #RGB / #RGBA shorthand
            s = "#" + s.dropFirst().map { "\($0)\($0)" }.joined()
        }
        if s.count >= 7 { s = String(s.prefix(7)) }   // #RRGGBB, drop any alpha
        return s.count == 7 ? s : nil
    }

    /// Strips `//` and `/* */` comments and trailing commas (JSONC → JSON),
    /// respecting string literals so real-world theme files parse.
    static func sanitizeJSONC(_ s: String) -> String {
        let a = Array(s)
        var out: [Character] = []; out.reserveCapacity(a.count)
        var i = 0, inStr = false, esc = false
        while i < a.count {
            let c = a[i]
            if inStr {
                out.append(c)
                if esc { esc = false } else if c == "\\" { esc = true } else if c == "\"" { inStr = false }
                i += 1; continue
            }
            if c == "\"" { inStr = true; out.append(c); i += 1; continue }
            if c == "/", i + 1 < a.count, a[i + 1] == "/" {                 // line comment
                while i < a.count, a[i] != "\n" { i += 1 }
                continue
            }
            if c == "/", i + 1 < a.count, a[i + 1] == "*" {                 // block comment
                i += 2
                while i + 1 < a.count, !(a[i] == "*" && a[i + 1] == "/") { i += 1 }
                i = min(i + 2, a.count)
                continue
            }
            out.append(c); i += 1
        }
        // second pass: drop trailing commas (a `,` before `}` or `]`)
        var res: [Character] = []; res.reserveCapacity(out.count)
        i = 0; inStr = false; esc = false
        while i < out.count {
            let c = out[i]
            if inStr {
                res.append(c)
                if esc { esc = false } else if c == "\\" { esc = true } else if c == "\"" { inStr = false }
                i += 1; continue
            }
            if c == "\"" { inStr = true; res.append(c); i += 1; continue }
            if c == "," {
                var j = i + 1
                while j < out.count, out[j] == " " || out[j] == "\n" || out[j] == "\t" || out[j] == "\r" { j += 1 }
                if j < out.count, out[j] == "}" || out[j] == "]" { i += 1; continue }
            }
            res.append(c); i += 1
        }
        return String(res)
    }
}
