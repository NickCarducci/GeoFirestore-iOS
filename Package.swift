// swift-tools-version:5.3
import PackageDescription

let package = Package(
    name: "GeoFire",
    defaultLocalization: "en",
    platforms: [.iOS(.v11), .macOS(.v10_12), .tvOS(.v10), .watchOS(.v7)],
    products: [
        .library(
            name: "GeoFirestore-iOS",
            targets: ["GeoFirestore-iOS"]
        ),
    ],
    dependencies: [
        .package(name: "Firebase",
                 url: "https://github.com/firebase/firebase-ios-sdk.git",
                 "7.0.0"..<"9.0.0"),
        .package(name: "GeoFire",
                 url: "https://github.com/firebase/geofire-objc.git",
                 "4.0.0"..<"6.0.0"),
    ],
    targets: [
        .target(
            name: "GeoFirestore-iOS",
            dependencies: [],
            path: "GeoFirestore-iOS",
            exclude: [],
            publicHeadersPath: "./API"
        ),
    ]
)
