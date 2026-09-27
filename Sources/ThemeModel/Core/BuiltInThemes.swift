//
//  BuiltInThemes.swift
//  ThemeModel
//
//  A set of ready-made hex palettes.
//
//  Created by David Sherlock on 7/9/26.
//  Copyright © 2026 ArrayPress Limited. MIT licence.
//

import Foundation

/// Ready-made ``ThemePalette``s for well-known editor color schemes.
///
/// Use one directly (e.g. `BuiltInThemes.dracula`) or iterate ``all`` to
/// populate a theme picker.
public enum BuiltInThemes {

    /// Monokai — the classic warm dark theme.
    public static let monokai = ThemePalette(
        name: "Monokai",
        appearance: "dark",
        background: "#272822",
        foreground: "#F8F8F2",
        cursor: "#F8F8F2",
        selection: "#49483C",
        comment: "#75715E",
        string: "#E6DB74",
        keyword: "#F92672",
        type: "#66D9EF",
        number: "#AE81FF",
        function: "#A6E22E",
        variable: "#FD971F",
        property: "#66D9EF",
        accent: "#F92672",
        sidebarBackground: "#24251F",
        sidebarText: "#CCCCC7",
        tabBarBackground: "#21221D",
        tabText: "#8C8B85",
        tabActiveText: "#F8F8F2",
        border: "#2E2F29",
        gutterBackground: "#2F2F2A",
        gutterText: "#90908A",
        gutterActiveText: "#CCCCC7",
        statusBackground: "#1C1D19",
        statusText: "#90908A"
    )

    /// One Dark — Atom's default dark theme.
    public static let oneDark = ThemePalette(
        name: "One Dark",
        appearance: "dark",
        background: "#282C34",
        foreground: "#ABB2BF",
        cursor: "#528BFF",
        selection: "#3E4451",
        comment: "#5C6370",
        string: "#98C379",
        keyword: "#C678DD",
        type: "#E5C07B",
        number: "#D19A66",
        function: "#61AFEF",
        variable: "#E06C75",
        property: "#56B6C2",
        accent: "#61AFEF",
        sidebarBackground: "#21252B",
        sidebarText: "#9DA5B4",
        tabBarBackground: "#21252B",
        tabText: "#6B717D",
        tabActiveText: "#D7DAE0",
        border: "#181A1F",
        gutterBackground: "#282C34",
        gutterText: "#495162",
        gutterActiveText: "#737C8C",
        statusBackground: "#21252B",
        statusText: "#9DA5B4"
    )

    /// GitHub Dark — GitHub's dark web/editor scheme.
    public static let githubDark = ThemePalette(
        name: "GitHub Dark",
        appearance: "dark",
        background: "#0D1117",
        foreground: "#C9D1D9",
        cursor: "#58A6FF",
        selection: "#163356",
        comment: "#8B949E",
        string: "#A5D6FF",
        keyword: "#FF7B72",
        type: "#FFA657",
        number: "#79C0FF",
        function: "#D2A8FF",
        variable: "#FFA657",
        property: "#7EE787",
        accent: "#58A6FF",
        sidebarBackground: "#0D1117",
        sidebarText: "#8B949E",
        tabBarBackground: "#010409",
        tabText: "#8B949E",
        tabActiveText: "#E6EDF3",
        border: "#21262D",
        gutterBackground: "#0D1117",
        gutterText: "#484F58",
        gutterActiveText: "#8B949E",
        statusBackground: "#010409",
        statusText: "#8B949E"
    )

    /// Solarized Dark — Ethan Schoonover's low-contrast dark palette.
    public static let solarizedDark = ThemePalette(
        name: "Solarized Dark",
        appearance: "dark",
        background: "#002B36",
        foreground: "#839496",
        cursor: "#93A1A1",
        selection: "#073642",
        comment: "#586E75",
        string: "#2AA198",
        keyword: "#859900",
        type: "#B58900",
        number: "#D33682",
        function: "#268BD2",
        variable: "#CB4B16",
        property: "#6C71C4",
        accent: "#268BD2",
        sidebarBackground: "#00212B",
        sidebarText: "#839496",
        tabBarBackground: "#00212B",
        tabText: "#586E75",
        tabActiveText: "#93A1A1",
        border: "#073642",
        gutterBackground: "#002B36",
        gutterText: "#586E75",
        gutterActiveText: "#93A1A1",
        statusBackground: "#001B22",
        statusText: "#586E75"
    )

    /// Solarized Light — the light counterpart to Solarized Dark.
    public static let solarizedLight = ThemePalette(
        name: "Solarized Light",
        appearance: "light",
        background: "#FDF6E3",
        foreground: "#657B83",
        cursor: "#586E75",
        selection: "#EEE8D5",
        comment: "#93A1A1",
        string: "#2AA198",
        keyword: "#859900",
        type: "#B58900",
        number: "#D33682",
        function: "#268BD2",
        variable: "#CB4B16",
        property: "#6C71C4",
        accent: "#268BD2",
        sidebarBackground: "#EEE8D5",
        sidebarText: "#657B83",
        tabBarBackground: "#EEE8D5",
        tabText: "#93A1A1",
        tabActiveText: "#586E75",
        border: "#DDD6C1",
        gutterBackground: "#FDF6E3",
        gutterText: "#B0A999",
        gutterActiveText: "#586E75",
        statusBackground: "#EEE8D5",
        statusText: "#657B83"
    )

    /// Neon — near-black with electric neon-green; hacker/terminal aesthetic.
    public static let neon = ThemePalette(
        name: "Neon",
        appearance: "dark",
        background: "#0A0E0C",
        foreground: "#C6D0CB",
        cursor: "#3DE86A",
        selection: "#1C3A2A",
        comment: "#556A5F",
        string: "#9BE8B4",
        keyword: "#3DE86A",
        type: "#B8F075",
        number: "#B991F2",
        function: "#58E6C8",
        variable: "#C6D0CB",
        property: "#6FD3E8",
        accent: "#3DE86A",
        sidebarBackground: "#08110C",
        sidebarText: "#8FA69A",
        tabBarBackground: "#070D0A",
        tabText: "#6B7D72",
        tabActiveText: "#D8E4DE",
        border: "#16211B",
        gutterBackground: "#0A0E0C",
        gutterText: "#3E4E45",
        gutterActiveText: "#9BB0A4",
        statusBackground: "#070D0A",
        statusText: "#7E9086"
    )

    /// Dracula — the popular purple-tinted dark theme.
    public static let dracula = ThemePalette(
        name: "Dracula", appearance: "dark",
        background: "#282A36", foreground: "#F8F8F2", cursor: "#F8F8F2", selection: "#44475A",
        comment: "#6272A4", string: "#F1FA8C", keyword: "#FF79C6", type: "#8BE9FD", number: "#BD93F9",
        function: "#50FA7B", variable: "#F8F8F2", property: "#8BE9FD", accent: "#BD93F9",
        sidebarBackground: "#21222C", sidebarText: "#B4B8CC", tabBarBackground: "#191A21",
        tabText: "#6272A4", tabActiveText: "#F8F8F2", border: "#191A21",
        gutterBackground: "#282A36", gutterText: "#6272A4", gutterActiveText: "#B4B8CC",
        statusBackground: "#191A21", statusText: "#B4B8CC")

    /// Nord — the arctic blue-grey palette.
    public static let nord = ThemePalette(
        name: "Nord", appearance: "dark",
        background: "#2E3440", foreground: "#D8DEE9", cursor: "#D8DEE9", selection: "#434C5E",
        comment: "#616E88", string: "#A3BE8C", keyword: "#81A1C1", type: "#8FBCBB", number: "#B48EAD",
        function: "#88C0D0", variable: "#D8DEE9", property: "#8FBCBB", accent: "#88C0D0",
        sidebarBackground: "#2B303B", sidebarText: "#AEB6C6", tabBarBackground: "#272B35",
        tabText: "#616E88", tabActiveText: "#ECEFF4", border: "#3B4252",
        gutterBackground: "#2E3440", gutterText: "#4C566A", gutterActiveText: "#AEB6C6",
        statusBackground: "#272B35", statusText: "#AEB6C6")

    /// Tokyo Night — deep indigo with pastel syntax colors.
    public static let tokyoNight = ThemePalette(
        name: "Tokyo Night", appearance: "dark",
        background: "#1A1B26", foreground: "#A9B1D6", cursor: "#C0CAF5", selection: "#33467C",
        comment: "#565F89", string: "#9ECE6A", keyword: "#BB9AF7", type: "#2AC3DE", number: "#FF9E64",
        function: "#7AA2F7", variable: "#C0CAF5", property: "#73DACA", accent: "#7AA2F7",
        sidebarBackground: "#16161E", sidebarText: "#9AA5CE", tabBarBackground: "#16161E",
        tabText: "#565F89", tabActiveText: "#C0CAF5", border: "#1F2335",
        gutterBackground: "#1A1B26", gutterText: "#363B54", gutterActiveText: "#737AA2",
        statusBackground: "#16161E", statusText: "#9AA5CE")

    /// Catppuccin Mocha — the soothing pastel dark variant.
    public static let catppuccin = ThemePalette(
        name: "Catppuccin Mocha", appearance: "dark",
        background: "#1E1E2E", foreground: "#CDD6F4", cursor: "#F5E0DC", selection: "#414458",
        comment: "#6C7086", string: "#A6E3A1", keyword: "#CBA6F7", type: "#F9E2AF", number: "#FAB387",
        function: "#89B4FA", variable: "#CDD6F4", property: "#94E2D5", accent: "#CBA6F7",
        sidebarBackground: "#181825", sidebarText: "#BAC2DE", tabBarBackground: "#11111B",
        tabText: "#6C7086", tabActiveText: "#CDD6F4", border: "#313244",
        gutterBackground: "#1E1E2E", gutterText: "#45475A", gutterActiveText: "#9399B2",
        statusBackground: "#11111B", statusText: "#BAC2DE")

    /// Gruvbox Dark — retro warm earth tones.
    public static let gruvbox = ThemePalette(
        name: "Gruvbox Dark", appearance: "dark",
        background: "#282828", foreground: "#EBDBB2", cursor: "#EBDBB2", selection: "#3C3836",
        comment: "#928374", string: "#B8BB26", keyword: "#FB4934", type: "#FABD2F", number: "#D3869B",
        function: "#8EC07C", variable: "#83A598", property: "#8EC07C", accent: "#FE8019",
        sidebarBackground: "#1D2021", sidebarText: "#D5C4A1", tabBarBackground: "#1D2021",
        tabText: "#928374", tabActiveText: "#FBF1C7", border: "#3C3836",
        gutterBackground: "#282828", gutterText: "#7C6F64", gutterActiveText: "#BDAE93",
        statusBackground: "#1D2021", statusText: "#D5C4A1")

