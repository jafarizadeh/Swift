//
//  AccountView.swift
//  DesignCodeiOS15
//
//  Created by Mehdi on 04/08/2023.
//

import SwiftUI

struct AccountView: View {
    var body: some View {
        NavigationView {
            List {
                Section {
                    Text("Setting")
                    
                    Text("Billing")
                    
                    Text("Help")
                }
                .listRowSeparator(.hidden)

            }
            .listStyle(.insetGrouped)
            .navigationTitle("Account")
        }
    }
}

struct AccountView_Previews: PreviewProvider {
    static var previews: some View {
        AccountView()
    }
}
