// swift-tools-version:5.3
import PackageDescription
let package = Package(
    name: "MapstedMapUi",
    platforms: [
        .iOS(.v13)
    ],
    
    products: [
        .library(
            name: "MapstedMapUi",
            targets: ["MapstedMapUiWrapper"]
        )
    ],
    
    dependencies: [
            .package(
                name: "MapstedCore",
                url: "https://github.com/Mapsted/mapsted-sdk-core-spm",
                .upToNextMajor(from: "4.6.2")
            ),
            .package(
                name: "MapstedMap",
                url: "https://github.com/Mapsted/mapsted-sdk-map-spm",
                .upToNextMajor(from: "4.6.2")
            ),
            .package(
                name: "MapstedNotify",
                url: "https://github.com/Mapsted/mapsted-sdk-notify-spm",
                .upToNextMajor(from: "4.6.2")
            ),
            .package(
                name: "MapstedComponents",
                url: "https://github.com/Mapsted/mapsted-sdk-components-spm",
                .upToNextMajor(from: "4.6.2")
            )
    ],
    
    targets: [
        .target(name: "MapstedMapUiWrapper",
                dependencies: [
                    .target(name: "MapstedMapUi"),
                    .product(name: "MapstedCore", package: "MapstedCore"),
                    .product(name: "MapstedMap", package: "MapstedMap"),
                    .product(name: "MapstedAlerts", package: "MapstedNotify"),
                    .product(name: "LocationMarketing", package: "MapstedNotify"),
                    .product(name: "MapstedComponentsUI", package: "MapstedComponents")

                ]
        ),
        .binaryTarget(
            name: "MapstedMapUi",
            path: "MapstedMapUi.xcframework"
        ),
        
    ])


