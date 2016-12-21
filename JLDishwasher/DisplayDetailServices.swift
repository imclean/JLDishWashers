//
//  DisplayDetailServices.swift
//  JLDishwasher
//
//  Created by Iain McLean on 21/12/2016.
//  Copyright © 2016 Iain McLean. All rights reserved.
//

import Foundation

class DisplayDetailServices {
    var servicesDelegate:DisplayDetailServicesDelegate!
    
    init(withDelegate delegate:DisplayDetailServicesDelegate) {
        servicesDelegate = delegate
    }
}
