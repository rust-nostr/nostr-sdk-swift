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
        .binaryTarget(name: "nostr_sdkFFI", url: "https://github.com/nostrdevkit/nostr-sdk-swift/releases/download/0.45.0-alpha.7/nostr_sdkFFI.xcframework.zip", checksum: "d6d113768f8da0db90dd756e2fc30397f7dc23b650d46dc40d896fad798306d1"),
        .target(name: "NostrSDK", dependencies: ["nostr_sdkFFI"]),
    ]
)