    /// Gruvbox Light — the cream-paper companion to Gruvbox Dark (morhetz, MIT).
    public static let gruvboxLight = ThemePalette(
        name: "Gruvbox Light", appearance: "light",
        background: "#FBF1C7", foreground: "#3C3836", cursor: "#3C3836", selection: "#EBDBB2",
        comment: "#928374", string: "#79740E", keyword: "#9D0006", type: "#B57614", number: "#8F3F71",
        function: "#076678", variable: "#AF3A03", property: "#427B58", accent: "#AF3A03",
        sidebarBackground: "#F2E5BC", sidebarText: "#504945", tabBarBackground: "#EBDBB2",
        tabText: "#928374", tabActiveText: "#282828", border: "#D5C4A1",
        gutterBackground: "#FBF1C7", gutterText: "#A89984", gutterActiveText: "#504945",
        statusBackground: "#EBDBB2", statusText: "#504945")

    /// Ayu Dark — near-black with warm orange/gold accents.
    public static let ayu = ThemePalette(
        name: "Ayu Dark", appearance: "dark",
        background: "#0B0E14", foreground: "#BFBDB6", cursor: "#E6B450", selection: "#1C2733",
        comment: "#646B73", string: "#AAD94C", keyword: "#FF8F40", type: "#59C2FF", number: "#D2A6FF",
        function: "#FFB454", variable: "#BFBDB6", property: "#59C2FF", accent: "#39BAE6",
        sidebarBackground: "#0D1017", sidebarText: "#9DA3A9", tabBarBackground: "#0B0E14",
        tabText: "#646B73", tabActiveText: "#BFBDB6", border: "#1C2027",
        gutterBackground: "#0B0E14", gutterText: "#3D424D", gutterActiveText: "#8A9199",
        statusBackground: "#0B0E14", statusText: "#9DA3A9")

    // MARK: - Signature — Windshield
    //
    // The review-first pair, designed for this app around its diff colours.

    /// Windshield Dark — the signature review-first theme. **Greyscale syntax, full-colour
    /// signal**: the code is a ladder of silvers (~6.4 L\* per tier, keyword brightest, comment
    /// dimmest, every tier ≥ 4.5:1) so the diff tint, git colours and ANSI output are the only
    /// chroma on screen. Do **not** saturate the syntax roles or desaturate the ANSI/accent
    /// roles; either collapses it into an ordinary theme. The accent (the git *modified* colour)
    /// is indigo, 247°, the hue furthest from both add-green `#3DB554` and delete-red `#F24F4A`;
    /// ANSI red and green are pinned to those diff constants.
    public static let windshieldDark = ThemePalette(
        name: "Windshield Dark",
        appearance: "dark",
        background: "#101114",
        foreground: "#BDC1C5",
        cursor: "#F1F5FA",
        selection: "#252930",
        comment: "#797D80",
        string: "#898D91",
        keyword: "#F1F5FA",
        type: "#CFD3D8",
        number: "#9A9EA2",
        function: "#E0E4E8",
        variable: "#BDC1C5",
        property: "#ACB0B4",
        accent: "#9A8CFF",
        sidebarBackground: "#0C0D10",
        sidebarText: "#9A9EA2",
        tabBarBackground: "#0A0B0D",
        tabText: "#797D80",
        tabActiveText: "#F1F5FA",
        border: "#22252A",
        gutterBackground: "#101114",
        gutterText: "#6B6F73",
        gutterActiveText: "#CFD3D8",
        statusBackground: "#0A0B0D",
        statusText: "#9A9EA2",
        // Signal, deliberately at full chroma. Red and green ARE the app's diff
        // constants; magenta is the accent/"modified" indigo. ANSI black sits
        // just above the background by universal convention (terminals use slot 0
        // as a background/block colour, not as text) — bright black is the
        // readable grey programs actually dim text with.
        ansiBlack: "#1A1D22", ansiRed: "#F24F4A", ansiGreen: "#3DB554",
        ansiYellow: "#D9A441", ansiBlue: "#6E8AF0", ansiMagenta: "#9A8CFF",
        ansiCyan: "#4FB6C4", ansiWhite: "#BDC1C5",
        ansiBrightBlack: "#797D80", ansiBrightRed: "#FF6F6A",
        ansiBrightGreen: "#5FD97A", ansiBrightYellow: "#F0C46A",
        ansiBrightBlue: "#93A9FF", ansiBrightMagenta: "#B9A9FF",
        ansiBrightCyan: "#6FD3E0", ansiBrightWhite: "#F1F5FA"
    )

    /// Windshield Light — the daylight half of the signature pair, same thesis as
    /// ``windshieldDark``: the ladder inverts (keyword darkest) and the accent deepens to
    /// `#4338CA` to clear 4.5:1 on white. On a light background "bright" ANSI means more
    /// contrast, not more luminance: every bright variant is *darker* than its normal, so all 16
    /// slots clear 4.5:1 (lightening them, as VS Code does, drops bright green to 2.13:1).
    /// Bright black stays the dimmest slot, so dimmed text still reads as dimmed.
    public static let windshieldLight = ThemePalette(
        name: "Windshield Light",
        appearance: "light",
        background: "#FCFCFD",
        foreground: "#3B3E41",
        cursor: "#131619",
        selection: "#D8DCE2",
        comment: "#71757A",
        string: "#63666A",
        keyword: "#131619",
        type: "#2D3134",
        number: "#565A5D",
        function: "#212427",
        variable: "#3B3E41",
        property: "#484C4F",
        accent: "#4338CA",
        sidebarBackground: "#F4F5F7",
        sidebarText: "#484C4F",
        tabBarBackground: "#EDEEF1",
        tabText: "#71757A",
        tabActiveText: "#131619",
        border: "#DFE1E5",
        gutterBackground: "#FCFCFD",
        gutterText: "#868B92",
        gutterActiveText: "#2D3134",
        statusBackground: "#EDEEF1",
        statusText: "#484C4F",
        ansiBlack: "#131619", ansiRed: "#C0332C", ansiGreen: "#1F7A33",
        ansiYellow: "#7E5A0E", ansiBlue: "#2F49B8", ansiMagenta: "#4338CA",
        ansiCyan: "#136E7C", ansiWhite: "#6B7075",
        ansiBrightBlack: "#71757A", ansiBrightRed: "#9C241E",
        ansiBrightGreen: "#145E27", ansiBrightYellow: "#654807",
        ansiBrightBlue: "#1F35A0", ansiBrightMagenta: "#3325B0",
        ansiBrightCyan: "#0B5764", ansiBrightWhite: "#3B3E41"
    )

    /// Claude — a warm-charcoal theme built around Anthropic's brand clay
    /// (`#D97757`) as the accent and caret. Its rule: no syntax hue strays near the diff signal —
    /// warm clay→amber for strings/keywords/numbers, one dusty blue for types, NOTHING green or
    /// fire-red, so add-green and delete-red own those hues. Every syntax role and ANSI slot
    /// clears 4.5:1; ANSI red/green are pinned to the app's diff constants.
    public static let claude = ThemePalette(
        name: "Claude",
        appearance: "dark",
        background: "#1B1917",
        foreground: "#E6E1DA",
        cursor: "#D97757",
        selection: "#3A342E",
        comment: "#8C837A",
        string: "#C9A15E",
        keyword: "#E0906F",
        type: "#9DBAC4",
        number: "#E0A06F",
        function: "#E8C07D",
        variable: "#E6E1DA",
        property: "#C4BEB4",
        accent: "#D97757",
        sidebarBackground: "#171512",
        sidebarText: "#A69E93",
        tabBarBackground: "#141210",
        tabText: "#857C72",
        tabActiveText: "#F0EBE3",
        border: "#2E2A25",
        gutterBackground: "#1B1917",
        gutterText: "#6E665C",
        gutterActiveText: "#C4BEB4",
        statusBackground: "#141210",
        statusText: "#A69E93",
        // Signal at full chroma: red/green ARE the app's diff constants, and the
        // clay accent doubles as ANSI magenta's warm neighbour. ansiBlack sits
        // just above the background (terminals use slot 0 as a block colour, not
        // text); bright black is the readable grey programs dim text with.
        ansiBlack: "#2A2622", ansiRed: "#F24F4A", ansiGreen: "#3DB554",
        ansiYellow: "#D4A24E", ansiBlue: "#7FA8C4", ansiMagenta: "#C08CC4",
        ansiCyan: "#6FB5B0", ansiWhite: "#E6E1DA",
        ansiBrightBlack: "#8C837A", ansiBrightRed: "#FF6F6A",
        ansiBrightGreen: "#5FD97A", ansiBrightYellow: "#E8C07D",
        ansiBrightBlue: "#9DC0D9", ansiBrightMagenta: "#D6A6DA",
        ansiBrightCyan: "#8FD0CB", ansiBrightWhite: "#F0EBE3"
    )

    /// Claude Code — the desktop app's dark palette from its usage/chat UI: a warm
    /// near-black, warm off-white text, the coral asterisk accent, and the
    /// periwinkle blue it uses for charts, the heatmap, and links (here the
    /// function/property color).
    public static let claudeCode = ThemePalette(
        name: "Claude Code",
        appearance: "dark",
        background: "#14130F",
        foreground: "#F2EFE7",
        cursor: "#CC785C",
        selection: "#33302A",
        comment: "#7C756A",
        string: "#B5C77C",
        keyword: "#CC785C",
        type: "#8FA9E6",
        number: "#D3A15F",
        function: "#7C8FE4",
        variable: "#F2EFE7",
        property: "#A5B4E8",
        accent: "#CC785C",
        sidebarBackground: "#100F0C",
        sidebarText: "#A8A196",
        tabBarBackground: "#0D0C0A",
        tabText: "#7C756A",
        tabActiveText: "#F2EFE7",
        border: "#272520",
        gutterBackground: "#14130F",
        gutterText: "#4C483F",
        gutterActiveText: "#A8A196",
        statusBackground: "#0D0C0A",
        statusText: "#A8A196",
        ansiBlack: "#2A2622", ansiRed: "#F24F4A", ansiGreen: "#3DB554",
        ansiYellow: "#D3A15F", ansiBlue: "#7C8FE4", ansiMagenta: "#B4A0DC",
        ansiCyan: "#7FB5C4", ansiWhite: "#F2EFE7",
        ansiBrightBlack: "#7C756A", ansiBrightRed: "#FF6F6A",
        ansiBrightGreen: "#5FD97A", ansiBrightYellow: "#E8C07D",
        ansiBrightBlue: "#9BA7E8", ansiBrightMagenta: "#C4B0EC",
        ansiBrightCyan: "#8FD0CB", ansiBrightWhite: "#FAF9F5"
    )

