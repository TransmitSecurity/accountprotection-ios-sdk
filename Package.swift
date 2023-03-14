// swift-tools-version: 5.5
// The swift-tools-version declares the minimum version of Swift required to build this package.

import PackageDescription

let package = Package(
    name: "AccountProtection",
    platforms: [
        .iOS(.v13)
    ],
    products: [
        .library(
            name: "AccountProtection",
            targets: ["AccountProtection", "AccountProtection-Dependencies"])
    ],
    dependencies: [
        .package(url: "https://github.com/TransmitSecurity/core-ios-sdk.git", revision: "1.0.7")
    ],
    targets: [
        .binaryTarget(
            name: "AccountProtection",
            path: "Sources/AccountProtection.xcframework"
        ),
        .target(name: "AccountProtection-Dependencies",
                dependencies: [
                    .product(name: "TSCoreSDK",
                             package: "core-ios-sdk")
                ]),
    ]
)
