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
    dependencies: [
        // Declare Alamofire as a dependency
        .package(url: "https://github.com/Alamofire/Alamofire.git", .upToNextMinor(from: "5.9.1")),
        .package(url: "https://github.com/krzyzanowskim/CryptoSwift.git", .upToNextMinor(from: "1.8.3")),
    ],
    targets: [
        // Targets are the basic building blocks of a package, defining a module or a test suite.
        // Targets can depend on other targets in this package and products from dependencies.
        .target(
            name: "ZestKit",
            dependencies: [
                "ZestKitViews",
                "ZestKitNetwork",
                .product(name: "Alamofire", package: "Alamofire"),
                .product(name: "CryptoSwift", package: "CryptoSwift"),
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