    // MARK: - Modern
    //
    // Designed for this app, not ported — clean "app-modern" palettes (deep neutral or
    // jewel-toned surfaces, one confident accent). ANSI is left to the curated dark/light
    // set. Each accent stays clear of the add-green (`#3DB554`) and delete-red (`#F24F4A`),
    // so the git "modified" tint it drives can never be mistaken for an add or a delete.

    /// Carbon — an ultra-minimal near-black (pure neutral, no colour cast) with a single
    /// electric-blue accent. The flat "Vercel / Linear" modern look.
    public static let carbon = ThemePalette(
        name: "Carbon", appearance: "dark",
        background: "#0C0C0D", foreground: "#ECECEE", cursor: "#3B9EFF", selection: "#26262A",
        comment: "#6E6E75", string: "#7EE787", keyword: "#3B9EFF", type: "#79C0FF", number: "#D2A8FF",
        function: "#58A6FF", variable: "#ECECEE", property: "#A5D6FF", accent: "#3B9EFF",
        sidebarBackground: "#0A0A0B", sidebarText: "#9E9EA4", tabBarBackground: "#08080A",
        tabText: "#6E6E75", tabActiveText: "#F5F5F6", border: "#1D1D20",
        gutterBackground: "#0C0C0D", gutterText: "#3A3A3E", gutterActiveText: "#9E9EA4",
        statusBackground: "#08080A", statusText: "#9E9EA4")

    /// Synthwave — neon magenta + cyan on a deep indigo; the retro-modern glow.
    public static let synthwave = ThemePalette(
        name: "Synthwave", appearance: "dark",
        background: "#191228", foreground: "#E5DBF0", cursor: "#FF6AD5", selection: "#38294F",
        comment: "#7A6B94", string: "#FDE68A", keyword: "#FF6AD5", type: "#36E0E0", number: "#F97E72",
        function: "#8B7BF7", variable: "#E5DBF0", property: "#36E0E0", accent: "#FF6AD5",
        sidebarBackground: "#150F22", sidebarText: "#B4A6C8", tabBarBackground: "#110C1B",
        tabText: "#7A6B94", tabActiveText: "#F5EDFF", border: "#2E2442",
        gutterBackground: "#191228", gutterText: "#463A5E", gutterActiveText: "#B4A6C8",
        statusBackground: "#110C1B", statusText: "#B4A6C8")

    /// Frost — a cool, clean modern light theme: soft blue-white surfaces, crisp blue accent.
    public static let frost = ThemePalette(
        name: "Frost", appearance: "light",
        background: "#FBFCFE", foreground: "#2A2E37", cursor: "#3B82F6", selection: "#DBE7FB",
        comment: "#8A93A3", string: "#0F9A6A", keyword: "#7C3AED", type: "#C2410C", number: "#2563EB",
        function: "#2563EB", variable: "#2A2E37", property: "#0E7490", accent: "#3B82F6",
        sidebarBackground: "#F1F4F9", sidebarText: "#4A505C", tabBarBackground: "#E9EEF5",
        tabText: "#8A93A3", tabActiveText: "#1A1E27", border: "#DBE1EA",
        gutterBackground: "#FBFCFE", gutterText: "#AEB6C4", gutterActiveText: "#4A505C",
        statusBackground: "#E9EEF5", statusText: "#4A505C")

    // MARK: - Ports
    //
    // Faithful to each project's published palette. Where a theme's own comment
    // colour is low-contrast, it is kept as published rather than "improved" —
    // a port that doesn't match the original everywhere else is a broken port.

    /// Rosé Pine — "all natural pine, faux fur and a bit of soho vibes."
    ///
    /// Palette from the official `@rose-pine/palette` export; roles and the ANSI
    /// set from the Rosé Pine VS Code theme. Note the upstream mapping is
    /// deliberately unconventional: ANSI green is *pine* (a blue) and ANSI cyan
    /// is *rose*, and normal/bright are the same colour in every slot but black.
    public static let rosePine = ThemePalette(
        name: "Rosé Pine", appearance: "dark",
        background: "#191724", foreground: "#E0DEF4", cursor: "#E0DEF4", selection: "#403D52",
        comment: "#6E6A86", string: "#F6C177", keyword: "#31748F", type: "#9CCFD8", number: "#EBBCBA",
        function: "#EBBCBA", variable: "#E0DEF4", property: "#9CCFD8", accent: "#C4A7E7",
        sidebarBackground: "#1F1D2E", sidebarText: "#908CAA", tabBarBackground: "#1F1D2E",
        tabText: "#6E6A86", tabActiveText: "#E0DEF4", border: "#26233A",
        gutterBackground: "#191724", gutterText: "#6E6A86", gutterActiveText: "#E0DEF4",
        statusBackground: "#1F1D2E", statusText: "#908CAA",
        ansiBlack: "#26233A", ansiRed: "#EB6F92", ansiGreen: "#31748F",
        ansiYellow: "#F6C177", ansiBlue: "#9CCFD8", ansiMagenta: "#C4A7E7",
        ansiCyan: "#EBBCBA", ansiWhite: "#E0DEF4",
        ansiBrightBlack: "#908CAA", ansiBrightRed: "#EB6F92",
        ansiBrightGreen: "#31748F", ansiBrightYellow: "#F6C177",
        ansiBrightBlue: "#9CCFD8", ansiBrightMagenta: "#C4A7E7",
        ansiBrightCyan: "#EBBCBA", ansiBrightWhite: "#E0DEF4")

    /// Rosé Pine Dawn — the light variant.
    ///
    /// `text` is `#575279`, per the palette's `dist/` export and all six shipped
    /// VS Code theme JSONs (the repo's `palette.json` disagrees with `#464261`,
    /// but nothing consumes that file and it predates the built output).
    public static let rosePineDawn = ThemePalette(
        name: "Rosé Pine Dawn", appearance: "light",
        background: "#FAF4ED", foreground: "#575279", cursor: "#575279", selection: "#DFDAD9",
        comment: "#9893A5", string: "#EA9D34", keyword: "#286983", type: "#56949F", number: "#D7827E",
        function: "#D7827E", variable: "#575279", property: "#56949F", accent: "#907AA9",
        sidebarBackground: "#FFFAF3", sidebarText: "#797593", tabBarBackground: "#FFFAF3",
        tabText: "#9893A5", tabActiveText: "#575279", border: "#F2E9E1",
        gutterBackground: "#FAF4ED", gutterText: "#9893A5", gutterActiveText: "#575279",
        statusBackground: "#FFFAF3", statusText: "#797593",
        ansiBlack: "#F2E9E1", ansiRed: "#B4637A", ansiGreen: "#286983",
        ansiYellow: "#EA9D34", ansiBlue: "#56949F", ansiMagenta: "#907AA9",
        ansiCyan: "#D7827E", ansiWhite: "#575279",
        ansiBrightBlack: "#797593", ansiBrightRed: "#B4637A",
        ansiBrightGreen: "#286983", ansiBrightYellow: "#EA9D34",
        ansiBrightBlue: "#56949F", ansiBrightMagenta: "#907AA9",
        ansiBrightCyan: "#D7827E", ansiBrightWhite: "#575279")

    /// Kanagawa Wave — inspired by Katsushika Hokusai's *The Great Wave*.
    ///
    /// Palette and the 16 terminal colors from `kanagawa.nvim` (`colors.lua` and
    /// the `term` block of `themes.lua`), cross-checked against the project's
    /// shipped kitty config. Background is `sumiInk3`, the editor background the
    /// project itself uses — not `sumiInk0`.
    public static let kanagawa = ThemePalette(
        name: "Kanagawa Wave", appearance: "dark",
        background: "#1F1F28", foreground: "#DCD7BA", cursor: "#C8C093", selection: "#2D4F67",
        comment: "#727169", string: "#98BB6C", keyword: "#957FB8", type: "#7AA89F", number: "#D27E99",
        function: "#7E9CD8", variable: "#DCD7BA", property: "#E6C384", accent: "#7E9CD8",
        sidebarBackground: "#16161D", sidebarText: "#C8C093", tabBarBackground: "#16161D",
        tabText: "#727169", tabActiveText: "#DCD7BA", border: "#2A2A37",
        gutterBackground: "#1F1F28", gutterText: "#54546D", gutterActiveText: "#C0A36E",
        statusBackground: "#16161D", statusText: "#C8C093",
        ansiBlack: "#16161D", ansiRed: "#C34043", ansiGreen: "#76946A",
        ansiYellow: "#C0A36E", ansiBlue: "#7E9CD8", ansiMagenta: "#957FB8",
        ansiCyan: "#6A9589", ansiWhite: "#C8C093",
        ansiBrightBlack: "#727169", ansiBrightRed: "#E82424",
        ansiBrightGreen: "#98BB6C", ansiBrightYellow: "#E6C384",
        ansiBrightBlue: "#7FB4CA", ansiBrightMagenta: "#938AA9",
        ansiBrightCyan: "#7AA89F", ansiBrightWhite: "#DCD7BA")

