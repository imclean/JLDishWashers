//
//  Product.swift
//  JLDishwasher
//
//  Created by Iain McLean on 21/12/2016.
//  Copyright © 2016 Iain McLean. All rights reserved.
//

import Foundation

public class Product {
    public var productId : String?
    public var averageRating : Double?
    public var additionalServices : [String]?
    public var displaySpecialOffer : String?
    public var colorWheelMessage : String?
    public var compare : String?
    public var type : String?
    public var title : String?
    public var code : Int?
    public var reviews : Int?
    public var price : Price?
    public var image : String?
    public var outOfStock : String?
    public var availabilityMessage : String?
    public var fabric : String?
    public var colorSwatchSelected : Int?
    public var promoMessages : PromoMessages?
    public var emailMeWhenAvailable : String?
    
    /**
     Returns an array of products based on given dictionary.
     
     Sample usage:
     let product_list = Product.modelsFromDictionaryArray(someDictionaryArrayFromJSON)
     
     - parameter array:  NSArray from JSON dictionary.
     
     - returns: Array of Product Instances.
     */
    
    public class func modelsFromDictionaryArray(array:NSArray) -> [Product] {
        var models:[Product] = []
        for item in array {
            models.append(Product(dictionary: item as! NSDictionary)!)
        }
        return models
    }
    
    /**
     Constructs the object based on the given dictionary.
     
     Sample usage:
     let Product = Product(someDictionaryFromJSON)
     
     - parameter dictionary:  NSDictionary from JSON.
     
     - returns: Product Instance.
     */
    
    required public init?(dictionary: NSDictionary) {
        productId = dictionary["productId"] as? String
        averageRating = dictionary["averageRating"] as? Double
        if (dictionary["additionalServices"] != nil) {
            additionalServices = dictionary["additionalServices"] as? [String]
        }
        displaySpecialOffer = dictionary["displaySpecialOffer"] as? String
        colorWheelMessage = dictionary["colorWheelMessage"] as? String
        compare = dictionary["compare"] as? String
        type = dictionary["type"] as? String
        title = dictionary["title"] as? String
        code = dictionary["code"] as? Int
        reviews = dictionary["reviews"] as? Int
        if (dictionary["price"] != nil) { price = Price(dictionary: dictionary["price"] as! NSDictionary) }
        image = dictionary["image"] as? String
        outOfStock = dictionary["outOfStock"] as? String
        availabilityMessage = dictionary["availabilityMessage"] as? String
        fabric = dictionary["fabric"] as? String
        colorSwatchSelected = dictionary["colorSwatchSelected"] as? Int
        if (dictionary["promoMessages"] != nil) { promoMessages = PromoMessages(dictionary: dictionary["promoMessages"] as! NSDictionary) }
        emailMeWhenAvailable = dictionary["emailMeWhenAvailable"] as? String
    }
    
    
    /**
     Returns the dictionary representation for the current instance.
     
     - returns: NSDictionary.
     */
    
    public func dictionaryRepresentation() -> NSDictionary {
        
        let dictionary = NSMutableDictionary()
        
        dictionary.setValue(self.productId, forKey: "productId")
        dictionary.setValue(self.averageRating, forKey: "averageRating")
        dictionary.setValue(self.displaySpecialOffer, forKey: "displaySpecialOffer")
        dictionary.setValue(self.colorWheelMessage, forKey: "colorWheelMessage")
        dictionary.setValue(self.compare, forKey: "compare")
        dictionary.setValue(self.type, forKey: "type")
        dictionary.setValue(self.title, forKey: "title")
        dictionary.setValue(self.code, forKey: "code")
        dictionary.setValue(self.reviews, forKey: "reviews")
        dictionary.setValue(self.price?.dictionaryRepresentation(), forKey: "price")
        dictionary.setValue(self.image, forKey: "image")
        dictionary.setValue(self.outOfStock, forKey: "outOfStock")
        dictionary.setValue(self.availabilityMessage, forKey: "availabilityMessage")
        dictionary.setValue(self.fabric, forKey: "fabric")
        dictionary.setValue(self.colorSwatchSelected, forKey: "colorSwatchSelected")
        dictionary.setValue(self.promoMessages?.dictionaryRepresentation(), forKey: "promoMessages")
        dictionary.setValue(self.emailMeWhenAvailable, forKey: "emailMeWhenAvailable")
        
        return dictionary
    }
    
}
