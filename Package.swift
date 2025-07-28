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
        .binaryTarget(name: "nostr_sdkFFI", url: "https://github.com/rust-nostr/nostr-sdk-swift/releases/download/0.43.0/nostr_sdkFFI.xcframework.zip", checksum: "1f7db957cdb2116ffd77814bd14f33cca612f898b14996c922cae46739db7daf"),
        .target(name: "NostrSDK", dependencies: ["nostr_sdkFFI"]),
    ]
)
