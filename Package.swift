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
        .binaryTarget(name: "nostr_sdkFFI", url: "https://github.com/rust-nostr/nostr-sdk-swift/releases/download/0.10.0/nostr_sdkFFI.xcframework.zip", checksum: "c825d92fbc101a6ca9fbfd1aa541162b2fe21cf7aa4a3ecddc252677ac92e55c"),
        .target(name: "NostrSDK", dependencies: ["nostr_sdkFFI"]),
    ]
)