    /// Everforest Dark (medium) — a green-based, low-contrast forest palette.
    ///
    /// Palette from `autoload/everforest.vim`. ANSI follows the VS Code port
    /// rather than the vim colorscheme: the two disagree on black/white, and
    /// only the port gives brights a distinct bright-black/bright-white.
    public static let everforestDark = ThemePalette(
        name: "Everforest Dark", appearance: "dark",
        background: "#2D353B", foreground: "#D3C6AA", cursor: "#D3C6AA", selection: "#543A48",
        comment: "#859289", string: "#A7C080", keyword: "#E67E80", type: "#DBBC7F", number: "#D699B6",
        function: "#A7C080", variable: "#D3C6AA", property: "#7FBBB3", accent: "#7FBBB3",
        sidebarBackground: "#232A2E", sidebarText: "#9DA9A0", tabBarBackground: "#232A2E",
        tabText: "#859289", tabActiveText: "#D3C6AA", border: "#3D484D",
        gutterBackground: "#2D353B", gutterText: "#7A8478", gutterActiveText: "#D3C6AA",
        statusBackground: "#232A2E", statusText: "#9DA9A0",
        ansiBlack: "#343F44", ansiRed: "#E67E80", ansiGreen: "#A7C080",
        ansiYellow: "#DBBC7F", ansiBlue: "#7FBBB3", ansiMagenta: "#D699B6",
        ansiCyan: "#83C092", ansiWhite: "#D3C6AA",
        ansiBrightBlack: "#859289", ansiBrightRed: "#E67E80",
        ansiBrightGreen: "#A7C080", ansiBrightYellow: "#DBBC7F",
        ansiBrightBlue: "#7FBBB3", ansiBrightMagenta: "#D699B6",
        ansiBrightCyan: "#83C092", ansiBrightWhite: "#D3C6AA")

    /// Everforest Light (medium) — the light counterpart to ``everforestDark``.
    public static let everforestLight = ThemePalette(
        name: "Everforest Light", appearance: "light",
        background: "#FDF6E3", foreground: "#5C6A72", cursor: "#5C6A72", selection: "#EAEDC8",
        comment: "#939F91", string: "#8DA101", keyword: "#F85552", type: "#DFA000", number: "#DF69BA",
        function: "#8DA101", variable: "#5C6A72", property: "#3A94C5", accent: "#3A94C5",
        sidebarBackground: "#F4F0D9", sidebarText: "#5C6A72", tabBarBackground: "#EFEBD4",
        tabText: "#939F91", tabActiveText: "#5C6A72", border: "#E6E2CC",
        gutterBackground: "#FDF6E3", gutterText: "#A6B0A0", gutterActiveText: "#5C6A72",
        statusBackground: "#EFEBD4", statusText: "#5C6A72",
        ansiBlack: "#5C6A72", ansiRed: "#F85552", ansiGreen: "#8DA101",
        ansiYellow: "#DFA000", ansiBlue: "#3A94C5", ansiMagenta: "#DF69BA",
        ansiCyan: "#35A77C", ansiWhite: "#939F91",
        ansiBrightBlack: "#5C6A72", ansiBrightRed: "#F85552",
        ansiBrightGreen: "#8DA101", ansiBrightYellow: "#DFA000",
        ansiBrightBlue: "#3A94C5", ansiBrightMagenta: "#DF69BA",
        ansiBrightCyan: "#35A77C", ansiBrightWhite: "#F4F0D9")

    /// Night Owl — Sarah Drasner's theme "for the night owls out there."
    ///
    /// Imported from the published VS Code theme (also this package's
    /// `nightowl` test fixture), including its own `terminal.ansi*` set.
    public static let nightOwl = ThemePalette(
        name: "Night Owl", appearance: "dark",
        background: "#011627", foreground: "#D6DEEB", cursor: "#80A4C2", selection: "#1D3B53",
        comment: "#637777", string: "#ECC48D", keyword: "#C792EA", type: "#FFCB8B", number: "#F78C6C",
        function: "#82AAFF", variable: "#C5E478", property: "#BAEBE2", accent: "#82AAFF",
        sidebarBackground: "#011627", sidebarText: "#89A4BB", tabBarBackground: "#011627",
        tabText: "#5F7E97", tabActiveText: "#D2DEE7", border: "#122D42",
        gutterBackground: "#011627", gutterText: "#4B6479", gutterActiveText: "#C5E4FD",
        statusBackground: "#011627", statusText: "#5F7E97",
        ansiBlack: "#011627", ansiRed: "#EF5350", ansiGreen: "#22DA6E",
        ansiYellow: "#C5E478", ansiBlue: "#82AAFF", ansiMagenta: "#C792EA",
        ansiCyan: "#21C7A8", ansiWhite: "#FFFFFF",
        ansiBrightBlack: "#575656", ansiBrightRed: "#EF5350",
        ansiBrightGreen: "#22DA6E", ansiBrightYellow: "#FFEB95",
        ansiBrightBlue: "#82AAFF", ansiBrightMagenta: "#C792EA",
        ansiBrightCyan: "#7FDBCA", ansiBrightWhite: "#FFFFFF")

    /// Catppuccin Latte — the light counterpart to ``catppuccin`` (Mocha). Palette from
    /// `catppuccin/palette`, roles and ANSI from the Catppuccin VS Code extension (brights 9–14
    /// are its bespoke values). One deliberate deviation: `cursor` is `text`, not `rosewater`,
    /// which scores 1.71:1 on Latte's `surface0` selection and vanishes while selecting.
    public static let catppuccinLatte = ThemePalette(
        name: "Catppuccin Latte", appearance: "light",
        background: "#EFF1F5", foreground: "#4C4F69", cursor: "#4C4F69", selection: "#CCD0DA",
        comment: "#7C7F93", string: "#40A02B", keyword: "#8839EF", type: "#DF8E1D", number: "#FE640B",
        function: "#1E66F5", variable: "#4C4F69", property: "#179299", accent: "#8839EF",
        sidebarBackground: "#E6E9EF", sidebarText: "#5C5F77", tabBarBackground: "#DCE0E8",
        tabText: "#8C8FA1", tabActiveText: "#4C4F69", border: "#BCC0CC",
        gutterBackground: "#EFF1F5", gutterText: "#9CA0B0", gutterActiveText: "#5C5F77",
        statusBackground: "#DCE0E8", statusText: "#5C5F77",
        ansiBlack: "#5C5F77", ansiRed: "#D20F39", ansiGreen: "#40A02B",
        ansiYellow: "#DF8E1D", ansiBlue: "#1E66F5", ansiMagenta: "#EA76CB",
        ansiCyan: "#179299", ansiWhite: "#ACB0BE",
        ansiBrightBlack: "#6C6F85", ansiBrightRed: "#DE293E",
        ansiBrightGreen: "#49AF3D", ansiBrightYellow: "#EEA02D",
        ansiBrightBlue: "#456EFF", ansiBrightMagenta: "#FE85D8",
        ansiBrightCyan: "#2D9FA8", ansiBrightWhite: "#BCC0CC")

    /// GitHub Light — GitHub's light web/editor scheme, and the counterpart to
    /// ``githubDark``.
    ///
    /// Values from a real build of `primer/github-vscode-theme`. `selection` is the intended
    /// `alpha(accent.fg, 0.2)` flattened over white: upstream declares the key twice, so its
    /// non-high-contrast builds drop it and inherit VS Code's default.
    public static let githubLight = ThemePalette(
        name: "GitHub Light", appearance: "light",
        background: "#FFFFFF", foreground: "#1F2328", cursor: "#0969DA", selection: "#CEE1F8",
        comment: "#6E7781", string: "#0A3069", keyword: "#CF222E", type: "#953800", number: "#0550AE",
        function: "#8250DF", variable: "#953800", property: "#0550AE", accent: "#0969DA",
        sidebarBackground: "#F6F8FA", sidebarText: "#1F2328", tabBarBackground: "#F6F8FA",
        tabText: "#656D76", tabActiveText: "#1F2328", border: "#D0D7DE",
        gutterBackground: "#FFFFFF", gutterText: "#8C959F", gutterActiveText: "#1F2328",
        statusBackground: "#FFFFFF", statusText: "#656D76",
        ansiBlack: "#24292F", ansiRed: "#CF222E", ansiGreen: "#116329",
        ansiYellow: "#4D2D00", ansiBlue: "#0969DA", ansiMagenta: "#8250DF",
        ansiCyan: "#1B7C83", ansiWhite: "#6E7781",
        ansiBrightBlack: "#57606A", ansiBrightRed: "#A40E26",
        ansiBrightGreen: "#1A7F37", ansiBrightYellow: "#633C01",
        ansiBrightBlue: "#218BFF", ansiBrightMagenta: "#A475F9",
        ansiBrightCyan: "#3192AA", ansiBrightWhite: "#8C959F")

    /// Notion — the warm off-white document look: white page, `#F7F6F3` sidebar,
    /// `#37352F` ink.
    ///
    /// Syntax is Notion's own published text palette, darkened a step. Notion designs
    /// its text colours to sit *at* 4.5:1 on white and most land a hair under
    /// (`gray` 4.48, `blue` 4.47, `purple` 4.49) — fine for a word or two of prose,
    /// not for a screen of code, so each is taken down until it clears the floor.
    public static let notion = ThemePalette(
        name: "Notion", appearance: "light",
        background: "#FFFFFF", foreground: "#37352F", cursor: "#37352F", selection: "#D3E5EF",
        comment: "#6B6A66", string: "#3D7355", keyword: "#8253A8", type: "#2E6F92", number: "#96634B",
        function: "#B0447C", variable: "#37352F", property: "#2E6F92", accent: "#2383E2",
        sidebarBackground: "#F7F6F3", sidebarText: "#37352F", tabBarBackground: "#F7F6F3",
        tabText: "#787774", tabActiveText: "#37352F", border: "#E9E9E7",
        gutterBackground: "#FFFFFF", gutterText: "#8F8E8A", gutterActiveText: "#37352F",
        statusBackground: "#F7F6F3", statusText: "#787774",
        ansiBlack: "#37352F", ansiRed: "#C0392F", ansiGreen: "#3D7355",
        ansiYellow: "#8A6116", ansiBlue: "#2E6F92", ansiMagenta: "#8253A8",
        ansiCyan: "#2C7A73", ansiWhite: "#6B6A66",
        ansiBrightBlack: "#5F5E5A", ansiBrightRed: "#A32F27",
        ansiBrightGreen: "#2F5C43", ansiBrightYellow: "#6E4D11",
        ansiBrightBlue: "#245973", ansiBrightMagenta: "#6A428A",
        ansiBrightCyan: "#22615C", ansiBrightWhite: "#37352F")

