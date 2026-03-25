// swift-tools-version: 6.3

import PackageDescription

let package = Package(
    name: "SwiftMultiplatformProjectTemplate",
    targets: [
        .executableTarget(
            name: "SwiftMultiplatformProjectTemplate"
        ),
        .testTarget(
            name: "SwiftMultiplatformProjectTemplateTests",
            dependencies: ["SwiftMultiplatformProjectTemplate"]
        ),
    ],
    swiftLanguageModes: [.v6]
)
