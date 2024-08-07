// swift-tools-version: 5.10
// The swift-tools-version declares the minimum version of Swift required to build this package.

import PackageDescription

let package = Package(
    name: "JSegmentedControl",
    products: [
        // Products define the executables and libraries a package produces, making them visible to other packages.
        .library(
            name: "JSegmentedControl",
            targets: ["JSegmentedControl"]),
    ],
    dependencies: [
        .package(url: "https://github.com/Junha-SDK/JUtile", from: "0.0.2"),
        .package(url: "https://github.com/devxoul/Then", from: "3.0.0"),
        .package(url: "https://github.com/SnapKit/SnapKit.git", from: "5.0.1")
    ],
    targets: [
        .target(
            name: "JSegmentedControl",
            dependencies: [
                "JUtile",
                "Then",
                "SnapKit"
            ],
            path: "Sources/JSegmentedControl"
        ),
        .testTarget(
            name: "JSegmentedControlTests",
            dependencies: ["JSegmentedControl"]),
    ]
)
