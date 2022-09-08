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
            url: "https://github.com/SafeHello/safehello-sdk-ios/releases/download/1.1.0/SafeHelloSDK.zip",
            checksum: "d31f3b9ac1d6eb8da65b2e751d3f148693dfd8c12533faba86cea71945c79a99"
        )
    ]
)
