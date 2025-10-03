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
        .binaryTarget(name: "nostr_sdkFFI", url: "https://github.com/rust-nostr/nostr-sdk-swift/releases/download/0.43.1/nostr_sdkFFI.xcframework.zip", checksum: "989dbaa89dd3bba051e97c2e5de36cbd4865e6f8906e287dc4cb76aa22086805"),
        .target(name: "NostrSDK", dependencies: ["nostr_sdkFFI"]),
    ]
)
