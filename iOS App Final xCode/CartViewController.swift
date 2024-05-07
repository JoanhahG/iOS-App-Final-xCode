//
//  CartViewController.swift
//  iOS App Final xCode
//
//  Created by Carr O'Connor on 4/24/24.
//
import UIKit
import SwiftUI

class CartViewController: UIViewController {
    var checkOutItems = [Product]()
    @IBOutlet weak var checkOutButton: UIButton!
        
    @IBOutlet weak var cartCollectionView: UICollectionView!
    
    override func viewDidAppear(_ animated: Bool) {
        checkOutItems = []
        let inventory = Inventory.sharedInstance.currentInventory;
        
        for i in inventory{
            if i.cartCount>0{
                checkOutItems.append(i)
            }
        }
        checkOutButton.isEnabled = !checkOutItems.isEmpty
    
        cartCollectionView.reloadData()
    }
    override func viewDidLoad() {
        //Cart controller code here
        self.title = "Cart"
        cartCollectionView.collectionViewLayout = UICollectionViewFlowLayout()       
       }
    override func viewWillTransition(to size: CGSize, with coordinator: any UIViewControllerTransitionCoordinator) {
        if let view = cartCollectionView {
            view.collectionViewLayout = UICollectionViewFlowLayout()
        }
    }
}

    


extension CartViewController : UICollectionViewDelegate, UICollectionViewDataSource, UICollectionViewDelegateFlowLayout{
    
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "cell", for: indexPath) as! CartCells
        let item = checkOutItems[indexPath.row]
        cell.nameLabel.text = item.title
        cell.productImage.image = UIImage(named: item.image)
        cell.cartCountLabel.text = String(item.cartCount)
        cell.productPrice.text = item.price.formatted(.currency(code: "USD"))
        cell.descriptionLabel.text = item.description
        cell.removeButton.tag = item.id - 1
        cell.addButton.tag = item.id - 1
        cell.layoutIfNeeded()
        return cell
    }
    
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return checkOutItems.count
    }
    
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, sizeForItemAt indexPath: IndexPath) -> CGSize {
        if UIDevice.current.orientation.isLandscape{
            return CGSize(width: 373, height: 150)
        }
        else{
            return CGSize(width: 373, height: 150)
        }
    }
}
