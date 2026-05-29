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
            url: "https://github.com/scoop-software/scoop-popp-module-spm/releases/download/v0.18.0/ScoopPopp.xcframework.zip",
            checksum: "bb0cce9fb97b7307f97fa650b50db9cf3ebca0abcede504890459278ee2fc786"
        )
    ]
)
