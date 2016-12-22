//
//  Attributes.swift
//  JLDishwasher
//
//  Created by Iain McLean on 21/12/2016.
//  Copyright © 2016 Iain McLean. All rights reserved.
//

import Foundation

public class Attributes {
	public var id : String?
	public var toolTip : String?
	public var value : String?
	public var name : String?
	public var uom : String?

    /**
        Returns an array of models based on given dictionary.
        
        Sample usage:
        let attributes_list = Attributes.modelsFromDictionaryArray(someDictionaryArrayFromJSON)

        - parameter array:  NSArray from JSON dictionary.

        - returns: Array of Attributes Instances.
    */
    public class func modelsFromDictionaryArray(array:NSArray) -> [Attributes] {
        var models:[Attributes] = []
        for item in array {
            models.append(Attributes(dictionary: item as! NSDictionary)!)
        }
        return models
    }

    /**
        Constructs the object based on the given dictionary.
        
        Sample usage:
        let attributes = Attributes(someDictionaryFromJSON)

        - parameter dictionary:  NSDictionary from JSON.

        - returns: Attributes Instance.
    */
	required public init?(dictionary: NSDictionary) {

		id = dictionary["id"] as? String
		toolTip = dictionary["toolTip"] as? String
		value = dictionary["value"] as? String
		name = dictionary["name"] as? String
		uom = dictionary["uom"] as? String
	}

		
    /**
        Returns the dictionary representation for the current instance.
        
        - returns: NSDictionary.
    */
	public func dictionaryRepresentation() -> NSDictionary {

		let dictionary = NSMutableDictionary()

		dictionary.setValue(self.id, forKey: "id")
		dictionary.setValue(self.toolTip, forKey: "toolTip")
		dictionary.setValue(self.value, forKey: "value")
		dictionary.setValue(self.name, forKey: "name")
		dictionary.setValue(self.uom, forKey: "uom")

		return dictionary
	}

}
