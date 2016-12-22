//
//  DisplayGridViewController.swift
//  JLDishwasher
//
//  Created by Iain McLean on 21/12/2016.
//  Copyright © 2016 Iain McLean. All rights reserved.
//

import UIKit
import KVNProgress

class DisplayGridViewController: UIViewController, DisplayGridPresenterDelegate {
    var presenter: DisplayGridPresenter!
    @IBOutlet weak var collectionView:UICollectionView!
    
    var products:[Product] = [Product]()
    
    required init?(coder aDecoder: NSCoder) {
        super.init(coder: aDecoder)
        presenter = DisplayGridPresenter(withDelegate: self)
    }
    
}

// MARK: - Delegate Methods

extension DisplayGridViewController {
    
    func updateView(title:String) {
        mainThread {
            self.title = title
        }
    }
    
    func showHudWith(message: String) {
        mainThread {
            if KVNProgress.isVisible() {
                KVNProgress.updateStatus(message)
            } else {
                KVNProgress.show(withStatus: message)
            }
        }
    }
    
    func showHudWith(success:String) {
        mainThread {
            KVNProgress.showSuccess(withStatus: success)
        }
    }
    
    func showHudWith(error:String) {
        mainThread {
            KVNProgress.showError(withStatus: error)
        }
    }
    
    func didReceive(products:[Product]) {
        mainThread {
            self.products.removeAll()
            self.products.append(contentsOf: products)
            self.collectionView.reloadData()
        }
    }
    
}

// MARK: - Collection View Datasource

extension DisplayGridViewController: UICollectionViewDataSource {
    
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return products.count
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "productGrid", for: indexPath) as! ProductGridCell
        if products.count - 1 >= indexPath.row  {
            cell.layoutCellWith(product: products[indexPath.row])
        }
        return cell
    }
    
    func numberOfSections(in collectionView: UICollectionView) -> Int {
        return 1
    }
    
}

// MARK: - Collection View Delegate

extension DisplayGridViewController: UICollectionViewDelegate {
    
    func collectionView(_ collectionView: UICollectionView, didSelectItemAt indexPath: IndexPath) {
        if products.count - 1 >= indexPath.row  {
            if let productId = products[indexPath.row].productId, let title = products[indexPath.row].title, let nav = self.navigationController {
                nav.navigationItem.backBarButtonItem = UIBarButtonItem(title:title , style: .plain, target: nil, action: nil)
                navigationItem.backBarButtonItem = UIBarButtonItem(title: title, style: .plain, target: nil, action: nil)
                self.presenter.collectProductWith(productId: productId)
            }
        }
    }
    
}
