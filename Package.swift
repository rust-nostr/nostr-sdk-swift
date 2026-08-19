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
        .binaryTarget(name: "nostr_sdkFFI", url: "https://github.com/nostrdevkit/nostr-sdk-swift/releases/download/0.45.1/nostr_sdkFFI.xcframework.zip", checksum: "41406f0c389b0c5b0703f5142ee7ce69315a40c7bafbdbe21c133f07ea8f6bf8"),
        .target(name: "NostrSDK", dependencies: ["nostr_sdkFFI"]),
        .executableTarget(name: "NostrSDKExample", dependencies: ["NostrSDK"], path: "Examples"),
    ]
)
