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
        .binaryTarget(name: "nostr_sdkFFI", url: "https://github.com/rust-nostr/nostr-sdk-swift/releases/download/0.41.0/nostr_sdkFFI.xcframework.zip", checksum: "62fccb7b9801a2e3041baf4a3c4ba4945095d2ae623470694c23841079d686e4"),
        .target(name: "NostrSDK", dependencies: ["nostr_sdkFFI"]),
    ]
)
