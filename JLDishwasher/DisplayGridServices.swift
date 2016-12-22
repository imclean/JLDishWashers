//
//  DisplayGridServices.swift
//  JLDishwasher
//
//  Created by Iain McLean on 21/12/2016.
//  Copyright © 2016 Iain McLean. All rights reserved.
//

import Foundation

class DisplayGridServices {
    var servicesDelegate:DisplayGridServicesDelegate!
    
    init(withDelegate delegate:DisplayGridServicesDelegate) {
        servicesDelegate = delegate
    }
}

// MARK: - Actions

extension DisplayGridServices {
    
    func collectDishwashers() {
        let url = URL(string: "https://api.johnlewis.com/v1/products/search?q=dishwasher&key=Wu1Xqn3vNrd1p7hqkvB6hEu0G9OrsYGb&pageSize=20")
        URLSession.shared.dataTask(with: url!, completionHandler: {
            [weak self] data, response, error in
            if(error != nil){
                if let strongSelf = self {
                    if let error = error {
                        strongSelf.servicesDelegate.didFailCollectingProductsWith(error: error.localizedDescription)
                    } else {
                        strongSelf.servicesDelegate.didFailCollectingProductsWith(error: NSLocalizedString("Error collecting products", comment: ""))
                    }
                }
            }else{
                do{
                    let json = try JSONSerialization.jsonObject(with: data!, options:.allowFragments) as! [String : AnyObject]
                    let dat = try JSONSerialization.data(withJSONObject: json, options:[.prettyPrinted])
                    let string = NSString(string:String(data: dat, encoding: .utf8)!).replacingOccurrences(of: "\\", with: "")
                    print(string)
                    if let strongSelf = self {
                        if let productsArray = json["products"] as? NSArray {
                            let products = Product.modelsFromDictionaryArray(array: productsArray)
                            strongSelf.servicesDelegate.didCollect(products: products)
                        } else {
                            strongSelf.servicesDelegate.didFailCollectingProductsWith(error: NSLocalizedString("Error collecting products", comment: ""))
                        }
                    }
                }catch let error as NSError {
                    if let strongSelf = self {
                        strongSelf.servicesDelegate.didFailCollectingProductsWith(error: error.localizedDescription)
                    }
                }
            }
        }).resume()
    }
    
    func collectDishwasher(withId:String) {
        let url = URL(string: "https://api.johnlewis.com/v1/products/\(withId)?key=Wu1Xqn3vNrd1p7hqkvB6hEu0G9OrsYGb")
        URLSession.shared.dataTask(with: url!, completionHandler: {
            [weak self] data, response, error in
            if(error != nil){
                if let strongSelf = self {
                    if let error = error {
                        strongSelf.servicesDelegate.didFailCollectingProductDetailWith(error: error.localizedDescription)
                    } else {
                        strongSelf.servicesDelegate.didFailCollectingProductDetailWith(error: NSLocalizedString("Error collecting product detail", comment: ""))
                    }
                }
            }else{
                do{
                    let json = try JSONSerialization.jsonObject(with: data!, options:.allowFragments) as! [String : AnyObject]
                    let dat = try JSONSerialization.data(withJSONObject: json, options:[.prettyPrinted])
                    let string = NSString(string:String(data: dat, encoding: .utf8)!).replacingOccurrences(of: "\\", with: "")
                    print(string)
                    let productDetail = ProductDetail(dictionary: json as NSDictionary)
                    if let strongSelf = self, let detail = productDetail {
                        strongSelf.servicesDelegate.didCollect(detail: detail)
                    } else if let strongSelf = self {
                        strongSelf.servicesDelegate.didFailCollectingProductDetailWith(error: NSLocalizedString("Error collecting product detail", comment: ""))
                    }
                }catch let error as NSError {
                    if let strongSelf = self {
                        strongSelf.servicesDelegate.didFailCollectingProductDetailWith(error: error.localizedDescription)
                    }
                }
            }
        }).resume()
    }
}
