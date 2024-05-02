//
//  HomeCollectionViewCell.swift
//  iOS App Final xCode
//
//  Created by Carr O'Connor on 4/29/24.
//

import UIKit

class HomeCollectionViewCell: UICollectionViewCell {
    
    @IBOutlet weak var productTitle: UILabel!
    @IBOutlet weak var productImage: UIImageView!
    @IBOutlet weak var itemCountLabel: UILabel!
    @IBOutlet weak var itemCountStepper: UIStepper!
    @IBOutlet weak var priceLabel: UILabel!
    
    override func awakeFromNib() {
        super.awakeFromNib()
            // Customize stepper icon colors
            itemCountStepper.setDecrementImage(itemCountStepper.decrementImage(for: .normal), for: .normal)
            itemCountStepper.setIncrementImage(itemCountStepper.incrementImage(for: .normal), for: .normal)
            itemCountStepper.tintColor = UIColor.systemGray5 // Change color to your desired color
        }
    
    @IBAction func StepperValueChanged(_ sender: UIStepper) {
        Inventory.sharedInstance.currentInventory[sender.tag].cartCount = Int(sender.value)
        itemCountLabel.text = String(Inventory.sharedInstance.currentInventory[sender.tag].cartCount)
    }
}
