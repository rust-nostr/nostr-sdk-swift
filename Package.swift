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
        .binaryTarget(name: "nostr_sdkFFI", url: "https://github.com/rust-nostr/nostr-sdk-swift/releases/download/0.40.0-beta.1/nostr_sdkFFI.xcframework.zip", checksum: "286bed3d3f6770901fa55ecb3e63fe82cfd8996fe424540ff3f271b2deefc9bd"),
        .target(name: "NostrSDK", dependencies: ["nostr_sdkFFI"]),
    ]
)
