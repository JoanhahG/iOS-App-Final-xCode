//
//  CheckOutCards.swift
//  iOS App Final xCode
//
//  Created by chyenne parrett on 4/26/24.
//

import SwiftUI


struct CheckOutCards: View {
    let product = Product(id: 1, title: "Oranges", price: 3.99, category: "fruit", cartCount: 0, invCount: 99, description: "Fresh and Orange", image: "orange")
    var body: some View {
        ZStack{
            Image("beige").resizable().frame(width: 390, height: 200).cornerRadius(25)
            HStack(alignment: .center, content: {
                VStack(content: {
                    Text(product.title)
                    Text(product.description)
                    Spacer()
                    Button {
                        
                    } label:
                    {
                        Text("Remove")
                    }
                    .frame(width: 230)
                })
                VStack(content: {
                    Image(product.image)
                        .resizable()
                        .cornerRadius(25)
                        .frame(width: 150, height: 150)
                        .scaledToFit()
    
                    Text("$3.99")
                })
            })
            .frame(width: 380, height: 170)
        }
    }
}
#Preview{
        CheckOutCards()
}


