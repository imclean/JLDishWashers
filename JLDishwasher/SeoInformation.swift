//
//  SeoInformation.swift
//  JLDishwasher
//
//  Created by Iain McLean on 21/12/2016.
//  Copyright © 2016 Iain McLean. All rights reserved.
//

import Foundation

public class SeoInformation {
	public var title : String?
	public var description : String?

    /**
        Returns an array of models based on given dictionary.
        
        Sample usage:
        let seoInformation_list = SeoInformation.modelsFromDictionaryArray(someDictionaryArrayFromJSON)

        - parameter array:  NSArray from JSON dictionary.

        - returns: Array of SeoInformation Instances.
    */
    public class func modelsFromDictionaryArray(array:NSArray) -> [SeoInformation] {
        var models:[SeoInformation] = []
        for item in array {
            models.append(SeoInformation(dictionary: item as! NSDictionary)!)
        }
        return models
    }

    /**
        Constructs the object based on the given dictionary.
        
        Sample usage:
        let seoInformation = SeoInformation(someDictionaryFromJSON)

        - parameter dictionary:  NSDictionary from JSON.

        - returns: SeoInformation Instance.
    */
	required public init?(dictionary: NSDictionary) {

		title = dictionary["title"] as? String
		description = dictionary["description"] as? String
	}

    /**
        Returns the dictionary representation for the current instance.
        
        - returns: NSDictionary.
    */
	public func dictionaryRepresentation() -> NSDictionary {

		let dictionary = NSMutableDictionary()

		dictionary.setValue(self.title, forKey: "title")
		dictionary.setValue(self.description, forKey: "description")

		return dictionary
	}

}
