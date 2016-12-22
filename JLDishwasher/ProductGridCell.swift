//
//  ProductGridCell.swift
//  JLDishwasher
//
//  Created by Iain McLean on 21/12/2016.
//  Copyright © 2016 Iain McLean. All rights reserved.
//

import UIKit
import AlamofireImage

class ProductGridCell: UICollectionViewCell {
    @IBOutlet weak var productImage:UIImageView!
    @IBOutlet weak var productDescription:UILabel!
    @IBOutlet weak var productPrice:UILabel!
    
    @IBInspectable var borderColor: UIColor = UIColor.white {
        didSet {
            layer.borderColor = borderColor.cgColor
        }
    }
    @IBInspectable var borderWidth: CGFloat = 1.0 {
        didSet {
            layer.borderWidth = borderWidth
        }
    }
    
    
    required init?(coder aDecoder: NSCoder) {
        super.init(coder: aDecoder)
    }
}

// MARK: - Actions

extension ProductGridCell {
    
    func layoutCellWith(product:Product) {
        productImage.contentMode = .scaleAspectFit
        productImage.clipsToBounds = true
        if let image = product.image {
            productImage.af_setImage(withURL: URL(string: "https:" + image)!)
        }
        if let price = product.price {
            if let total = price.now {
                productPrice.text = "£" + total
            }
        }
        if let desc = product.title {
            productDescription.text = desc
        }
    }
    
}
