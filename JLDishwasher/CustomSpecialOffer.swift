//
//  CustomSpecialOffer.swift
//  JLDishwasher
//
//  Created by Iain McLean on 21/12/2016.
//  Copyright © 2016 Iain McLean. All rights reserved.
//

import Foundation

public class CustomSpecialOffer {
    
    /**
     Returns an array of CustomSpecialOffers based on given dictionary.
     
     Sample usage:
     let customSpecialOffer_list = CustomSpecialOffer.modelsFromDictionaryArray(someDictionaryArrayFromJSON)
     
     - parameter array:  NSArray from JSON dictionary.
     
     - returns: Array of CustomSpecialOffer Instances.
     */
    
    public class func modelsFromDictionaryArray(array:NSArray) -> [CustomSpecialOffer] {
        var models:[CustomSpecialOffer] = []
        for item in array
        {
            models.append(CustomSpecialOffer(dictionary: item as! NSDictionary)!)
        }
        return models
    }
    
    /**
     Constructs the object based on the given dictionary.
     
     Sample usage:
     let customSpecialOffer = CustomSpecialOffer(someDictionaryFromJSON)
     
     - parameter dictionary:  NSDictionary from JSON.
     
     - returns: CustomSpecialOffer Instance.
     */
    required public init?(dictionary: NSDictionary) {
        
    }
    
    
    /**
     Returns the dictionary representation for the current instance.
     
     - returns: NSDictionary.
     */
    public func dictionaryRepresentation() -> NSDictionary {
        
        let dictionary = NSMutableDictionary()
        
        
        return dictionary
    }
    
}
