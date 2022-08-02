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
            url: "https://github.com/SafeHello/safehello-sdk-ios/releases/download/1.0.0/SafeHelloSDK.zip",
            checksum: "ef61e4053f9b8867def36b122d4af336ea8a47db58cdd136dbc7295004f1eb12"
        )
    ]
)
