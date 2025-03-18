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
        .binaryTarget(name: "nostr_sdkFFI", url: "https://github.com/rust-nostr/nostr-sdk-swift/releases/download/0.40.0/nostr_sdkFFI.xcframework.zip", checksum: "85148713c481298a2ce8ca06d67bebbcd9b2d013115d14b32ef84be578204a47"),
        .target(name: "NostrSDK", dependencies: ["nostr_sdkFFI"]),
    ]
)
