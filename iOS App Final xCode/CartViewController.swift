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
//<<<<<<< HEAD
        print(inventory[1])
    }
    
//=======
        var cart = [Product]()
        //loop through current inventory and add items with an item count
//        for int i = 0; i < Inventory.sharedInstance.currentInventory.count; i++:
//            cart.append(i);
        
    }
    
    //viewIsAppearing
//>>>>>>> carr-dev
