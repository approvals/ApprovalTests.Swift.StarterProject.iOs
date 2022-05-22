// swift-tools-version:5.5

import PackageDescription

let package = Package(
        name: "ApprovalTests.Swift.StarterProject.iOS",
        platforms: [
            .iOS(.v14),
        ],
        products: [
            .library(
                    name: "ApprovalTests.Swift.StarterProject.iOS",
                    targets: ["ApprovalTests.Swift.StarterProject.iOS"]
            ),
        ],
        // begin-snippet: package_include_approvals
        dependencies: [
            .package(
                    name: "ApprovalTests.Swift",
                    url: "https://github.com/approvals/ApprovalTests.Swift",
                    "1.0.0"..."100.0.0"
            ),
        ],
        // end-snippet
        targets: [
            .target(
                    name: "ApprovalTests.Swift.StarterProject.iOS",
                    dependencies: [],
                    path: "ApprovalTests.Swift.StarterProject.iOS",
                    exclude: ["Info.plist"]
            ),
        // begin-snippet: package_add_test_target
            .testTarget(
                    name: "ApprovalTests.Swift.StarterProject.iOSTests",
                    dependencies: [
                        "ApprovalTests.Swift.StarterProject.iOS",
                        "ApprovalTests.Swift"
                    ],
        // end-snippet
                    path: "ApprovalTests.Swift.StarterProject.iOSTests",
                    exclude: [
                        "Info.plist",
                        "ApprovalsSampleMacTests.testList.approved.txt",
                        "ApprovalsSampleMacTests.testText.approved.txt"
                    ]
            ),
        ]
)
