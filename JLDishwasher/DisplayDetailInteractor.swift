//
//  DisplayDetailInteractor.swift
//  JLDishwasher
//
//  Created by Iain McLean on 21/12/2016.
//  Copyright © 2016 Iain McLean. All rights reserved.
//

import Foundation

class DisplayDetailInteractor: DisplayDetailDataManagerDelegate {
    var interactorDelegate:DisplayDetailInteractorDelegate!
    var dataManager: DisplayDetailDataManager!
    
    init(withDelegate delegate:DisplayDetailInteractorDelegate) {
        interactorDelegate = delegate
        dataManager = DisplayDetailDataManager(withDelegate: self)
    }
}
