//
//  ProductDetailReadMoreButton.swift
//  JLDishwasher
//
//  Created by Iain McLean on 22/12/2016.
//  Copyright © 2016 Iain McLean. All rights reserved.
//

import UIKit

class ProductDetailReadMoreButton: UIButton {
    
    required init?(coder aDecoder: NSCoder) {
        super.init(coder: aDecoder)
        let lineView = UIView(frame: CGRect(x:0, y:0, width:self.frame.size.width, height:1))
        lineView.backgroundColor = UIColor.gray
        self.addSubview(lineView)
        let lineView2 = UIView(frame: CGRect(x:0, y:self.frame.size.height - 1, width:self.frame.size.width, height:1))
        lineView2.backgroundColor = UIColor.gray
        self.addSubview(lineView2)
    }
}
