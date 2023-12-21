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
        .binaryTarget(name: "nostr_sdkFFI", url: "https://github.com/rust-nostr/nostr-sdk-swift/releases/download/0.6.0/nostr_sdkFFI.xcframework.zip", checksum: "1880d85acbf0eb307b758cf9a474194004999ce83ec650d5f70040b7bb071751"),
        .target(name: "NostrSDK", dependencies: ["nostr_sdkFFI"]),
    ]
)
