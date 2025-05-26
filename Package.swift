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
        .binaryTarget(name: "nostr_sdkFFI", url: "https://github.com/rust-nostr/nostr-sdk-swift/releases/download/0.42.1/nostr_sdkFFI.xcframework.zip", checksum: "b900cb3bc99aec3924a56ca820724738ea1d47bc1451c4b385934e4889e7f46c"),
        .target(name: "NostrSDK", dependencies: ["nostr_sdkFFI"]),
    ]
)
