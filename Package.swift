// swift-tools-version: 6.2
import PackageDescription

let package = Package(
    name: "ProgoSPMForPods",
    defaultLocalization: "en",
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
        
        // STPopup hedefi için özel ayar: Başlık dosyalarının konumunu belirtiyoruz
        .target(
            name: "STPopup",
            path: "Sources/STPopup",
            publicHeadersPath: "STPopup" // Başlık dosyalarının olduğu alt klasörü belirtiyoruz
        ),
        .target(
            name: "CountryPicker",
            path: "Sources/CountryPicker",
            publicHeadersPath: "CountryPicker" // Başlık dosyalarının olduğu alt klasörü belirtiyoruz
        ),
        
        // Diğer Pod'lar için ayrı hedefler
        .target(name: "SwiftValidator", path: "Sources/SwiftValidator"),
        .target(name: "Presentr", path: "Sources/Presentr"),
        .target(name: "PopupController", path: "Sources/PopupController"),
        .target(name: "CFAlertViewController", path: "Sources/CFAlertViewController"),
        .target(name: "Spring", path: "Sources/Spring")
    ]
)
