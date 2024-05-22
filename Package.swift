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
        .binaryTarget(name: "nostr_sdkFFI", url: "https://github.com/rust-nostr/nostr-sdk-swift/releases/download/0.12.1/nostr_sdkFFI.xcframework.zip", checksum: "afa392c4aeec2f2340cc230e01a93e32cbb2b6835415beac4d7571516cb0cc3b"),
        .target(name: "NostrSDK", dependencies: ["nostr_sdkFFI"]),
    ]
)
