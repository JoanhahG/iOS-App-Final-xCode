//
//  CheckOutList.swift
//  iOS App Final xCode
//
//  Created by chyenne parrett on 4/28/24.
//

import SwiftUI

struct CheckOutList: View {
    var body: some View {
        ScrollView {
            ForEach(productList, id: \.id) { i in CheckOutCards(product: i)
            }
        }
    }
}

#Preview {
    CheckOutList()
}
