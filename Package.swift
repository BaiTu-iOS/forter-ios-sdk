// swift-tools-version:5.3
import PackageDescription

let package = Package(
  name: "ForterSDK",
  platforms: [
    .iOS(.v10)
  ],
  products: [
    .library(name: "ForterSDK", targets: ["ForterSDK"]),
    .library(name: "ForterSDKStatic", targets: ["ForterSDKStatic"])
  ],
  dependencies: [
    // Dependencies declare other packages that this package depends on.
  ],
  targets: [
    .binaryTarget(
      name: "ForterSDK",
      path: "SDK/xcframeworks/dynamic/ForterSDK.xcframework"
    ),
    .binaryTarget(
      name: "ForterSDKStatic",
      path: "SDK/xcframeworks/static/ForterSDK.xcframework"
    )
  ]
)
