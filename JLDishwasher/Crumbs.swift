//
//  Crumbs.swift
//  JLDishwasher
//
//  Created by Iain McLean on 21/12/2016.
//  Copyright © 2016 Iain McLean. All rights reserved.
//

import Foundation

public class Crumbs {
	public var displayName : String?
	public var type : String?
	public var item : Int?
	public var clickable : Bool?

    /**
        Returns an array of models based on given dictionary.
        
        Sample usage:
        let crumbs_list = Crumbs.modelsFromDictionaryArray(someDictionaryArrayFromJSON)

        - parameter array:  NSArray from JSON dictionary.

        - returns: Array of Crumbs Instances.
    */
    public class func modelsFromDictionaryArray(array:NSArray) -> [Crumbs] {
        var models:[Crumbs] = []
        for item in array {
            models.append(Crumbs(dictionary: item as! NSDictionary)!)
        }
        return models
    }

    /**
        Constructs the object based on the given dictionary.
        
        Sample usage:
        let crumbs = Crumbs(someDictionaryFromJSON)

        - parameter dictionary:  NSDictionary from JSON.

        - returns: Crumbs Instance.
    */
	required public init?(dictionary: NSDictionary) {
		displayName = dictionary["displayName"] as? String
		type = dictionary["type"] as? String
		item = dictionary["item"] as? Int
		clickable = dictionary["clickable"] as? Bool
	}

		
    /**
        Returns the dictionary representation for the current instance.
        
        - returns: NSDictionary.
    */
	public func dictionaryRepresentation() -> NSDictionary {

		let dictionary = NSMutableDictionary()

		dictionary.setValue(self.displayName, forKey: "displayName")
		dictionary.setValue(self.type, forKey: "type")
		dictionary.setValue(self.item, forKey: "item")
		dictionary.setValue(self.clickable, forKey: "clickable")

		return dictionary
	}

}