    /// Sidewatch — the default, and the app's signature look: a `#191919` page with `#202020`
    /// chrome, warm enough not to read as pure black and quiet enough that syntax colour is the
    /// only thing competing for attention. Derived from Notion's dark-mode text palette
    /// (``notion`` is its light counterpart).
    public static let sidewatch = ThemePalette(
        name: "Sidewatch", appearance: "dark",
        background: "#191919", foreground: "#D4D4D4", cursor: "#D4D4D4", selection: "#26394A",
        comment: "#8B8E8F", string: "#4DAB9A", keyword: "#A67FDE", type: "#529CCA", number: "#FFA344",
        function: "#E255A1", variable: "#D4D4D4", property: "#529CCA", accent: "#4A9EE0",
        sidebarBackground: "#202020", sidebarText: "#C4C4C4", tabBarBackground: "#202020",
        tabText: "#8B8E8F", tabActiveText: "#EDEDED", border: "#2F2F2F",
        gutterBackground: "#191919", gutterText: "#6E7173", gutterActiveText: "#C4C4C4",
        statusBackground: "#202020", statusText: "#979A9B",
        ansiBlack: "#373737", ansiRed: "#FF7369", ansiGreen: "#4DAB9A",
        ansiYellow: "#FFDC49", ansiBlue: "#529CCA", ansiMagenta: "#9A6DD7",
        ansiCyan: "#5BC0BE", ansiWhite: "#C4C4C4",
        ansiBrightBlack: "#8A8D8F", ansiBrightRed: "#FF9088",
        ansiBrightGreen: "#6BC4B3", ansiBrightYellow: "#FFE785",
        ansiBrightBlue: "#6FB0D8", ansiBrightMagenta: "#B48AE3",
        ansiBrightCyan: "#7BD3D1", ansiBrightWhite: "#EDEDED")

    /// Graphite — near-black neutral greys with a cool, restrained accent set. The
    /// chrome is pure `#000000` against a `#0A0A0A` page, so the panes read as one
    /// surface with the edges implied rather than drawn.
    public static let graphite = ThemePalette(
        name: "Graphite", appearance: "dark",
        background: "#0A0A0A", foreground: "#E4E4E7", cursor: "#60A5FA", selection: "#27272A",
        comment: "#7C7C87", string: "#7DD3A0", keyword: "#A78BFA", type: "#7DD3FC", number: "#FBBF24",
        function: "#60A5FA", variable: "#E4E4E7", property: "#5EEAD4", accent: "#60A5FA",
        sidebarBackground: "#000000", sidebarText: "#D4D4D8", tabBarBackground: "#000000",
        tabText: "#71717A", tabActiveText: "#FAFAFA", border: "#27272A",
        gutterBackground: "#0A0A0A", gutterText: "#6B6B76", gutterActiveText: "#D4D4D8",
        statusBackground: "#000000", statusText: "#A1A1AA",
        ansiBlack: "#27272A", ansiRed: "#F87171", ansiGreen: "#7DD3A0",
        ansiYellow: "#FBBF24", ansiBlue: "#60A5FA", ansiMagenta: "#A78BFA",
        ansiCyan: "#5EEAD4", ansiWhite: "#D4D4D8",
        ansiBrightBlack: "#7B7B86", ansiBrightRed: "#FCA5A5",
        ansiBrightGreen: "#A7E8C1", ansiBrightYellow: "#FCD34D",
        ansiBrightBlue: "#93C5FD", ansiBrightMagenta: "#C4B5FD",
        ansiBrightCyan: "#99F6E4", ansiBrightWhite: "#FAFAFA")

    /// Porcelain — the cool-neutral light counterpart to ``graphite``: white page,
    /// `#FAFAFA` chrome, and saturated-but-dark syntax that holds up in daylight.
    ///
    /// The caret is a step darker than the accent (`#1D4ED8` against `#2563EB`)
    /// because the accent alone only reaches 4.2:1 on its own selection band — a
    /// caret that vanishes the moment you select the line it sits in.
    public static let porcelain = ThemePalette(
        name: "Porcelain", appearance: "light",
        background: "#FFFFFF", foreground: "#18181B", cursor: "#1D4ED8", selection: "#DBEAFE",
        comment: "#6E6E78", string: "#15803D", keyword: "#7C3AED", type: "#0369A1", number: "#B45309",
        function: "#2563EB", variable: "#18181B", property: "#0F766E", accent: "#2563EB",
        sidebarBackground: "#FAFAFA", sidebarText: "#18181B", tabBarBackground: "#FAFAFA",
        tabText: "#6E6E78", tabActiveText: "#18181B", border: "#E4E4E7",
        gutterBackground: "#FFFFFF", gutterText: "#8E8E96", gutterActiveText: "#18181B",
        statusBackground: "#FAFAFA", statusText: "#6E6E78",
        ansiBlack: "#18181B", ansiRed: "#B91C1C", ansiGreen: "#15803D",
        ansiYellow: "#A16207", ansiBlue: "#1D4ED8", ansiMagenta: "#7C3AED",
        ansiCyan: "#0F766E", ansiWhite: "#52525B",
        ansiBrightBlack: "#3F3F46", ansiBrightRed: "#991B1B",
        ansiBrightGreen: "#166534", ansiBrightYellow: "#854D0E",
        ansiBrightBlue: "#1E40AF", ansiBrightMagenta: "#6D28D9",
        ansiBrightCyan: "#115E59", ansiBrightWhite: "#18181B")

    /// Every built-in palette, in theme-picker display order (not alphabetical):
    /// the signature pair, then darks, then lights.

    /// Redline — danger-red neon on warm black. Full send.
    public static let redline = ThemePalette(
        name: "Redline",
        appearance: "dark",
        background: "#0C0608",
        foreground: "#F2E9EA",
        cursor: "#FF3B5C",
        selection: "#3A0E18",
        comment: "#6B4A52",
        string: "#FFAE6B",
        keyword: "#FF3B5C",
        type: "#5FD8D0",
        number: "#FFC24D",
        function: "#FF8A5C",
        variable: "#F2E9EA",
        property: "#FF7AA8",
        accent: "#FF3B5C",
        sidebarBackground: "#0A0507",
        sidebarText: "#B08A94",
        tabBarBackground: "#0A0507",
        tabText: "#6B4A52",
        tabActiveText: "#FBF2F3",
        border: "#050203",
        gutterBackground: "#0C0608",
        gutterText: "#4A2E36",
        gutterActiveText: "#A87886",
        statusBackground: "#0A0507",
        statusText: "#B08A94"
    )

    /// Blackout — OLED black with acid-lime signal. Near-total darkness for the
    /// chrome so the code (and the diff tint) is the only light in the room.
    public static let blackout = ThemePalette(
        name: "Blackout",
        appearance: "dark",
        background: "#050507",
        foreground: "#E8E8EC",
        cursor: "#C8FF00",
        selection: "#22320A",
        comment: "#4E4E5A",
        string: "#A8E86B",
        keyword: "#C8FF00",
        type: "#5FE8D8",
        number: "#FFB86B",
        function: "#69D2FF",
        variable: "#E8E8EC",
        property: "#C79BFF",
        accent: "#C8FF00",
        sidebarBackground: "#08080C",
        sidebarText: "#9A9AA8",
        tabBarBackground: "#08080C",
        tabText: "#5A5A68",
        tabActiveText: "#F5F5F8",
        border: "#000000",
        gutterBackground: "#050507",
        gutterText: "#383842",
        gutterActiveText: "#8A8A98",
        statusBackground: "#08080C",
        statusText: "#9A9AA8"
    )

    /// Ultraviolet — deep violet dusk with magenta neon. The edgy one.
    public static let ultraviolet = ThemePalette(
        name: "Ultraviolet",
        appearance: "dark",
        background: "#0D0616",
        foreground: "#E9E0F7",
        cursor: "#FF2EC8",
        selection: "#2C1450",
        comment: "#5E4B80",
        string: "#FF8AD8",
        keyword: "#C77BFF",
        type: "#64E8E0",
        number: "#FFCA7A",
        function: "#8F86FF",
        variable: "#E9E0F7",
        property: "#61C8FF",
        accent: "#FF2EC8",
        sidebarBackground: "#0A0412",
        sidebarText: "#A390C2",
        tabBarBackground: "#0A0412",
        tabText: "#5E4B80",
        tabActiveText: "#F5EEFC",
        border: "#05020A",
        gutterBackground: "#0D0616",
        gutterText: "#443364",
        gutterActiveText: "#8F7BB0",
        statusBackground: "#0A0412",
        statusText: "#A390C2"
    )

    /// Meridian — cool charcoal with a teal signal and pastel-electric syntax: the
    /// modern-dashboard look (Linear, Vercel, Supabase) rather than a classic editor
    /// scheme. Deliberately distinct from every other built-in: the near-blacks here
    /// (Blackout, Carbon, Graphite, Windshield) signal in lime, blue or violet, the
    /// blue-blacks (Ayu, Night Owl, Tokyo Night) are bluer and busier, and nothing
    /// else uses teal as the accent. Chrome one step darker than the page, `border`
    /// darker still (the recessed-seam rule), and a matching ANSI set so the
    /// terminal wears the same hues.
    public static let meridian = ThemePalette(
        name: "Meridian",
        appearance: "dark",
        background: "#0F1117",
        foreground: "#E6EAF2",
        cursor: "#2DD4BF",
        selection: "#1B2A33",
        comment: "#5B6478",
        string: "#86EFAC",
        keyword: "#C084FC",
        type: "#67E8F9",
        number: "#FDBA74",
        function: "#93C5FD",
        variable: "#E6EAF2",
        property: "#5EEAD4",
        accent: "#2DD4BF",
        sidebarBackground: "#0B0D12",
        sidebarText: "#9AA3B8",
        tabBarBackground: "#0B0D12",
        tabText: "#5B6478",
        tabActiveText: "#F1F4F9",
        border: "#06070A",
        gutterBackground: "#0F1117",
        gutterText: "#3A4052",
        gutterActiveText: "#8B94A8",
        statusBackground: "#0B0D12",
        statusText: "#9AA3B8",
        ansiBlack: "#0F1117",
        ansiRed: "#F87171",
        ansiGreen: "#4ADE80",
        ansiYellow: "#FBBF24",
        ansiBlue: "#60A5FA",
        ansiMagenta: "#C084FC",
        ansiCyan: "#2DD4BF",
        ansiWhite: "#CBD5E1",
        ansiBrightBlack: "#475569",
        ansiBrightRed: "#FCA5A5",
        ansiBrightGreen: "#86EFAC",
        ansiBrightYellow: "#FDE68A",
        ansiBrightBlue: "#93C5FD",
        ansiBrightMagenta: "#D8B4FE",
        ansiBrightCyan: "#5EEAD4",
        ansiBrightWhite: "#F8FAFC"
    )

