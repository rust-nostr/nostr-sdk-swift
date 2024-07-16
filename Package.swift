// swift-tools-version:5.5
// The swift-tools-version declares the minimum version of Swift required to build this package.

import PackageDescription

let package = Package(
    name: "nostr-sdk-swift",
    platforms: [
        .macOS(.v12),
        .iOS(.v14),
    ],
    products: [
        .library(name: "NostrSDK", targets: ["nostr_sdkFFI", "NostrSDK"]),
    ],
    dependencies: [],
    targets: [
        .binaryTarget(name: "nostr_sdkFFI", url: "https://github.com/rust-nostr/nostr-sdk-swift/releases/download/0.33.0/nostr_sdkFFI.xcframework.zip", checksum: "770d0a44a9007785fb2055e5b1285d9d957549107547974d543eb9b59fefcfe5"),
        .target(name: "NostrSDK", dependencies: ["nostr_sdkFFI"]),
    ]
)
