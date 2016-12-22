//
//  DisplayGridPresenter.swift
//  JLDishwasher
//
//  Created by Iain McLean on 21/12/2016.
//  Copyright © 2016 Iain McLean. All rights reserved.
//

import UIKit

class DisplayGridPresenter: DisplayGridInteractorDelegate {
    var presenterDelegate:DisplayGridPresenterDelegate!
    var interactor: DisplayGridInteractor!
    
    init(withDelegate delegate:DisplayGridPresenterDelegate) {
        presenterDelegate = delegate
        interactor = DisplayGridInteractor(withDelegate: self)
        interactor.collectDishwashers()
    }
}

// MARK: - Actions

extension DisplayGridPresenter {
    
    func collectProductWith(productId:String) {
        interactor.collectProductWith(productId: productId)
    }
    
}

// MARK: - Delegate Methods

extension DisplayGridPresenter {
    
    func updateView(title:String) {
        presenterDelegate.updateView(title: title)
    }
    
    func showHudWith(message: String) {
        presenterDelegate.showHudWith(message: message)
    }
    
    func showHudWith(success: String) {
        presenterDelegate.showHudWith(success: success)
    }
    
    func didCollect(products:[Product]) {
        presenterDelegate.didReceive(products: products)
    }
    
    func didFailCollectingProductsWith(error:String) {
        presenterDelegate.showHudWith(error: error)
    }
    
    func didCollect(detail: ProductDetail) {
        mainThread {
            Wireframe.sharedWifreame.showDetailFrom(controller: self.presenterDelegate as! UIViewController, withDetail: detail)
        }
    }
    
    func didFailCollectingProductDetailWith(error: String) {
        presenterDelegate.showHudWith(error: error)
    }
    
}
