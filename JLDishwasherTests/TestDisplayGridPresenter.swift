//
//  TestDataGridPresenter.swift
//  JLDishwasher
//
//  Created by Iain McLean on 21/12/2016.
//  Copyright © 2016 Iain McLean. All rights reserved.
//

import XCTest
@testable import JLDishwasher

class TestDisplayGridPresenter: XCTestCase {
    var displayGridPresenter:DisplayGridPresenter!
    
    override func setUp() {
        super.setUp()
        let storyboard = UIStoryboard(name: "DisplayGrid", bundle: nil)
        displayGridPresenter = (storyboard.instantiateViewController(withIdentifier: "displayGridViewController") as? DisplayGridViewController)?.presenter
    }
    
    override func tearDown() {
        super.tearDown()
    }
    
    func testWhenInitializedInteractorIsNotNil() {
        XCTAssertNotNil(displayGridPresenter.interactor,"Interactor should not be nil")
    }
    
    
}
