//
//  DisplayDetailPresenterProtocol.swift
//  JLDishwasher
//
//  Created by Iain McLean on 21/12/2016.
//  Copyright © 2016 Iain McLean. All rights reserved.
//

import UIKit

protocol DisplayDetailPresenterDelegate {
    func updateViewWith(price: String)
    func updateViewWith(guarantee: String)
    func updateViewWith(specialOffer: String)
    func updateViewWith(images:[UIImageView])
    func updateViewWith(productInformation:String)
}
