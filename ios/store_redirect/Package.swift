// swift-tools-version: 5.9
// The swift-tools-version declares the minimum version of Swift required to build this package.

import PackageDescription

let package = Package(
    name: "store_redirect",
    platforms: [
        .iOS("12.0")
    ],
    products: [
        .library(name: "store-redirect", targets: ["store_redirect"])
    ],
    dependencies: [
        .package(name: "FlutterFramework", path: "../FlutterFramework")
    ],
    targets: [
        .target(
            name: "store_redirect",
            dependencies: [
                .product(name: "FlutterFramework", package: "FlutterFramework")
            ],
            cSettings: [
                .headerSearchPath("include/store_redirect")
            ]
        )
    ]
)
