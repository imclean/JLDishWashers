//
//  DefaultCategory.swift
//  JLDishwasher
//
//  Created by Iain McLean on 21/12/2016.
//  Copyright © 2016 Iain McLean. All rights reserved.
//

import Foundation

public class DefaultCategory {
	public var id : Int?
	public var name : String?

    /**
        Returns an array of models based on given dictionary.
        
        Sample usage:
        let defaultCategory_list = DefaultCategory.modelsFromDictionaryArray(someDictionaryArrayFromJSON)

        - parameter array:  NSArray from JSON dictionary.

        - returns: Array of DefaultCategory Instances.
    */
    public class func modelsFromDictionaryArray(array:NSArray) -> [DefaultCategory] {
        var models:[DefaultCategory] = []
        for item in array {
            models.append(DefaultCategory(dictionary: item as! NSDictionary)!)
        }
        return models
    }

    /**
        Constructs the object based on the given dictionary.
        
        Sample usage:
        let defaultCategory = DefaultCategory(someDictionaryFromJSON)

        - parameter dictionary:  NSDictionary from JSON.

        - returns: DefaultCategory Instance.
    */
	required public init?(dictionary: NSDictionary) {

		id = dictionary["id"] as? Int
		name = dictionary["name"] as? String
	}

		
    /**
        Returns the dictionary representation for the current instance.
        
        - returns: NSDictionary.
    */
	public func dictionaryRepresentation() -> NSDictionary {

		let dictionary = NSMutableDictionary()

		dictionary.setValue(self.id, forKey: "id")
		dictionary.setValue(self.name, forKey: "name")

		return dictionary
	}

}
