//
//  OrderView.swift
//  iDine
//
//  Created by Mehdi JAFARI ZADEH on 15/07/2023.
//

import SwiftUI

struct OrderView: View {
    @EnvironmentObject var order: Order
    
    var body: some View {
        NavigationStack{
            List{
                Section{
                    ForEach(order.items){ item in
                        HStack{
                            Text (item.name)
                            Spacer()
                            Text("$\(item.price)")
                        }
                    }
                    .onDelete(perform: deletItems)
                }
                
                Section {
                    NavigationLink("Place Order"){
                        CheckoutView()
                    }
                }
                .disabled(order.items.isEmpty)
            }
            .navigationTitle("Order")
            .toolbar{
                EditButton()
            }
        }
    }
    
    func deletItems(at offsets: IndexSet){
        order.items.remove(atOffsets: offsets)
    }
}

struct OrderView_Previews: PreviewProvider {
    static var previews: some View {
        OrderView()
            .environmentObject(Order())
    }
}
