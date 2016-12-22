//
//  Deliveries.swift
//  JLDishwasher
//
//  Created by Iain McLean on 21/12/2016.
//  Copyright © 2016 Iain McLean. All rights reserved.
//

import Foundation

public class Deliveries {
	public var deliveryType : String?
	public var options : Array<Options>?

    /**
        Returns an array of models based on given dictionary.
        
        Sample usage:
        let deliveries_list = Deliveries.modelsFromDictionaryArray(someDictionaryArrayFromJSON)

        - parameter array:  NSArray from JSON dictionary.

        - returns: Array of Deliveries Instances.
    */
    public class func modelsFromDictionaryArray(array:NSArray) -> [Deliveries]
    {
        var models:[Deliveries] = []
        for item in array
        {
            models.append(Deliveries(dictionary: item as! NSDictionary)!)
        }
        return models
    }

    /**
        Constructs the object based on the given dictionary.
        
        Sample usage:
        let deliveries = Deliveries(someDictionaryFromJSON)

        - parameter dictionary:  NSDictionary from JSON.

        - returns: Deliveries Instance.
    */
	required public init?(dictionary: NSDictionary) {

		deliveryType = dictionary["deliveryType"] as? String
		if (dictionary["options"] != nil) { options = Options.modelsFromDictionaryArray(array: dictionary["options"] as! NSArray) }
	}

		
    /**
        Returns the dictionary representation for the current instance.
        
        - returns: NSDictionary.
    */
	public func dictionaryRepresentation() -> NSDictionary {

		let dictionary = NSMutableDictionary()

		dictionary.setValue(self.deliveryType, forKey: "deliveryType")

		return dictionary
	}

}
