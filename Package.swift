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
        .binaryTarget(name: "nostr_sdkFFI", url: "https://github.com/rust-nostr/nostr-sdk-swift/releases/download/0.11.1/nostr_sdkFFI.xcframework.zip", checksum: "ed416ac8cbf894dfbe833f9f0fb1f5c06e30b719e8bf9f8a8e3aae7a77ea8c59"),
        .target(name: "NostrSDK", dependencies: ["nostr_sdkFFI"]),
    ]
)
