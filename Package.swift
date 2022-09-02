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
            checksum: "f22d94f9b424b849d9f3b3f4ecbaccfbbc069b1cd2e3c3d4f8d62bd6dfadad0e"
        )
    ]
)
