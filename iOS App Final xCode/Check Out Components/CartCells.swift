//
//  CartCells.swift
//  iOS App Final xCode
//
//  Created by chyenne parrett on 5/1/24.
//

import UIKit

class CartCells: UICollectionViewCell {
    
    @IBOutlet weak var beigeImageView: UIImageView!
    @IBOutlet weak var cartCountLabel: UILabel!
    @IBOutlet weak var removeButton: UIButton!
    @IBOutlet weak var addButton: UIButton!
    @IBOutlet weak var descriptionLabel: UILabel!
    @IBOutlet weak var nameLabel: UILabel!
    
    @IBOutlet weak var productPrice: UILabel!
    @IBOutlet weak var productImage: UIImageView!
    
    
    override func awakeFromNib() {
        super.awakeFromNib()
        beigeImageView.layer.cornerRadius = 15
        beigeImageView.clipsToBounds = true
        addButton.layer.cornerRadius = 15
        removeButton.layer.cornerRadius = 15
    }
    
    @IBAction func addButtonPressed(_ sender: UIButton) {
        Inventory.sharedInstance.currentInventory[sender.tag].cartCount += 1
        cartCountLabel.text = String(Inventory.sharedInstance.currentInventory[sender.tag].cartCount)
    }
    
    @IBAction func minusButtonPressed(_ sender: UIButton) {
        Inventory.sharedInstance.currentInventory[sender.tag].cartCount -= 1
        cartCountLabel.text = String(Inventory.sharedInstance.currentInventory[sender.tag].cartCount)
    }
}
