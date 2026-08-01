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
        .binaryTarget(name: "nostr_sdkFFI", url: "https://github.com/nostrdevkit/nostr-sdk-swift/releases/download/0.44.7/nostr_sdkFFI.xcframework.zip", checksum: "4b120e28eedb858f4a3a0c2a42af702235ba67ddc6d12a06c88dce904b66df82"),
        .target(name: "NostrSDK", dependencies: ["nostr_sdkFFI"]),
    ]
)
