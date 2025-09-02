// swift-tools-version: 6.2
import PackageDescription

let package = Package(
    name: "ProgoSPMForPods",
    platforms: [
        .iOS(.v13)
    ],
    products: [
        .library(
            name: "ProgoSPMForPods",
            targets: ["ProgoSPMForPods"]
        ),
    ],
    dependencies: [
        // Pod 'STPopup'
        .package(url: "https://github.com/ngtapple/STPopup.git", branch: "master"),
        
        // Diğer bağımlılıklar için de aynı şekilde "branch: "master"" ekleyin.
        .package(url: "https://github.com/ngtapple/SwiftValidator.git", branch: "master"),
        .package(url: "https://github.com/ngtapple/Presentr.git", branch: "master"),
        .package(url: "https://github.com/ngtapple/DZNEmptyDataSet.git", branch: "master"),
        .package(url: "https://github.com/ngtapple/PopupController.git", branch: "master"),
        .package(url: "https://github.com/ngtapple/CFAlertViewController.git", branch: "master"),
        .package(url: "https://github.com/ngtapple/Spring.git", branch: "master"),
        .package(url: "https://github.com/ngtapple/CountryPicker.git", branch: "master"),
    ],
    targets: [
        .target(
            name: "ProgoSPMForPods",
            dependencies: [
                "STPopup", "SwiftValidator", "Presentr", "DZNEmptyDataSet",
                "PopupController", "CFAlertViewController", "Spring", "CountryPicker"
            ]
        ),
    ]
)
