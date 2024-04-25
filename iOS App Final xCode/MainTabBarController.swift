//
//  MainTabBarController.swift
//  iOS App Final xCode
//
//  Created by Carr O'Connor on 4/24/24.
//

import UIKit

class MainTabBarController: UITabBarController {
    override func viewDidLoad() {
        //Main tabbar controller code here
        fetchData()
        self.selectedIndex = 1
    }
    
    //read dummy data from inventory.json
    func fetchData(){
        if let path = Bundle.main.path(forResource: "inventory", ofType: "json") {
            do {
                let data = try Data(contentsOf: URL(fileURLWithPath: path), options: .mappedIfSafe)
                let products = try JSONDecoder().decode([Product].self, from: data)
                
                //add inventory items to singleton instance of Inventory
                Inventory.sharedInstance.currentInventory.append(contentsOf: products)
            } catch {
                print("Error loading data:", error)
            }
        }
    }
}
