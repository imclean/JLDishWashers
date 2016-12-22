//
//  ProductDetail.swift
//  JLDishwasher
//
//  Created by Iain McLean on 21/12/2016.
//  Copyright © 2016 Iain McLean. All rights reserved.
//

import Foundation

public class ProductDetail {
    public var crumbs : Array<Crumbs>?
    public var media : Media?
    public var productId : String?
    public var defaultCategory : DefaultCategory?
    public var ageRestriction : Int?
    public var type : String?
    public var displaySpecialOffer : String?
    public var seoURL : String?
    public var setId : String?
    public var code : Int?
    public var title : String?
    public var skus : Array<Skus>?
    public var isFBL : String?
    public var setInformation : String?
    public var storeOnly : String?
    public var additionalServices : AdditionalServices?
    public var deliverySummary : Array<DeliverySummary>?
    public var details : Details?
    public var promotionalFeatures : Array<PromotionalFeatures>?
    public var price : Price?
    public var defaultSku : Int?
    public var isInTopNkuCategory : String?
    public var specialOffers : SpecialOffers?
    public var deliveries : Array<Deliveries>?
    public var templateType : String?
    public var seoInformation : SeoInformation?
    public var releaseDateTimestamp : Int?
    public var emailMeWhenAvailable : String?
    
    /**
     Returns an array of models based on given dictionary.
     
     Sample usage:
     let ProductDetail_list = ProductDetail.modelsFromDictionaryArray(someDictionaryArrayFromJSON)
     
     - parameter array:  NSArray from JSON dictionary.
     
     - returns: Array of ProductDetail Instances.
     */
    
    public class func modelsFromDictionaryArray(array:NSArray) -> [ProductDetail] {
        var models:[ProductDetail] = []
        for item in array
        {
            models.append(ProductDetail(dictionary: item as! NSDictionary)!)
        }
        return models
    }
    
    /**
     Constructs the object based on the given dictionary.
     
     Sample usage:
     let ProductDetail = ProductDetail(someDictionaryFromJSON)
     
     - parameter dictionary:  NSDictionary from JSON.
     
     - returns: ProductDetail Instance.
     */
    
    required public init?(dictionary: NSDictionary) {
        
        if (dictionary["crumbs"] != nil) { crumbs = Crumbs.modelsFromDictionaryArray(array: dictionary["crumbs"] as! NSArray) }
        if (dictionary["media"] != nil) { media = Media(dictionary: dictionary["media"] as! NSDictionary) }
        productId = dictionary["productId"] as? String
        if (dictionary["defaultCategory"] != nil) { defaultCategory = DefaultCategory(dictionary: dictionary["defaultCategory"] as! NSDictionary) }
        ageRestriction = dictionary["ageRestriction"] as? Int
        type = dictionary["type"] as? String
        displaySpecialOffer = dictionary["displaySpecialOffer"] as? String
        seoURL = dictionary["seoURL"] as? String
        setId = dictionary["setId"] as? String
        code = dictionary["code"] as? Int
        title = dictionary["title"] as? String
        if (dictionary["skus"] != nil) { skus = Skus.modelsFromDictionaryArray(array: dictionary["skus"] as! NSArray) }
        isFBL = dictionary["isFBL"] as? String
        setInformation = dictionary["setInformation"] as? String
        storeOnly = dictionary["storeOnly"] as? String
        if (dictionary["additionalServices"] != nil) { additionalServices = AdditionalServices(dictionary: dictionary["additionalServices"] as! NSDictionary) }
        if (dictionary["deliverySummary"] != nil) { deliverySummary = DeliverySummary.modelsFromDictionaryArray(array: dictionary["deliverySummary"] as! NSArray) }
        if (dictionary["details"] != nil) { details = Details(dictionary: dictionary["details"] as! NSDictionary) }
        if (dictionary["promotionalFeatures"] != nil) { promotionalFeatures = PromotionalFeatures.modelsFromDictionaryArray(array: dictionary["promotionalFeatures"] as! NSArray) }
        if (dictionary["price"] != nil) { price = Price(dictionary: dictionary["price"] as! NSDictionary) }
        defaultSku = dictionary["defaultSku"] as? Int
        isInTopNkuCategory = dictionary["isInTopNkuCategory"] as? String
        if (dictionary["specialOffers"] != nil) { specialOffers = SpecialOffers(dictionary: dictionary["specialOffers"] as! NSDictionary) }
        if (dictionary["deliveries"] != nil) { deliveries = Deliveries.modelsFromDictionaryArray(array: dictionary["deliveries"] as! NSArray) }
        templateType = dictionary["templateType"] as? String
        if (dictionary["seoInformation"] != nil) { seoInformation = SeoInformation(dictionary: dictionary["seoInformation"] as! NSDictionary) }
        releaseDateTimestamp = dictionary["releaseDateTimestamp"] as? Int
        emailMeWhenAvailable = dictionary["emailMeWhenAvailable"] as? String
        
    }
    
    
    /**
     Returns the dictionary representation for the current instance.
     
     - returns: NSDictionary.
     */
    
    public func dictionaryRepresentation() -> NSDictionary {
        
        let dictionary = NSMutableDictionary()
        
        dictionary.setValue(self.media?.dictionaryRepresentation(), forKey: "media")
        dictionary.setValue(self.productId, forKey: "productId")
        dictionary.setValue(self.defaultCategory?.dictionaryRepresentation(), forKey: "defaultCategory")
        dictionary.setValue(self.ageRestriction, forKey: "ageRestriction")
        dictionary.setValue(self.type, forKey: "type")
        dictionary.setValue(self.displaySpecialOffer, forKey: "displaySpecialOffer")
        dictionary.setValue(self.seoURL, forKey: "seoURL")
        dictionary.setValue(self.setId, forKey: "setId")
        dictionary.setValue(self.code, forKey: "code")
        dictionary.setValue(self.title, forKey: "title")
        dictionary.setValue(self.isFBL, forKey: "isFBL")
        dictionary.setValue(self.setInformation, forKey: "setInformation")
        dictionary.setValue(self.storeOnly, forKey: "storeOnly")
        dictionary.setValue(self.additionalServices?.dictionaryRepresentation(), forKey: "additionalServices")
        dictionary.setValue(self.details?.dictionaryRepresentation(), forKey: "details")
        dictionary.setValue(self.price?.dictionaryRepresentation(), forKey: "price")
        dictionary.setValue(self.defaultSku, forKey: "defaultSku")
        dictionary.setValue(self.isInTopNkuCategory, forKey: "isInTopNkuCategory")
        dictionary.setValue(self.specialOffers?.dictionaryRepresentation(), forKey: "specialOffers")
        dictionary.setValue(self.templateType, forKey: "templateType")
        dictionary.setValue(self.seoInformation?.dictionaryRepresentation(), forKey: "seoInformation")
        dictionary.setValue(self.releaseDateTimestamp, forKey: "releaseDateTimestamp")
        dictionary.setValue(self.emailMeWhenAvailable, forKey: "emailMeWhenAvailable")
        
        return dictionary
    }
    
}
