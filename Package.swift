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
            url: "https://github.com/SafeHello/safehello-ios-binary-sdk/releases/download/1.0.0/SafeHelloSDK.zip",
            checksum: "7d97d641b211e2bd9e579271c8c483d80eca0d7130303439f76ad997c5e1b1f8"
        )
    ]
)
