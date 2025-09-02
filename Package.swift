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
                "STPopup-Objc", "SwiftValidator", "Presentr",
                "PopupController", "CFAlertViewController", "Spring", "CountryPicker"
            ]
        ),
        
        .target(
            name: "STPopup-Objc",
            path: "Sources/STPopup"
        ),

        // Diğer Pod'lar için ayrı hedefler
        .target(name: "SwiftValidator", path: "Sources/SwiftValidator"),
        .target(name: "Presentr", path: "Sources/Presentr"),
        .target(name: "PopupController", path: "Sources/PopupController"),
        .target(name: "CFAlertViewController", path: "Sources/CFAlertViewController"),
        .target(name: "Spring", path: "Sources/Spring"),
        .target(name: "CountryPicker", path: "Sources/CountryPicker")
    ]
)
