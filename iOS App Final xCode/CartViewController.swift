//
//  CartViewController.swift
//  iOS App Final xCode
//
//  Created by Carr O'Connor on 4/24/24.
//
import UIKit

var cartItems = [Product]()

class CartViewController: UIViewController {
    
    @IBOutlet weak var CheckOutButton: UIButton!
    
    let inventory = Inventory.sharedInstance.currentInventory;
   
    override func viewDidAppear(_ animated: Bool) {
        if cartItems.isEmpty {
           // CheckOutButton.isEnabled = false
           // print("hi")
            
        }
  
    }
    
    override func viewDidLoad() {
        //Cart controller code here
        self.title = "Cart"
        print(inventory[1])
    }
    
}
