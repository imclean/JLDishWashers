//
//  DisplayDetailPresenter.swift
//  JLDishwasher
//
//  Created by Iain McLean on 21/12/2016.
//  Copyright © 2016 Iain McLean. All rights reserved.
//

import Foundation

class DisplayDetailPresenter: DisplayDetailInteractorDelegate {
    var presenterDelegate:DisplayDetailPresenterDelegate!
    var interactor: DisplayDetailInteractor!
    
    init(withDelegate delegate:DisplayDetailPresenterDelegate) {
        presenterDelegate = delegate
        interactor = DisplayDetailInteractor(withDelegate: self)
    }
}
