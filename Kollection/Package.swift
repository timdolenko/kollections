// swift-tools-version:5.5
// The swift-tools-version declares the minimum version of Swift required to build this package.

import PackageDescription

let package = Package(
    name: "Kollection",
    products: [
        .library(
            name: "Kollection",
            targets: ["Kollection"]),
    ],
    dependencies: [
    ],
    targets: [
        .target(
            name: "Kollection",
            dependencies: []),
        .testTarget(
            name: "KollectionTests",
            dependencies: ["Kollection"]),
    ]
)
