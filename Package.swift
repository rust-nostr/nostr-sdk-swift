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
        .binaryTarget(name: "nostr_sdkFFI", url: "https://github.com/rust-nostr/nostr-sdk-swift/releases/download/0.40.1/nostr_sdkFFI.xcframework.zip", checksum: "b5b7203d4c44e7b1ac38a98ea3868744d7d77f66c8ae7334a7c9d2429154832b"),
        .target(name: "NostrSDK", dependencies: ["nostr_sdkFFI"]),
    ]
)
