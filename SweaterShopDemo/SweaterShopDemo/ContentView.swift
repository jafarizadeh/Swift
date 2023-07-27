//
//  ContentView.swift
//  SweaterShopDemo
//
//  Created by Mehdi on 27/07/2023.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        VStack {
            ProductCard(product: productList[0])
        }
        .padding()
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
