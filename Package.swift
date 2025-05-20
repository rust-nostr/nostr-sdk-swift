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
        .binaryTarget(name: "nostr_sdkFFI", url: "https://github.com/rust-nostr/nostr-sdk-swift/releases/download/0.42.0/nostr_sdkFFI.xcframework.zip", checksum: "2491db10638646cce32ff9eb3f8d68b4144e913818f0ab389057c5b597e1f9b8"),
        .target(name: "NostrSDK", dependencies: ["nostr_sdkFFI"]),
    ]
)
