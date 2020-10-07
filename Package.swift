// swift-tools-version:5.1
import PackageDescription

let package = Package(
    name: "AWSIoT",
    platforms: [
        .iOS(.v10)
    ],
    products: [
        .library(name: "AWSIoT", targets: ["AWSIoT"]),
    ],
    targets: [
        .target(
            name: "AWSCore",
            dependencies: [],
            path: "AWSCore",
            publicHeadersPath: "AWSCore.h",
            cSettings: [
                .headerSearchPath("**")
            ]
        ),
        .target(
            name: "AWSIoT",
            dependencies: ["AWSCore"],
            path: "AWSIoT",
            publicHeadersPath: "AWSIoT.h",
            cSettings: [
                .headerSearchPath("**"),
                .headerSearchPath("../AWSCore/**"),
            ],
            linkerSettings: [
                .linkedFramework("AWSCore"),

            ]
        )
    ]
)
