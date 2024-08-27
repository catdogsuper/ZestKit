// swift-tools-version: 5.10
// The swift-tools-version declares the minimum version of Swift required to build this package.

import PackageDescription

let package = Package(
    name: "ZestKit",
    platforms: [
        .iOS(.v14),
        .macOS(.v12),
    ],
    products: [
        // Products define the executables and libraries a package produces, making them visible to other packages.
        .library(
            name: "ZestKit",
            targets: ["ZestKit"]),
        .library(
            name: "ZestKitViews",
            targets: ["ZestKitViews"]),
        .library(
            name: "ZestKitNetwork",
            targets: ["ZestKitNetwork"]),
    ],
    targets: [
        // Targets are the basic building blocks of a package, defining a module or a test suite.
        // Targets can depend on other targets in this package and products from dependencies.
        .target(
            name: "ZestKit",
            dependencies: [
                "ZestKitViews",
                "ZestKitNetwork",
            ]),
        .binaryTarget(
            name: "ZestKitViews",
            path: "BinaryTargets/ZestKitViews.xcframework"),
        .binaryTarget(
            name: "ZestKitNetwork",
            path: "BinaryTargets/ZestKitNetwork.xcframework"),
        .testTarget(
            name: "ZestKitTests",
            dependencies: ["ZestKit"]),
    ]
)
