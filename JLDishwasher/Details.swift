//
//  Details.swift
//  JLDishwasher
//
//  Created by Iain McLean on 21/12/2016.
//  Copyright © 2016 Iain McLean. All rights reserved.
//

import Foundation

public class Details {
	public var features : Array<Features>?
	public var editorsNotes : String?
	public var buyingGuides : Array<BuyingGuides>?
	public var termsAndConditions : String?
    public var productInformation: String?
    /**
        Returns an array of models based on given dictionary.
        
        Sample usage:
        let details_list = Details.modelsFromDictionaryArray(someDictionaryArrayFromJSON)

        - parameter array:  NSArray from JSON dictionary.

        - returns: Array of Details Instances.
    */
    public class func modelsFromDictionaryArray(array:NSArray) -> [Details] {
        var models:[Details] = []
        for item in array {
            models.append(Details(dictionary: item as! NSDictionary)!)
        }
        return models
    }

    /**
        Constructs the object based on the given dictionary.
        
        Sample usage:
        let details = Details(someDictionaryFromJSON)

        - parameter dictionary:  NSDictionary from JSON.

        - returns: Details Instance.
    */
	required public init?(dictionary: NSDictionary) {

		if (dictionary["features"] != nil) { features = Features.modelsFromDictionaryArray(array: dictionary["features"] as! NSArray) }
		editorsNotes = dictionary["editorsNotes"] as? String
		if (dictionary["buyingGuides"] != nil) { buyingGuides = BuyingGuides.modelsFromDictionaryArray(array: dictionary["buyingGuides"] as! NSArray) }
		termsAndConditions = dictionary["termsAndConditions"] as? String
        productInformation = dictionary["productInformation"] as? String
	}

		
    /**
        Returns the dictionary representation for the current instance.
        
        - returns: NSDictionary.
    */
	public func dictionaryRepresentation() -> NSDictionary {

		let dictionary = NSMutableDictionary()

		dictionary.setValue(self.editorsNotes, forKey: "editorsNotes")
		dictionary.setValue(self.termsAndConditions, forKey: "termsAndConditions")
        dictionary.setValue(self.productInformation, forKey: "productInformation")
        
		return dictionary
	}

}
