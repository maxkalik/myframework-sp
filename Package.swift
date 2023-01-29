// swift-tools-version: 5.7

import PackageDescription

let package = Package(
    name: "MyFramework",
    products: [
        .library(
            name: "MyFramework",
            targets: ["MyFrameworkTargets"]
        ),
    ],
    dependencies: [
        .package(url: "https://github.com/TimOliver/TOCropViewController.git", from: "2.6.1"),
        .package(url: "https://github.com/onevcat/Kingfisher.git", from: "7.5.0")
    ],
    targets: [
        .binaryTarget(
            name: "MyFramework",
            url: "https://cdn.triumpharcade.com/triumph-kit-releases/MyFramework-v1.0.8.zip",
            checksum: "d6b7967696d2144d5659edc4d24f03135427b6032cb228d61954ea3e052ddf7d"
        ),
        .target(
            name: "MyFrameworkTargets",
            dependencies: [
                .target(name: "MyFramework"),
                .product(name: "CropViewController", package: "TOCropViewController"),
                .product(name: "Kingfisher", package: "Kingfisher")
            ]
//            path: "MyFrameworkTargets"
        )
    ]
)
