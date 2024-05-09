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
    @IBOutlet weak var cardEntry: UITextField!
    @IBOutlet weak var expEntry: UITextField!
    @IBOutlet weak var cvcEntry: UITextField!
    @IBOutlet weak var addEntry: UITextField!
    @IBOutlet weak var cityEntry: UITextField!
    @IBOutlet weak var stateEnt: UITextField!
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
        if(cardEntry.text!.isEmpty || expEntry.text!.isEmpty || cvcEntry.text!.isEmpty || addEntry.text!.isEmpty || cityEntry.text!.isEmpty || stateEnt.text!.isEmpty)
        {
            let alertController = UIAlertController(title: "Info Not Complete", message: "Please fill out the form to complete your order.", preferredStyle: .alert)
            
            let okAction = UIAlertAction(title: "OK", style: .default) { (action) in
            }
            alertController.addAction(okAction)

            self.present(alertController, animated: true, completion: nil)
            return
        }
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
