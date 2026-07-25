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
        .binaryTarget(name: "nostr_sdkFFI", url: "https://github.com/nostrdevkit/nostr-sdk-swift/releases/download/0.44.5/nostr_sdkFFI.xcframework.zip", checksum: "008cb87d9077a80f8d66fe200cc07e46babf31a70ac7034137410a56501d7565"),
        .target(name: "NostrSDK", dependencies: ["nostr_sdkFFI"]),
    ]
)
