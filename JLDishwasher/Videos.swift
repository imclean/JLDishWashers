//
//  Videos.swift
//  JLDishwasher
//
//  Created by Iain McLean on 21/12/2016.
//  Copyright © 2016 Iain McLean. All rights reserved.
//

import Foundation

public class Videos {

    /**
        Returns an array of models based on given dictionary.
        
        Sample usage:
        let videos_list = Videos.modelsFromDictionaryArray(someDictionaryArrayFromJSON)

        - parameter array:  NSArray from JSON dictionary.

        - returns: Array of Videos Instances.
    */
    public class func modelsFromDictionaryArray(array:NSArray) -> [Videos] {
        var models:[Videos] = []
        for item in array {
            models.append(Videos(dictionary: item as! NSDictionary)!)
        }
        return models
    }

    /**
        Constructs the object based on the given dictionary.
        
        Sample usage:
        let videos = Videos(someDictionaryFromJSON)

        - parameter dictionary:  NSDictionary from JSON.

        - returns: Videos Instance.
    */
	required public init?(dictionary: NSDictionary) {

	}

		
    /**
        Returns the dictionary representation for the current instance.
        
        - returns: NSDictionary.
    */
	public func dictionaryRepresentation() -> NSDictionary {

		let dictionary = NSMutableDictionary()


		return dictionary
	}

}
