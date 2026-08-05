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
        .binaryTarget(name: "nostr_sdkFFI", url: "https://github.com/nostrdevkit/nostr-sdk-swift/releases/download/0.45.0/nostr_sdkFFI.xcframework.zip", checksum: "738f6c9eaf55bf8b900ade29cc301d4894d1c8f42cd30583bae8255f47adad5b"),
        .target(name: "NostrSDK", dependencies: ["nostr_sdkFFI"]),
    ]
)
