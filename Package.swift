// swift-tools-version: 5.7
// The swift-tools-version declares the minimum version of Swift required to build this package.

import PackageDescription

let package = Package(
    name: "ExampleBitriseIssue",
    platforms: [.iOS("15.0")],
    products: [
        // Products define the executables and libraries a package produces, and make them visible to other packages.
        .library(
            name: "ExampleBitriseIssue",
            targets: ["ExampleBitriseIssue"]),
    ],
    dependencies: [
        .package(url: "https://github.com/SDWebImage/SDWebImage.git", exact: "5.12.2"),
        //.package(url: "https://github.com/braze-inc/braze-ios-sdk.git", exact: "4.4.2")
    ],
    targets: [
        // Targets are the basic building blocks of a package. A target can define a module or a test suite.
        // Targets can depend on other targets in this package, and on products in packages this package depends on.
        .target(
            name: "ExampleBitriseIssue",
            dependencies: [
                .product(name: "SDWebImage", package: "SDWebImage"),
                //.product(name: "AppboyUI", package: "braze-ios-sdk")
            ]),
        .testTarget(
            name: "ExampleBitriseIssueTests",
            dependencies: ["ExampleBitriseIssue"]),
    ]
)
