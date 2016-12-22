//
//  Price.swift
//  JLDishwasher
//
//  Created by Iain McLean on 21/12/2016.
//  Copyright © 2016 Iain McLean. All rights reserved.
//

import Foundation

public class Price {
    public var then1 : String?
    public var currency : String?
    public var now : String?
    public var was : String?
    public var uom : String?
    public var then2 : String?
    
    required public init?(dictionary: NSDictionary) {
        
        then1 = dictionary["then1"] as? String
        currency = dictionary["currency"] as? String
        now = dictionary["now"] as? String
        was = dictionary["was"] as? String
        uom = dictionary["uom"] as? String
        then2 = dictionary["then2"] as? String
    }
    
    
    /**
     Returns the dictionary representation for the current instance.
     
     - returns: NSDictionary.
     */
    
    public func dictionaryRepresentation() -> NSDictionary {
        
        let dictionary = NSMutableDictionary()
        
        dictionary.setValue(self.then1, forKey: "then1")
        dictionary.setValue(self.currency, forKey: "currency")
        dictionary.setValue(self.now, forKey: "now")
        dictionary.setValue(self.was, forKey: "was")
        dictionary.setValue(self.uom, forKey: "uom")
        dictionary.setValue(self.then2, forKey: "then2")
        
        return dictionary
    }
    
}
