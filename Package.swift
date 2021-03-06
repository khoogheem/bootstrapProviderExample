// swift-tools-version:4.0

import PackageDescription

let package = Package(
    name: "BootstrapProviderExample",
    products: [
        .library(name: "App", targets: ["App"]),
        .executable(name: "Run", targets: ["Run"])
    ],
    dependencies: [
        .package(url: "https://github.com/vapor/vapor.git", .upToNextMajor(from: "2.2.0")),
        .package(url: "https://github.com/vapor/leaf-provider.git", .upToNextMajor(from: "1.1.0")),
        .package(url: "https://github.com/khoogheem/BootstrapProvider", from: "0.5.0"),
        ],
    targets: [
        .target(name: "App", dependencies: ["Vapor", "LeafProvider", "BootstrapProvider"],
                exclude: [
                    "Config",
                    "Database",
                    "Public",
                    "Resources"
            ]),
        .target(name: "Run", dependencies: ["App"]),
        .testTarget(name: "AppTests", dependencies: ["App", "Testing"])
    ]
)

