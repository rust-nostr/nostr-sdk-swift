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
        .binaryTarget(name: "nostr_sdkFFI", url: "https://github.com/rust-nostr/nostr-sdk-swift/releases/download/0.32.2/nostr_sdkFFI.xcframework.zip", checksum: "a2013d2483fedb59f4ae777f540d0cfdbbbf8bdb4b1208bdb7b658c1b5bf491c"),
        .target(name: "NostrSDK", dependencies: ["nostr_sdkFFI"]),
    ]
)
