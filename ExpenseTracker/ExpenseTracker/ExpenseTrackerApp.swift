//
//  ExpenseTrackerApp.swift
//  ExpenseTracker
//
//  Created by Mehdi JAFARI ZADEH on 21/07/2023.
//

import SwiftUI

@main
struct ExpenseTrackerApp: App {
    @StateObject var transactionListVM = TransactionListViewModel()
    
    var body: some Scene {
        WindowGroup {
            ContentView()
                .environmentObject(transactionListVM)
        }
    }
}
