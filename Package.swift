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
        .binaryTarget(name: "nostr_sdkFFI", url: "https://github.com/rust-nostr/nostr-sdk-swift/releases/download/0.0.4/nostr_sdkFFI.xcframework.zip", checksum: "ee7d67dd2eb65d91e4d1832ac06e5e3adb97097ec82fb4d3050d87e48231d739"),
        .target(name: "NostrSDK", dependencies: ["nostr_sdkFFI"]),
    ]
)
