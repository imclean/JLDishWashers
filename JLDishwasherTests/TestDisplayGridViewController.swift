//
//  TestDataGridViewController.swift
//  JLDishwasher
//
//  Created by Iain McLean on 21/12/2016.
//  Copyright © 2016 Iain McLean. All rights reserved.
//

import XCTest
@testable import JLDishwasher

class TestDisplayGridViewController: XCTestCase {
    var displayGridViewController:DisplayGridViewController!
    
    override func setUp() {
        super.setUp()
        let storyboard = UIStoryboard(name: "DisplayGrid", bundle: nil)
        displayGridViewController = storyboard.instantiateViewController(withIdentifier: "displayGridViewController") as? DisplayGridViewController
    }
    
    override func tearDown() {
        super.tearDown()
        displayGridViewController = nil
    }
    
    func testWhenInitializedPresenterIsNotNil() {
        XCTAssertNotNil(displayGridViewController.presenter,"Presenter should not be nil")
    }
    
}
