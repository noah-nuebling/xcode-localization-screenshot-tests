//
//  LocalizationScreenshotTestIOSAllSwiftUITests.swift
//  LocalizationScreenshotTestIOSAllSwiftUITests
//
//  Created by Noah Nübling on 04.07.24.
//

import XCTest

final class LocalizationScreenshotTestIOSAllSwiftUITests: XCTestCase {

    override func setUpWithError() throws {
        // Put setup code here. This method is called before the invocation of each test method in the class.

        // In UI tests it is usually best to stop immediately when a failure occurs.
        continueAfterFailure = false

        // In UI tests it’s important to set the initial state - such as interface orientation - required for your tests before they run. The setUp method is a good place to do this.
    }

    override func tearDownWithError() throws {
        // Put teardown code here. This method is called after the invocation of each test method in the class.
    }

    @MainActor
    func testTakeLocalizationScreenshots() throws {
        
        /// UI tests must launch the application that they test.
        let app = XCUIApplication()
        app.launch()
        
        /// Take screenshot
        /// Note: Disabling this for now since Xcode automatically takes screenshots when "Localization Screenshots" is enabled in the .xctestplan (seems to work for iOS app project, not for macOS app project)
//        let screenshot = app.windows.firstMatch.screenshot()
//        let attachment = XCTAttachment(screenshot: screenshot, quality: .medium) /// .medium turns it from .png -> .jpeg which the automatically captured Localization Screenshots have, too.
//        attachment.name = "MyScreenshotForLocalization"
//        attachment.lifetime = .keepAlways
//        
//        self.add(attachment)
    }

    @MainActor
    func testLaunchPerformance() throws {
        
        
        return;
        
        
        if #available(macOS 10.15, iOS 13.0, tvOS 13.0, watchOS 7.0, *) {
            // This measures how long it takes to launch your application.
            measure(metrics: [XCTApplicationLaunchMetric()]) {
                XCUIApplication().launch()
            }
        }
    }
}
