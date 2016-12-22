//
//  DisplayGridDataManager.swift
//  JLDishwasher
//
//  Created by Iain McLean on 21/12/2016.
//  Copyright © 2016 Iain McLean. All rights reserved.
//

import Foundation

class DisplayGridDataManager: DisplayGridServicesDelegate {
    var dataManagerDelegate:DisplayGridDataManagerDelegate!
    var services: DisplayGridServices!
    
    init(withDelegate delegate:DisplayGridDataManagerDelegate) {
        dataManagerDelegate = delegate
        services = DisplayGridServices(withDelegate: self)
    }
}

// MARK: - Actions

extension DisplayGridDataManager {
    
    func collectDishwashers() {
        services.collectDishwashers()
    }
    
    func collectProductWith(productId:String) {
        services.collectDishwasher(withId: productId)
    }
}

// MARK: - Delegate Methods

extension DisplayGridDataManager {
    
    func didCollect(products:[Product]) {
        dataManagerDelegate.didCollect(products: products)
    }
    
    func didFailCollectingProductsWith(error:String) {
        dataManagerDelegate.didFailCollectingProductsWith(error: error)
    }
    
    func didCollect(detail: ProductDetail) {
        dataManagerDelegate.didCollect(detail: detail)
    }
    
    func didFailCollectingProductDetailWith(error: String) {
        dataManagerDelegate.didFailCollectingProductDetailWith(error: error)
    }
    
}
