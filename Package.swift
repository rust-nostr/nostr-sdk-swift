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
    dependencies: [
    ],
    targets: [
        .binaryTarget(name: "nostr_sdkFFI", url: "https://github.com/rust-nostr/nostr-sdk-swift/releases/download/0.0.1/nostr_sdkFFI.xcframework.zip", checksum: "964ffb31c9c8ddb4c7ddd954d741225f9c712db2f5fb6955de9fd8a72bff4cff"),
        .target(name: "NostrSDK", dependencies: ["nostr_sdkFFI"]),
    ]
)
