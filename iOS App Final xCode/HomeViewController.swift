//
//  HomeViewController.swift
//  iOS App Final xCode
//
//  Created by Carr O'Connor on 4/24/24.
//

import UIKit

class HomeViewController: UIViewController {
    @IBOutlet weak var collectionView: UICollectionView!
    override func viewDidLoad() {
        //Home controller code here
        self.title = "Home"
        
        var inventory = Inventory.sharedInstance.currentInventory;
        print(inventory)
        collectionView.collectionViewLayout = UICollectionViewFlowLayout()
    }
}

extension HomeViewController : UICollectionViewDelegate, UICollectionViewDataSource, UICollectionViewDelegateFlowLayout{
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "cell", for: indexPath) as! HomeCollectionViewCell
        cell.productTitle.text = Inventory.sharedInstance.currentInventory[indexPath.row].title
        cell.productImage.image = UIImage(named: "bananas1")
        cell.itemCountLabel.text = String(Inventory.sharedInstance.currentInventory[indexPath.row].cartCount)
        cell.priceLabel.text = Inventory.sharedInstance.currentInventory[indexPath.row].price.formatted(.currency(code: "USD"))
        return cell
        
    }
    
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return Inventory.sharedInstance.currentInventory.count
    }
    
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, sizeForItemAt indexPath: IndexPath) -> CGSize {
        let size = (collectionView.frame.size.width-10)/2
        return CGSize(width: size, height: size)
    }
}
