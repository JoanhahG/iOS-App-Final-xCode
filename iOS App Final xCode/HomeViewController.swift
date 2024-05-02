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
        self.title = "Store"
        
        collectionView.collectionViewLayout = UICollectionViewFlowLayout()
    }
}

extension HomeViewController : UICollectionViewDelegate, UICollectionViewDataSource, UICollectionViewDelegateFlowLayout{
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "cell", for: indexPath) as! HomeCollectionViewCell
        let item = Inventory.sharedInstance.currentInventory[indexPath.row]
        cell.productTitle.text = item.title
        cell.productImage.image = UIImage(named: item.image)
        cell.itemCountLabel.text = String(item.cartCount)
        cell.priceLabel.text = item.price.formatted(.currency(code: "USD"))
        cell.itemCountStepper.value = Double(item.cartCount)
        cell.itemCountStepper.tag = indexPath.row
        return cell
        
    }
    
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return Inventory.sharedInstance.currentInventory.count
    }
    
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, sizeForItemAt indexPath: IndexPath) -> CGSize {
        
        if UIDevice.current.orientation.isPortrait{
            let size = (collectionView.frame.size.width-10)/2
            return CGSize(width: size, height: size)
        }
        else {
            let size = (collectionView.frame.size.height)/2
            return CGSize(width: size+20, height: size+20)
        }
    }
}
