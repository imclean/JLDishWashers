//
//  DisplayDetailViewController.swift
//  JLDishwasher
//
//  Created by Iain McLean on 21/12/2016.
//  Copyright © 2016 Iain McLean. All rights reserved.
//

import UIKit

class DisplayDetailViewController: UIViewController, DisplayDetailPresenterDelegate {
    var presenter: DisplayDetailPresenter?
    
    override func viewDidLoad() {
        presenter = DisplayDetailPresenter(withDelegate: self)
    }
}
