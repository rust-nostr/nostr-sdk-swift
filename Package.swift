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
        .binaryTarget(name: "nostr_sdkFFI", url: "https://github.com/rust-nostr/nostr-sdk-swift/releases/download/0.9.1/nostr_sdkFFI.xcframework.zip", checksum: "96ae967ff6024d2faec312600c910e8327994bf34e67cef45c8a3cf78715db1c"),
        .target(name: "NostrSDK", dependencies: ["nostr_sdkFFI"]),
    ]
)
