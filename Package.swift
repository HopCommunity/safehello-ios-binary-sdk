// swift-tools-version: 5.6
// The swift-tools-version declares the minimum version of Swift required to build this package.

import PackageDescription

let package = Package(
    name: "safehello-ios-binary-sdk",
    products: [
        .library(
            name: "SafeHelloSDK",
            targets: ["SafeHelloSDK"]),
    ],
    dependencies: [],
    targets: [
        .binaryTarget(
            name: "SafeHelloSDK",
            url: "https://github.com/SafeHello/safehello-sdk-ios/releases/download/1.2.0/SafeHelloSDK.zip",
            checksum: "a550e2e686da5241122f7871df9b8a707764fe901a651d84f8cea3c2a279aafd"
        )
    ]
)
