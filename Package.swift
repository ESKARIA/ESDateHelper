// swift-tools-version:5.2
// The swift-tools-version declares the minimum version of Swift required to build this package.

import PackageDescription

let package = Package(
    name: "ESDateHelper",
    platforms: [.iOS(.v11), .macOS(.v10_12)],
    products: [
        .library(name: "ESDateHelper", targets: ["ESDateHelper"]),
    ],
    dependencies: [],
    targets: [
        .target(
            name: "ESDateHelper",
            dependencies: []),
        .testTarget(
            name: "ESDateHelperTests",
            dependencies: ["ESDateHelper"]),
    ]
)
