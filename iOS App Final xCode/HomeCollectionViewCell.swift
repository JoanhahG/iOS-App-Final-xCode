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
            itemCountStepper.tintColor = UIColor.black // Change color to your desired color
        }
    
    override func layoutSubviews() {
            super.layoutSubviews()
            
            self.contentView.layer.cornerRadius = 8.0 // Adjust as needed
            self.contentView.layer.masksToBounds = true
            self.contentView.layer.borderWidth = 1.0
            self.contentView.layer.borderColor = UIColor.clear.cgColor
            self.layer.shadowColor = UIColor.systemCyan.cgColor
            self.layer.shadowOffset = CGSize(width: 0, height: 2.0)
            self.layer.shadowRadius = 2.0
            self.layer.shadowOpacity = 0.5
            self.layer.masksToBounds = false
            self.layer.shadowPath = UIBezierPath(roundedRect: self.bounds, cornerRadius: self.contentView.layer.cornerRadius).cgPath
        
        }
    
    @IBAction func StepperValueChanged(_ sender: UIStepper) {
        Inventory.sharedInstance.currentInventory[sender.tag].cartCount = Int(sender.value)
        itemCountLabel.text = String(Inventory.sharedInstance.currentInventory[sender.tag].cartCount)
    }
}
