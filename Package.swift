// swift-tools-version: 5.7
// The swift-tools-version declares the minimum version of Swift required to build this package.

import PackageDescription

let package = Package(
    name: "PackageB", // 1.0.0
    products: [
        .library(
            name: "PackageB",
            targets: ["PackageB"]),
    ],
    dependencies: [
        .package(url: "https://github.com/ErusaevAP/repoA", "1.0.0"..."1.1.0"),
    ],
    targets: [
        .target(
            name: "PackageB",
            dependencies: []),
        .testTarget(
            name: "PackageBTests",
            dependencies: ["PackageB"]),
    ]
)
