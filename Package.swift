// swift-tools-version:4.0
import PackageDescription

let package = Package(
    name: "Cully",
    products: [
      .library(
        name: "Cully",
        targets: ["Cully"]
      ),
    ],
    dependencies: [],
    targets: [
      .target(
        name: "Cully",
        dependencies: [],
        path: "Cully"
      )
    ]
)
