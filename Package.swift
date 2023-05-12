// swift-tools-version: 5.7
// The swift-tools-version declares the minimum version of Swift required to build this package.

import PackageDescription

let package = Package(
    name: "PrincipalAppiOSSPM",
    platforms: [.iOS(.v13)],
    products: [
        // Products define the executables and libraries a package produces, and make them visible to other packages.
        .library(
            name: "PrincipalAppiOSSPM",
            targets: ["PrincipalAppiOSSPM"]),
    ],
    dependencies: [
        // Dependencies declare other packages that this package depends on.
        // .package(url: /* package url */, from: "1.0.0"),
        .package(url: "https://github.com/danielgindi/Charts.git", from: "4.1.0"),
               .package(url: "https://github.com/Salesforce-Async-Messaging/Swift-Package-ServiceChat.git", from: "238.0.0"),
               .package(url: "https://github.com/firebase/firebase-ios-sdk.git", from: "8.0.0"),
               .package(url: "https://github.com/realm/realm-swift.git", from: "10.39.1"),
               //.package(url: "https://github.com/WenchaoD/FSCalendar.git", from: "2.8.0"),
               .package(url: "https://github.com/airbnb/lottie-spm.git", from: "4.2.0"),
               .package(url: "https://github.com/AppsFlyerSDK/AppsFlyerFramework.git", from: "6.11.0"),
               //.package(url: "https://github.com/jonkykong/SideMenu.git", from: "6.5.0"),
               .package(url: "https://github.com/evgenyneu/keychain-swift.git", from: "20.0.0"),
              // .package(url: "https://github.com/hackiftekhar/IQKeyboardManager.git", from: "6.5.11"),
    ],
    targets: [
        // Targets are the basic building blocks of a package. A target can define a module or a test suite.
        // Targets can depend on other targets in this package, and on products in packages this package depends on.
        .target(
            name: "PrincipalAppiOSSPM",
            dependencies: [ .product(name: "Charts", package: "Charts"),
                            .product(name: "Swift-ServiceChat", package: "Swift-Package-ServiceChat"),
                            .product(name: "FirebaseDatabase", package: "firebase-ios-sdk"),
                            .product(name: "FirebaseAnalytics", package: "firebase-ios-sdk"),
                            .product(name: "FirebaseCrashlytics", package: "firebase-ios-sdk"),
                            .product(name: "FirebaseMessaging", package: "firebase-ios-sdk"),
                            .product(name: "Realm", package: "realm-swift"),
                            .product(name: "RealmSwift", package: "realm-swift"),
                      //      .product(name: "FSCalendar", package: "FSCalendar"),
                            .product(name: "Lottie", package: "lottie-spm"),
                            .product(name: "AppsFlyerLib", package: "AppsFlyerFramework"),
                      //      .product(name: "SideMenu", package: "SideMenu"),
                            .product(name: "KeychainSwift", package: "keychain-swift"),
                          //  .product(name: "IQKeyboardManagerSwift", package: "IQKeyboardManager"),
                            ]),
        .testTarget(
            name: "PrincipalAppiOSSPMTests",
            dependencies: ["PrincipalAppiOSSPM"]),
    ]
)
