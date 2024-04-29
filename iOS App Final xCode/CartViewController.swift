//
//  CartViewController.swift
//  iOS App Final xCode
//
//  Created by Carr O'Connor on 4/24/24.
//
import UIKit

class CartViewController: UIViewController {
    
    var cartItems = [Product]()
    var inventoryItems = [Product]()
    
    @IBOutlet weak var CheckOutButton: UIButton!
        
    let inventory = Inventory.sharedInstance.currentInventory;
   
    override func viewDidAppear(_ animated: Bool) {
        inventoryItems = Inventory.sharedInstance.currentInventory;
        print(inventoryItems[1])
        if cartItems.isEmpty {
           // CheckOutButton.isEnabled = false
           // print("hi")
            
        }
  
    }
    override func viewDidLoad() {
        //Cart controller code here
        self.title = "Cart"
    }
    
}
