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
        .binaryTarget(name: "nostr_sdkFFI", url: "https://github.com/rust-nostr/nostr-sdk-swift/releases/download/0.7.1/nostr_sdkFFI.xcframework.zip", checksum: "437351558b9d301e41aaaede2eabc65318b35c8dfa9334faa61d4727bd8e022e"),
        .target(name: "NostrSDK", dependencies: ["nostr_sdkFFI"]),
    ]
)
