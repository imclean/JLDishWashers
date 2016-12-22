//
//  OptionalServices.swift
//  JLDishwasher
//
//  Created by Iain McLean on 21/12/2016.
//  Copyright © 2016 Iain McLean. All rights reserved.
//

import Foundation

public class OptionalServices {
	public var id : Int?
	public var associatedProductId : Int?
	public var title : String?
	public var description : String?
	public var price : Double?
	public var orderOnSite : Int?

    /**
        Returns an array of models based on given dictionary.
        
        Sample usage:
        let optionalServices_list = OptionalServices.modelsFromDictionaryArray(someDictionaryArrayFromJSON)

        - parameter array:  NSArray from JSON dictionary.

        - returns: Array of OptionalServices Instances.
    */
    public class func modelsFromDictionaryArray(array:NSArray) -> [OptionalServices] {
        var models:[OptionalServices] = []
        for item in array {
            models.append(OptionalServices(dictionary: item as! NSDictionary)!)
        }
        return models
    }

    /**
        Constructs the object based on the given dictionary.
        
        Sample usage:
        let optionalServices = OptionalServices(someDictionaryFromJSON)

        - parameter dictionary:  NSDictionary from JSON.

        - returns: OptionalServices Instance.
    */
	required public init?(dictionary: NSDictionary) {

		id = dictionary["id"] as? Int
		associatedProductId = dictionary["associatedProductId"] as? Int
		title = dictionary["title"] as? String
		description = dictionary["description"] as? String
		price = dictionary["price"] as? Double
		orderOnSite = dictionary["orderOnSite"] as? Int
	}

		
    /**
        Returns the dictionary representation for the current instance.
        
        - returns: NSDictionary.
    */
	public func dictionaryRepresentation() -> NSDictionary {

		let dictionary = NSMutableDictionary()

		dictionary.setValue(self.id, forKey: "id")
		dictionary.setValue(self.associatedProductId, forKey: "associatedProductId")
		dictionary.setValue(self.title, forKey: "title")
		dictionary.setValue(self.description, forKey: "description")
		dictionary.setValue(self.price, forKey: "price")
		dictionary.setValue(self.orderOnSite, forKey: "orderOnSite")

		return dictionary
	}

}
