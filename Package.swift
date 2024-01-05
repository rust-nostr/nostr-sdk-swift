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
        .binaryTarget(name: "nostr_sdkFFI", url: "https://github.com/rust-nostr/nostr-sdk-swift/releases/download/0.7.0/nostr_sdkFFI.xcframework.zip", checksum: "215488cf8f18dcfa17f15e77fffb9e921e72afab896e84c4cb1f58a26f8dea5e"),
        .target(name: "NostrSDK", dependencies: ["nostr_sdkFFI"]),
    ]
)
