// swift-tools-version:5.3
// The swift-tools-version declares the minimum version of Swift required to build this package.

import PackageDescription

let package = Package(
    name: "SwiftGit2",
    platforms: [.iOS(.v13)],
    products: [
        // Products define the executables and libraries a package produces, and make them visible to other packages.
        .library(
            name: "SwiftGit2",
            targets: ["SwiftGit2"]),
    ],
    targets: [
        // Targets are the basic building blocks of a package. A target can define a module or a test suite.
        // Targets can depend on other targets in this package, and on products in packages this package depends on.
        .binaryTarget(
            name: "Clibgit2",
            path: "Prebuilt/Clibgit2.xcframework.zip"
        ),
        .target(
            name: "SwiftGit2",
            dependencies: ["Clibgit2"],
            path: "SwiftGit2",
            linkerSettings: [
                .linkedLibrary("z"),
                .linkedLibrary("iconv"),
            ]
        ),
        .testTarget(
            name: "SwiftGit2Tests",
            dependencies: ["SwiftGit2"],
            path: "SwiftGit2Tests"
        ),
    ]
)
