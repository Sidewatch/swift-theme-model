// swift-tools-version: 6.2
import PackageDescription

let package = Package(
    name: "ThemeModel",
    platforms: [.macOS(.v14)],
    products: [
        .library(name: "ThemeModel", targets: ["ThemeModel"]),
    ],
    targets: [
        .target(name: "ThemeModel", path: "Sources",
                swiftSettings: [.swiftLanguageMode(.v6)]),
        .testTarget(
            name: "ThemeModelTests",
            dependencies: ["ThemeModel"],
            path: "Tests",
            resources: [.copy("ThemeModelTests/Fixtures")]
        ),
    ]
)
