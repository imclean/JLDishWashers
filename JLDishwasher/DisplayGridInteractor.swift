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
