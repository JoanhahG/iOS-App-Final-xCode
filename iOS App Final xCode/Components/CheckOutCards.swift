//
//  CheckOutCards.swift
//  iOS App Final xCode
//
//  Created by chyenne parrett on 4/26/24.
//

import SwiftUI
let product = Product(id: 1, title: "Organic Apples", price: Decimal(2.99), category: "Fruits", description: "Fresh", image: "orange")

struct CheckOutCards: View {

    var body: some View {
        HStack(alignment: .center,spacing: 80, content: {
            VStack(content: {
                Text(product.title)
                Text(product.description)
                
                Button. {
                     
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
#Preview{
        CheckOutCards()
}


