//
//  Wireframe.swift
//  JLDishwasher
//
//  Created by Iain McLean on 21/12/2016.
//  Copyright © 2016 Iain McLean. All rights reserved.
//

import UIKit

public enum StoryBoardName: String, RawRepresentable {
    case DisplayGrid = "DisplayGrid"
    case DisplayDetail = "DisplayDetail"
}

public enum ControllerName: String, RawRepresentable {
    case DisplayDetailViewController = "displayDetailViewController"
    case DisplayGridViewController = "displayGridViewController"
}


class Wireframe {
    static let sharedWifreame = Wireframe()
    
    func showDetailFrom(controller: UIViewController, withDetail: ProductDetail) {
        if let nav = controller.navigationController {
            let detailController = UIStoryboard(name: StoryBoardName.DisplayDetail.rawValue, bundle: nil).instantiateViewController(withIdentifier: ControllerName.DisplayDetailViewController.rawValue) as! DisplayDetailViewController
            if let interactor = detailController.presenter.interactor {
                interactor.detail = withDetail
                interactor.prepareView()
                nav.show(detailController, sender: controller)
            }
        }
    }
}
