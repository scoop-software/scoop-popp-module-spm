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
            url: "https://github.com/scoop-software/scoop-popp-module-spm/releases/download/v0.19.0/ScoopPopp.xcframework.zip",
            checksum: "dc44b01fbf1f90f1bb5337d848d5baf208538b1bf30827854f99487554f8d8b9"
        )
    ]
)
