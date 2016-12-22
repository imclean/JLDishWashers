//
//  DisplayDetailViewController.swift
//  JLDishwasher
//
//  Created by Iain McLean on 21/12/2016.
//  Copyright © 2016 Iain McLean. All rights reserved.
//

import UIKit


class DisplayDetailViewController: UIViewController, DisplayDetailPresenterDelegate, UIScrollViewDelegate {
    let kImageWidth:CGFloat = 300.0
    var presenter: DisplayDetailPresenter!
    var scrollImages:[UIImageView]?
    @IBOutlet weak var specialsHeight:NSLayoutConstraint!
    @IBOutlet weak var priceLabel:UILabel!
    @IBOutlet weak var guaranteeLabel:UILabel!
    @IBOutlet weak var specialsLabel:UILabel!
    @IBOutlet weak var imagesScrollView:UIScrollView!
    @IBOutlet weak var pageControl:UIPageControl!
    @IBOutlet weak var productInformation:UILabel!
    @IBOutlet weak var productInfoScroll:UIScrollView!
    @IBOutlet weak var productInfoScrollView:UIView!
    
    required init?(coder aDecoder: NSCoder) {
        super.init(coder: aDecoder)
        presenter = DisplayDetailPresenter(withDelegate: self)
    }
    
    override func overrideTraitCollection(forChildViewController childViewController: UIViewController) -> UITraitCollection? {
        if UI_USER_INTERFACE_IDIOM() == .pad &&
            view.bounds.width < view.bounds.height {
            
            let collections = [UITraitCollection(horizontalSizeClass: .compact),
                               UITraitCollection(verticalSizeClass: .regular)]
            return UITraitCollection(traitsFrom: collections)
            
        }
        
        return super.overrideTraitCollection(forChildViewController: childViewController)
    }
    
    @IBAction func tappedControl(_ sender: UIPageControl) {
        let page = sender.currentPage
        imagesScrollView.scrollRectToVisible(CGRect(x: imagesScrollView.frame.size.width * CGFloat(page), y: 0, width: imagesScrollView.frame.size.width, height: imagesScrollView.frame.size.height), animated: true)
    }
    
    func updateImagesForRotation() {
        if let images = scrollImages {
            self.updateViewWith(images: images)
        }
        updateProductScrollContentSize()
    }
    
    func updateProductScrollContentSize() {
        var currentHeight:CGFloat = 0.0
        for subview in productInfoScrollView.subviews {
            if subview.frame.origin.y > currentHeight {
                currentHeight = subview.frame.origin.y + subview.frame.size.height
            }
        }
        currentHeight += 30.0
        productInfoScroll.contentSize = CGSize(width: productInfoScroll.frame.size.width, height: currentHeight)
    }
    
}
// MARK: - ScrollView Delegate

extension DisplayDetailViewController {
    
    func scrollViewDidScroll(_ scrollView: UIScrollView) {
        if scrollView == imagesScrollView {
            let width = scrollView.frame.width
            let currentPage = Int(scrollView.contentOffset.x / width)
            pageControl.currentPage = currentPage
        }
    }
}

// MARK: - Delegate Methods

extension DisplayDetailViewController {
    
    func updateViewWith(price: String) {
        mainThread { [weak self] in
            if let strongSelf = self {
                strongSelf.priceLabel.text = price
            }
        }
    }
    
    func updateViewWith(guarantee: String) {
        mainThread { [weak self] in
            if let strongSelf = self {
                strongSelf.guaranteeLabel.text = guarantee
            }
        }
    }
    
    func updateViewWith(specialOffer: String) {
        mainThread { [weak self] in
            if let strongSelf = self {
                if specialOffer.characters.count > 0 {
                    strongSelf.specialsLabel.text = specialOffer
                } else {
                    strongSelf.specialsHeight.constant = 0
                    strongSelf.view.setNeedsDisplay()
                }
            }
        }
    }
    
    func updateViewWith(images:[UIImageView]) {
        mainThread { [weak self] in
            if let strongSelf = self {
                let currentPage = strongSelf.pageControl.currentPage
                strongSelf.scrollImages = images
                for subview in strongSelf.imagesScrollView.subviews {
                    subview.removeFromSuperview()
                }
                strongSelf.pageControl.numberOfPages = images.count
                strongSelf.pageControl.currentPage = 0
                strongSelf.imagesScrollView.contentSize = CGSize(width: CGFloat(images.count) * strongSelf.imagesScrollView.frame.width, height: strongSelf.kImageWidth)
                for i in 0..<images.count {
                    let imageView = images[i]
                    imageView.contentMode = .scaleAspectFit
                    let imageStartFrame = strongSelf.imagesScrollView.frame.width / 2.0 - strongSelf.kImageWidth / 2
                    let currentOffset = CGFloat(CGFloat(i) * strongSelf.imagesScrollView.frame.width) + imageStartFrame
                    imageView.frame = CGRect(x: currentOffset, y: 0, width: strongSelf.kImageWidth, height: strongSelf.kImageWidth)
                    strongSelf.imagesScrollView.addSubview(imageView)
                }
                if currentPage > 0 {
                    strongSelf.pageControl.currentPage = currentPage
                    strongSelf.imagesScrollView.scrollRectToVisible(CGRect(x: strongSelf.imagesScrollView.frame.size.width * CGFloat(currentPage), y: 0, width: strongSelf.imagesScrollView.frame.size.width, height: strongSelf.imagesScrollView.frame.size.height), animated: false)
                }
            }
        }
    }
    
    func updateViewWith(productInformation:String) {
        mainThread { [weak self] in
            if let strongSelf = self {
                strongSelf.productInformation.text = productInformation
                if strongSelf.productInformation.font.sizeOfString(string: productInformation, constrainedToWidth: Double(strongSelf.productInformation.frame.size.width)).height <= strongSelf.productInformation.frame.size.height {
                    
                }
                delay(delay: 0.1, closure: {
                    strongSelf.updateProductScrollContentSize()
                })
            }
        }
    }
}
