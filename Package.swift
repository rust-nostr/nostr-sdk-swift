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
        .binaryTarget(name: "nostr_sdkFFI", url: "https://github.com/rust-nostr/nostr-sdk-swift/releases/download/0.38.0/nostr_sdkFFI.xcframework.zip", checksum: "a23b9f4138c1978022824afd20fa1abfd15761e5018539ace87c8e8a87843a2c"),
        .target(name: "NostrSDK", dependencies: ["nostr_sdkFFI"]),
    ]
)
