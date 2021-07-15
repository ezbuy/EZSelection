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
            ],
            swiftSettings: [
                // Enable better optimizations when building in Release configuration. Despite the use of
                // the `.unsafeFlags` construct required by SwiftPM, this flag is recommended for Release
                // builds. See <https://github.com/swift-server/guides#building-for-production> for details.
                .unsafeFlags(["-cross-module-optimization"], .when(configuration: .release))
            ]
        ),
        .testTarget(name: "EZSelectionTests", dependencies: [
            .target(name: "EZSelection"),
        ])
    ]
)
