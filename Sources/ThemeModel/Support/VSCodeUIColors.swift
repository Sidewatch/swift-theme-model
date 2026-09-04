import Foundation

/// A VS Code theme's `colors` map with the two lookups the importer needs.
struct VSCodeUIColors {
    private let colors: [String: Any]
    init(_ colors: [String: Any]) { self.colors = colors }

    /// `#RRGGBB` for `key`, else `fallback`.
    func hex(_ key: String, _ fallback: String) -> String { VSCodeThemeImporter.hex6(colors[key] as? String) ?? fallback }

    /// `terminal.ansi<Name>` as an optional: a theme that omits it resolves to the curated set
    /// for its appearance via `ThemePalette.resolvedANSI`, rather than being pinned here.
    func ansi(_ name: String) -> String? { VSCodeThemeImporter.hex6(colors["terminal.ansi" + name] as? String) }
}
