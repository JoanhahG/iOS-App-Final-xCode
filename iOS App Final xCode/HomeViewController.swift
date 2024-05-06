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
        let padding: CGFloat = 5
        collectionView.contentInset = UIEdgeInsets(top: padding, left: padding, bottom: padding, right: padding)

    }
}

extension HomeViewController : UICollectionViewDelegate, UICollectionViewDataSource, UICollectionViewDelegateFlowLayout{
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "cell", for: indexPath) as! HomeCollectionViewCell
        let item = Inventory.sharedInstance.currentInventory[indexPath.row]
        var size = 100.00
        if UIDevice.current.orientation.isPortrait{
            size = ((collectionView.frame.size.width-10)/2.2) - 50
        }
        else{
            size = ((collectionView.frame.size.height-10)/2.2) - 50
        }
        
        cell.productTitle.text = item.title
        cell.productImage.image = UIImage(named: item.image)
        cell.productImage.widthAnchor.constraint(equalToConstant: CGFloat(size)).isActive = true
        cell.productImage.heightAnchor.constraint(equalToConstant: CGFloat(size)).isActive = true
        cell.itemCountLabel.text = String(item.cartCount)
        cell.priceLabel.text = item.price.formatted(.currency(code: "USD"))

        cell.itemCountStepper.value = Double(item.cartCount)
        cell.itemCountStepper.tag = indexPath.row
        cell.layoutIfNeeded()
        return cell
        
    }
    
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return Inventory.sharedInstance.currentInventory.count
    }
    
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, sizeForItemAt indexPath: IndexPath) -> CGSize {
        
        var size = 100.00
        if UIDevice.current.orientation.isLandscape{
            size = ((collectionView.frame.size.height-10)/2.2)
            return CGSize(width: size + (size * 0.4), height: size + (size * 0.2))
        }
        else{
            size = ((collectionView.frame.size.width-10)/2.2)
            return CGSize(width: size, height: size + (size * 0.2))
        }
    }
}
