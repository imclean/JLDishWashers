//
//  Features.swift
//  JLDishwasher
//
//  Created by Iain McLean on 21/12/2016.
//  Copyright © 2016 Iain McLean. All rights reserved.
//

import Foundation

public class Features {
	public var groupName : String?
	public var attributes : Array<Attributes>?

    /**
        Returns an array of models based on given dictionary.
        
        Sample usage:
        let features_list = Features.modelsFromDictionaryArray(someDictionaryArrayFromJSON)

        - parameter array:  NSArray from JSON dictionary.

        - returns: Array of Features Instances.
    */
    public class func modelsFromDictionaryArray(array:NSArray) -> [Features] {
        var models:[Features] = []
        for item in array {
            models.append(Features(dictionary: item as! NSDictionary)!)
        }
        return models
    }

    /**
        Constructs the object based on the given dictionary.
        
        Sample usage:
        let features = Features(someDictionaryFromJSON)

        - parameter dictionary:  NSDictionary from JSON.

        - returns: Features Instance.
    */
	required public init?(dictionary: NSDictionary) {
		groupName = dictionary["groupName"] as? String
		if (dictionary["attributes"] != nil) { attributes = Attributes.modelsFromDictionaryArray(array: dictionary["attributes"] as! NSArray) }
	}

		
    /**
        Returns the dictionary representation for the current instance.
        
        - returns: NSDictionary.
    */
	public func dictionaryRepresentation() -> NSDictionary {

		let dictionary = NSMutableDictionary()

		dictionary.setValue(self.groupName, forKey: "groupName")

		return dictionary
	}

}
