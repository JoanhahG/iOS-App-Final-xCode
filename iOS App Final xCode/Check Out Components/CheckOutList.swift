//
//  CheckOutList.swift
//  iOS App Final xCode
//
//  Created by chyenne parrett on 4/28/24.
//


import SwiftUI

struct CheckOutList: View {
    var body: some View {
         NavigationView{
            ScrollView {
                ForEach(productList, id: \.id) { i in CheckOutCards(product: i)
                }
            }.toolbar{
                NavigationLink{
                    CartView()
                } label:{
                    CheckOutButton().foregroundColor(.black)
                }
            }
        }.navigationViewStyle(StackNavigationViewStyle())

    }
}

#Preview {
    CheckOutList()
}