    /// Osaka Jade — ported from Omarchy (MIT), chrome derived from its ANSI set. Its ANSI set is ONE
    /// colour, so the syntax roles are a ramp in the theme's own key: the accent for keywords,
    /// the foreground for names, steps between them and toward the page for the rest — with all
    /// eight on the foreground, code would read as plain text.
    public static let osakaJade = ThemePalette(
        name: "Osaka Jade", appearance: "dark",
        background: "#111C18", foreground: "#C1C497", cursor: "#C1C497", selection: "#284239",
        comment: "#606851", string: "#909573", keyword: "#509475", type: "#9FB68D", number: "#7D9574",
        function: "#83AA84", variable: "#C1C497", property: "#ACB088", accent: "#509475",
        sidebarBackground: "#0D1512", sidebarText: "#9A9F7B", tabBarBackground: "#0A100E",
        tabText: "#6D735A", tabActiveText: "#CDCFAB", border: "#070C0A",
        gutterBackground: "#111C18", gutterText: "#545C48", gutterActiveText: "#909573",
        statusBackground: "#0A100E", statusText: "#959A77",
        ansiBlack: "#C1C497", ansiRed: "#C1C497", ansiGreen: "#C1C497", ansiYellow: "#C1C497",
        ansiBlue: "#C1C497", ansiMagenta: "#C1C497", ansiCyan: "#C1C497", ansiWhite: "#C1C497",
        ansiBrightBlack: "#C1C497", ansiBrightRed: "#C1C497", ansiBrightGreen: "#C1C497", ansiBrightYellow: "#C1C497",
        ansiBrightBlue: "#C1C497", ansiBrightMagenta: "#C1C497", ansiBrightCyan: "#C1C497", ansiBrightWhite: "#C1C497")

    /// Miasma — ported from Omarchy (MIT), chrome derived from its ANSI set. Its ANSI set is ONE
    /// colour, so the syntax roles are a ramp in the theme's own key: the accent for keywords,
    /// the foreground for names, steps between them and toward the page for the rest — with all
    /// eight on the foreground, code would read as plain text.
    public static let miasma = ThemePalette(
        name: "Miasma", appearance: "dark",
        background: "#222222", foreground: "#C2C2B0", cursor: "#C2C2B0", selection: "#414141",
        comment: "#6A6A62", string: "#959588", keyword: "#78824B", type: "#ACAF92", number: "#8C8F76",
        function: "#999F78", variable: "#C2C2B0", property: "#AFAF9F", accent: "#78824B",
        sidebarBackground: "#1C1C1C", sidebarText: "#9F9F91", tabBarBackground: "#181818",
        tabText: "#75756C", tabActiveText: "#CFCFC1", border: "#151515",
        gutterBackground: "#222222", gutterText: "#5F5F58", gutterActiveText: "#959588",
        statusBackground: "#181818", statusText: "#9A9A8C",
        ansiBlack: "#C2C2B0", ansiRed: "#C2C2B0", ansiGreen: "#C2C2B0", ansiYellow: "#C2C2B0",
        ansiBlue: "#C2C2B0", ansiMagenta: "#C2C2B0", ansiCyan: "#C2C2B0", ansiWhite: "#C2C2B0",
        ansiBrightBlack: "#C2C2B0", ansiBrightRed: "#C2C2B0", ansiBrightGreen: "#C2C2B0", ansiBrightYellow: "#C2C2B0",
        ansiBrightBlue: "#C2C2B0", ansiBrightMagenta: "#C2C2B0", ansiBrightCyan: "#C2C2B0", ansiBrightWhite: "#C2C2B0")

    /// Retro 82 — ported from Omarchy (MIT), chrome derived from its ANSI set. Its ANSI set is ONE
    /// colour, so the syntax roles are a ramp in the theme's own key: the accent for keywords,
    /// the foreground for names, steps between them and toward the page for the rest — with all
    /// eight on the foreground, code would read as plain text.
    public static let retro82 = ThemePalette(
        name: "Retro 82", appearance: "dark",
        background: "#05182E", foreground: "#F6DCAC", cursor: "#F6DCAC", selection: "#0B3565",
        comment: "#717067", string: "#B3A589", keyword: "#FAA968", type: "#F7CD98", number: "#C8A67F",
        function: "#F8C087", variable: "#F6DCAC", property: "#D9C49D", accent: "#FAA968",
        sidebarBackground: "#041324", sidebarText: "#C1B190", tabBarBackground: "#030F1D",
        tabText: "#827E70", tabActiveText: "#F9E8C8", border: "#030C17",
        gutterBackground: "#05182E", gutterText: "#61625E", gutterActiveText: "#B3A589",
        statusBackground: "#030F1D", statusText: "#BAAB8C",
        ansiBlack: "#F6DCAC", ansiRed: "#F6DCAC", ansiGreen: "#F6DCAC", ansiYellow: "#F6DCAC",
        ansiBlue: "#F6DCAC", ansiMagenta: "#F6DCAC", ansiCyan: "#F6DCAC", ansiWhite: "#F6DCAC",
        ansiBrightBlack: "#F6DCAC", ansiBrightRed: "#F6DCAC", ansiBrightGreen: "#F6DCAC", ansiBrightYellow: "#F6DCAC",
        ansiBrightBlue: "#F6DCAC", ansiBrightMagenta: "#F6DCAC", ansiBrightCyan: "#F6DCAC", ansiBrightWhite: "#F6DCAC")

    /// Hackerman — ported from Omarchy (MIT), chrome derived from its ANSI set. Its ANSI set is ONE
    /// colour, so the syntax roles are a ramp in the theme's own key: the accent for keywords,
    /// the foreground for names, steps between them and toward the page for the rest — with all
    /// eight on the foreground, code would read as plain text.
    public static let hackerman = ThemePalette(
        name: "Hackerman", appearance: "dark",
        background: "#0B0C16", foreground: "#DDF7FF", cursor: "#DDF7FF", selection: "#1F223F",
        comment: "#69767F", string: "#A2B5BE", keyword: "#82FB9C", type: "#C2F8E1", number: "#98CAB4",
        function: "#ABF9C9", variable: "#DDF7FF", property: "#C4DBE3", accent: "#82FB9C",
        sidebarBackground: "#07080F", sidebarText: "#AFC3CC", tabBarBackground: "#050509",
        tabText: "#78868F", tabActiveText: "#FCFEFF", border: "#020305",
        gutterBackground: "#0B0C16", gutterText: "#5B656F", gutterActiveText: "#A2B5BE",
        statusBackground: "#050509", statusText: "#A8BCC5",
        ansiBlack: "#DDF7FF", ansiRed: "#DDF7FF", ansiGreen: "#DDF7FF", ansiYellow: "#DDF7FF",
        ansiBlue: "#DDF7FF", ansiMagenta: "#DDF7FF", ansiCyan: "#DDF7FF", ansiWhite: "#DDF7FF",
        ansiBrightBlack: "#DDF7FF", ansiBrightRed: "#DDF7FF", ansiBrightGreen: "#DDF7FF", ansiBrightYellow: "#DDF7FF",
        ansiBrightBlue: "#DDF7FF", ansiBrightMagenta: "#DDF7FF", ansiBrightCyan: "#DDF7FF", ansiBrightWhite: "#DDF7FF")

    /// Matte Black — ported from Omarchy (MIT), chrome derived from its ANSI set. Its ANSI set is ONE
    /// colour, so the syntax roles are a ramp in the theme's own key: the accent for keywords,
    /// the foreground for names, steps between them and toward the page for the rest — with all
    /// eight on the foreground, code would read as plain text.
    public static let matteBlack = ThemePalette(
        name: "Matte Black", appearance: "dark",
        background: "#121212", foreground: "#BEBEBE", cursor: "#BEBEBE", selection: "#313131",
        comment: "#5F5F5F", string: "#8E8E8E", keyword: "#E68E0D", type: "#CAB089", number: "#A88E67",
        function: "#D4A45D", variable: "#BEBEBE", property: "#A9A9A9", accent: "#E68E0D",
        sidebarBackground: "#0C0C0C", sidebarText: "#989898", tabBarBackground: "#080808",
        tabText: "#6B6B6B", tabActiveText: "#CDCDCD", border: "#050505",
        gutterBackground: "#121212", gutterText: "#535353", gutterActiveText: "#8E8E8E",
        statusBackground: "#080808", statusText: "#939393",
        ansiBlack: "#BEBEBE", ansiRed: "#BEBEBE", ansiGreen: "#BEBEBE", ansiYellow: "#BEBEBE",
        ansiBlue: "#BEBEBE", ansiMagenta: "#BEBEBE", ansiCyan: "#BEBEBE", ansiWhite: "#BEBEBE",
        ansiBrightBlack: "#BEBEBE", ansiBrightRed: "#BEBEBE", ansiBrightGreen: "#BEBEBE", ansiBrightYellow: "#BEBEBE",
        ansiBrightBlue: "#BEBEBE", ansiBrightMagenta: "#BEBEBE", ansiBrightCyan: "#BEBEBE", ansiBrightWhite: "#BEBEBE")

    /// Flexoki Light — ported from Omarchy (MIT), syntax and chrome derived from its ANSI set.
    public static let flexokiLight = ThemePalette(
        name: "Flexoki Light", appearance: "light",
        background: "#FFFCF0", foreground: "#100F0F", cursor: "#100F0F", selection: "#FFF2BD",
        comment: "#7C7A74", string: "#53514E", keyword: "#205EA6", type: "#15273C", number: "#445568",
        function: "#193A62", variable: "#100F0F", property: "#2D2B2A", accent: "#205EA6",
        sidebarBackground: "#FFFEFB", sidebarText: "#454340", tabBarBackground: "#FFFFFF",
        tabText: "#83817B", tabActiveText: "#000000", border: "#FFFFFF",
        gutterBackground: "#FFFCF0", gutterText: "#A4A29A", gutterActiveText: "#53514E",
        statusBackground: "#FFFFFF", statusText: "#4C4A47",
        ansiBlack: "#100F0F", ansiRed: "#100F0F", ansiGreen: "#100F0F", ansiYellow: "#100F0F",
        ansiBlue: "#100F0F", ansiMagenta: "#100F0F", ansiCyan: "#100F0F", ansiWhite: "#100F0F",
        ansiBrightBlack: "#100F0F", ansiBrightRed: "#100F0F", ansiBrightGreen: "#100F0F", ansiBrightYellow: "#100F0F",
        ansiBrightBlue: "#100F0F", ansiBrightMagenta: "#100F0F", ansiBrightCyan: "#100F0F", ansiBrightWhite: "#100F0F")

