//
//  tabBar_ve_navation_birlikte_kullanimiUITestsLaunchTests.swift
//  tabBar ve navation birlikte kullanimiUITests
//
//  Created by Oğuz Yürken on 28.03.2023.
//

import XCTest

final class tabBar_ve_navation_birlikte_kullanimiUITestsLaunchTests: XCTestCase {

    override class var runsForEachTargetApplicationUIConfiguration: Bool {
        true
    }

    override func setUpWithError() throws {
        continueAfterFailure = false
    }

    func testLaunch() throws {
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
