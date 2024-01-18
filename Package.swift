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
        .binaryTarget(name: "nostr_sdkFFI", url: "https://github.com/rust-nostr/nostr-sdk-swift/releases/download/0.8.0/nostr_sdkFFI.xcframework.zip", checksum: "760c2c253c5820dbe2c49356641e8d4aa7850cf721cacb00fc947492ffc25abf"),
        .target(name: "NostrSDK", dependencies: ["nostr_sdkFFI"]),
    ]
)
