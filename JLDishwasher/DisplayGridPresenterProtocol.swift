//
//  DisplayGridPresenterProtocol.swift
//  JLDishwasher
//
//  Created by Iain McLean on 21/12/2016.
//  Copyright © 2016 Iain McLean. All rights reserved.
//

import Foundation

protocol DisplayGridPresenterDelegate {
    func updateView(title:String)
    func showHudWith(message:String)
    func showHudWith(success:String)
    func showHudWith(error:String)
    func didReceive(products:[Product])
}
