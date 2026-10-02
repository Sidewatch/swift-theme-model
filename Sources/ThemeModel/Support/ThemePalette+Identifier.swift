//
//  ThemePalette+Identifier.swift
//  ThemeModel
//
//  ThemePalette: the colour of plain names, explicit or derived.
//
//  Created by David Sherlock on 10/2/26.
//  Copyright © 2026 ArrayPress Limited. MIT licence.
//

import Foundation

extension ThemePalette {
    /// The colour plain names are painted in. The palette's own ``identifier`` when it sets one; else its
    /// ``variable`` when that differs from the ``foreground`` (a scheme like One Dark or VS Code Dark+ that
    /// colours variables paints names that colour in its home editor); else the foreground a third of the
    /// way toward ``property`` — a quiet tint of the scheme's own member colour, so names read as code
    /// without competing with keywords, strings or calls.
    public var resolvedIdentifier: String {
        if let identifier { return identifier }
        if variable.caseInsensitiveCompare(foreground) != .orderedSame { return variable }
        return Self.blendHex(foreground, toward: property, fraction: 1.0 / 3.0) ?? foreground
    }

    /// `from` moved `fraction` of the way toward `to`, both `#RRGGBB`, as `#RRGGBB`; nil when either is
    /// not a six-digit hex colour.
    static func blendHex(_ from: String, toward to: String, fraction: Double) -> String? {
        func channels(_ hex: String) -> [Double]? {
            let digits = hex.hasPrefix("#") ? String(hex.dropFirst()) : hex
            guard digits.count == 6, let value = UInt32(digits, radix: 16) else { return nil }
            return [Double((value >> 16) & 0xFF), Double((value >> 8) & 0xFF), Double(value & 0xFF)]
        }
        guard let a = channels(from), let b = channels(to) else { return nil }
        let mixed = zip(a, b).map { Int(($0 + ($1 - $0) * fraction).rounded()) }
        return String(format: "#%02X%02X%02X", mixed[0], mixed[1], mixed[2])
    }
}
