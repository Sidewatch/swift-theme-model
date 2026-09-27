//
//  VSCodeTokenRules.swift
//  ThemeModel
//
//  A VS Code theme's `tokenColors`, pre-extracted once: each rule's scopes and its foreground.
//
//  Created by David Sherlock on 9/5/26.
//  Copyright © 2026 ArrayPress Limited. MIT licence.
//

import Foundation

/// A VS Code theme's `tokenColors`, pre-extracted once: each rule's scopes and its foreground.
/// Rules without a usable foreground are ignored.
struct VSCodeTokenRules {
    private let rules: [(scopes: [String], fg: String)]

    /// Extracts the rules from the theme JSON's `tokenColors` array; `scope` may be a
    /// comma-separated string or an array.
    init(tokenColors: [[String: Any]]) {
        rules = tokenColors.compactMap { t in
            let scopes: [String]
            if let s = t["scope"] as? String {
                scopes = s.components(separatedBy: ",").map { $0.trimmingCharacters(in: .whitespaces) }
            } else if let arr = t["scope"] as? [String] {
                scopes = arr
            } else { return nil }
            guard let settings = t["settings"] as? [String: Any],
                  let fg = VSCodeThemeImporter.hex6(settings["foreground"] as? String) else { return nil }
            return (scopes, fg)
        }
    }

    /// The foreground for the first needle any rule matches. Needles are ordered specific →
    /// generic; within a needle an exact scope beats a prefix match, and the LAST matching
    /// rule wins (approximating VS Code's later-rule-wins).
    func color(for needles: [String], fallback: String) -> String {
        for needle in needles {
            if let fg = rules.last(where: { $0.scopes.contains(needle) })?.fg { return fg }
            if let fg = rules.last(where: { $0.scopes.contains { $0.hasPrefix(needle + ".") } })?.fg { return fg }
        }
        return fallback
    }
}
