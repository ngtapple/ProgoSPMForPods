// swift-tools-version: 6.2
import PackageDescription

let package = Package(
    name: "ProgoSPMForPods",
    defaultLocalization: "en", // Hatanın çözümü için bu satır eklendi
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
        // Bu kısım boş kalmalıdır.
    ],
    targets: [
        .target(
            name: "ProgoSPMForPods",
            dependencies: [
                "STPopup", "SwiftValidator", "Presentr",
                "PopupController", "CFAlertViewController", "Spring", "CountryPicker"
            ]
        ),
        
        .executableTarget(
            name: "STPopup",
            path: "Sources/STPopup/STPopup"
        ),

        // Diğer Pod'lar için ayrı hedefler
        .target(name: "SwiftValidator", path: "Sources/SwiftValidator"),
        .target(name: "Presentr", path: "Sources/Presentr"),
        .target(name: "PopupController", path: "Sources/PopupController"),
        .target(name: "CFAlertViewController", path: "Sources/CFAlertViewController"),
        .target(name: "Spring", path: "Sources/Spring"),
        .executableTarget(name: "CountryPicker", path: "Sources/CountryPicker/CountryPicker")
    ]
)
