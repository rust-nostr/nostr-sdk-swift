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
        .binaryTarget(name: "nostr_sdkFFI", url: "https://github.com/rust-nostr/nostr-sdk-swift/releases/download/0.11.0/nostr_sdkFFI.xcframework.zip", checksum: "fb24a4fbc4c7db8e513189fb5b3e13bc6becbdf7a25793b5a0b768437f6671a2"),
        .target(name: "NostrSDK", dependencies: ["nostr_sdkFFI"]),
    ]
)
