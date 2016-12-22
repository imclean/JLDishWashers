//
//  DisplayDetailPresenter.swift
//  JLDishwasher
//
//  Created by Iain McLean on 21/12/2016.
//  Copyright © 2016 Iain McLean. All rights reserved.
//

import UIKit

class DisplayDetailPresenter: DisplayDetailInteractorDelegate {
    var presenterDelegate:DisplayDetailPresenterDelegate!
    var interactor: DisplayDetailInteractor!
    
    
    init(withDelegate delegate:DisplayDetailPresenterDelegate) {
        presenterDelegate = delegate
        interactor = DisplayDetailInteractor(withDelegate: self)
    }
    
}

// MARK: - Delegate Methods

extension DisplayDetailPresenter {
    
    func updateViewWith(price: String) {
        presenterDelegate.updateViewWith(price: price)
    }
    
    func updateViewWith(guarantee: String) {
        presenterDelegate.updateViewWith(guarantee: guarantee)
    }
    
    func updateViewWith(specialOffer: String) {
        presenterDelegate.updateViewWith(specialOffer: specialOffer)
    }
    
    func updateViewWith(images:[UIImageView]) {
        presenterDelegate.updateViewWith(images: images)
    }
    
    func updateViewWith(productInformation:String) {
        presenterDelegate.updateViewWith(productInformation: productInformation)
    }
}
