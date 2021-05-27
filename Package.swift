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
    dependencies: [
        // Dependencies declare other packages that this package depends on.
        .package(name: "Clibgit2", url: "https://github.com/light-tech/LibGit2-On-iOS.git", .branch("master")),
    ],
    targets: [
        // Targets are the basic building blocks of a package. A target can define a module or a test suite.
        // Targets can depend on other target  s in this package, and on products in packages this package depends on.
        .target(
            name: "SwiftGit2",
            dependencies: ["Clibgit2"],
            path: "SwiftGit2"
        ),
        .testTarget(
            name: "SwiftGit2Tests",
            dependencies: ["SwiftGit2"],
            path: "SwiftGit2Tests"
        ),
    ]
)
