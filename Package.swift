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
        // Bu kısım boş kalmalı çünkü Pod'ların kaynak kodları zaten paketin içinde.
    ],
    targets: [
        // Bu hedef, tüm Pod'ları bir araya getiren sarmalayıcıdır.
        .target(
            name: "ProgoSPMForPods",
            dependencies: [
                "STPopup", "SwiftValidator", "Presentr", "DZNEmptyDataSet",
                "PopupController", "CFAlertViewController", "Spring", "CountryPicker"
            ]
        ),

        // Her bir Pod için ayrı bir hedef oluşturmalısınız.
        // SPM, bu hedefleri Sources klasörünüzdeki klasör isimleriyle eşleştirir.
        .target(name: "STPopup"),
        .target(name: "SwiftValidator"),
        .target(name: "Presentr"),
        .target(name: "DZNEmptyDataSet"),
        .target(name: "PopupController"),
        .target(name: "CFAlertViewController"),
        .target(name: "Spring"),
        .target(name: "CountryPicker")
    ]
)
