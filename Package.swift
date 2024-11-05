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
        .binaryTarget(name: "nostr_sdkFFI", url: "https://github.com/rust-nostr/nostr-sdk-swift/releases/download/0.36.0/nostr_sdkFFI.xcframework.zip", checksum: "3734d0bc20b2da5686b8bdcae25478b461c316b6bc28ae9d762b655fc7849f5f"),
        .target(name: "NostrSDK", dependencies: ["nostr_sdkFFI"]),
    ]
)
