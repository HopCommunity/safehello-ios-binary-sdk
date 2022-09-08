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
            url: "https://github.com/SafeHello/safehello-sdk-ios/releases/download/1.1.1/SafeHelloSDK.zip",
            checksum: "d95d9340802d3107e6a2c889e993e61b19b891e0aa602d939cc9419cd9ddb403"
        )
    ]
)
