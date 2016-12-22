//
//  TestDisplayDetailPresenter.swift
//  JLDishwasher
//
//  Created by Iain McLean on 21/12/2016.
//  Copyright © 2016 Iain McLean. All rights reserved.
//

import XCTest
@testable import JLDishwasher

class TestDisplayDetailPresenter: XCTestCase {
    var displayDetailPresenter:DisplayDetailPresenter!
    
    override func setUp() {
        super.setUp()
        let storyboard = UIStoryboard(name: "DisplayDetail", bundle: nil)
        displayDetailPresenter = (storyboard.instantiateViewController(withIdentifier: "displayDetailViewController") as? DisplayDetailViewController)?.presenter
    }
    
    override func tearDown() {
        super.tearDown()
    }
    
    func testWhenInitializedInteractorIsNotNil() {
        XCTAssertNotNil(displayDetailPresenter.interactor,"Interactor should not be nil")
    }
}
