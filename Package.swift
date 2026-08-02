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
        .binaryTarget(name: "nostr_sdkFFI", url: "https://github.com/nostrdevkit/nostr-sdk-swift/releases/download/0.44.8/nostr_sdkFFI.xcframework.zip", checksum: "ea4cd90b439076e2c9799de37feaf0a829602ec00815b23982bf570cb3ced97a"),
        .target(name: "NostrSDK", dependencies: ["nostr_sdkFFI"]),
    ]
)
