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
        .binaryTarget(name: "nostr_sdkFFI", url: "https://github.com/rust-nostr/nostr-sdk-swift/releases/download/0.0.5/nostr_sdkFFI.xcframework.zip", checksum: "e1878ff756acc31d461af228179dbe0eb3b8601f35d628f82a2e2d027e0c9146"),
        .target(name: "NostrSDK", dependencies: ["nostr_sdkFFI"]),
    ]
)
