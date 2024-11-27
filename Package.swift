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
        .binaryTarget(name: "nostr_sdkFFI", url: "https://github.com/rust-nostr/nostr-sdk-swift/releases/download/0.37.0/nostr_sdkFFI.xcframework.zip", checksum: "99d7da4ad930c92488fd802b02cfda6b17ad9e2dcfa5a8524eff75f2145a50e4"),
        .target(name: "NostrSDK", dependencies: ["nostr_sdkFFI"]),
    ]
)
