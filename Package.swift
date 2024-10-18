// swift-tools-version:5.9
import PackageDescription

let package = Package(
    name: "SwiftCppPlayground",
    platforms: [
        .iOS(.v13),    // Define platform versions if needed
        .tvOS(.v13),
        .macOS(.v11)
    ],
    products: [
        .library(
            name: "SwiftPrinter",
            targets: ["SwiftPrinter"]
        ),
    ],
    dependencies: [
        // Add external dependencies here if any
    ],
    targets: [
        .target(
            name: "CppPrinter",
            path: "CppPrinter"
        ),
        .target(
            name: "SwiftPrinter",
            dependencies: ["CppPrinter"],
            path: "SwiftPrinter",
            swiftSettings: [
                .interoperabilityMode(.Cxx)  // C++ interoperability setting
            ]
        ),
    ]
)
