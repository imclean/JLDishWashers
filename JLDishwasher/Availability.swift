//
//  Availability.swift
//  JLDishwasher
//
//  Created by Iain McLean on 21/12/2016.
//  Copyright © 2016 Iain McLean. All rights reserved.
//

import Foundation

public class Availability {
	public var message : String?
	public var availabilityStatus : String?
	public var stockLevel : Int?

    /**
        Returns an array of models based on given dictionary.
        
        Sample usage:
        let availability_list = Availability.modelsFromDictionaryArray(someDictionaryArrayFromJSON)

        - parameter array:  NSArray from JSON dictionary.

        - returns: Array of Availability Instances.
    */
    public class func modelsFromDictionaryArray(array:NSArray) -> [Availability]     {
        var models:[Availability] = []
        for item in array {
            models.append(Availability(dictionary: item as! NSDictionary)!)
        }
        return models
    }

    /**
        Constructs the object based on the given dictionary.
        
        Sample usage:
        let availability = Availability(someDictionaryFromJSON)

        - parameter dictionary:  NSDictionary from JSON.

        - returns: Availability Instance.
    */
	required public init?(dictionary: NSDictionary) {
		message = dictionary["message"] as? String
		availabilityStatus = dictionary["availabilityStatus"] as? String
		stockLevel = dictionary["stockLevel"] as? Int
	}

    
    /**
        Returns the dictionary representation for the current instance.
        
        - returns: NSDictionary.
    */
	public func dictionaryRepresentation() -> NSDictionary {

		let dictionary = NSMutableDictionary()

		dictionary.setValue(self.message, forKey: "message")
		dictionary.setValue(self.availabilityStatus, forKey: "availabilityStatus")
		dictionary.setValue(self.stockLevel, forKey: "stockLevel")

		return dictionary
	}

}
