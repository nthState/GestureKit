// swift-tools-version: 5.10
// The swift-tools-version declares the minimum version of Swift required to build this package.

import PackageDescription

let package = Package(
  name: "GestureKit",
  platforms: [.visionOS(.v1)],
  products: [
    .library(
      name: "GestureKit",
      targets: ["GestureKitTargets"]),
  ],
  dependencies: [
    .package(url: "https://github.com/nthState/UUIDV7", branch: "main")
  ],
  targets: [
    .target(name: "GestureKitTargets",
            dependencies: [
              .product(name: "UUIDV7", package: "UUIDV7"),
              .target(name: "GestureKitFramework")

            ], path: "Sources/Wrapper"
           ),
    .binaryTarget(name: "GestureKitFramework",
                  path: "./Sources/GestureKit.xcframework")
  ]
)
