// swift-tools-version: 5.9
import PackageDescription

let package = Package(
    name: "CapacitorNfcAccessibilityCheck",
    platforms: [.iOS(.v14)],
    products: [
        .library(
            name: "CapacitorNfcAccessibilityCheck",
            targets: ["CapacitorNfcAccessibilityCheckPlugin"])
    ],
    dependencies: [
        .package(url: "https://github.com/ionic-team/capacitor-swift-pm.git", from: "7.0.0")
    ],
    targets: [
        .target(
            name: "CapacitorNfcAccessibilityCheckPlugin",
            dependencies: [
                .product(name: "Capacitor", package: "capacitor-swift-pm"),
                .product(name: "Cordova", package: "capacitor-swift-pm")
            ],
            path: "ios/Sources/CapacitorNfcAccessibilityCheckPlugin"),
        .testTarget(
            name: "CapacitorNfcAccessibilityCheckPluginTests",
            dependencies: ["CapacitorNfcAccessibilityCheckPlugin"],
            path: "ios/Tests/CapacitorNfcAccessibilityCheckPluginTests")
    ]
)