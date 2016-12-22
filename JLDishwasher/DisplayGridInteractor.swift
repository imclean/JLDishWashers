//
//  DisplayGridInteractor.swift
//  JLDishwasher
//
//  Created by Iain McLean on 21/12/2016.
//  Copyright © 2016 Iain McLean. All rights reserved.
//

import Foundation

class DisplayGridInteractor: DisplayGridDataManagerDelegate {
    var interactorDelegate:DisplayGridInteractorDelegate!
    var dataManager: DisplayGridDataManager!
    
    init(withDelegate delegate:DisplayGridInteractorDelegate) {
        interactorDelegate = delegate
        dataManager = DisplayGridDataManager(withDelegate: self)
    }
}

// MARK: - Actions

extension DisplayGridInteractor {
    
    func collectDishwashers() {
        interactorDelegate.showHudWith(message: NSLocalizedString("Collecting Dishwashers", comment: "Collecting Dishwashers"))
        interactorDelegate.updateView(title: NSLocalizedString("Dishwashers", comment: "Dishwashers"))
        dataManager.collectDishwashers()
    }
    
    func collectProductWith(productId:String) {
        interactorDelegate.showHudWith(message: NSLocalizedString("Collecting Dishwasher Detail", comment: "Collecting Dishwasher Detail"))
        dataManager.collectProductWith(productId: productId)
    }
}

// MARK: - Delegate Methods

extension DisplayGridInteractor {
    
    func didCollect(products:[Product]) {
        interactorDelegate.updateView(title: NSLocalizedString("Dishwashers (\(products.count))", comment: "Dishwashers"))
        interactorDelegate.showHudWith(success: NSLocalizedString("Collected Dishwashers", comment: ""))
        interactorDelegate.didCollect(products: products)
    }
    
    func didFailCollectingProductsWith(error:String) {
        interactorDelegate.didFailCollectingProductsWith(error: error)
    }
    
    func didCollect(detail: ProductDetail) {
        interactorDelegate.showHudWith(success: NSLocalizedString("Collected detail", comment: "Collected detail"))
        interactorDelegate.didCollect(detail: detail)
    }
    
    func didFailCollectingProductDetailWith(error: String) {
        interactorDelegate.didFailCollectingProductDetailWith(error: error)
    }
}
