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
        .binaryTarget(name: "nostr_sdkFFI", url: "https://github.com/rust-nostr/nostr-sdk-swift/releases/download/0.32.0/nostr_sdkFFI.xcframework.zip", checksum: "15da569c03b6b6bee25d46ebaddccf820060c22379e710cde63447b9b0eb2e26"),
        .target(name: "NostrSDK", dependencies: ["nostr_sdkFFI"]),
    ]
)
