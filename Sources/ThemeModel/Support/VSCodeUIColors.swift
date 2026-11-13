//
//  VSCodeUIColors.swift
//  ThemeModel
//
//  A VS Code theme's `colors` map with the two lookups the importer needs.
//
//  Created by David Sherlock on 9/5/26.
//  Copyright © 2026 ArrayPress Limited. MIT licence.
//

import Foundation

/// A VS Code theme's `colors` map with the two lookups the importer needs.
struct VSCodeUIColors {
    private let colors: [String: Any]
    /// The editor background, which a colour written with an alpha is laid over.
    private let background: String?
    /// Wraps the theme JSON's `colors` object.
    init(_ colors: [String: Any], background: String? = nil) {
        self.colors = colors
        self.background = background
    }

    /// `#RRGGBB` for `key`, else `fallback`.
    func hex(_ key: String, _ fallback: String) -> String {
        VSCodeThemeImporter.hex6(colors[key] as? String, over: background) ?? fallback
    }

    /// `terminal.ansi<Name>` as an optional: a theme that omits it resolves to the curated set
    /// for its appearance via `ThemePalette.resolvedANSI`, rather than being pinned here.
    func ansi(_ name: String) -> String? { VSCodeThemeImporter.hex6(colors["terminal.ansi" + name] as? String, over: background) }
}
