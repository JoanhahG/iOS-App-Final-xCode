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
    @IBOutlet weak var CheckOutButton: UIButton!
        
    @IBOutlet weak var cartCollectionView: UICollectionView!
    
    override func viewDidAppear(_ animated: Bool) {
        checkOutItems = []
        let inventory = Inventory.sharedInstance.currentInventory;
        
        for i in inventory{
            if i.cartCount>0{
                checkOutItems.append(i)
            }
        }
        CheckOutButton.isEnabled = !checkOutItems.isEmpty
    
        
    }
    override func viewDidLoad() {
        //Cart controller code here
        self.title = "Cart"
        cartCollectionView.collectionViewLayout = UICollectionViewFlowLayout()       
       }
    }

    


extension CartViewController : UICollectionViewDelegate, UICollectionViewDataSource{
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "cartCell", for: indexPath) as! CartCells
        let item = checkOutItems[indexPath.row]
        cell.nameLabel.text = item.title
        cell.productImage.image = UIImage(named: item.image)
        cell.cartCountLabel.text = String(item.cartCount)
        cell.productPrice.text = item.price.formatted(.currency(code: "USD"))
        cell.descriptionLabel.text = item.description
        return cell
    }
    
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return checkOutItems.count
    }
}
