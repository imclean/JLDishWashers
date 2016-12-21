//
//  DisplayGridServices.swift
//  JLDishwasher
//
//  Created by Iain McLean on 21/12/2016.
//  Copyright © 2016 Iain McLean. All rights reserved.
//

import Foundation

class DisplayGridServices {
    var servicesDelegate:DisplayGridServicesDelegate!
    
    init(withDelegate delegate:DisplayGridServicesDelegate) {
        servicesDelegate = delegate
    }
}
