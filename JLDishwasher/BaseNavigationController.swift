//
//  BaseNavigationController.swift
//  JLDishwasher
//
//  Created by Iain McLean on 22/12/2016.
//  Copyright © 2016 Iain McLean. All rights reserved.
//

import UIKit

class BaseNavigationController: UINavigationController {
    open override var shouldAutorotate: Bool {
        get {
            for controller in self.viewControllers {
                if controller is DisplayDetailViewController {
                    (controller as! DisplayDetailViewController).updateImagesForRotation()
                }
            }
            return true
        }
    }
    open override var supportedInterfaceOrientations: UIInterfaceOrientationMask {
        get {
            return UIInterfaceOrientationMask.all
        }
    }
    
    override func overrideTraitCollection(forChildViewController childViewController: UIViewController) -> UITraitCollection? {
        if UI_USER_INTERFACE_IDIOM() == .pad &&
            childViewController is DisplayDetailViewController &&
            view.bounds.width < view.bounds.height {
            
            let collections = [UITraitCollection(horizontalSizeClass: .compact),
                               UITraitCollection(verticalSizeClass: .regular)]
            return UITraitCollection(traitsFrom: collections)
        }
        let collections = [UITraitCollection(horizontalSizeClass: .regular),
                           UITraitCollection(verticalSizeClass: .regular)]
        return UITraitCollection(traitsFrom: collections)
    }
}