    /// Solitude — ported from Omarchy (MIT), chrome derived from its ANSI set. Its ANSI set is ONE
    /// colour, so the syntax roles are a ramp in the theme's own key: the accent for keywords,
    /// the foreground for names, steps between them and toward the page for the rest — with all
    /// eight on the foreground, code would read as plain text.
    public static let solitude = ThemePalette(
        name: "Solitude", appearance: "dark",
        background: "#101315", foreground: "#CACCCC", cursor: "#CACCCC", selection: "#2A3238",
        comment: "#646667", string: "#969899", keyword: "#798186", type: "#B2B6B7", number: "#8D9193",
        function: "#9DA3A6", variable: "#CACCCC", property: "#B4B6B6", accent: "#798186",
        sidebarBackground: "#0B0D0F", sidebarText: "#A1A3A4", tabBarBackground: "#08090A",
        tabText: "#717374", tabActiveText: "#DADBDB", border: "#050607",
        gutterBackground: "#101315", gutterText: "#57595B", gutterActiveText: "#969899",
        statusBackground: "#08090A", statusText: "#9B9E9E",
        ansiBlack: "#CACCCC", ansiRed: "#CACCCC", ansiGreen: "#CACCCC", ansiYellow: "#CACCCC",
        ansiBlue: "#CACCCC", ansiMagenta: "#CACCCC", ansiCyan: "#CACCCC", ansiWhite: "#CACCCC",
        ansiBrightBlack: "#CACCCC", ansiBrightRed: "#CACCCC", ansiBrightGreen: "#CACCCC", ansiBrightYellow: "#CACCCC",
        ansiBrightBlue: "#CACCCC", ansiBrightMagenta: "#CACCCC", ansiBrightCyan: "#CACCCC", ansiBrightWhite: "#CACCCC")

    /// Last Horizon — ported from Omarchy (MIT), chrome derived from its ANSI set. Its ANSI set is ONE
    /// colour, so the syntax roles are a ramp in the theme's own key: the accent for keywords,
    /// the foreground for names, steps between them and toward the page for the rest — with all
    /// eight on the foreground, code would read as plain text.
    public static let lastHorizon = ThemePalette(
        name: "Last Horizon", appearance: "dark",
        background: "#0C0B0C", foreground: "#FAFCFB", cursor: "#FAFCFB", selection: "#2C282C",
        comment: "#777778", string: "#B7B9B8", keyword: "#B59790", type: "#E5DEDB", number: "#B6AFAC",
        function: "#D4C4C0", variable: "#FAFCFB", property: "#DDDFDE", accent: "#B59790",
        sidebarBackground: "#060606", sidebarText: "#C6C7C6", tabBarBackground: "#020202",
        tabText: "#888888", tabActiveText: "#FFFFFF", border: "#000000",
        gutterBackground: "#0C0B0C", gutterText: "#666767", gutterActiveText: "#B7B9B8",
        statusBackground: "#020202", statusText: "#BEC0BF",
        ansiBlack: "#FAFCFB", ansiRed: "#FAFCFB", ansiGreen: "#FAFCFB", ansiYellow: "#FAFCFB",
        ansiBlue: "#FAFCFB", ansiMagenta: "#FAFCFB", ansiCyan: "#FAFCFB", ansiWhite: "#FAFCFB",
        ansiBrightBlack: "#FAFCFB", ansiBrightRed: "#FAFCFB", ansiBrightGreen: "#FAFCFB", ansiBrightYellow: "#FAFCFB",
        ansiBrightBlue: "#FAFCFB", ansiBrightMagenta: "#FAFCFB", ansiBrightCyan: "#FAFCFB", ansiBrightWhite: "#FAFCFB")

    /// Ethereal — ported from Omarchy (MIT), syntax and chrome derived from its ANSI set.
    public static let ethereal = ThemePalette(
        name: "Ethereal", appearance: "dark",
        background: "#060B1E", foreground: "#FFCEAD", cursor: "#FFCEAD", selection: "#FFCEAD",
        comment: "#6D7DB6", string: "#92A593", keyword: "#C89DC1", type: "#A3BFD1", number: "#E9BB4F",
        function: "#7D82D9", variable: "#FFCEAD", property: "#DFEAF0", accent: "#7D82D9",
        sidebarBackground: "#040815", sidebarText: "#C8A38E", tabBarBackground: "#03050E",
        tabText: "#877068", tabActiveText: "#FFE0CC", border: "#020309",
        gutterBackground: "#060B1E", gutterText: "#655554", gutterActiveText: "#B99785",
        statusBackground: "#03050E", statusText: "#C19D89",
        ansiBlack: "#3C486D", ansiRed: "#ED5B5A", ansiGreen: "#92A593", ansiYellow: "#E9BB4F",
        ansiBlue: "#7D82D9", ansiMagenta: "#C89DC1", ansiCyan: "#A3BFD1", ansiWhite: "#F99957",
        ansiBrightBlack: "#6D7DB6", ansiBrightRed: "#FAAAA9", ansiBrightGreen: "#C4CFC4", ansiBrightYellow: "#F7DC9C",
        ansiBrightBlue: "#C2C4F0", ansiBrightMagenta: "#EAD7E7", ansiBrightCyan: "#DFEAF0", ansiBrightWhite: "#FFCEAD")

    /// Beacon — a Sidewatch original. Cool slate ground, one warm gold accent.
    ///
    /// Built for the gap: across the other palettes the accent hue is blue seventeen times
    /// and gold zero times. Gold is also the right colour for this app's job — it is what a
    /// warning light is, it survives on a dark ground without glowing, and because nothing
    /// else in the palette is warm, the accent never competes with syntax. The ground is a
    /// cool neutral rather than black so the gold reads warm by contrast, and the caret's
    /// gutter number is the accent, so your position on the page is the one gold thing moving.
    public static let beacon = ThemePalette(
        name: "Beacon", appearance: "dark",
        background: "#15181D", foreground: "#D3D7DE", cursor: "#DCBF4B", selection: "#2A3038",
        comment: "#646C77", string: "#8FBF87", keyword: "#C7A2E8", type: "#6FC2C7", number: "#E0925E",
        function: "#7FA9E8", variable: "#D3D7DE", property: "#9FD1D6", accent: "#DCBF4B",
        sidebarBackground: "#12151A", sidebarText: "#A8AEB8", tabBarBackground: "#101317",
        tabText: "#7C838E", tabActiveText: "#E4E7EC", border: "#0D1014",
        gutterBackground: "#15181D", gutterText: "#474E58", gutterActiveText: "#DCBF4B",
        statusBackground: "#101317", statusText: "#8C939E",
        ansiBlack: "#1B1F25", ansiRed: "#E06C6C", ansiGreen: "#8FBF87", ansiYellow: "#DCBF4B",
        ansiBlue: "#7FA9E8", ansiMagenta: "#C7A2E8", ansiCyan: "#6FC2C7", ansiWhite: "#C6CBD3",
        ansiBrightBlack: "#5A616B", ansiBrightRed: "#F08A8A", ansiBrightGreen: "#A8D4A0", ansiBrightYellow: "#EBD277",
        ansiBrightBlue: "#9CBFF0", ansiBrightMagenta: "#D8BCF0", ansiBrightCyan: "#8FD4D8", ansiBrightWhite: "#EDF0F4")

    /// VS Code Dark+ — Microsoft's classic default dark theme (MIT, microsoft/vscode,
    /// `extensions/theme-defaults`). Generated by running this package's own
    /// ``VSCodeThemeImporter`` over `dark_plus.json` merged onto the `dark_vs.json` it
    /// includes, so the palette is exactly what importing that file by hand would produce.
    ///
    /// `selection` and `border` are VS Code's built-in defaults (`#264F78`, and `widget.border`
    /// `#303031`) since those files leave them unset; the importer's border would equal the
    /// background and draw cards and dividers invisibly.
    public static let vscodeDarkPlus = ThemePalette(
        name: "VS Code Dark+",
        appearance: "dark",
        background: "#1E1E1E",
        foreground: "#D4D4D4",
        cursor: "#D4D4D4",
        selection: "#264F78",
        comment: "#6A9955",
        string: "#CE9178",
        keyword: "#569CD6",
        type: "#4EC9B0",
        number: "#B5CEA8",
        function: "#DCDCAA",
        variable: "#9CDCFE",
        property: "#9CDCFE",
        accent: "#569CD6",
        sidebarBackground: "#1E1E1E",
        sidebarText: "#D4D4D4",
        tabBarBackground: "#303031",
        tabText: "#A6A6A6",
        tabActiveText: "#D4D4D4",
        border: "#303031",
        gutterBackground: "#1E1E1E",
        gutterText: "#858585",
        gutterActiveText: "#D4D4D4",
        statusBackground: "#1E1E1E",
        statusText: "#D4D4D4"
    )

    /// VS Code Light+ — the light half of the same set, from `light_plus.json` merged onto
    /// `light_vs.json`, by the same route as ``vscodeDarkPlus``.
    ///
    /// `selection` is `#ADD6FF`, VS Code's built-in light default (the importer's dark fallback
    /// hides text on white); `border` is `widget.border` as above. Neither theme sets any
    /// `terminal.ansi*` colour, so the ANSI roles stay nil — faithful, not an omission.
    public static let vscodeLightPlus = ThemePalette(
        name: "VS Code Light+",
        appearance: "light",
        background: "#FFFFFF",
        foreground: "#000000",
        cursor: "#000000",
        selection: "#ADD6FF",
        comment: "#008000",
        string: "#A31515",
        keyword: "#0000FF",
        type: "#267F99",
        number: "#098658",
        function: "#795E26",
        variable: "#001080",
        property: "#001080",
        accent: "#0000FF",
        sidebarBackground: "#FFFFFF",
        sidebarText: "#000000",
        tabBarBackground: "#E8E8E8",
        tabText: "#616161",
        tabActiveText: "#000000",
        border: "#D4D4D4",
        gutterBackground: "#FFFFFF",
        gutterText: "#858585",
        gutterActiveText: "#000000",
        statusBackground: "#FFFFFF",
        statusText: "#000000"
    )

    // MARK: - Sidewatch originals — pastel pairs and a modern dark

