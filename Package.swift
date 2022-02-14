// swift-tools-version:5.3
import PackageDescription

let package = Package(
  name: "ForterSDK",
  platforms: [
    .iOS(.v10)
  ],
  products: [
    .library(name: "ForterSDK", targets: ["ForterSDK"]),
  ],
  targets: [
    .binaryTarget(
      name: "ForterSDK",
      path: "SDK/ForterSDK.xcframework"
    )
  ]
)
