//
//  TestDataDetailViewController.swift
//  JLDishwasher
//
//  Created by Iain McLean on 21/12/2016.
//  Copyright © 2016 Iain McLean. All rights reserved.
//

import XCTest
@testable import JLDishwasher

class TestDisplayDetailViewController: XCTestCase {
    var displayDetailViewController:DisplayDetailViewController!
    
    override func setUp() {
        super.setUp()
        let storyboard = UIStoryboard(name: "DisplayDetail", bundle: nil)
        displayDetailViewController = storyboard.instantiateViewController(withIdentifier: "displayDetailViewController") as? DisplayDetailViewController
    }
    
    override func tearDown() {
        super.tearDown()
        displayDetailViewController = nil
    }
    
    func testWhenInitialzedPresenterIsNotNil() {
        XCTAssertNotNil(displayDetailViewController.presenter,"Presenter should not be nil")
    }
    
    
}
