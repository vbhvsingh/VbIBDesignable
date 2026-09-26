// swift-tools-version:5.9
import PackageDescription

let package = Package(
    name: "VbIBDesignable",
    platforms: [.iOS(.v13), .tvOS(.v13)],
    products: [
        .library(name: "VbIBDesignable", targets: ["VbIBDesignable"]),
    ],
    targets: [
        .target(name: "VbIBDesignable"),
    ]
)
