//
//  Options.swift
//  JLDishwasher
//
//  Created by Iain McLean on 21/12/2016.
//  Copyright © 2016 Iain McLean. All rights reserved.
//

import Foundation

public class Options {
	public var dateMessage : String?
	public var id : Int?
	public var price : Double?
	public var trialMessage : String?
	public var standardDescription : String?
	public var date : String?
	public var shortDescription : String?
	public var currency : String?

    /**
        Returns an array of models based on given dictionary.
        
        Sample usage:
        let options_list = Options.modelsFromDictionaryArray(someDictionaryArrayFromJSON)

        - parameter array:  NSArray from JSON dictionary.

        - returns: Array of Options Instances.
    */
    public class func modelsFromDictionaryArray(array:NSArray) -> [Options] {
        var models:[Options] = []
        for item in array {
            models.append(Options(dictionary: item as! NSDictionary)!)
        }
        return models
    }

    /**
        Constructs the object based on the given dictionary.
        
        Sample usage:
        let options = Options(someDictionaryFromJSON)

        - parameter dictionary:  NSDictionary from JSON.

        - returns: Options Instance.
    */
	required public init?(dictionary: NSDictionary) {

		dateMessage = dictionary["dateMessage"] as? String
		id = dictionary["id"] as? Int
		price = dictionary["price"] as? Double
		trialMessage = dictionary["trialMessage"] as? String
		standardDescription = dictionary["standardDescription"] as? String
		date = dictionary["date"] as? String
		shortDescription = dictionary["shortDescription"] as? String
		currency = dictionary["currency"] as? String
	}

		
    /**
        Returns the dictionary representation for the current instance.
        
        - returns: NSDictionary.
    */
	public func dictionaryRepresentation() -> NSDictionary {

		let dictionary = NSMutableDictionary()

		dictionary.setValue(self.dateMessage, forKey: "dateMessage")
		dictionary.setValue(self.id, forKey: "id")
		dictionary.setValue(self.price, forKey: "price")
		dictionary.setValue(self.trialMessage, forKey: "trialMessage")
		dictionary.setValue(self.standardDescription, forKey: "standardDescription")
		dictionary.setValue(self.date, forKey: "date")
		dictionary.setValue(self.shortDescription, forKey: "shortDescription")
		dictionary.setValue(self.currency, forKey: "currency")

		return dictionary
	}

}
