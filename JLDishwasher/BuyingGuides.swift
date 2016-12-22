//
//  BuyingGuides.swift
//  JLDishwasher
//
//  Created by Iain McLean on 21/12/2016.
//  Copyright © 2016 Iain McLean. All rights reserved.
//

import Foundation

public class BuyingGuides {
	public var linkUrl : String?
	public var linkText : String?
	public var title : String?
	public var image : String?
	public var longDescription : String?

    /**
        Returns an array of models based on given dictionary.
        
        Sample usage:
        let buyingGuides_list = BuyingGuides.modelsFromDictionaryArray(someDictionaryArrayFromJSON)

        - parameter array:  NSArray from JSON dictionary.

        - returns: Array of BuyingGuides Instances.
    */
    public class func modelsFromDictionaryArray(array:NSArray) -> [BuyingGuides] {
        var models:[BuyingGuides] = []
        for item in array {
            models.append(BuyingGuides(dictionary: item as! NSDictionary)!)
        }
        return models
    }

    /**
        Constructs the object based on the given dictionary.
        
        Sample usage:
        let buyingGuides = BuyingGuides(someDictionaryFromJSON)

        - parameter dictionary:  NSDictionary from JSON.

        - returns: BuyingGuides Instance.
    */
	required public init?(dictionary: NSDictionary) {

		linkUrl = dictionary["linkUrl"] as? String
		linkText = dictionary["linkText"] as? String
		title = dictionary["title"] as? String
		image = dictionary["image"] as? String
		longDescription = dictionary["longDescription"] as? String
	}

		
    /**
        Returns the dictionary representation for the current instance.
        
        - returns: NSDictionary.
    */
	public func dictionaryRepresentation() -> NSDictionary {

		let dictionary = NSMutableDictionary()

		dictionary.setValue(self.linkUrl, forKey: "linkUrl")
		dictionary.setValue(self.linkText, forKey: "linkText")
		dictionary.setValue(self.title, forKey: "title")
		dictionary.setValue(self.image, forKey: "image")
		dictionary.setValue(self.longDescription, forKey: "longDescription")

		return dictionary
	}

}
