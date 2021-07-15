// swift-tools-version:5.2
import PackageDescription

let package = Package(
    name: "EZSelection",
    platforms: [
        .macOS(.v10_15), .iOS(.v13)
    ],
    products: [
        // Products define the executables and libraries produced by a package, and make them visible to other packages.
        .library(
            name: "EZSelection",
            targets: ["EZSelection"])
    ],
    dependencies: [
        
    ],
    targets: [
        .target(
            name: "EZSelection",
            dependencies: [
            ]
        ),
        .testTarget(name: "EZSelectionTests", dependencies: [
            .target(name: "EZSelection"),
        ])
    ]
)
