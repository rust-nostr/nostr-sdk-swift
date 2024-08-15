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
        .binaryTarget(name: "nostr_sdkFFI", url: "https://github.com/rust-nostr/nostr-sdk-swift/releases/download/0.34.0/nostr_sdkFFI.xcframework.zip", checksum: "b86c22250f04f09edc7a1939835b75886a95d2a20cbf1b4e2dce7ac0f720cf1f"),
        .target(name: "NostrSDK", dependencies: ["nostr_sdkFFI"]),
    ]
)
