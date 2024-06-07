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
        .binaryTarget(name: "nostr_sdkFFI", url: "https://github.com/rust-nostr/nostr-sdk-swift/releases/download/0.32.1/nostr_sdkFFI.xcframework.zip", checksum: "666800bd59dd1a61991a3bd636bbb4b9f336206e6ee595d633b43918aa8167bd"),
        .target(name: "NostrSDK", dependencies: ["nostr_sdkFFI"]),
    ]
)
