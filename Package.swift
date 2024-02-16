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
        .binaryTarget(name: "nostr_sdkFFI", url: "https://github.com/rust-nostr/nostr-sdk-swift/releases/download/0.9.0/nostr_sdkFFI.xcframework.zip", checksum: "6d71eb871f69c0f7fb91d381d4883f55e242b85a3a64d195722c114aa44d6c05"),
        .target(name: "NostrSDK", dependencies: ["nostr_sdkFFI"]),
    ]
)
