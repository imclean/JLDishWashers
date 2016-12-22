//
//  TestDataGridInteractor.swift
//  JLDishwasher
//
//  Created by Iain McLean on 21/12/2016.
//  Copyright © 2016 Iain McLean. All rights reserved.
//

import XCTest
@testable import JLDishwasher

class TestDisplayGridInteractor: XCTestCase {
    var displayGridInteractor:DisplayGridInteractor!
    
    override func setUp() {
        super.setUp()
        let storyboard = UIStoryboard(name: "DisplayGrid", bundle: nil)
        displayGridInteractor = (storyboard.instantiateViewController(withIdentifier: "displayGridViewController") as? DisplayGridViewController)?.presenter.interactor
    }
    
    override func tearDown() {
        super.tearDown()
    }
    
    func testWhenInitializedDataManagerIsNotNil() {
        XCTAssertNotNil(displayGridInteractor.dataManager,"Data Manager should not be nil")
    }
    
}
