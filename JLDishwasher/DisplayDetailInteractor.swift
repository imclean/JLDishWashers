//
//  DisplayDetailInteractor.swift
//  JLDishwasher
//
//  Created by Iain McLean on 21/12/2016.
//  Copyright © 2016 Iain McLean. All rights reserved.
//

import Foundation
import AlamofireImage

class DisplayDetailInteractor: DisplayDetailDataManagerDelegate {
    var interactorDelegate:DisplayDetailInteractorDelegate!
    var dataManager: DisplayDetailDataManager!
    var detail:ProductDetail?
    
    init(withDelegate delegate:DisplayDetailInteractorDelegate) {
        interactorDelegate = delegate
        dataManager = DisplayDetailDataManager(withDelegate: self)
    }
    
    func prepareView() {
        if let detail = detail {
            if let price = detail.price {
                if let now = price.now {
                    interactorDelegate.updateViewWith(price: String(format: "£%@", now))
                }
            }
        }
        if let additional = detail?.additionalServices {
            if let guarantees = additional.includedServices {
                let joinedGauarantees = guarantees.joined(separator: "\n")
                interactorDelegate.updateViewWith(guarantee: joinedGauarantees)
            }
        }
        if let special = detail?.displaySpecialOffer {
            interactorDelegate.updateViewWith(specialOffer: special)
        }
        if let media = detail?.media {
            if let images = media.images {
                if let urls = images.urls {
                    var imagesArray = [UIImageView]()
                    for i in 0..<urls.count {
                        if urls[i].characters.count > 0 {
                            let imageView = UIImageView()
                            imageView.af_setImage(withURL: URL(string: String(format: "https:%@", urls[i]))!)
                            imagesArray.append(imageView)
                        }
                    }
                    interactorDelegate.updateViewWith(images: imagesArray)
                }
            }
        }
        if let details = detail?.details {
            if let info = details.productInformation {
                let productInfos = NSString(string: info).replacingOccurrences(of: "<[^>]+>", with: "", options: .regularExpression, range: NSMakeRange(0, info.characters.count)).replacingOccurrences(of: "&nbsp;", with: "").replacingOccurrences(of: "&rsquo;", with: "\'")
                if let code = detail?.productId {
                    let codeString = String(format:"Product code: %@", code)
                    interactorDelegate.updateViewWith(productInformation: codeString + "\n" + productInfos)
                } else {
                    interactorDelegate.updateViewWith(productInformation: productInfos)
                }
            }
        }
    }
}
