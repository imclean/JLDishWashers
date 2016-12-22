//
//  Media.swift
//  JLDishwasher
//
//  Created by Iain McLean on 21/12/2016.
//  Copyright © 2016 Iain McLean. All rights reserved.
//

import Foundation

public class Media {
	public var images : Images?
	public var threeSixtyImages : ThreeSixtyimages?

    /**
        Returns an array of models based on given dictionary.
        
        Sample usage:
        let media_list = Media.modelsFromDictionaryArray(someDictionaryArrayFromJSON)

        - parameter array:  NSArray from JSON dictionary.

        - returns: Array of Media Instances.
    */
    public class func modelsFromDictionaryArray(array:NSArray) -> [Media] {
        var models:[Media] = []
        for item in array {
            models.append(Media(dictionary: item as! NSDictionary)!)
        }
        return models
    }

    /**
        Constructs the object based on the given dictionary.
        
        Sample usage:
        let media = Media(someDictionaryFromJSON)

        - parameter dictionary:  NSDictionary from JSON.

        - returns: Media Instance.
    */
	required public init?(dictionary: NSDictionary) {

		if (dictionary["images"] != nil) { images = Images(dictionary: dictionary["images"] as! NSDictionary) }
		if (dictionary["360images"] != nil) { threeSixtyImages = ThreeSixtyimages(dictionary: dictionary["360images"] as! NSDictionary) }
	}

		
    /**
        Returns the dictionary representation for the current instance.
        
        - returns: NSDictionary.
    */
	public func dictionaryRepresentation() -> NSDictionary {

		let dictionary = NSMutableDictionary()

		dictionary.setValue(self.images?.dictionaryRepresentation(), forKey: "images")
		dictionary.setValue(self.threeSixtyImages?.dictionaryRepresentation(), forKey: "360images")

		return dictionary
	}

}
