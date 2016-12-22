//
//  PromoMessage.swift
//  JLDishwasher
//
//  Created by Iain McLean on 21/12/2016.
//  Copyright © 2016 Iain McLean. All rights reserved.
//

import Foundation

public class PromoMessages {
    public var customSpecialOffer : CustomSpecialOffer?
    public var priceMatched : String?
    public var offer : String?
    public var bundleHeadline : String?
    public var customPromotionalMessage : String?
    
    /**
     Returns an array of PromoMessages based on given dictionary.
     
     Sample usage:
     let promoMessages_list = PromoMessages.modelsFromDictionaryArray(someDictionaryArrayFromJSON)
     
     - parameter array:  NSArray from JSON dictionary.
     
     - returns: Array of PromoMessages Instances.
     */
    
    public class func modelsFromDictionaryArray(array:NSArray) -> [PromoMessages] {
        var models:[PromoMessages] = []
        for item in array
        {
            models.append(PromoMessages(dictionary: item as! NSDictionary)!)
        }
        return models
    }
    
    /**
     Constructs the object based on the given dictionary.
     
     Sample usage:
     let promoMessages = PromoMessages(someDictionaryFromJSON)
     
     - parameter dictionary:  NSDictionary from JSON.
     
     - returns: PromoMessages Instance.
     */
    
    required public init?(dictionary: NSDictionary) {
        
        if (dictionary["customSpecialOffer"] != nil) { customSpecialOffer = CustomSpecialOffer(dictionary: dictionary["customSpecialOffer"] as! NSDictionary) }
        priceMatched = dictionary["priceMatched"] as? String
        offer = dictionary["offer"] as? String
        bundleHeadline = dictionary["bundleHeadline"] as? String
        customPromotionalMessage = dictionary["customPromotionalMessage"] as? String
    }
    
    
    /**
     Returns the dictionary representation for the current instance.
     
     - returns: NSDictionary.
     */
    
    public func dictionaryRepresentation() -> NSDictionary {
        
        let dictionary = NSMutableDictionary()
        
        dictionary.setValue(self.customSpecialOffer?.dictionaryRepresentation(), forKey: "customSpecialOffer")
        dictionary.setValue(self.priceMatched, forKey: "priceMatched")
        dictionary.setValue(self.offer, forKey: "offer")
        dictionary.setValue(self.bundleHeadline, forKey: "bundleHeadline")
        dictionary.setValue(self.customPromotionalMessage, forKey: "customPromotionalMessage")
        
        return dictionary
    }
    
}
