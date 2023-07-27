//
//  ProductCard.swift
//  SwerderShopDemo
//
//  Created by Mehdi on 27/07/2023.
//

import SwiftUI

struct ProductCard: View {
    var product: Product
    
    var body: some View {
        ZStack(alignment: .bottom) {
            Image(product.image)
        }
    }
}

struct ProductCard_Previews: PreviewProvider {
    static var previews: some View {
        ProductCard(product: productList[0])
    }
}
