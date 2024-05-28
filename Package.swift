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
        .binaryTarget(name: "nostr_sdkFFI", url: "https://github.com/rust-nostr/nostr-sdk-swift/releases/download/0.13.0-alpha.2/nostr_sdkFFI.xcframework.zip", checksum: "9b7295c510618ef797bf6851a27a07a4733899479acb08909b24df1c3b551713"),
        .target(name: "NostrSDK", dependencies: ["nostr_sdkFFI"]),
    ]
)
