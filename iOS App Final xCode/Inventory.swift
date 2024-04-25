//
//  Inventory.swift
//  iOS App Final xCode
//
//  Created by Carr O'Connor on 4/24/24.
//

import Foundation

class Inventory{
    static let sharedInstance = Inventory()
    var currentInventory = [Product]()
    
    //to read inventory from other view controllers you can access like this
    //var inventory = Inventory.sharedInstance.currentInventory;
    //can use similar functionality for cart
}

struct Product : Decodable{
    var id : Int
    var title : String
    var price : Decimal
    var category : String
    var description : String
    var image : String
}
