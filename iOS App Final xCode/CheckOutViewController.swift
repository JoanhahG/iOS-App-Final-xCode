//
//  checkOutViewController.swift
//  iOS App Final xCode
//
//  Created by chyenne parrett on 5/7/24.
//

import UIKit

class CheckOutViewController: UIViewController {

    @IBOutlet weak var orderListLabel: UILabel!
    @IBOutlet weak var checkOutStack: UIStackView!
    @IBOutlet weak var thankYouMessage: UILabel!
    @IBOutlet weak var subtotalLabel: UILabel!
    @IBOutlet weak var placeOrderButton: UIButton!
    @IBOutlet weak var returnToHomeButton: UIButton!
    var inventory = Inventory.sharedInstance.currentInventory;
    override func viewDidAppear(_ animated: Bool) {
        super.viewDidAppear(true)
        thankYouMessage.isHidden = true
        var subtotal = 0.0
        for products in inventory {
            if products.cartCount > 0 {
                for i in 0..<products.cartCount {
                    subtotal += (products.price as NSDecimalNumber).doubleValue
                }
            }
        }
        subtotalLabel.text = "Subtotal: \(subtotal.formatted(.currency(code: "USD")))"
        checkOutStack.isHidden = false
    }
    override func viewDidLoad() {
        super.viewDidLoad()
        orderListLabel.isHidden = true
        thankYouMessage.isHidden = true
        returnToHomeButton.isHidden = true
    }
    
    @IBAction func orderPlacedPressed(_ sender: Any) {
        checkOutStack.isHidden = true
        var thankYouAddOn: String = ""
        for products in Inventory.sharedInstance.currentInventory {
            if products.cartCount > 0 {
                thankYouAddOn += "\n x\(products.cartCount) \(products.title)"
            }
        }
        orderListLabel.text = thankYouAddOn
        thankYouMessage.isHidden = false
        orderListLabel.isHidden = false
        returnToHomeButton.isHidden = false
        
        for i in 0 ... Inventory.sharedInstance.currentInventory.count - 1 {
            Inventory.sharedInstance.currentInventory[i].cartCount = 0;
        }
    }
    @IBAction func returnToHomePressed(_ sender: Any) {
        if let navigationController = self.navigationController {
            navigationController.popViewController(animated: true)
        }
        if let tabBarController = self.tabBarController {
            tabBarController.selectedIndex = 1
        }
    }
}
