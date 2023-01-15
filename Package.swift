// swift-tools-version: 5.7
// The swift-tools-version declares the minimum version of Swift required to build this package.

import PackageDescription

let package = Package(
  name: "disable-middle-click",
  dependencies: [
    .package(url: "https://github.com/apple/swift-format", revision: "0.50700.1")
  ]
)
