// swift-tools-version: 5.8
// The swift-tools-version declares the minimum version of Swift required to build this package.

import PackageDescription

let package = Package(
    name: "RxSVP",
    platforms: [.iOS(.v13)],
    products: [
        // Products define the executables and libraries a package produces, making them visible to other packages.
        .library(
            name: "RxSVP",
            targets: ["RxSVP"]),
    ],
    dependencies: [
        .package(url: "https://github.com/ReactiveX/RxSwift.git", .upToNextMajor(from: "6.0.0")),
        .package(url: "https://github.com/SVProgressHUD/SVProgressHUD.git", branch: "master"),
    ],
    targets: [
        // Targets are the basic building blocks of a package, defining a module or a test suite.
        // Targets can depend on other targets in this package and products from dependencies.
        .target(
            name: "RxSVP",
            dependencies: [
                "RxSwift",
                .product(name: "RxCocoa", package: "RxSwift"),
                "SVProgressHUD"],
            path: "RxSVP"),
    ]
)
