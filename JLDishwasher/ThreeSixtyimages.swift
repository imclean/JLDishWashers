//
//  ThreeSixtyimages.swift
//  JLDishwasher
//
//  Created by Iain McLean on 21/12/2016.
//  Copyright © 2016 Iain McLean. All rights reserved.
//


import Foundation

public class ThreeSixtyimages {
	public var swfUrl : String?
	public var urls : [String]?

    /**
    Returns an array of models based on given dictionary.
    
    Sample usage:
    let 360images_list = 360images.modelsFromDictionaryArray(someDictionaryArrayFromJSON)

    - parameter array:  NSArray from JSON dictionary.

    - returns: Array of 360images Instances.
     */
    
    public class func modelsFromDictionaryArray(array:NSArray) -> [ThreeSixtyimages] {
        var models:[ThreeSixtyimages] = []
        for item in array
        {
            models.append(ThreeSixtyimages(dictionary: item as! NSDictionary)!)
        }
        return models
    }

    /**
        Constructs the object based on the given dictionary.
        
        Sample usage:
        let ThreeSixtyimages = ThreeSixtyimages(someDictionaryFromJSON)

        - parameter dictionary:  NSDictionary from JSON.

        - returns: ThreeSixtyimages Instance.
    */
    
	required public init?(dictionary: NSDictionary) {
		swfUrl = dictionary["swfUrl"] as? String
		urls = dictionary["urls"] as? [String]
	}

		
    /**
        Returns the dictionary representation for the current instance.
        
        - returns: NSDictionary.
    */
	public func dictionaryRepresentation() -> NSDictionary {

		let dictionary = NSMutableDictionary()

		dictionary.setValue(self.swfUrl, forKey: "swfUrl")
        dictionary.setValue(self.urls, forKey: "urls")
		return dictionary
	}

}
