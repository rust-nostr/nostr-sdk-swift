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
        .binaryTarget(name: "nostr_sdkFFI", url: "https://github.com/rust-nostr/nostr-sdk-swift/releases/download/0.0.2/nostr_sdkFFI.xcframework.zip", checksum: "e1541f6f5cd7d6d6eb954ade9712206f104783876d2e9bd442335e02d11078b8"),
        .target(name: "NostrSDK", dependencies: ["nostr_sdkFFI"]),
    ]
)
