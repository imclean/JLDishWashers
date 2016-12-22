//
//  TestDisplayDetailDataManager.swift
//  JLDishwasher
//
//  Created by Iain McLean on 21/12/2016.
//  Copyright © 2016 Iain McLean. All rights reserved.
//

import XCTest
@testable import JLDishwasher

class TestDisplayDetailDataManager: XCTestCase {
    var displayDetailDataManager:DisplayDetailDataManager!
    
    override func setUp() {
        super.setUp()
        let storyboard = UIStoryboard(name: "DisplayDetail", bundle: nil)
        displayDetailDataManager = (storyboard.instantiateViewController(withIdentifier: "displayDetailViewController") as? DisplayDetailViewController)?.presenter.interactor.dataManager
    }
    
    override func tearDown() {
        super.tearDown()
    }
    
    func testWhenInitializedServicesIsNotNil() {
        XCTAssertNotNil(displayDetailDataManager.services,"Services should not be nil")
    }
    
}
