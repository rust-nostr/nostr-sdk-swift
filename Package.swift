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
        .binaryTarget(name: "nostr_sdkFFI", url: "https://github.com/rust-nostr/nostr-sdk-swift/releases/download/0.35.0/nostr_sdkFFI.xcframework.zip", checksum: "2bc9bb31d6fe0688d9433fbab30fdfac11331892acf96f0245664be89b229f50"),
        .target(name: "NostrSDK", dependencies: ["nostr_sdkFFI"]),
    ]
)
