//
//  LocalizationScreenshotTestAllSwiftUITestsLaunchTests.swift
//  LocalizationScreenshotTestAllSwiftUITests
//
//  Created by Noah Nübling on 04.07.24.
//

import XCTest

final class LocalizationScreenshotTestAllSwiftUITestsLaunchTests: XCTestCase {

    override class var runsForEachTargetApplicationUIConfiguration: Bool {
        true
    }

    override func setUpWithError() throws {
        continueAfterFailure = false
    }

    @MainActor
    func testLaunch() throws {
        
        
        return;
        
        
        let app = XCUIApplication()
        app.launch()

        // Insert steps here to perform after app launch but before taking a screenshot,
        // such as logging into a test account or navigating somewhere in the app

        let attachment = XCTAttachment(screenshot: app.screenshot())
        attachment.name = "Launch Screen"
        attachment.lifetime = .keepAlways
        add(attachment)
    }
}
