//
//  CheckOutCards.swift
//  iOS App Final xCode
//
//  Created by chyenne parrett on 4/26/24.
//

import SwiftUI
let product = Inventory.sharedInstance.currentInventory.first

struct CheckOutCards: View {

    var body: some View {
        if let product {
            HStack(alignment: .center,spacing: 80, content: {
                VStack(content: {
                    Text(product.title)
                    Text(product.description)
                    
                    Button {
                         
                    } label:
                    {
                       Text("Remove")
                            
                    }
                })
                VStack(content: {
                    Image(product.image)
                        .resizable()
                        .cornerRadius(25)
                        .frame(width: 150, height: 150)
                        .scaledToFit()
                    Text("product.price")
                })
            })
        }
    }
}
#Preview{
        CheckOutCards()
}


