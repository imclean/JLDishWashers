//
//  Images.swift
//  JLDishwasher
//
//  Created by Iain McLean on 21/12/2016.
//  Copyright © 2016 Iain McLean. All rights reserved.
//

import Foundation

public class Images {
	public var altText : String?
	public var urls : [String]?

    /**
        Returns an array of models based on given dictionary.
        
        Sample usage:
        let images_list = Images.modelsFromDictionaryArray(someDictionaryArrayFromJSON)

        - parameter array:  NSArray from JSON dictionary.

        - returns: Array of Images Instances.
    */
    public class func modelsFromDictionaryArray(array:NSArray) -> [Images] {
        var models:[Images] = []
        for item in array {
            models.append(Images(dictionary: item as! NSDictionary)!)
        }
        return models
    }

    /**
        Constructs the object based on the given dictionary.
        
        Sample usage:
        let images = Images(someDictionaryFromJSON)

        - parameter dictionary:  NSDictionary from JSON.

        - returns: Images Instance.
    */
	required public init?(dictionary: NSDictionary) {

		altText = dictionary["altText"] as? String
		urls = dictionary["urls"] as? [String]
    }

		
    /**
        Returns the dictionary representation for the current instance.
        
        - returns: NSDictionary.
    */
	public func dictionaryRepresentation() -> NSDictionary {

		let dictionary = NSMutableDictionary()

		dictionary.setValue(self.altText, forKey: "altText")

		return dictionary
	}

}
