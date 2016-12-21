//
//  DisplayGridPresenter.swift
//  JLDishwasher
//
//  Created by Iain McLean on 21/12/2016.
//  Copyright © 2016 Iain McLean. All rights reserved.
//

import Foundation

class DisplayGridPresenter: DisplayGridInteractorDelegate {
    var presenterDelegate:DisplayGridPresenterDelegate!
    var interactor: DisplayGridInteractor!
    
    init(withDelegate delegate:DisplayGridPresenterDelegate) {
        presenterDelegate = delegate
        interactor = DisplayGridInteractor(withDelegate: self)
    }
}
