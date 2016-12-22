//
//  Skus.swift
//  JLDishwasher
//
//  Created by Iain McLean on 21/12/2016.
//  Copyright © 2016 Iain McLean. All rights reserved.
//

import Foundation

public class Skus {
	public var id : Int?
	public var shortSkuTitle : String?
	public var d2cDeliveryLeadTime : String?
	public var unitPriceInfo : UnitPriceInfo?
	public var sizeHeadline : String?
	public var color : String?
	public var size : String?
	public var availability : Availability?
	public var price : Price?
	public var code : Int?
	public var skuTitle : String?
	public var leadTime : String?
	public var media : Media?
	public var brandName : String?
	public var swatchUrl : String?

    /**
        Returns an array of models based on given dictionary.
        
        Sample usage:
        let skus_list = Skus.modelsFromDictionaryArray(someDictionaryArrayFromJSON)

        - parameter array:  NSArray from JSON dictionary.

        - returns: Array of Skus Instances.
    */
    public class func modelsFromDictionaryArray(array:NSArray) -> [Skus]     {
        var models:[Skus] = []
        for item in array         {
            models.append(Skus(dictionary: item as! NSDictionary)!)
        }
        return models
    }

    /**
        Constructs the object based on the given dictionary.
        
        Sample usage:
        let skus = Skus(someDictionaryFromJSON)

        - parameter dictionary:  NSDictionary from JSON.

        - returns: Skus Instance.
    */
	required public init?(dictionary: NSDictionary) {

		id = dictionary["id"] as? Int
		shortSkuTitle = dictionary["shortSkuTitle"] as? String
		d2cDeliveryLeadTime = dictionary["d2cDeliveryLeadTime"] as? String
		if (dictionary["unitPriceInfo"] != nil) { unitPriceInfo = UnitPriceInfo(dictionary: dictionary["unitPriceInfo"] as! NSDictionary) }
		sizeHeadline = dictionary["sizeHeadline"] as? String
		color = dictionary["color"] as? String
		size = dictionary["size"] as? String
		if (dictionary["availability"] != nil) { availability = Availability(dictionary: dictionary["availability"] as! NSDictionary) }
		if (dictionary["price"] != nil) { price = Price(dictionary: dictionary["price"] as! NSDictionary) }
		code = dictionary["code"] as? Int
		skuTitle = dictionary["skuTitle"] as? String
		leadTime = dictionary["leadTime"] as? String
		if (dictionary["media"] != nil) { media = Media(dictionary: dictionary["media"] as! NSDictionary) }
		brandName = dictionary["brandName"] as? String
		swatchUrl = dictionary["swatchUrl"] as? String
	}

		
    /**
        Returns the dictionary representation for the current instance.
        
        - returns: NSDictionary.
    */
	public func dictionaryRepresentation() -> NSDictionary {

		let dictionary = NSMutableDictionary()

		dictionary.setValue(self.id, forKey: "id")
		dictionary.setValue(self.shortSkuTitle, forKey: "shortSkuTitle")
		dictionary.setValue(self.d2cDeliveryLeadTime, forKey: "d2cDeliveryLeadTime")
		dictionary.setValue(self.unitPriceInfo?.dictionaryRepresentation(), forKey: "unitPriceInfo")
		dictionary.setValue(self.sizeHeadline, forKey: "sizeHeadline")
		dictionary.setValue(self.color, forKey: "color")
		dictionary.setValue(self.size, forKey: "size")
		dictionary.setValue(self.availability?.dictionaryRepresentation(), forKey: "availability")
		dictionary.setValue(self.price?.dictionaryRepresentation(), forKey: "price")
		dictionary.setValue(self.code, forKey: "code")
		dictionary.setValue(self.skuTitle, forKey: "skuTitle")
		dictionary.setValue(self.leadTime, forKey: "leadTime")
		dictionary.setValue(self.media?.dictionaryRepresentation(), forKey: "media")
		dictionary.setValue(self.brandName, forKey: "brandName")
		dictionary.setValue(self.swatchUrl, forKey: "swatchUrl")

		return dictionary
	}

}
