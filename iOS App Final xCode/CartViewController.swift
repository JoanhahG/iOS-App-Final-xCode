//
//  CartViewController.swift
//  iOS App Final xCode
//
//  Created by Carr O'Connor on 4/24/24.
//
import UIKit

class CartViewController: UIViewController {
    @IBOutlet weak var CheckOutButton: UIButton!
        
    

    override func viewDidAppear(_ animated: Bool) {
        var inventory = Inventory.sharedInstance.currentInventory;
        var checkOutItems = [Product]()
        
        for i in inventory{
            if i.cartCount>0{
                checkOutItems.append(i)
            }
        }
        if checkOutItems.isEmpty {
           CheckOutButton.isEnabled = false
        }
    }
    override func viewDidLoad() {
        //Cart controller code here
        self.title = "Cart"
    }
    
}
