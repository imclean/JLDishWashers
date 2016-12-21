//
//  DisplayDetailDataManager.swift
//  JLDishwasher
//
//  Created by Iain McLean on 21/12/2016.
//  Copyright © 2016 Iain McLean. All rights reserved.
//

import Foundation

class DisplayDetailDataManager: DisplayDetailServicesDelegate {
    var dataManagerDelegate:DisplayDetailDataManagerDelegate!
    var services: DisplayDetailServices!
    
    init(withDelegate delegate:DisplayDetailDataManagerDelegate) {
        dataManagerDelegate = delegate
        services = DisplayDetailServices(withDelegate: self)
    }
}
