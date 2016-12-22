//
//  UnitPriceInfo.swift
//  JLDishwasher
//
//  Created by Iain McLean on 21/12/2016.
//  Copyright © 2016 Iain McLean. All rights reserved.
//

import Foundation

public class UnitPriceInfo {

    /**
        Returns an array of models based on given dictionary.
        
        Sample usage:
        let unitPriceInfo_list = UnitPriceInfo.modelsFromDictionaryArray(someDictionaryArrayFromJSON)

        - parameter array:  NSArray from JSON dictionary.

        - returns: Array of UnitPriceInfo Instances.
    */
    public class func modelsFromDictionaryArray(array:NSArray) -> [UnitPriceInfo] {
        var models:[UnitPriceInfo] = []
        for item in array {
            models.append(UnitPriceInfo(dictionary: item as! NSDictionary)!)
        }
        return models
    }

    /**
        Constructs the object based on the given dictionary.
        
        Sample usage:
        let unitPriceInfo = UnitPriceInfo(someDictionaryFromJSON)

        - parameter dictionary:  NSDictionary from JSON.

        - returns: UnitPriceInfo Instance.
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
