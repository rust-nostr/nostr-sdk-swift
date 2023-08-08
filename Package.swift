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
    dependencies: [
    ],
    targets: [
        .binaryTarget(name: "nostr_sdkFFI", url: "https://github.com/rust-nostr/nostr-sdk-swift/releases/download/0.0.3/nostr_sdkFFI.xcframework.zip", checksum: "efc532041cf2457bfd862f7276d957fdc486a7e6385fed966aa92728ab7e700a"),
        .target(name: "NostrSDK", dependencies: ["nostr_sdkFFI"]),
    ]
)
