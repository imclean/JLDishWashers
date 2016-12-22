//
//  TestDisplayDetailInteractor.swift
//  JLDishwasher
//
//  Created by Iain McLean on 21/12/2016.
//  Copyright © 2016 Iain McLean. All rights reserved.
//

import XCTest
@testable import JLDishwasher

class TestDisplayDetailInteractor: XCTestCase {
    var displayDetailInteractor:DisplayDetailInteractor!
    
    override func setUp() {
        super.setUp()
        let storyboard = UIStoryboard(name: "DisplayDetail", bundle: nil)
        displayDetailInteractor = (storyboard.instantiateViewController(withIdentifier: "displayDetailViewController") as? DisplayDetailViewController)?.presenter.interactor
    }
    
    override func tearDown() {
        super.tearDown()
    }
    
    func testWhenInitializedDataManagerIsNotNil() {
        XCTAssertNotNil(displayDetailInteractor.dataManager,"Data Manager should not be nil")
    }
    
}
