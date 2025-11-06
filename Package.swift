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
        .binaryTarget(name: "nostr_sdkFFI", url: "https://github.com/rust-nostr/nostr-sdk-swift/releases/download/0.44.0/nostr_sdkFFI.xcframework.zip", checksum: "fe25809c26f67fe3673da5a75f7ed985ce9056ea7540a06f340cf7da01c6aaea"),
        .target(name: "NostrSDK", dependencies: ["nostr_sdkFFI"]),
    ]
)
