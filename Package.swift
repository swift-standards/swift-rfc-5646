// swift-tools-version:6.2
import PackageDescription

extension String {
    static let rfc5646: Self = "RFC 5646"
    static let rfc5646Tests: Self = rfc5646 + " Tests"

    static let iso639: Self = "ISO 639"
    static let iso3166: Self = "ISO 3166"
    static let iso15924: Self = "ISO 15924"

    static let standards: Self = "Standards"
    static let incits_4_1986: Self = "INCITS_4_1986"
    static let standardsTestSupport: Self = standards + "TestSupport"

    var tests: Self { self + " Tests" }
}

extension PackageDescription.Target.Dependency {
    static let iso639: Self = .product(name: "ISO 639", package: "swift-iso-639")
    static let iso3166: Self = .product(name: "ISO 3166", package: "swift-iso-3166")
    static let iso15924: Self = .product(name: "ISO 15924", package: "swift-iso-15924")
    static let standards: Self = .product(name: "Standards", package: "swift-standards")
    static let incits_4_1986: Self = .product(name: "INCITS 4 1986", package: "swift-incits-4-1986")
    static let standardsTestSupport: Self = .product(name: "StandardsTestSupport", package: "swift-standards")

    static let rfc5646: Self = .target(name: .rfc5646)
}

let package = Package(
    name: "swift-rfc-5646",
    platforms: [
        .macOS(.v26),
        .iOS(.v26),
        .tvOS(.v26),
        .watchOS(.v26)
    ],
    products: [
        .library(name: .rfc5646, targets: [.rfc5646])
    ],
    dependencies: [
        .package(url: "https://github.com/swift-standards/swift-standards", from: "0.10.0"),
        .package(url: "https://github.com/swift-standards/swift-incits-4-1986", from: "0.6.3"),
        .package(url: "https://github.com/swift-standards/swift-iso-639", from: "0.2.2"),
        .package(url: "https://github.com/swift-standards/swift-iso-3166", from: "0.2.2"),
        .package(url: "https://github.com/swift-standards/swift-iso-15924", from: "0.1.2")
    ],
    targets: [
        .target(
            name: .rfc5646,
            dependencies: [
                .standards,
                .incits_4_1986,
                .iso639,
                .iso3166,
                .iso15924
            ]
        ),
        .testTarget(
            name: .rfc5646Tests,
            dependencies: [
                .rfc5646,
                .incits_4_1986,
                .standardsTestSupport
            ]
        )
    ],
    swiftLanguageModes: [.v6]
)
