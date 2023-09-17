// swift-tools-version: 5.8
// The swift-tools-version declares the minimum version of Swift required to build this package.

import PackageDescription

let package = Package(
  name: "disable-middle-click",
  dependencies: [
    .package(url: "https://github.com/apple/swift-format", revision: "508.0.1")
  ]
)
