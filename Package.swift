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
        .binaryTarget(name: "nostr_sdkFFI", url: "https://github.com/rust-nostr/nostr-sdk-swift/releases/download/0.13.0-alpha.1/nostr_sdkFFI.xcframework.zip", checksum: "a82e11bdda990768febb1849388457ec046b9ee98a56025d73d846fa0ebc2850"),
        .target(name: "NostrSDK", dependencies: ["nostr_sdkFFI"]),
    ]
)
