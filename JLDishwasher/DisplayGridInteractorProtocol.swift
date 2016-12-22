//
//  DisplayGridInteractorProtocol.swift
//  JLDishwasher
//
//  Created by Iain McLean on 21/12/2016.
//  Copyright © 2016 Iain McLean. All rights reserved.
//

import Foundation

protocol DisplayGridInteractorDelegate {
    func updateView(title:String)
    func showHudWith(message:String)
    func showHudWith(success:String)
    func didCollect(products:[Product])
    func didFailCollectingProductsWith(error:String)
    func didCollect(detail:ProductDetail)
    func didFailCollectingProductDetailWith(error:String)
}
