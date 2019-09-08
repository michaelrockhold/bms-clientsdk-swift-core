// swift-tools-version:3.1
// The swift-tools-version declares the minimum version of Swift required to build this package.

import PackageDescription

/*
 * The core component of the Swift client SDK for IBM Bluemix Mobile Services
 */
let package = Package(
    name: "bms-clientsdk-swift-core",
    platforms: [
        .iOS(.v8),
        .watchOS(.v2)
    ],
    products: [
        // Products define the executables and libraries produced by a package, and make them visible to other packages.
        .library(
            name: "BMSCore",
            targets: ["BMSCore"]),
    ],
    dependencies: [
        // Dependencies declare other packages that this package depends on.
		.package(url: "https://github.com/michaelrockhold/bms-clientsdk-swift-analytics.git", .branch:("depodulate"))
    ],
    targets: [
        // Targets are the basic building blocks of a package. A target can define a module or a test suite.
        // Targets can depend on other targets in this package, and on products in packages which this package depends on.
        .target(
            name: "BMSCore",
            dependencies: [],
            path: "Source",
            sources: [
            	"BMSClient.swift",
            	"Error.swift",
            	"Network Requests/BMSURLSession.swift",
            	"Network Requests/BMSURLSessionUtility.swift",
            	"Network Requests/Request.swift",
            	"Network Requests/BMSURLSessionDelegate.swift",
            	"Network Requests/NetworkMonitor.swift",
            	"Network Requests/Response.swift",
            	"Security/AuthorizationManager.swift",
            	"Security/BaseAuthorizationManager.swift",
            	"Security/Identity/AppIdentity.swift",
            	"Security/Identity/BaseDeviceIdentity.swift",
            	"Security/Identity/DeviceIdentity.swift",
            	"Security/Identity/BaseAppIdentity.swift",
            	"Security/Identity/BaseUserIdentity.swift",
            	"Security/Identity/UserIdentity.swift"
            ]
        ),
        .testTarget(
            name: "BMSCoreTests",
            dependencies: ["BMSCore"],
            path: "Tests/Unit Tests",
            sources: [
            	"BMSClientTests.swift",
            	"NetworkDetectionTests.swift",
            	"BMSURLSessionUtilityTests.swift",
            	"RequestTests.swift",
            	"BMSUrlSessionDelegateTests.swift",
            	"BMSUrlSessionTests.swift",
            	"ResponseTests.swift"
            ]
        ),
        .target(
        	name: "BMSCoreDemoApp"
        ),
        .target(
        	name: "BMSCoreDemoWatchApp"
        ),
        .target(
        	name: "BMSCoreDemoWatchExtension"
        )
    ]
)
