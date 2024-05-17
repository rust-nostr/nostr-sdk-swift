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
        .binaryTarget(name: "nostr_sdkFFI", url: "https://github.com/rust-nostr/nostr-sdk-swift/releases/download/0.12.0/nostr_sdkFFI.xcframework.zip", checksum: "e8378e07f963e867209ec55a4aed09614353f5027c5ad8fee5b04be12c00602e"),
        .target(name: "NostrSDK", dependencies: ["nostr_sdkFFI"]),
    ]
)
