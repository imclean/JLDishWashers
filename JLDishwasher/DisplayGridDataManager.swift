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
