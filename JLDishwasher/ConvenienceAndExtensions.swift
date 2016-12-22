//
//  ConvenienceAndExtensions.swift
//  JLDishwasher
//
//  Created by Iain McLean on 21/12/2016.
//  Copyright © 2016 Iain McLean. All rights reserved.
//

import UIKit


// MARK:- Convenience Public App Methods
public func delay(delay:Double, closure:@escaping ()->()) {
    DispatchQueue.main.asyncAfter(deadline: .now() + delay) {
        closure()
    }
}

public func mainThread(closure:@escaping ()->()) {
    DispatchQueue.main.async {
        closure()
    }
}

public func backgroundThread(closure:@escaping ()->()) {
    DispatchQueue.global(qos: DispatchQoS.QoSClass.default).async {
        closure()
    }
}

extension UIFont {
    func sizeOfString (string: String, constrainedToWidth width: Double) -> CGSize {
        return NSString(string: string).boundingRect(with: CGSize(width: width, height: DBL_MAX),
                                                     options: .usesLineFragmentOrigin,
                                                     attributes: [NSFontAttributeName: self],
                                                     context: nil).size
    }
}
