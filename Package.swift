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
        .binaryTarget(name: "nostr_sdkFFI", url: "https://github.com/nostrdevkit/nostr-sdk-swift/releases/download/0.44.6/nostr_sdkFFI.xcframework.zip", checksum: "3f1e0cb48be70677baf236c4c34041e77d84654e9f39f7ca6bbb215ceb3d9ef1"),
        .target(name: "NostrSDK", dependencies: ["nostr_sdkFFI"]),
    ]
)
