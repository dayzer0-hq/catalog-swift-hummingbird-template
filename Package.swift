// swift-tools-version:5.9
import PackageDescription

let package = Package(
    name: "App",
    platforms: [.macOS(.v14)],
    dependencies: [
        // Hummingbird 2.x — pinned to the 2.x line; Package.resolved pins the exact build.
        .package(url: "https://github.com/hummingbird-project/hummingbird.git", from: "2.0.0"),
    ],
    targets: [
        .executableTarget(
            name: "App",
            dependencies: [
                .product(name: "Hummingbird", package: "hummingbird"),
            ],
            path: "Sources/App"
        ),
        .testTarget(
            name: "AppTests",
            dependencies: [
                .target(name: "App"),
                .product(name: "HummingbirdTesting", package: "hummingbird"),
            ],
            path: "Tests/AppTests"
        ),
    ]
)
