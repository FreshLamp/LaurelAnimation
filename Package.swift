// swift-tools-version: 5.9

import PackageDescription

let package = Package(
    name: "LaurelAnimation",
    platforms: [
        .iOS(.v16),
        .macOS(.v13)
    ],
    products: [
        .library(
            name: "LaurelAnimation",
            targets: ["LaurelAnimation"]
        ),
    ],
    targets: [
        .target(
            name: "LaurelAnimation"
        ),
    ]
)