    /// Orchid — a pastel dark. Deep plum ground (not black: the softness comes from a
    /// coloured dark), lavender-white text, rose accent, and cool pastel syntax — lavender
    /// keywords, mint strings, sky types, peach numbers. Border below the background so the
    /// seams recede.
    public static let orchid = ThemePalette(
        name: "Orchid",
        appearance: "dark",
        background: "#241D2B",
        foreground: "#EFE6F3",
        cursor: "#F2A7C3",
        selection: "#3A2E45",
        comment: "#7E6F8A",
        string: "#B6E3C6",
        keyword: "#D8B4FE",
        type: "#9AD9E8",
        number: "#FFCF9F",
        function: "#F5B8D0",
        variable: "#EFE6F3",
        property: "#C8B6FF",
        accent: "#F2A7C3",
        sidebarBackground: "#1E1824",
        sidebarText: "#B9A9C6",
        tabBarBackground: "#1E1824",
        tabText: "#7E6F8A",
        tabActiveText: "#FBF5FF",
        border: "#150F1A",
        gutterBackground: "#241D2B",
        gutterText: "#4E4358",
        gutterActiveText: "#A899B3",
        statusBackground: "#1E1824",
        statusText: "#B9A9C6",
        ansiBlack: "#241D2B", ansiRed: "#F49CB6", ansiGreen: "#A8E0BB", ansiYellow: "#F9D69B",
        ansiBlue: "#A6C8F0", ansiMagenta: "#D8B4FE", ansiCyan: "#9AD9E8", ansiWhite: "#E6DCEC",
        ansiBrightBlack: "#5C5066", ansiBrightRed: "#FFB7CB", ansiBrightGreen: "#C2F0D2", ansiBrightYellow: "#FFE6B8",
        ansiBrightBlue: "#C0D9FA", ansiBrightMagenta: "#E9CFFF", ansiBrightCyan: "#BDEAF4", ansiBrightWhite: "#FBF5FF"
    )

    /// Sakura — the warm pastel dark. Cocoa-rose ground, blossom-pink accent, and warm
    /// pastels — sakura keywords, sage strings, peach types, butter numbers, a soft violet
    /// for functions. Orchid's sibling on the warm side of the wheel.
    public static let sakura = ThemePalette(
        name: "Sakura",
        appearance: "dark",
        background: "#2A1F24",
        foreground: "#F3E8EA",
        cursor: "#FFAFC5",
        selection: "#43303A",
        comment: "#8A7480",
        string: "#B7E2B1",
        keyword: "#F7B6C9",
        type: "#FFD5A6",
        number: "#FFE29A",
        function: "#C9B8F5",
        variable: "#F3E8EA",
        property: "#FFC2A8",
        accent: "#FFAFC5",
        sidebarBackground: "#221920",
        sidebarText: "#C4AEB7",
        tabBarBackground: "#221920",
        tabText: "#8A7480",
        tabActiveText: "#FFF6F8",
        border: "#170F13",
        gutterBackground: "#2A1F24",
        gutterText: "#574651",
        gutterActiveText: "#B39CA6",
        statusBackground: "#221920",
        statusText: "#C4AEB7",
        ansiBlack: "#2A1F24", ansiRed: "#FF9DB5", ansiGreen: "#B7E2B1", ansiYellow: "#FFE29A",
        ansiBlue: "#B6CDF5", ansiMagenta: "#E2B8F0", ansiCyan: "#A8E3DD", ansiWhite: "#EBDDE1",
        ansiBrightBlack: "#6A5761", ansiBrightRed: "#FFB9CB", ansiBrightGreen: "#CDEECA", ansiBrightYellow: "#FFEDB8",
        ansiBrightBlue: "#CDDDFA", ansiBrightMagenta: "#EED0F7", ansiBrightCyan: "#C2EEE9", ansiBrightWhite: "#FFF6F8"
    )

    /// Peony — a pastel light. Blush-white ground, plum-grey text, rose accent. The pastel is
    /// in the surfaces; the token colours are the same hues taken dark enough to read on
    /// white (rose, lavender, teal, apricot), and every ANSI slot clears 4.5:1 on the page.
    public static let peony = ThemePalette(
        name: "Peony",
        appearance: "light",
        background: "#FDF6F8",
        foreground: "#4A3B47",
        cursor: "#C2467A",
        selection: "#F6DDE6",
        comment: "#9A8794",
        string: "#3E8E75",
        keyword: "#8A5BC7",
        type: "#2F7FA0",
        number: "#C97A2F",
        function: "#C2467A",
        variable: "#4A3B47",
        property: "#6B5AB8",
        accent: "#D9578A",
        sidebarBackground: "#F8EEF2",
        sidebarText: "#6E5C6A",
        tabBarBackground: "#F3E6EC",
        tabText: "#9A8794",
        tabActiveText: "#2E2230",
        border: "#EAD8E0",
        gutterBackground: "#FDF6F8",
        gutterText: "#B9A9B4",
        gutterActiveText: "#6E5C6A",
        statusBackground: "#F3E6EC",
        statusText: "#6E5C6A",
        ansiBlack: "#2E2230", ansiRed: "#C43D5A", ansiGreen: "#2E7D5B", ansiYellow: "#A8731A",
        ansiBlue: "#3A6FB0", ansiMagenta: "#8A5BC7", ansiCyan: "#2F7FA0", ansiWhite: "#8C7A88",
        ansiBrightBlack: "#5B4A57", ansiBrightRed: "#A32D48", ansiBrightGreen: "#22684B", ansiBrightYellow: "#8F5F0F",
        ansiBrightBlue: "#2B5A95", ansiBrightMagenta: "#6F44A8", ansiBrightCyan: "#226A88", ansiBrightWhite: "#4A3B47"
    )

    /// Lilac — the cool pastel light. Lavender-white ground, slate-violet text, violet accent,
    /// tokens in deep violet, periwinkle, teal and orchid. Peony's sibling on the cool side.
    public static let lilac = ThemePalette(
        name: "Lilac",
        appearance: "light",
        background: "#F7F5FC",
        foreground: "#3F3A55",
        cursor: "#6B4FD1",
        selection: "#E6E0F7",
        comment: "#948DAA",
        string: "#2F8F83",
        keyword: "#6B4FD1",
        type: "#3B6FC4",
        number: "#C26A3A",
        function: "#B4478F",
        variable: "#3F3A55",
        property: "#5F6FD1",
        accent: "#7C5CE6",
        sidebarBackground: "#F1EEF9",
        sidebarText: "#6A6288",
        tabBarBackground: "#ECE8F6",
        tabText: "#948DAA",
        tabActiveText: "#2A2540",
        border: "#DDD7EE",
        gutterBackground: "#F7F5FC",
        gutterText: "#B0A9C4",
        gutterActiveText: "#6A6288",
        statusBackground: "#ECE8F6",
        statusText: "#6A6288",
        ansiBlack: "#3F3A55", ansiRed: "#C2405E", ansiGreen: "#2F7D5F", ansiYellow: "#A0731D",
        ansiBlue: "#3B6FC4", ansiMagenta: "#6B4FD1", ansiCyan: "#2F8F83", ansiWhite: "#8B86A0",
        ansiBrightBlack: "#5F5977", ansiBrightRed: "#A33350", ansiBrightGreen: "#24684F", ansiBrightYellow: "#86600F",
        ansiBrightBlue: "#2E5AA8", ansiBrightMagenta: "#5740B3", ansiBrightCyan: "#26786D", ansiBrightWhite: "#3F3A55"
    )

    /// Volt — a modern dark. Graphite-black ground with a cold cast, one electric ice-cyan
    /// signal for the accent, cursor and types, safety-orange keywords, amber strings and a
    /// lilac-grey for functions: high contrast, few hues, nothing retro about it. Blackout is
    /// black with acid lime; this is its cold, two-tone cousin.
    public static let volt = ThemePalette(
        name: "Volt",
        appearance: "dark",
        background: "#0A0C10",
        foreground: "#EDEDED",
        cursor: "#7DF9FF",
        selection: "#14202A",
        comment: "#4E5560",
        string: "#FFD166",
        keyword: "#FF6A1A",
        type: "#7DF9FF",
        number: "#FFB65C",
        function: "#B8B8FF",
        variable: "#EDEDED",
        property: "#9AE6FF",
        accent: "#7DF9FF",
        sidebarBackground: "#07080C",
        sidebarText: "#8A929C",
        tabBarBackground: "#07080C",
        tabText: "#4E5560",
        tabActiveText: "#FFFFFF",
        border: "#04050A",
        gutterBackground: "#0A0C10",
        gutterText: "#353B45",
        gutterActiveText: "#9AA3AD",
        statusBackground: "#07080C",
        statusText: "#8A929C",
        ansiBlack: "#0A0C10", ansiRed: "#FF5C5C", ansiGreen: "#5CFF9D", ansiYellow: "#FFD166",
        ansiBlue: "#5CA8FF", ansiMagenta: "#D08CFF", ansiCyan: "#7DF9FF", ansiWhite: "#D6DADF",
        ansiBrightBlack: "#4E5560", ansiBrightRed: "#FF8A8A", ansiBrightGreen: "#8CFFBE", ansiBrightYellow: "#FFE29A",
        ansiBrightBlue: "#8CC4FF", ansiBrightMagenta: "#E2B3FF", ansiBrightCyan: "#B3FBFF", ansiBrightWhite: "#FFFFFF"
    )

    /// Every built-in theme, for populating a picker.
    public static let all: [ThemePalette] = [
        // Sidewatch originals.
        beacon, orchid, sakura, peony, lilac, volt,
        // Ported from Omarchy (MIT, github.com/basecamp/omarchy): base colours and the
        // full 16-colour ANSI set come from each theme's colors.toml verbatim; syntax and
        // chrome are derived from that ANSI set, because Omarchy defines neither.
        osakaJade, miasma, retro82, hackerman, matteBlack,
        flexokiLight, solitude, lastHorizon, ethereal,
        blackout,
        redline,
        ultraviolet,
        meridian,
        windshieldDark, windshieldLight, claude, claudeCode,
        notion, sidewatch, graphite, porcelain,
        carbon, synthwave,
        oneDark, dracula, tokyoNight, catppuccin, rosePine, kanagawa, everforestDark, nightOwl, nord, gruvbox, ayu,
        monokai, githubDark, solarizedDark, neon, vscodeDarkPlus,
        frost, catppuccinLatte, rosePineDawn, githubLight, everforestLight, solarizedLight, gruvboxLight,
        vscodeLightPlus,
    ]
}
