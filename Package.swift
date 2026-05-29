// swift-tools-version: 5.9
import PackageDescription

let package = Package(
    name: "ScoopPopp",
    platforms: [.iOS(.v14)],
    products: [
        .library(name: "ScoopPopp", targets: ["ScoopPopp"])
    ],
    targets: [
        .binaryTarget(
            name: "ScoopPopp",
            url: "https://github.com/scoop-software/scoop-popp-module-spm/releases/download/PLACEHOLDER/ScoopPopp.xcframework.zip",
            checksum: "0000000000000000000000000000000000000000000000000000000000000000"
        )
    ]
)
