//
//  AdditionalServices.swift
//  JLDishwasher
//
//  Created by Iain McLean on 21/12/2016.
//  Copyright © 2016 Iain McLean. All rights reserved.
//

import Foundation

public class AdditionalServices {
	public var includedServices : [String]?
	public var optionalServices : Array<OptionalServices>?

    /**
        Returns an array of models based on given dictionary.
        
        Sample usage:
        let additionalServices_list = AdditionalServices.modelsFromDictionaryArray(someDictionaryArrayFromJSON)

        - parameter array:  NSArray from JSON dictionary.

        - returns: Array of AdditionalServices Instances.
    */
    
    public class func modelsFromDictionaryArray(array:NSArray) -> [AdditionalServices] {
        var models:[AdditionalServices] = []
        for item in array
        {
            models.append(AdditionalServices(dictionary: item as! NSDictionary)!)
        }
        return models
    }

    /**
        Constructs the object based on the given dictionary.
        
        Sample usage:
        let additionalServices = AdditionalServices(someDictionaryFromJSON)

        - parameter dictionary:  NSDictionary from JSON.

        - returns: AdditionalServices Instance.
    */
    
	required public init?(dictionary: NSDictionary) {

		self.includedServices = dictionary["includedServices"] as? [String]
		if (dictionary["optionalServices"] != nil) {
            self.optionalServices = OptionalServices.modelsFromDictionaryArray(array: dictionary["optionalServices"] as! NSArray)
        }
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
