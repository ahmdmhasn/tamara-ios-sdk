// swift-tools-version:5.9

import PackageDescription

let package = Package(
    name: "TamaraSDK",
    platforms: [.iOS(.v13)],
    products: [
        .library(
            name: "TamaraSDK",
            targets: ["TamaraSDK"]
        ),
    ],
    dependencies: [
        .package(url: "https://github.com/Moya/Moya.git", .upToNextMajor(from: "15.0.0"))
    ],
    targets: [
        .target(
            name: "TamaraSDK",
            dependencies: ["Moya"]
        ),
        .testTarget(
            name: "TamaraSDKTests",
            dependencies: ["TamaraSDK"]
        ),
    ],
    swiftLanguageVersions: [.v5]
)
