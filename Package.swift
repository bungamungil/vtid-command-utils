// swift-tools-version: 5.8
// The swift-tools-version declares the minimum version of Swift required to build this package.

import PackageDescription

let package = Package(
    name: "vtid-command-utils",
    platforms: [
       .macOS(.v12)
    ],
    products: [
        // Products define the executables and libraries a package produces, and make them visible to other packages.
        .library(
            name: "VTIDCommandUtils",
            targets: ["VTIDCommandUtils"]
        ),
    ],
    dependencies: [
        // Dependencies declare other packages that this package depends on.
        // .package(url: /* package url */, from: "1.0.0"),
        .package(url: "https://github.com/vapor/console-kit.git", from: "4.6.0"),
        .package(url: "https://github.com/vapor/fluent-kit.git", from: "1.42.4"),
        .package(url: "https://github.com/bungamungil/vtid-core.git", exact: "0.4.3"),
    ],
    targets: [
        // Targets are the basic building blocks of a package. A target can define a module or a test suite.
        // Targets can depend on other targets in this package, and on products in packages this package depends on.
        .target(
            name: "VTIDCommandUtils",
            dependencies: [
                .product(name: "ConsoleKit", package: "console-kit"),
                .product(name: "FluentKit", package: "fluent-kit"),
                .product(name: "VTIDCore", package: "vtid-core"),
            ]
        ),
    ]
)
