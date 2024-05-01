//
//  CheckOutButton.swift
//  iOS App Final xCode
//
//  Created by chyenne parrett on 4/30/24.
//

import SwiftUI

struct CheckOutButton: View {
    var body: some View {
        ZStack {
            ZStack {
                Button{
                    
                }
                    label: {
                        Text("")
                    }.frame(width: 250, height: 43)
                    .cornerRadius(30)
                HStack {
                    Text("      Proceed To Check Out").font(.callout)
                    Spacer()
                    Image(systemName: "cart.circle.fill").resizable().frame(width: 43, height: 43).foregroundColor(.black)
                }
            }.background(Color.cyan)
                .cornerRadius(30)
            .frame(width: 250)
            HStack {
                Spacer()
                VStack {
                    ZStack {
                        Image(systemName: "circle.fill").resizable().foregroundColor(.red).frame(width: 15, height: 15)
                        Text("\(productList.count)").font(.caption2)
                    }
                    Spacer()
                }.frame(height:40)
            }.frame(width: 255)
        }
    }
}

#Preview {
    CheckOutButton()
}
