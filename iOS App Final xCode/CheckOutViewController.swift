//
//  checkOutViewController.swift
//  iOS App Final xCode
//
//  Created by chyenne parrett on 5/7/24.
//

import UIKit

class CheckOutViewController: UIViewController {

    @IBOutlet weak var checkOutStack: UIStackView!
    @IBOutlet weak var thankYouMessage: UILabel!
    @IBOutlet weak var subtotalLabel: UILabel!
    @IBOutlet weak var placeOrderButton: UIButton!
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
        thankYouMessage.isHidden = true


    }
    
    @IBAction func orderPlacedPressed(_ sender: Any) {
        checkOutStack.isHidden = true
        thankYouMessage.isHidden = false
        for products in Inventory.sharedInstance.currentInventory {
            //products.cartCount = 0
        }
    }
    


}
