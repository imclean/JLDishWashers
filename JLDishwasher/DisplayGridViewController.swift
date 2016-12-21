//
//  DisplayGridViewController.swift
//  JLDishwasher
//
//  Created by Iain McLean on 21/12/2016.
//  Copyright © 2016 Iain McLean. All rights reserved.
//

import UIKit

class DisplayGridViewController: UIViewController, DisplayGridPresenterDelegate {
    var presenter: DisplayGridPresenter?
    
    override func viewDidLoad() {
        presenter = DisplayGridPresenter(withDelegate: self)
    }
}
