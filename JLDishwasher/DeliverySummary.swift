//
//  DeliverySummary.swift
//  JLDishwasher
//
//  Created by Iain McLean on 21/12/2016.
//  Copyright © 2016 Iain McLean. All rights reserved.
//

import Foundation

public class DeliverySummary {
	public var summary : String?
	public var currency : String?
	public var title : String?
	public var trialMessage : String?
	public var price : Double?
	public var deliveryType : String?

    /**
        Returns an array of models based on given dictionary.
        
        Sample usage:
        let deliverySummary_list = DeliverySummary.modelsFromDictionaryArray(someDictionaryArrayFromJSON)

        - parameter array:  NSArray from JSON dictionary.

        - returns: Array of DeliverySummary Instances.
    */
    public class func modelsFromDictionaryArray(array:NSArray) -> [DeliverySummary] {
        var models:[DeliverySummary] = []
        for item in array {
            models.append(DeliverySummary(dictionary: item as! NSDictionary)!)
        }
        return models
    }

    /**
        Constructs the object based on the given dictionary.
        
        Sample usage:
        let deliverySummary = DeliverySummary(someDictionaryFromJSON)

        - parameter dictionary:  NSDictionary from JSON.

        - returns: DeliverySummary Instance.
    */
	required public init?(dictionary: NSDictionary) {

		summary = dictionary["summary"] as? String
		currency = dictionary["currency"] as? String
		title = dictionary["title"] as? String
		trialMessage = dictionary["trialMessage"] as? String
		price = dictionary["price"] as? Double
		deliveryType = dictionary["deliveryType"] as? String
	}

		
    /**
        Returns the dictionary representation for the current instance.
        
        - returns: NSDictionary.
    */
	public func dictionaryRepresentation() -> NSDictionary {

		let dictionary = NSMutableDictionary()

		dictionary.setValue(self.summary, forKey: "summary")
		dictionary.setValue(self.currency, forKey: "currency")
		dictionary.setValue(self.title, forKey: "title")
		dictionary.setValue(self.trialMessage, forKey: "trialMessage")
		dictionary.setValue(self.price, forKey: "price")
		dictionary.setValue(self.deliveryType, forKey: "deliveryType")

		return dictionary
	}

}
