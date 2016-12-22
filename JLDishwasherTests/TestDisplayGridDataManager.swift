//
//  TestDataGridDataManager.swift
//  JLDishwasher
//
//  Created by Iain McLean on 21/12/2016.
//  Copyright © 2016 Iain McLean. All rights reserved.
//

import XCTest
@testable import JLDishwasher

class TestDisplayGridDataManager: XCTestCase {
    var displayGridDataManager:DisplayGridDataManager!
    
    override func setUp() {
        super.setUp()
        let storyboard = UIStoryboard(name: "DisplayGrid", bundle: nil)
        displayGridDataManager = (storyboard.instantiateViewController(withIdentifier: "displayGridViewController") as? DisplayGridViewController)?.presenter.interactor.dataManager
    }
    
    override func tearDown() {
        super.tearDown()
    }
    
    func testWhenInitializedServicesIsNotNil() {
        XCTAssertNotNil(displayGridDataManager.services,"Services should not be nil")
    }
    
}
