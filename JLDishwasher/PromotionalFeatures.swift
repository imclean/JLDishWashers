//
//  PromotionalFeatures.swift
//  JLDishwasher
//
//  Created by Iain McLean on 21/12/2016.
//  Copyright © 2016 Iain McLean. All rights reserved.
//

import Foundation

public class PromotionalFeatures {
	public var linkUrl : String?
	public var title : String?
	public var iconUrl : String?
	public var description : String?
	public var longDescription : String?

    /**
        Returns an array of models based on given dictionary.
        
        Sample usage:
        let promotionalFeatures_list = PromotionalFeatures.modelsFromDictionaryArray(someDictionaryArrayFromJSON)

        - parameter array:  NSArray from JSON dictionary.

        - returns: Array of PromotionalFeatures Instances.
    */
    public class func modelsFromDictionaryArray(array:NSArray) -> [PromotionalFeatures] {
        var models:[PromotionalFeatures] = []
        for item in array {
            models.append(PromotionalFeatures(dictionary: item as! NSDictionary)!)
        }
        return models
    }

    /**
        Constructs the object based on the given dictionary.
        
        Sample usage:
        let promotionalFeatures = PromotionalFeatures(someDictionaryFromJSON)

        - parameter dictionary:  NSDictionary from JSON.

        - returns: PromotionalFeatures Instance.
    */
	required public init?(dictionary: NSDictionary) {

		linkUrl = dictionary["linkUrl"] as? String
		title = dictionary["title"] as? String
		iconUrl = dictionary["iconUrl"] as? String
		description = dictionary["description"] as? String
		longDescription = dictionary["longDescription"] as? String
	}

		
    /**
        Returns the dictionary representation for the current instance.
        
        - returns: NSDictionary.
    */
	public func dictionaryRepresentation() -> NSDictionary {

		let dictionary = NSMutableDictionary()

		dictionary.setValue(self.linkUrl, forKey: "linkUrl")
		dictionary.setValue(self.title, forKey: "title")
		dictionary.setValue(self.iconUrl, forKey: "iconUrl")
		dictionary.setValue(self.description, forKey: "description")
		dictionary.setValue(self.longDescription, forKey: "longDescription")

		return dictionary
	}

}
