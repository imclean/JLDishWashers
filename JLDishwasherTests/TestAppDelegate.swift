//
//  TestAppDelegate.swift
//  JLDishwasher
//
//  Created by Iain McLean on 21/12/2016.
//  Copyright © 2016 Iain McLean. All rights reserved.
//

import XCTest
@testable import JLDishwasher

class TestAppDelegate: XCTestCase {
    
    var appDelegate: AppDelegate = AppDelegate();
    var window: UIWindow? = UIWindow()
    
    override func setUp() {
        super.setUp()
        appDelegate.window = window
    }
    
    override func tearDown() {
        super.tearDown()
        window = nil
    }
    
    // MARK: -  Test after Application Launch
    func testWindowIsKeyAfterApplicationLaunch() {
        let mainAppDelegate = UIApplication.shared.delegate
        
        if let mainAppDelegate = mainAppDelegate {
            if let window = mainAppDelegate.window {
                if let window = window {
                    XCTAssertTrue(window.isKeyWindow, "app delegate's window should be key");
                } else {
                    XCTFail("app delegate window should not be nil")
                }
            } else {
                XCTFail("app delegate window should not be nil")
            }
        } else {
            XCTFail("shared application should have a delegate")
        }
    }
    
    func testThatDidFinishLaunchingWithOptionsReturnsTrue() {
        XCTAssertTrue(appDelegate.application(UIApplication.shared, didFinishLaunchingWithOptions: nil), "should return true from didFinishLaunchingWithOptions")
    }
}
