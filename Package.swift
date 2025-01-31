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
        .binaryTarget(name: "nostr_sdkFFI", url: "https://github.com/rust-nostr/nostr-sdk-swift/releases/download/0.39.0/nostr_sdkFFI.xcframework.zip", checksum: "c0629f5dd5db21a802f453692c14eecfc2dd412f888d0493880dd80ef51a8eea"),
        .target(name: "NostrSDK", dependencies: ["nostr_sdkFFI"]),
    ]
)
